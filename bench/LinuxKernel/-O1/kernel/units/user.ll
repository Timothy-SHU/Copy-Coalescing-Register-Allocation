; ModuleID = 'kernel/user.c'
source_filename = "kernel/user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_init_user_ns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad init_user_ns ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_free_uid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad free_uid ; .previous"
module asm ".section\09\22.initcall4.init..kmod_user__179_252_uid_cache_init\22, \22a\22\09\09"
module asm "__initcall__kmod_user__179_252_uid_cache_init4:\09\09\09"
module asm ".long\09__initstub__kmod_user__179_252_uid_cache_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}

@init_user_ns = hidden global { { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } }, { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } }, { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } }, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] } { { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } } { i32 1, [4 x i8] undef, { [5 x %struct.uid_gid_extent], [4 x i8] } { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer], [4 x i8] undef } }, { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } } { i32 1, [4 x i8] undef, { [5 x %struct.uid_gid_extent], [4 x i8] } { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer], [4 x i8] undef } }, { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } } { i32 1, [4 x i8] undef, { [5 x %struct.uid_gid_extent], [4 x i8] } { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer], [4 x i8] undef } }, ptr null, i32 0, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.ns_common { %struct.atomic64_t zeroinitializer, ptr null, i32 -268435459, %struct.refcount_struct { %struct.atomic_t { i32 3 } } }, i64 1, i8 0, %struct.list_head { ptr getelementptr (i8, ptr @init_user_ns, i64 280), ptr getelementptr (i8, ptr @init_user_ns, i64 280) }, ptr null, %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_user_ns, i64 328), ptr getelementptr (i8, ptr @init_user_ns, i64 328) } }, %struct.work_struct zeroinitializer, %struct.ctl_table_set zeroinitializer, ptr null, ptr null, [10 x i64] zeroinitializer, [4 x i64] zeroinitializer }, align 8, !dbg !0
@__UNIQUE_ID___addressable_init_user_ns177 = internal global ptr @init_user_ns, section ".discard.addressable", align 8, !dbg !201
@root_user = hidden global %struct.user_struct { %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.percpu_counter zeroinitializer, i64 0, %struct.atomic64_t zeroinitializer, %struct.hlist_node zeroinitializer, %struct.kuid_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.ratelimit_state zeroinitializer }, align 8, !dbg !203
@uidhash_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !222
@uidhash_table = internal global [128 x %struct.hlist_head] zeroinitializer, align 16, !dbg !214
@__UNIQUE_ID___addressable_free_uid178 = internal global ptr @free_uid, section ".discard.addressable", align 8, !dbg !205
@uid_cachep = internal global ptr null, align 8, !dbg !209
@__UNIQUE_ID___addressable___initstub__kmod_user__179_252_uid_cache_init4180 = internal global ptr @__initstub__kmod_user__179_252_uid_cache_init4, section ".discard.addressable", align 8, !dbg !207
@user_epoll_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !224
@.str = private unnamed_addr constant [10 x i8] c"uid_cache\00", align 1, !dbg !234
@.str.2 = private unnamed_addr constant [44 x i8] c"root_user epoll percpu counter alloc failed\00", align 1, !dbg !239
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_init_user_ns177, ptr @__UNIQUE_ID___addressable_free_uid178, ptr @__UNIQUE_ID___addressable___initstub__kmod_user__179_252_uid_cache_init4180], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @find_user(i32 %uid.coerce) #0 align 16 !dbg !1913 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %ret = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !1917, metadata !DIExpression()), !dbg !1925
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1918, metadata !DIExpression()), !dbg !1927
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1928
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1919, metadata !DIExpression()), !dbg !1929
  br label %do.body, !dbg !1930

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1931

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1920, metadata !DIExpression()), !dbg !1932
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1924, metadata !DIExpression()), !dbg !1932
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1932
  %conv = zext i1 %cmp to i32, !dbg !1932
  store i32 1, ptr %tmp, align 4, !dbg !1932
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !1933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !1933
  %0 = load i32, ptr %tmp, align 4, !dbg !1932
  %call = call ptr @spinlock_check(ptr noundef @uidhash_lock) #12, !dbg !1933
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #12, !dbg !1933
  store i64 %call2, ptr %flags, align 8, !dbg !1933
  br label %do.cond, !dbg !1933

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1933

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !1931

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1931

do.end4:                                          ; preds = %do.cond3
  %coerce.dive5 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !1934
  %1 = load i32, ptr %coerce.dive5, align 4, !dbg !1934
  %call6 = call i32 @__kuid_val(i32 %1) #12, !dbg !1934
  %shr = lshr i32 %call6, 7, !dbg !1934
  %coerce.dive7 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !1934
  %2 = load i32, ptr %coerce.dive7, align 4, !dbg !1934
  %call8 = call i32 @__kuid_val(i32 %2) #12, !dbg !1934
  %add = add i32 %shr, %call8, !dbg !1934
  %and = and i32 %add, 127, !dbg !1934
  %idx.ext = zext i32 %and to i64, !dbg !1934
  %add.ptr = getelementptr %struct.hlist_head, ptr @uidhash_table, i64 %idx.ext, !dbg !1934
  %coerce.dive9 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !1935
  %3 = load i32, ptr %coerce.dive9, align 4, !dbg !1935
  %call10 = call ptr @uid_hash_find(i32 %3, ptr noundef %add.ptr) #12, !dbg !1935
  store ptr %call10, ptr %ret, align 8, !dbg !1936
  %4 = load i64, ptr %flags, align 8, !dbg !1937
  call void @spin_unlock_irqrestore(ptr noundef @uidhash_lock, i64 noundef %4) #12, !dbg !1938
  %5 = load ptr, ptr %ret, align 8, !dbg !1939
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !1940
  ret ptr %5, !dbg !1941
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1942 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !1947 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1953, metadata !DIExpression()), !dbg !1954
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1955
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1956
  ret ptr %1, !dbg !1957
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @uid_hash_find(i32 %uid.coerce, ptr noundef %hashent) #0 align 16 !dbg !1958 {
entry:
  %retval = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %hashent.addr = alloca ptr, align 8
  %user = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %____ptr6 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !1963, metadata !DIExpression()), !dbg !1976
  store ptr %hashent, ptr %hashent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashent.addr, metadata !1964, metadata !DIExpression()), !dbg !1977
  call void @llvm.lifetime.start.p0(i64 8, ptr %user) #11, !dbg !1978
  call void @llvm.dbg.declare(metadata ptr %user, metadata !1965, metadata !DIExpression()), !dbg !1979
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #11, !dbg !1980
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !1966, metadata !DIExpression()), !dbg !1980
  %0 = load ptr, ptr %hashent.addr, align 8, !dbg !1980
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !1980
  %1 = load ptr, ptr %first, align 8, !dbg !1980
  store ptr %1, ptr %____ptr, align 8, !dbg !1980
  %2 = load ptr, ptr %____ptr, align 8, !dbg !1980
  %tobool = icmp ne ptr %2, null, !dbg !1980
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1980

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1969, metadata !DIExpression()), !dbg !1981
  %3 = load ptr, ptr %____ptr, align 8, !dbg !1981
  store ptr %3, ptr %__mptr, align 8, !dbg !1981
  %4 = load ptr, ptr %__mptr, align 8, !dbg !1981
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !1981
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !1981
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !1980
  %5 = load ptr, ptr %tmp1, align 8, !dbg !1981
  br label %cond.end, !dbg !1980

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1980

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !1980
  store ptr %cond, ptr %tmp, align 8, !dbg !1980
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #11, !dbg !1982
  %6 = load ptr, ptr %tmp, align 8, !dbg !1980
  store ptr %6, ptr %user, align 8, !dbg !1982
  br label %for.cond, !dbg !1982

for.cond:                                         ; preds = %cond.end14, %cond.end
  %7 = load ptr, ptr %user, align 8, !dbg !1983
  %tobool2 = icmp ne ptr %7, null, !dbg !1982
  br i1 %tobool2, label %for.body, label %for.end, !dbg !1982

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %user, align 8, !dbg !1984
  %uid3 = getelementptr inbounds %struct.user_struct, ptr %8, i32 0, i32 5, !dbg !1987
  %coerce.dive4 = getelementptr inbounds %struct.kuid_t, ptr %uid3, i32 0, i32 0, !dbg !1988
  %9 = load i32, ptr %coerce.dive4, align 8, !dbg !1988
  %coerce.dive5 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !1988
  %10 = load i32, ptr %coerce.dive5, align 4, !dbg !1988
  %call = call zeroext i1 @uid_eq(i32 %9, i32 %10) #12, !dbg !1988
  br i1 %call, label %if.then, label %if.end, !dbg !1989

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %user, align 8, !dbg !1990
  %__count = getelementptr inbounds %struct.user_struct, ptr %11, i32 0, i32 0, !dbg !1992
  call void @refcount_inc(ptr noundef %__count) #12, !dbg !1993
  %12 = load ptr, ptr %user, align 8, !dbg !1994
  store ptr %12, ptr %retval, align 8, !dbg !1995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1995

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1996

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr6) #11, !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %____ptr6, metadata !1971, metadata !DIExpression()), !dbg !1997
  %13 = load ptr, ptr %user, align 8, !dbg !1997
  %uidhash_node = getelementptr inbounds %struct.user_struct, ptr %13, i32 0, i32 4, !dbg !1997
  %next = getelementptr inbounds %struct.hlist_node, ptr %uidhash_node, i32 0, i32 0, !dbg !1997
  %14 = load ptr, ptr %next, align 8, !dbg !1997
  store ptr %14, ptr %____ptr6, align 8, !dbg !1997
  %15 = load ptr, ptr %____ptr6, align 8, !dbg !1997
  %tobool8 = icmp ne ptr %15, null, !dbg !1997
  br i1 %tobool8, label %cond.true9, label %cond.false13, !dbg !1997

cond.true9:                                       ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #11, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !1974, metadata !DIExpression()), !dbg !1998
  %16 = load ptr, ptr %____ptr6, align 8, !dbg !1998
  store ptr %16, ptr %__mptr10, align 8, !dbg !1998
  %17 = load ptr, ptr %__mptr10, align 8, !dbg !1998
  %add.ptr12 = getelementptr i8, ptr %17, i64 -64, !dbg !1998
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !1998
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #11, !dbg !1997
  %18 = load ptr, ptr %tmp11, align 8, !dbg !1998
  br label %cond.end14, !dbg !1997

cond.false13:                                     ; preds = %for.inc
  br label %cond.end14, !dbg !1997

cond.end14:                                       ; preds = %cond.false13, %cond.true9
  %cond15 = phi ptr [ %18, %cond.true9 ], [ null, %cond.false13 ], !dbg !1997
  store ptr %cond15, ptr %tmp7, align 8, !dbg !1997
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr6) #11, !dbg !1983
  %19 = load ptr, ptr %tmp7, align 8, !dbg !1997
  store ptr %19, ptr %user, align 8, !dbg !1983
  br label %for.cond, !dbg !1983, !llvm.loop !1999

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2003

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %user) #11, !dbg !2004
  %20 = load ptr, ptr %retval, align 8, !dbg !2004
  ret ptr %20, !dbg !2004
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #5 align 16 !dbg !2005 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !2009, metadata !DIExpression()), !dbg !2010
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2011
  %0 = load i32, ptr %val, align 4, !dbg !2011
  ret i32 %0, !dbg !2012
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !2013 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2017, metadata !DIExpression()), !dbg !2023
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2018, metadata !DIExpression()), !dbg !2024
  br label %do.body, !dbg !2025

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !2026
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2019, metadata !DIExpression()), !dbg !2026
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !2026
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2022, metadata !DIExpression()), !dbg !2026
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2026
  %conv = zext i1 %cmp to i32, !dbg !2026
  store i32 1, ptr %tmp, align 4, !dbg !2026
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !2027
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !2027
  %0 = load i32, ptr %tmp, align 4, !dbg !2026
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2027
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !2027
  %3 = load i64, ptr %flags.addr, align 8, !dbg !2027
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #12, !dbg !2027
  br label %do.end, !dbg !2027

do.end:                                           ; preds = %do.body
  ret void, !dbg !2028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_uid(ptr noundef %up) #0 align 16 !dbg !2029 {
entry:
  %up.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !2033, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2034, metadata !DIExpression()), !dbg !2037
  %0 = load ptr, ptr %up.addr, align 8, !dbg !2038
  %tobool = icmp ne ptr %0, null, !dbg !2038
  br i1 %tobool, label %if.end, label %if.then, !dbg !2040

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2041

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %up.addr, align 8, !dbg !2042
  %__count = getelementptr inbounds %struct.user_struct, ptr %1, i32 0, i32 0, !dbg !2044
  %call = call zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef %__count, ptr noundef @uidhash_lock, ptr noundef %flags) #12, !dbg !2045
  br i1 %call, label %if.then1, label %if.end2, !dbg !2046

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %up.addr, align 8, !dbg !2047
  %3 = load i64, ptr %flags, align 8, !dbg !2048
  call void @free_user(ptr noundef %2, i64 noundef %3) #12, !dbg !2049
  br label %if.end2, !dbg !2049

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2050
  br label %cleanup, !dbg !2050

cleanup:                                          ; preds = %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !2050
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2050

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2051 dso_local zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_user(ptr noundef %up, i64 noundef %flags) #0 align 16 !dbg !2056 {
entry:
  %up.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !2060, metadata !DIExpression()), !dbg !2062
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2061, metadata !DIExpression()), !dbg !2063
  %0 = load ptr, ptr %up.addr, align 8, !dbg !2064
  call void @uid_hash_remove(ptr noundef %0) #12, !dbg !2065
  %1 = load i64, ptr %flags.addr, align 8, !dbg !2066
  call void @spin_unlock_irqrestore(ptr noundef @uidhash_lock, i64 noundef %1) #12, !dbg !2067
  %2 = load ptr, ptr %up.addr, align 8, !dbg !2068
  call void @user_epoll_free(ptr noundef %2) #12, !dbg !2069
  %3 = load ptr, ptr @uid_cachep, align 8, !dbg !2070
  %4 = load ptr, ptr %up.addr, align 8, !dbg !2071
  call void @kmem_cache_free(ptr noundef %3, ptr noundef %4) #12, !dbg !2072
  ret void, !dbg !2073
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_uid(i32 %uid.coerce) #0 align 16 !dbg !2074 {
entry:
  %retval = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %hashent = alloca ptr, align 8
  %up = alloca ptr, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !2076, metadata !DIExpression()), !dbg !2080
  call void @llvm.lifetime.start.p0(i64 8, ptr %hashent) #11, !dbg !2081
  call void @llvm.dbg.declare(metadata ptr %hashent, metadata !2077, metadata !DIExpression()), !dbg !2082
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2083
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !2083
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !2083
  %shr = lshr i32 %call, 7, !dbg !2083
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2083
  %1 = load i32, ptr %coerce.dive2, align 4, !dbg !2083
  %call3 = call i32 @__kuid_val(i32 %1) #12, !dbg !2083
  %add = add i32 %shr, %call3, !dbg !2083
  %and = and i32 %add, 127, !dbg !2083
  %idx.ext = zext i32 %and to i64, !dbg !2083
  %add.ptr = getelementptr %struct.hlist_head, ptr @uidhash_table, i64 %idx.ext, !dbg !2083
  store ptr %add.ptr, ptr %hashent, align 8, !dbg !2082
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #11, !dbg !2084
  call void @llvm.dbg.declare(metadata ptr %up, metadata !2078, metadata !DIExpression()), !dbg !2085
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #11, !dbg !2084
  call void @llvm.dbg.declare(metadata ptr %new, metadata !2079, metadata !DIExpression()), !dbg !2086
  call void @spin_lock_irq(ptr noundef @uidhash_lock) #12, !dbg !2087
  %2 = load ptr, ptr %hashent, align 8, !dbg !2088
  %coerce.dive4 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2089
  %3 = load i32, ptr %coerce.dive4, align 4, !dbg !2089
  %call5 = call ptr @uid_hash_find(i32 %3, ptr noundef %2) #12, !dbg !2089
  store ptr %call5, ptr %up, align 8, !dbg !2090
  call void @spin_unlock_irq(ptr noundef @uidhash_lock) #12, !dbg !2091
  %4 = load ptr, ptr %up, align 8, !dbg !2092
  %tobool = icmp ne ptr %4, null, !dbg !2092
  br i1 %tobool, label %if.end20, label %if.then, !dbg !2094

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @uid_cachep, align 8, !dbg !2095
  %call6 = call ptr @kmem_cache_zalloc(ptr noundef %5, i32 noundef 3264) #12, !dbg !2097
  store ptr %call6, ptr %new, align 8, !dbg !2098
  %6 = load ptr, ptr %new, align 8, !dbg !2099
  %tobool7 = icmp ne ptr %6, null, !dbg !2099
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !2101

if.then8:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !2102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2102

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %new, align 8, !dbg !2103
  %uid9 = getelementptr inbounds %struct.user_struct, ptr %7, i32 0, i32 5, !dbg !2104
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %uid9, ptr align 4 %uid, i64 4, i1 false), !dbg !2105
  %8 = load ptr, ptr %new, align 8, !dbg !2106
  %__count = getelementptr inbounds %struct.user_struct, ptr %8, i32 0, i32 0, !dbg !2107
  call void @refcount_set(ptr noundef %__count, i32 noundef 1) #12, !dbg !2108
  %9 = load ptr, ptr %new, align 8, !dbg !2109
  %call10 = call i32 @user_epoll_alloc(ptr noundef %9) #12, !dbg !2111
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2111
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2112

if.then12:                                        ; preds = %if.end
  %10 = load ptr, ptr @uid_cachep, align 8, !dbg !2113
  %11 = load ptr, ptr %new, align 8, !dbg !2115
  call void @kmem_cache_free(ptr noundef %10, ptr noundef %11) #12, !dbg !2116
  store ptr null, ptr %retval, align 8, !dbg !2117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2117

if.end13:                                         ; preds = %if.end
  %12 = load ptr, ptr %new, align 8, !dbg !2118
  %ratelimit = getelementptr inbounds %struct.user_struct, ptr %12, i32 0, i32 7, !dbg !2119
  call void @ratelimit_state_init(ptr noundef %ratelimit, i32 noundef 1000, i32 noundef 100) #12, !dbg !2120
  %13 = load ptr, ptr %new, align 8, !dbg !2121
  %ratelimit14 = getelementptr inbounds %struct.user_struct, ptr %13, i32 0, i32 7, !dbg !2122
  call void @ratelimit_set_flags(ptr noundef %ratelimit14, i64 noundef 1) #12, !dbg !2123
  call void @spin_lock_irq(ptr noundef @uidhash_lock) #12, !dbg !2124
  %14 = load ptr, ptr %hashent, align 8, !dbg !2125
  %coerce.dive15 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2126
  %15 = load i32, ptr %coerce.dive15, align 4, !dbg !2126
  %call16 = call ptr @uid_hash_find(i32 %15, ptr noundef %14) #12, !dbg !2126
  store ptr %call16, ptr %up, align 8, !dbg !2127
  %16 = load ptr, ptr %up, align 8, !dbg !2128
  %tobool17 = icmp ne ptr %16, null, !dbg !2128
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !2130

if.then18:                                        ; preds = %if.end13
  %17 = load ptr, ptr %new, align 8, !dbg !2131
  call void @user_epoll_free(ptr noundef %17) #12, !dbg !2133
  %18 = load ptr, ptr @uid_cachep, align 8, !dbg !2134
  %19 = load ptr, ptr %new, align 8, !dbg !2135
  call void @kmem_cache_free(ptr noundef %18, ptr noundef %19) #12, !dbg !2136
  br label %if.end19, !dbg !2137

if.else:                                          ; preds = %if.end13
  %20 = load ptr, ptr %new, align 8, !dbg !2138
  %21 = load ptr, ptr %hashent, align 8, !dbg !2140
  call void @uid_hash_insert(ptr noundef %20, ptr noundef %21) #12, !dbg !2141
  %22 = load ptr, ptr %new, align 8, !dbg !2142
  store ptr %22, ptr %up, align 8, !dbg !2143
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  call void @spin_unlock_irq(ptr noundef @uidhash_lock) #12, !dbg !2144
  br label %if.end20, !dbg !2145

if.end20:                                         ; preds = %if.end19, %entry
  %23 = load ptr, ptr %up, align 8, !dbg !2146
  store ptr %23, ptr %retval, align 8, !dbg !2147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2147

cleanup:                                          ; preds = %if.end20, %if.then12, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #11, !dbg !2148
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #11, !dbg !2148
  call void @llvm.lifetime.end.p0(i64 8, ptr %hashent) #11, !dbg !2148
  %24 = load ptr, ptr %retval, align 8, !dbg !2148
  ret ptr %24, !dbg !2148
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !2149 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2153, metadata !DIExpression()), !dbg !2154
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2155
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2155
  call void @_raw_spin_lock_irq(ptr noundef %1) #12, !dbg !2155
  ret void, !dbg !2156
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !2157 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2159, metadata !DIExpression()), !dbg !2160
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2161
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2161
  call void @_raw_spin_unlock_irq(ptr noundef %1) #12, !dbg !2161
  ret void, !dbg !2162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #5 align 16 !dbg !2163 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !2168, metadata !DIExpression()), !dbg !2170
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2169, metadata !DIExpression()), !dbg !2171
  %0 = load ptr, ptr %k.addr, align 8, !dbg !2172
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2173
  %or = or i32 %1, 256, !dbg !2174
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #12, !dbg !2175
  ret ptr %call, !dbg !2176
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #5 align 16 !dbg !2177 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2181, metadata !DIExpression()), !dbg !2183
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2182, metadata !DIExpression()), !dbg !2184
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2185
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !2186
  %1 = load i32, ptr %n.addr, align 4, !dbg !2187
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #12, !dbg !2188
  ret void, !dbg !2189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_epoll_alloc(ptr noundef %up) #0 align 16 !dbg !226 {
entry:
  %up.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !230, metadata !DIExpression()), !dbg !2190
  %0 = load ptr, ptr %up.addr, align 8, !dbg !2191
  %epoll_watches = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 1, !dbg !2191
  %call = call i32 @__percpu_counter_init_many(ptr noundef %epoll_watches, i64 noundef 0, i32 noundef 3264, i32 noundef 1, ptr noundef @user_epoll_alloc.__key) #12, !dbg !2191
  store i32 %call, ptr %tmp, align 4, !dbg !2191
  %1 = load i32, ptr %tmp, align 4, !dbg !2191
  ret i32 %1, !dbg !2193
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2194 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ratelimit_state_init(ptr noundef %rs, i32 noundef %interval, i32 noundef %burst) #5 align 16 !dbg !2197 {
entry:
  %rs.addr = alloca ptr, align 8
  %interval.addr = alloca i32, align 4
  %burst.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  store ptr %rs, ptr %rs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rs.addr, metadata !2203, metadata !DIExpression()), !dbg !2206
  store i32 %interval, ptr %interval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interval.addr, metadata !2204, metadata !DIExpression()), !dbg !2207
  store i32 %burst, ptr %burst.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %burst.addr, metadata !2205, metadata !DIExpression()), !dbg !2208
  %0 = load ptr, ptr %rs.addr, align 8, !dbg !2209
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 40, i1 false), !dbg !2210
  br label %do.body, !dbg !2211

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %rs.addr, align 8, !dbg !2212
  %lock = getelementptr inbounds %struct.ratelimit_state, ptr %1, i32 0, i32 0, !dbg !2212
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2212
  %2 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2212
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2212
  store i32 0, ptr %counter, align 4, !dbg !2212
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2212
  br label %do.end, !dbg !2212

do.end:                                           ; preds = %do.body
  %3 = load i32, ptr %interval.addr, align 4, !dbg !2214
  %4 = load ptr, ptr %rs.addr, align 8, !dbg !2215
  %interval1 = getelementptr inbounds %struct.ratelimit_state, ptr %4, i32 0, i32 1, !dbg !2216
  store i32 %3, ptr %interval1, align 4, !dbg !2217
  %5 = load i32, ptr %burst.addr, align 4, !dbg !2218
  %6 = load ptr, ptr %rs.addr, align 8, !dbg !2219
  %burst2 = getelementptr inbounds %struct.ratelimit_state, ptr %6, i32 0, i32 2, !dbg !2220
  store i32 %5, ptr %burst2, align 8, !dbg !2221
  ret void, !dbg !2222
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ratelimit_set_flags(ptr noundef %rs, i64 noundef %flags) #5 align 16 !dbg !2223 {
entry:
  %rs.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %rs, ptr %rs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rs.addr, metadata !2227, metadata !DIExpression()), !dbg !2229
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2228, metadata !DIExpression()), !dbg !2230
  %0 = load i64, ptr %flags.addr, align 8, !dbg !2231
  %1 = load ptr, ptr %rs.addr, align 8, !dbg !2232
  %flags1 = getelementptr inbounds %struct.ratelimit_state, ptr %1, i32 0, i32 6, !dbg !2233
  store i64 %0, ptr %flags1, align 8, !dbg !2234
  ret void, !dbg !2235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @user_epoll_free(ptr noundef %up) #0 align 16 !dbg !2236 {
entry:
  %up.addr = alloca ptr, align 8
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !2238, metadata !DIExpression()), !dbg !2239
  %0 = load ptr, ptr %up.addr, align 8, !dbg !2240
  %epoll_watches = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 1, !dbg !2241
  call void @percpu_counter_destroy(ptr noundef %epoll_watches) #12, !dbg !2242
  ret void, !dbg !2243
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uid_hash_insert(ptr noundef %up, ptr noundef %hashent) #0 align 16 !dbg !2244 {
entry:
  %up.addr = alloca ptr, align 8
  %hashent.addr = alloca ptr, align 8
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !2248, metadata !DIExpression()), !dbg !2250
  store ptr %hashent, ptr %hashent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashent.addr, metadata !2249, metadata !DIExpression()), !dbg !2251
  %0 = load ptr, ptr %up.addr, align 8, !dbg !2252
  %uidhash_node = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 4, !dbg !2253
  %1 = load ptr, ptr %hashent.addr, align 8, !dbg !2254
  call void @hlist_add_head(ptr noundef %uidhash_node, ptr noundef %1) #12, !dbg !2255
  ret void, !dbg !2256
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_user__179_252_uid_cache_init4() #7 section ".init.text" align 16 !dbg !2257 {
entry:
  %call = call i32 @uid_cache_init() #13, !dbg !2260
  ret i32 %call, !dbg !2260
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @uid_cache_init() #7 section ".init.text" align 16 !dbg !2261 {
entry:
  %n = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral3 = alloca %struct.kuid_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #11, !dbg !2264
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2263, metadata !DIExpression()), !dbg !2265
  %call = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 136, i32 noundef 0, i32 noundef 270336, ptr noundef null) #12, !dbg !2266
  store ptr %call, ptr @uid_cachep, align 8, !dbg !2267
  store i32 0, ptr %n, align 4, !dbg !2268
  br label %for.cond, !dbg !2270

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !dbg !2271
  %cmp = icmp slt i32 %0, 128, !dbg !2273
  br i1 %cmp, label %for.body, label %for.end, !dbg !2274

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !dbg !2275
  %idx.ext = sext i32 %1 to i64, !dbg !2275
  %add.ptr = getelementptr %struct.hlist_head, ptr @uidhash_table, i64 %idx.ext, !dbg !2275
  %first = getelementptr inbounds %struct.hlist_head, ptr %add.ptr, i32 0, i32 0, !dbg !2275
  store ptr null, ptr %first, align 8, !dbg !2275
  br label %for.inc, !dbg !2275

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %n, align 4, !dbg !2276
  %inc = add i32 %2, 1, !dbg !2276
  store i32 %inc, ptr %n, align 4, !dbg !2276
  br label %for.cond, !dbg !2277, !llvm.loop !2278

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @user_epoll_alloc(ptr noundef @root_user) #12, !dbg !2280
  %tobool = icmp ne i32 %call1, 0, !dbg !2280
  br i1 %tobool, label %if.then, label %if.end, !dbg !2282

if.then:                                          ; preds = %for.end
  call void (ptr, ...) @panic(ptr noundef @.str.2) #14, !dbg !2283
  unreachable, !dbg !2283

if.end:                                           ; preds = %for.end
  call void @spin_lock_irq(ptr noundef @uidhash_lock) #12, !dbg !2284
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !2285
  store i32 0, ptr %val, align 4, !dbg !2285
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !2285
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !2285
  %call2 = call i32 @__kuid_val(i32 %3) #12, !dbg !2285
  %shr = lshr i32 %call2, 7, !dbg !2285
  %val4 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral3, i32 0, i32 0, !dbg !2285
  store i32 0, ptr %val4, align 4, !dbg !2285
  %coerce.dive5 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral3, i32 0, i32 0, !dbg !2285
  %4 = load i32, ptr %coerce.dive5, align 4, !dbg !2285
  %call6 = call i32 @__kuid_val(i32 %4) #12, !dbg !2285
  %add = add i32 %shr, %call6, !dbg !2285
  %and = and i32 %add, 127, !dbg !2285
  %idx.ext7 = zext i32 %and to i64, !dbg !2285
  %add.ptr8 = getelementptr %struct.hlist_head, ptr @uidhash_table, i64 %idx.ext7, !dbg !2285
  call void @uid_hash_insert(ptr noundef @root_user, ptr noundef %add.ptr8) #12, !dbg !2286
  call void @spin_unlock_irq(ptr noundef @uidhash_lock) #12, !dbg !2287
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #11, !dbg !2288
  ret i32 0, !dbg !2289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !2290 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !2294, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.declare(metadata ptr %right, metadata !2295, metadata !DIExpression()), !dbg !2297
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !2298
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !2298
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !2298
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !2299
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !2299
  %call4 = call i32 @__kuid_val(i32 %1) #12, !dbg !2299
  %cmp = icmp eq i32 %call, %call4, !dbg !2300
  ret i1 %cmp, !dbg !2301
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !2302 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2306, metadata !DIExpression()), !dbg !2307
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2308
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #12, !dbg !2309
  ret void, !dbg !2310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !2311 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2315, metadata !DIExpression()), !dbg !2317
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2316, metadata !DIExpression()), !dbg !2318
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2319
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2320
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !2321
  ret void, !dbg !2322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !2323 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2327, metadata !DIExpression()), !dbg !2331
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2328, metadata !DIExpression()), !dbg !2332
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2329, metadata !DIExpression()), !dbg !2333
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !2334
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2330, metadata !DIExpression()), !dbg !2335
  %0 = load i32, ptr %i.addr, align 4, !dbg !2336
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2337
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2338
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #12, !dbg !2339
  store i32 %call, ptr %old, align 4, !dbg !2335
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2340
  %tobool = icmp ne ptr %2, null, !dbg !2340
  br i1 %tobool, label %if.then, label %if.end, !dbg !2342

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2343
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2344
  store i32 %3, ptr %4, align 4, !dbg !2345
  br label %if.end, !dbg !2346

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2347
  %tobool1 = icmp ne i32 %5, 0, !dbg !2347
  %lnot = xor i1 %tobool1, true, !dbg !2347
  %lnot2 = xor i1 %lnot, true, !dbg !2347
  %lnot3 = xor i1 %lnot2, true, !dbg !2347
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2347
  %conv = sext i32 %lnot.ext to i64, !dbg !2347
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2347
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2347
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2349

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2350
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #12, !dbg !2351
  br label %if.end18, !dbg !2351

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2352
  %cmp = icmp slt i32 %7, 0, !dbg !2352
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2352

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !2352
  %9 = load i32, ptr %i.addr, align 4, !dbg !2352
  %add = add i32 %8, %9, !dbg !2352
  %cmp7 = icmp slt i32 %add, 0, !dbg !2352
  br label %lor.end, !dbg !2352

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !2352
  %lnot11 = xor i1 %lnot9, true, !dbg !2352
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !2352
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !2352
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !2352
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !2352
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2354

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2355
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #12, !dbg !2356
  br label %if.end17, !dbg !2356

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !2357
  ret void, !dbg !2357
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !2358 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2364, metadata !DIExpression()), !dbg !2366
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2365, metadata !DIExpression()), !dbg !2367
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2368
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !2369
  %1 = load i32, ptr %i.addr, align 4, !dbg !2370
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2371
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #12, !dbg !2372
  ret i32 %call, !dbg !2373
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2374 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2377 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2385, metadata !DIExpression()), !dbg !2387
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2386, metadata !DIExpression()), !dbg !2388
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2389
  %1 = load i64, ptr %size.addr, align 8, !dbg !2390
  %conv = trunc i64 %1 to i32, !dbg !2390
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !2391
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2392
  %3 = load i64, ptr %size.addr, align 8, !dbg !2392
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !2392
  ret void, !dbg !2393
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !2394 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2397, metadata !DIExpression()), !dbg !2399
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2398, metadata !DIExpression()), !dbg !2400
  %0 = load i32, ptr %i.addr, align 4, !dbg !2401
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2402
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #12, !dbg !2403
  ret i32 %call, !dbg !2404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !2405 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2410, metadata !DIExpression()), !dbg !2412
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2411, metadata !DIExpression()), !dbg !2413
  ret i1 true, !dbg !2414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !2415 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2420, metadata !DIExpression()), !dbg !2423
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2421, metadata !DIExpression()), !dbg !2424
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2422, metadata !DIExpression()), !dbg !2425
  ret void, !dbg !2426
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !2427 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2430, metadata !DIExpression()), !dbg !2434
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2431, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !2436
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2432, metadata !DIExpression()), !dbg !2436
  %0 = load i32, ptr %i.addr, align 4, !dbg !2436
  store i32 %0, ptr %__ret, align 4, !dbg !2436
  %1 = load i32, ptr %__ret, align 4, !dbg !2436
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2436
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2436
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !2436, !srcloc !2437
  store i32 %3, ptr %__ret, align 4, !dbg !2436
  %4 = load i32, ptr %__ret, align 4, !dbg !2436
  store i32 %4, ptr %tmp, align 4, !dbg !2436
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !2438
  %5 = load i32, ptr %tmp, align 4, !dbg !2436
  ret i32 %5, !dbg !2439
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2440 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uid_hash_remove(ptr noundef %up) #0 align 16 !dbg !2443 {
entry:
  %up.addr = alloca ptr, align 8
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  %0 = load ptr, ptr %up.addr, align 8, !dbg !2447
  %uidhash_node = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 4, !dbg !2448
  call void @hlist_del_init(ptr noundef %uidhash_node) #12, !dbg !2449
  ret void, !dbg !2450
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del_init(ptr noundef %n) #5 align 16 !dbg !2451 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2456, metadata !DIExpression()), !dbg !2457
  %0 = load ptr, ptr %n.addr, align 8, !dbg !2458
  %call = call i32 @hlist_unhashed(ptr noundef %0) #12, !dbg !2460
  %tobool = icmp ne i32 %call, 0, !dbg !2460
  br i1 %tobool, label %if.end, label %if.then, !dbg !2461

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8, !dbg !2462
  call void @__hlist_del(ptr noundef %1) #12, !dbg !2464
  %2 = load ptr, ptr %n.addr, align 8, !dbg !2465
  call void @INIT_HLIST_NODE(ptr noundef %2) #12, !dbg !2466
  br label %if.end, !dbg !2467

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed(ptr noundef %h) #5 align 16 !dbg !2469 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2475, metadata !DIExpression()), !dbg !2476
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2477
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !2478
  %1 = load ptr, ptr %pprev, align 8, !dbg !2478
  %tobool = icmp ne ptr %1, null, !dbg !2479
  %lnot = xor i1 %tobool, true, !dbg !2479
  %lnot.ext = zext i1 %lnot to i32, !dbg !2479
  ret i32 %lnot.ext, !dbg !2480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_del(ptr noundef %n) #5 align 16 !dbg !2481 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2483, metadata !DIExpression()), !dbg !2486
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #11, !dbg !2487
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2484, metadata !DIExpression()), !dbg !2488
  %0 = load ptr, ptr %n.addr, align 8, !dbg !2489
  %next1 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !2490
  %1 = load ptr, ptr %next1, align 8, !dbg !2490
  store ptr %1, ptr %next, align 8, !dbg !2488
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #11, !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !2485, metadata !DIExpression()), !dbg !2492
  %2 = load ptr, ptr %n.addr, align 8, !dbg !2493
  %pprev2 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !2494
  %3 = load ptr, ptr %pprev2, align 8, !dbg !2494
  store ptr %3, ptr %pprev, align 8, !dbg !2492
  br label %do.body, !dbg !2495

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !2496

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !2498

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !2498

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !2496

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !2500
  %5 = load ptr, ptr %pprev, align 8, !dbg !2500
  store volatile ptr %4, ptr %5, align 8, !dbg !2500
  br label %do.cond5, !dbg !2500

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2500

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !2496

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !2496

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %next, align 8, !dbg !2502
  %tobool = icmp ne ptr %6, null, !dbg !2502
  br i1 %tobool, label %if.then, label %if.end, !dbg !2504

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !2505

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !2506

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !2508

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2508

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !2506

do.body13:                                        ; preds = %do.end12
  %7 = load ptr, ptr %pprev, align 8, !dbg !2510
  %8 = load ptr, ptr %next, align 8, !dbg !2510
  %pprev14 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1, !dbg !2510
  store volatile ptr %7, ptr %pprev14, align 8, !dbg !2510
  br label %do.cond15, !dbg !2510

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !2510

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !2506

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2506

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !2506

if.end:                                           ; preds = %do.end18, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #11, !dbg !2512
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #11, !dbg !2512
  ret void, !dbg !2512
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_HLIST_NODE(ptr noundef %h) #5 align 16 !dbg !2513 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2515, metadata !DIExpression()), !dbg !2516
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2517
  %next = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !2518
  store ptr null, ptr %next, align 8, !dbg !2519
  %1 = load ptr, ptr %h.addr, align 8, !dbg !2520
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1, !dbg !2521
  store ptr null, ptr %pprev, align 8, !dbg !2522
  ret void, !dbg !2523
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2524 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2527 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2528 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !2529 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2533, metadata !DIExpression()), !dbg !2535
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2534, metadata !DIExpression()), !dbg !2536
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2537
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #12, !dbg !2538
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2539
  %2 = load i32, ptr %i.addr, align 4, !dbg !2540
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #12, !dbg !2541
  ret void, !dbg !2542
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2543 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2545, metadata !DIExpression()), !dbg !2547
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2546, metadata !DIExpression()), !dbg !2548
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2549
  %1 = load i64, ptr %size.addr, align 8, !dbg !2550
  %conv = trunc i64 %1 to i32, !dbg !2550
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !2551
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2552
  %3 = load i64, ptr %size.addr, align 8, !dbg !2552
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !2552
  ret void, !dbg !2553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !2554 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2556, metadata !DIExpression()), !dbg !2558
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2557, metadata !DIExpression()), !dbg !2559
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2560
  %1 = load i32, ptr %i.addr, align 4, !dbg !2561
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #12, !dbg !2562
  ret void, !dbg !2563
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !2564 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2566, metadata !DIExpression()), !dbg !2568
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2567, metadata !DIExpression()), !dbg !2569
  br label %do.body, !dbg !2570

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !2571
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2571
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2571
  store volatile i32 %0, ptr %counter, align 4, !dbg !2571
  br label %do.end, !dbg !2571

do.end:                                           ; preds = %do.body
  ret void, !dbg !2573
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2574 dso_local i32 @__percpu_counter_init_many(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_destroy(ptr noundef %fbc) #5 align 16 !dbg !2579 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !2585
  call void @percpu_counter_destroy_many(ptr noundef %0, i32 noundef 1) #12, !dbg !2586
  ret void, !dbg !2587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2588 dso_local void @percpu_counter_destroy_many(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head(ptr noundef %n, ptr noundef %h) #5 align 16 !dbg !2591 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2595, metadata !DIExpression()), !dbg !2598
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2596, metadata !DIExpression()), !dbg !2599
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #11, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %first, metadata !2597, metadata !DIExpression()), !dbg !2601
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2602
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !2603
  %1 = load ptr, ptr %first1, align 8, !dbg !2603
  store ptr %1, ptr %first, align 8, !dbg !2601
  br label %do.body, !dbg !2604

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2605

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !2607

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2607

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2605

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %first, align 8, !dbg !2609
  %3 = load ptr, ptr %n.addr, align 8, !dbg !2609
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !2609
  store volatile ptr %2, ptr %next, align 8, !dbg !2609
  br label %do.cond4, !dbg !2609

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !2609

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !2605

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !2605

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %first, align 8, !dbg !2611
  %tobool = icmp ne ptr %4, null, !dbg !2611
  br i1 %tobool, label %if.then, label %if.end, !dbg !2613

if.then:                                          ; preds = %do.end7
  br label %do.body8, !dbg !2614

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !2615

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !2617

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2617

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !2615

do.body12:                                        ; preds = %do.end11
  %5 = load ptr, ptr %n.addr, align 8, !dbg !2619
  %next13 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 0, !dbg !2619
  %6 = load ptr, ptr %first, align 8, !dbg !2619
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1, !dbg !2619
  store volatile ptr %next13, ptr %pprev, align 8, !dbg !2619
  br label %do.cond14, !dbg !2619

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !2619

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !2615

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2615

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !2615

if.end:                                           ; preds = %do.end17, %do.end7
  br label %do.body18, !dbg !2621

do.body18:                                        ; preds = %if.end
  br label %do.body19, !dbg !2622

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !2624

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !2624

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !2622

do.body22:                                        ; preds = %do.end21
  %7 = load ptr, ptr %n.addr, align 8, !dbg !2626
  %8 = load ptr, ptr %h.addr, align 8, !dbg !2626
  %first23 = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !2626
  store volatile ptr %7, ptr %first23, align 8, !dbg !2626
  br label %do.cond24, !dbg !2626

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !2626

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !2622

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !2622

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !2628

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !2629

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !2631

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !2631

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !2629

do.body32:                                        ; preds = %do.end31
  %9 = load ptr, ptr %h.addr, align 8, !dbg !2633
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %9, i32 0, i32 0, !dbg !2633
  %10 = load ptr, ptr %n.addr, align 8, !dbg !2633
  %pprev34 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1, !dbg !2633
  store volatile ptr %first33, ptr %pprev34, align 8, !dbg !2633
  br label %do.cond35, !dbg !2633

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !2633

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !2629

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !2629

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #11, !dbg !2635
  ret void, !dbg !2635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2636 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !2642 dso_local void @panic(ptr noundef, ...) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }
attributes #14 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911}
!llvm.ident = !{!1912}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_user_ns", scope: !2, file: !3, line: 27, type: !244, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.user.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/user\22 -D KBUILD_BASENAME=\22user\22 -D KBUILD_MODNAME=\22user\22 -D __KBUILD_MODNAME=kmod_user -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/user.ll kernel/user.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !200, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/user.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc82319a6dd423214b46d687eddd34b1")
!4 = !{!5, !11, !17, !24, !120, !128}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !26, file: !25, line: 147, baseType: !7, size: 32, elements: !117)
!25 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !25, line: 135, size: 512, elements: !27)
!27 = !{!28, !32, !34, !36, !40, !41, !57, !115, !116}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !26, file: !25, line: 136, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !25, line: 137, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !26, file: !25, line: 138, baseType: !35, size: 32, offset: 128)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !26, file: !25, line: 139, baseType: !37, size: 16, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !38, line: 24, baseType: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !25, line: 150, baseType: !24, size: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !26, file: !25, line: 151, baseType: !42, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !25, line: 64, baseType: !44)
!44 = !DISubroutineType(types: !45)
!45 = !{!35, !46, !35, !33, !47, !53}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 61, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !50, line: 72, baseType: !51)
!50 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !50, line: 16, baseType: !52)
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !38, line: 52, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !50, line: 88, baseType: !56)
!56 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !26, file: !25, line: 152, baseType: !58, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !25, line: 117, size: 256, elements: !60)
!60 = !{!61, !66}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !59, file: !25, line: 118, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !38, line: 174, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 172, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !63, file: !38, line: 173, baseType: !35, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !59, file: !25, line: 119, baseType: !67, size: 192, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !68, line: 41, baseType: !69)
!68 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !68, line: 37, size: 192, elements: !70)
!70 = !{!71, !109}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !69, file: !68, line: 38, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !73, line: 29, baseType: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !73, line: 17, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 18, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 18, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !77, file: !73, line: 19, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !81, line: 14, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !80, file: !81, line: 15, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !85, line: 44, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !85, line: 14, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 15, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 15, size: 32, elements: !90)
!90 = !{!91, !92, !102}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !85, line: 16, baseType: !62, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 24, baseType: !93, size: 16)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 24, size: 16, elements: !94)
!94 = !{!95, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !93, file: !85, line: 25, baseType: !96, size: 8)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !97, line: 17, baseType: !98)
!97 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !99, line: 21, baseType: !100)
!99 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !93, file: !85, line: 26, baseType: !96, size: 8, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 28, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 28, size: 32, elements: !104)
!104 = !{!105, !108}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !103, file: !85, line: 29, baseType: !106, size: 16)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !97, line: 19, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !99, line: 24, baseType: !39)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !103, file: !85, line: 30, baseType: !106, size: 16, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !69, file: !68, line: 39, baseType: !110, size: 128, offset: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !38, line: 190, size: 128, elements: !111)
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !38, line: 191, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !38, line: 191, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !26, file: !25, line: 153, baseType: !33, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !26, file: !25, line: 154, baseType: !33, size: 64, offset: 448)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!119 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !121, line: 119, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!124 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!125 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!126 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!127 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 10, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "false", value: 0)
!132 = !DIEnumerator(name: "true", value: 1)
!133 = !{!33, !134, !135, !193, !195, !197, !199}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !38, line: 154, baseType: !7)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !137, line: 14, size: 1088, elements: !138)
!137 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!138 = !{!139, !144, !158, !159, !166, !173, !181, !182}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !136, file: !137, line: 15, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !121, line: 113, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !121, line: 111, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !141, file: !121, line: 112, baseType: !62, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !136, file: !137, line: 17, baseType: !145, size: 320, offset: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !146, line: 22, size: 320, elements: !147)
!146 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!147 = !{!148, !150, !153, !154}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !145, file: !146, line: 23, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !81, line: 23, baseType: !80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !145, file: !146, line: 24, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !97, line: 22, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !99, line: 30, baseType: !56)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !145, file: !146, line: 26, baseType: !110, size: 128, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !145, file: !146, line: 28, baseType: !155, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !97, line: 20, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !99, line: 26, baseType: !35)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !136, file: !137, line: 19, baseType: !52, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !136, file: !137, line: 20, baseType: !160, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !161, line: 13, baseType: !162)
!161 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !38, line: 181, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 179, size: 64, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !163, file: !38, line: 180, baseType: !151, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !136, file: !137, line: 23, baseType: !167, size: 128, offset: 512)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !38, line: 198, size: 128, elements: !168)
!168 = !{!169, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !38, line: 199, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !167, file: !38, line: 199, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !136, file: !137, line: 24, baseType: !174, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !175, line: 23, baseType: !176)
!175 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 21, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !176, file: !175, line: 22, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !38, line: 37, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !50, line: 49, baseType: !7)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !136, file: !137, line: 29, baseType: !160, size: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !136, file: !137, line: 36, baseType: !183, size: 320, offset: 768)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !184, line: 15, size: 320, elements: !185)
!184 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!185 = !{!186, !187, !188, !189, !190, !191, !192}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !183, file: !184, line: 16, baseType: !149, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !183, file: !184, line: 18, baseType: !35, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !183, file: !184, line: 19, baseType: !35, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !183, file: !184, line: 20, baseType: !35, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !183, file: !184, line: 21, baseType: !35, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !183, file: !184, line: 22, baseType: !52, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !184, line: 23, baseType: !52, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !170)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !38, line: 155, baseType: !7)
!200 = !{!0, !201, !203, !205, !207, !209, !214, !222, !224, !234, !239}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_user_ns177", scope: !2, file: !3, line: 71, type: !33, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "root_user", scope: !2, file: !3, line: 99, type: !136, isLocal: false, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_free_uid178", scope: !2, file: !3, line: 188, type: !33, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_user__179_252_uid_cache_init4180", scope: !2, file: !3, line: 252, type: !33, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "uid_cachep", scope: !2, file: !3, line: 84, type: !211, isLocal: true, isDefinition: true)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !213, line: 11, flags: DIFlagFwdDecl)
!213 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "uidhash_table", scope: !2, file: !3, line: 85, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 8192, elements: !220)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !38, line: 194, size: 64, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !217, file: !38, line: 195, baseType: !170, size: 64)
!220 = !{!221}
!221 = !DISubrange(count: 128)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "uidhash_lock", scope: !2, file: !3, line: 96, type: !72, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "__key", scope: !226, file: !3, line: 135, type: !231, isLocal: true, isDefinition: true)
!226 = distinct !DISubprogram(name: "user_epoll_alloc", scope: !3, file: !3, line: 132, type: !227, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{!35, !135}
!229 = !{!230}
!230 = !DILocalVariable(name: "up", arg: 1, scope: !226, file: !3, line: 132, type: !135)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !232, line: 206, elements: !233)
!232 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!233 = !{}
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 80, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 10)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 352, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 44)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !245, line: 68, size: 4800, elements: !246)
!245 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!246 = !{!247, !271, !272, !273, !275, !276, !277, !284, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1887, !1888, !1900, !1902}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !244, file: !245, line: 69, baseType: !248, size: 576)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !245, line: 23, size: 576, elements: !249)
!249 = !{!250, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !248, file: !245, line: 24, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !97, line: 21, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !99, line: 27, baseType: !7)
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !245, line: 25, baseType: !254, size: 512, offset: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !245, line: 25, size: 512, elements: !255)
!255 = !{!256, !265}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !254, file: !245, line: 26, baseType: !257, size: 480)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 480, elements: !263)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !245, line: 17, size: 96, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !258, file: !245, line: 18, baseType: !251, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !258, file: !245, line: 19, baseType: !251, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !258, file: !245, line: 20, baseType: !251, size: 32, offset: 64)
!263 = !{!264}
!264 = !DISubrange(count: 5)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !254, file: !245, line: 27, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !254, file: !245, line: 27, size: 128, elements: !267)
!267 = !{!268, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !266, file: !245, line: 28, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !266, file: !245, line: 29, baseType: !269, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !244, file: !245, line: 70, baseType: !248, size: 576, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !244, file: !245, line: 71, baseType: !248, size: 576, offset: 1152)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !244, file: !245, line: 72, baseType: !274, size: 64, offset: 1728)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !244, file: !245, line: 73, baseType: !35, size: 32, offset: 1792)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !244, file: !245, line: 74, baseType: !174, size: 32, offset: 1824)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !244, file: !245, line: 75, baseType: !278, size: 32, offset: 1856)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !175, line: 28, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 26, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !279, file: !175, line: 27, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !38, line: 38, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !50, line: 50, baseType: !7)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !244, file: !245, line: 76, baseType: !285, size: 192, offset: 1920)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !286, line: 9, size: 192, elements: !287)
!286 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!287 = !{!288, !289, !1820, !1821}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !285, file: !286, line: 10, baseType: !160, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !285, file: !286, line: 11, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !293, line: 16, size: 512, elements: !294)
!293 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!294 = !{!295, !296, !297, !298, !1797, !1801, !1812, !1816}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !293, line: 17, baseType: !29, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !292, file: !293, line: 18, baseType: !29, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !292, file: !293, line: 19, baseType: !35, size: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !292, file: !293, line: 20, baseType: !299, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !305, line: 746, size: 58368, elements: !306)
!305 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!306 = !{!307, !315, !316, !317, !318, !319, !320, !321, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !402, !413, !513, !517, !520, !551, !552, !553, !554, !565, !567, !568, !569, !570, !571, !572, !583, !584, !587, !588, !589, !590, !591, !592, !593, !594, !601, !602, !609, !610, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !862, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !903, !905, !906, !907, !919, !921, !922, !923, !924, !925, !926, !932, !933, !934, !935, !936, !937, !938, !952, !958, !962, !963, !964, !1077, !1081, !1084, !1091, !1096, !1099, !1102, !1105, !1131, !1134, !1137, !1143, !1144, !1145, !1151, !1152, !1153, !1154, !1155, !1158, !1159, !1160, !1169, !1177, !1178, !1179, !1180, !1181, !1186, !1187, !1188, !1191, !1192, !1195, !1198, !1201, !1204, !1207, !1208, !1295, !1306, !1307, !1308, !1309, !1315, !1320, !1321, !1322, !1325, !1326, !1329, !1332, !1333, !1336, !1337, !1338, !1341, !1342, !1343, !1346, !1347, !1348, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1380, !1383, !1451, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1463, !1535, !1537, !1538, !1539, !1540, !1541, !1553, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1570, !1571, !1572}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !304, file: !305, line: 752, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !309, line: 56, size: 192, elements: !310)
!309 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!310 = !{!311, !312, !313, !314}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !309, line: 57, baseType: !52, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !308, file: !309, line: 58, baseType: !52, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !308, file: !309, line: 59, baseType: !251, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !308, file: !309, line: 61, baseType: !251, size: 32, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !304, file: !305, line: 754, baseType: !7, size: 32, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !304, file: !305, line: 767, baseType: !33, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !304, file: !305, line: 768, baseType: !140, size: 32, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 770, baseType: !7, size: 32, offset: 352)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !304, file: !305, line: 771, baseType: !7, size: 32, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !304, file: !305, line: 774, baseType: !35, size: 32, offset: 416)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !304, file: !305, line: 775, baseType: !322, size: 128, offset: 448)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !323, line: 58, size: 128, elements: !324)
!323 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!324 = !{!325, !331, !336, !337}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !322, file: !323, line: 59, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !327, line: 60, size: 64, elements: !328)
!327 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !327, line: 61, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !323, line: 60, baseType: !332, size: 32, offset: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !323, line: 60, size: 32, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !332, file: !323, line: 61, baseType: !7, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !332, file: !323, line: 62, baseType: !62, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !322, file: !323, line: 65, baseType: !106, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !322, file: !323, line: 65, baseType: !106, size: 16, offset: 112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !304, file: !305, line: 776, baseType: !7, size: 32, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !304, file: !305, line: 777, baseType: !52, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !304, file: !305, line: 778, baseType: !303, size: 64, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !304, file: !305, line: 787, baseType: !35, size: 32, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !304, file: !305, line: 788, baseType: !35, size: 32, offset: 800)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !304, file: !305, line: 790, baseType: !35, size: 32, offset: 832)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !304, file: !305, line: 792, baseType: !35, size: 32, offset: 864)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !304, file: !305, line: 793, baseType: !35, size: 32, offset: 896)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !304, file: !305, line: 794, baseType: !35, size: 32, offset: 928)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !304, file: !305, line: 795, baseType: !7, size: 32, offset: 960)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !304, file: !305, line: 797, baseType: !349, size: 2048, offset: 1024)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !305, line: 551, size: 2048, elements: !350)
!350 = !{!351, !356, !364, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !381, !384, !385, !386}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !349, file: !305, line: 553, baseType: !352, size: 128)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !305, line: 411, size: 128, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !352, file: !305, line: 412, baseType: !52, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !352, file: !305, line: 413, baseType: !251, size: 32, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !349, file: !305, line: 554, baseType: !357, size: 192, align: 64, offset: 128)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !358, line: 5, size: 192, align: 64, elements: !359)
!358 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!359 = !{!360, !361, !363}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !357, file: !358, line: 6, baseType: !52, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !357, file: !358, line: 7, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !357, file: !358, line: 8, baseType: !362, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !349, file: !305, line: 555, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !97, line: 23, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !99, line: 31, baseType: !367)
!367 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !349, file: !305, line: 556, baseType: !365, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !349, file: !305, line: 558, baseType: !110, size: 128, offset: 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !349, file: !305, line: 559, baseType: !7, size: 32, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !349, file: !305, line: 561, baseType: !365, size: 64, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !349, file: !305, line: 562, baseType: !365, size: 64, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !349, file: !305, line: 563, baseType: !365, size: 64, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !349, file: !305, line: 564, baseType: !365, size: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !349, file: !305, line: 565, baseType: !151, size: 64, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !349, file: !305, line: 566, baseType: !365, size: 64, offset: 960)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !349, file: !305, line: 568, baseType: !365, size: 64, offset: 1024)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !349, file: !305, line: 571, baseType: !35, size: 32, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !349, file: !305, line: 572, baseType: !380, size: 64, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !349, file: !305, line: 574, baseType: !382, size: 64, offset: 1216)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !305, line: 49, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !349, file: !305, line: 576, baseType: !382, size: 64, offset: 1280)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !349, file: !305, line: 578, baseType: !52, size: 64, offset: 1344)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !349, file: !305, line: 588, baseType: !387, size: 512, align: 512, offset: 1536)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !305, line: 497, size: 512, align: 512, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !387, file: !305, line: 498, baseType: !365, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !387, file: !305, line: 499, baseType: !365, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !387, file: !305, line: 500, baseType: !365, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !387, file: !305, line: 501, baseType: !251, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !387, file: !305, line: 502, baseType: !251, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !387, file: !305, line: 503, baseType: !52, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !387, file: !305, line: 504, baseType: !52, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !387, file: !305, line: 505, baseType: !52, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !387, file: !305, line: 506, baseType: !398, size: 64, align: 64, offset: 448)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !305, line: 445, size: 64, align: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !398, file: !305, line: 446, baseType: !7, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !398, file: !305, line: 447, baseType: !7, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !304, file: !305, line: 798, baseType: !403, size: 384, offset: 3072)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !305, line: 592, size: 384, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !403, file: !305, line: 593, baseType: !110, size: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !403, file: !305, line: 594, baseType: !52, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !403, file: !305, line: 595, baseType: !52, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !403, file: !305, line: 596, baseType: !7, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !403, file: !305, line: 597, baseType: !39, size: 16, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !403, file: !305, line: 598, baseType: !39, size: 16, offset: 304)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !403, file: !305, line: 600, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !304, file: !305, line: 799, baseType: !414, size: 1792, offset: 3456)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !305, line: 610, size: 1792, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !510, !511}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !414, file: !305, line: 611, baseType: !357, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !414, file: !305, line: 618, baseType: !365, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !414, file: !305, line: 619, baseType: !365, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !414, file: !305, line: 620, baseType: !365, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !414, file: !305, line: 621, baseType: !365, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !414, file: !305, line: 622, baseType: !365, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !414, file: !305, line: 629, baseType: !151, size: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !414, file: !305, line: 630, baseType: !365, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !305, line: 631, baseType: !7, size: 32, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !414, file: !305, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !414, file: !305, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !414, file: !305, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !414, file: !305, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !414, file: !305, line: 662, baseType: !430, size: 512, offset: 704)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !431)
!431 = !{!432, !440, !441, !446, !506, !507, !508, !509}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !430, file: !6, line: 119, baseType: !433, size: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !434, line: 9, size: 256, elements: !435)
!434 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !433, file: !434, line: 10, baseType: !357, size: 192, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !433, file: !434, line: 11, baseType: !438, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !439, line: 29, baseType: !151)
!439 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !430, file: !6, line: 120, baseType: !438, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !430, file: !6, line: 121, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!5, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !430, file: !6, line: 122, baseType: !447, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !449)
!449 = !{!450, !475, !476, !479, !489, !490, !501, !505}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !448, file: !6, line: 160, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !452, file: !6, line: 216, baseType: !149, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !452, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !452, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !452, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !452, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !452, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !452, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !452, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !452, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !452, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !452, file: !6, line: 227, baseType: !39, size: 16, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !452, file: !6, line: 228, baseType: !39, size: 16, offset: 208)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !452, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !452, file: !6, line: 235, baseType: !438, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !452, file: !6, line: 236, baseType: !445, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !452, file: !6, line: 237, baseType: !438, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !452, file: !6, line: 238, baseType: !445, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !452, file: !6, line: 239, baseType: !472, size: 4096, align: 512, offset: 512)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 4096, align: 512, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 8)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !448, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !448, file: !6, line: 162, baseType: !477, size: 32, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !38, line: 32, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !50, line: 96, baseType: !35)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !448, file: !6, line: 163, baseType: !480, size: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !481, line: 274, baseType: !482)
!481 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !481, line: 274, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !482, file: !481, line: 274, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !481, line: 69, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !481, line: 64, size: 32, elements: !487)
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !486, file: !481, line: 65, baseType: !7, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !448, file: !6, line: 164, baseType: !445, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !448, file: !6, line: 165, baseType: !491, size: 128, offset: 256)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !434, line: 14, size: 128, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !491, file: !434, line: 15, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !358, line: 26, size: 128, elements: !495)
!495 = !{!496, !500}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !494, file: !358, line: 27, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !358, line: 12, size: 64, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !497, file: !358, line: 13, baseType: !362, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !494, file: !358, line: 28, baseType: !362, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !448, file: !6, line: 166, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!438}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !448, file: !6, line: 167, baseType: !438, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !430, file: !6, line: 123, baseType: !96, size: 8, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !430, file: !6, line: 124, baseType: !96, size: 8, offset: 456)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !430, file: !6, line: 125, baseType: !96, size: 8, offset: 464)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !430, file: !6, line: 126, baseType: !96, size: 8, offset: 472)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !414, file: !305, line: 671, baseType: !430, size: 512, offset: 1216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !414, file: !305, line: 679, baseType: !512, size: 64, offset: 1728)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !304, file: !305, line: 800, baseType: !514, size: 64, offset: 5248)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !305, line: 800, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !304, file: !305, line: 809, baseType: !518, size: 64, offset: 5312)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !305, line: 70, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !304, file: !305, line: 825, baseType: !521, size: 2048, align: 512, offset: 5632)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !305, line: 509, size: 2048, align: 512, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !521, file: !305, line: 511, baseType: !365, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !521, file: !305, line: 512, baseType: !365, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !521, file: !305, line: 513, baseType: !365, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !521, file: !305, line: 514, baseType: !365, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !521, file: !305, line: 515, baseType: !365, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !521, file: !305, line: 516, baseType: !365, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !521, file: !305, line: 518, baseType: !365, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !521, file: !305, line: 519, baseType: !365, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !521, file: !305, line: 520, baseType: !151, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !521, file: !305, line: 522, baseType: !365, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !521, file: !305, line: 523, baseType: !365, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !521, file: !305, line: 524, baseType: !151, size: 64, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !521, file: !305, line: 526, baseType: !151, size: 64, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !521, file: !305, line: 527, baseType: !365, size: 64, offset: 832)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !521, file: !305, line: 529, baseType: !365, size: 64, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !521, file: !305, line: 530, baseType: !365, size: 64, offset: 960)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !521, file: !305, line: 531, baseType: !365, size: 64, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !521, file: !305, line: 532, baseType: !365, size: 64, offset: 1088)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !521, file: !305, line: 533, baseType: !365, size: 64, offset: 1152)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !521, file: !305, line: 535, baseType: !365, size: 64, offset: 1216)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !521, file: !305, line: 536, baseType: !365, size: 64, offset: 1280)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !521, file: !305, line: 537, baseType: !365, size: 64, offset: 1344)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !521, file: !305, line: 538, baseType: !365, size: 64, offset: 1408)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !521, file: !305, line: 539, baseType: !365, size: 64, offset: 1472)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !521, file: !305, line: 540, baseType: !365, size: 64, offset: 1536)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !521, file: !305, line: 541, baseType: !365, size: 64, offset: 1600)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !521, file: !305, line: 542, baseType: !365, size: 64, offset: 1664)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !521, file: !305, line: 543, baseType: !365, size: 64, offset: 1728)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !304, file: !305, line: 833, baseType: !7, size: 32, offset: 7680)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !304, file: !305, line: 836, baseType: !7, size: 32, offset: 7712)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !304, file: !305, line: 837, baseType: !35, size: 32, offset: 7744)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !304, file: !305, line: 838, baseType: !555, size: 64, offset: 7808)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !558, line: 19, baseType: !559)
!558 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !558, line: 19, size: 64, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !559, file: !558, line: 19, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 1)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !304, file: !305, line: 839, baseType: !566, size: 64, offset: 7872)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !304, file: !305, line: 840, baseType: !557, size: 64, offset: 7936)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !304, file: !305, line: 841, baseType: !33, size: 64, offset: 8000)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !304, file: !305, line: 843, baseType: !39, size: 16, offset: 8064)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !304, file: !305, line: 845, baseType: !39, size: 16, offset: 8080)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !304, file: !305, line: 848, baseType: !35, size: 32, offset: 8096)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !304, file: !305, line: 849, baseType: !573, size: 32, offset: 8128)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !305, line: 718, size: 32, elements: !574)
!574 = !{!575, !582}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !573, file: !305, line: 724, baseType: !576, size: 32)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !305, line: 719, size: 32, elements: !577)
!577 = !{!578, !579, !580, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !576, file: !305, line: 720, baseType: !96, size: 8)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !576, file: !305, line: 721, baseType: !96, size: 8, offset: 8)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !576, file: !305, line: 722, baseType: !96, size: 8, offset: 16)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !576, file: !305, line: 723, baseType: !96, size: 8, offset: 24)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !573, file: !305, line: 725, baseType: !251, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !304, file: !305, line: 850, baseType: !110, size: 128, offset: 8192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !304, file: !305, line: 851, baseType: !585, size: 64, offset: 8320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !305, line: 60, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !304, file: !305, line: 855, baseType: !52, size: 64, offset: 8384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !304, file: !305, line: 856, baseType: !96, size: 8, offset: 8448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !304, file: !305, line: 857, baseType: !96, size: 8, offset: 8456)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !304, file: !305, line: 858, baseType: !35, size: 32, offset: 8480)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !304, file: !305, line: 859, baseType: !110, size: 128, offset: 8512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !304, file: !305, line: 860, baseType: !35, size: 32, offset: 8640)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !304, file: !305, line: 861, baseType: !110, size: 128, offset: 8704)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !304, file: !305, line: 873, baseType: !595, size: 256, offset: 8832)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !305, line: 376, size: 256, elements: !596)
!596 = !{!597, !598, !599, !600}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !595, file: !305, line: 381, baseType: !52, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !595, file: !305, line: 384, baseType: !367, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !595, file: !305, line: 389, baseType: !367, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !595, file: !305, line: 392, baseType: !367, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !304, file: !305, line: 875, baseType: !110, size: 128, offset: 9088)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !304, file: !305, line: 877, baseType: !603, size: 320, offset: 9216)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !604, line: 86, size: 320, elements: !605)
!604 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!605 = !{!606, !607, !608}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !603, file: !604, line: 87, baseType: !35, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !603, file: !604, line: 88, baseType: !110, size: 128, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !603, file: !604, line: 89, baseType: !110, size: 128, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !304, file: !305, line: 878, baseType: !357, size: 192, align: 64, offset: 9536)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !304, file: !305, line: 881, baseType: !611, size: 64, offset: 9728)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !613, line: 733, size: 10240, elements: !614)
!613 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!614 = !{!615, !778}
!615 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !613, line: 734, baseType: !616, size: 10240)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !613, line: 734, size: 10240, elements: !617)
!617 = !{!618, !622, !635, !642, !643, !644, !645, !646, !647, !655, !656, !657, !663, !664, !665, !666, !667, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !708, !712, !715, !747, !748, !749, !752, !753, !754, !757, !758, !759, !765, !766}
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !613, line: 739, baseType: !619, size: 512, align: 512)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !616, file: !613, line: 739, size: 512, align: 512, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !619, file: !613, line: 747, baseType: !62, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !616, file: !613, line: 750, baseType: !623, size: 128, offset: 512)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !624, line: 218, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!625 = !{!626, !633, !634}
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 219, baseType: !627, size: 32)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 219, size: 32, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !627, file: !624, line: 220, baseType: !72, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !627, file: !624, line: 221, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !624, line: 197, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !624, line: 197, elements: !233)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !623, file: !624, line: 223, baseType: !7, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !623, file: !624, line: 224, baseType: !33, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !616, file: !613, line: 752, baseType: !636, size: 64, offset: 640)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!52, !639, !52, !52, !52, !52}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !641, line: 537, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !616, file: !613, line: 756, baseType: !52, size: 64, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !616, file: !613, line: 757, baseType: !52, size: 64, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !616, file: !613, line: 760, baseType: !52, size: 64, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !616, file: !613, line: 761, baseType: !52, size: 64, offset: 896)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !616, file: !613, line: 763, baseType: !52, size: 64, offset: 960)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !616, file: !613, line: 764, baseType: !648, size: 64, offset: 1024)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !641, line: 299, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !641, line: 299, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !650, file: !641, line: 299, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !654, line: 18, baseType: !52)
!654 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!655 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !616, file: !613, line: 773, baseType: !62, size: 32, offset: 1088)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !616, file: !613, line: 785, baseType: !62, size: 32, offset: 1120)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !616, file: !613, line: 795, baseType: !658, size: 64, offset: 1152)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !613, line: 726, size: 128, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !659, file: !613, line: 727, baseType: !365, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !659, file: !613, line: 728, baseType: !35, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !616, file: !613, line: 801, baseType: !52, size: 64, offset: 1216)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !616, file: !613, line: 804, baseType: !160, size: 64, offset: 1280)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !616, file: !613, line: 806, baseType: !35, size: 32, offset: 1344)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !616, file: !613, line: 808, baseType: !72, size: 32, offset: 1376)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !616, file: !613, line: 823, baseType: !668, size: 320, offset: 1408)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !669, line: 48, size: 320, elements: !670)
!669 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!670 = !{!671, !672, !673, !678, !679}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !669, line: 49, baseType: !160, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !668, file: !669, line: 55, baseType: !160, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !668, file: !669, line: 57, baseType: !674, size: 32, offset: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !675, line: 15, size: 32, elements: !676)
!675 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !674, file: !675, line: 20, baseType: !62, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !668, file: !669, line: 59, baseType: !149, size: 32, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !668, file: !669, line: 60, baseType: !110, size: 128, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !616, file: !613, line: 825, baseType: !110, size: 128, offset: 1728)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !616, file: !613, line: 845, baseType: !35, size: 32, offset: 1856)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !616, file: !613, line: 849, baseType: !52, size: 64, offset: 1920)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !616, file: !613, line: 850, baseType: !52, size: 64, offset: 1984)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !616, file: !613, line: 852, baseType: !52, size: 64, offset: 2048)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !616, file: !613, line: 853, baseType: !52, size: 64, offset: 2112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !616, file: !613, line: 854, baseType: !162, size: 64, offset: 2176)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !616, file: !613, line: 855, baseType: !52, size: 64, offset: 2240)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !616, file: !613, line: 856, baseType: !52, size: 64, offset: 2304)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !616, file: !613, line: 857, baseType: !52, size: 64, offset: 2368)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !616, file: !613, line: 858, baseType: !52, size: 64, offset: 2432)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !616, file: !613, line: 865, baseType: !485, size: 32, offset: 2496)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !616, file: !613, line: 867, baseType: !72, size: 32, offset: 2528)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !616, file: !613, line: 869, baseType: !52, size: 64, offset: 2560)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !616, file: !613, line: 869, baseType: !52, size: 64, offset: 2624)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !616, file: !613, line: 869, baseType: !52, size: 64, offset: 2688)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !616, file: !613, line: 869, baseType: !52, size: 64, offset: 2752)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !616, file: !613, line: 870, baseType: !52, size: 64, offset: 2816)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !616, file: !613, line: 870, baseType: !52, size: 64, offset: 2880)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !616, file: !613, line: 870, baseType: !52, size: 64, offset: 2944)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !616, file: !613, line: 871, baseType: !52, size: 64, offset: 3008)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !616, file: !613, line: 871, baseType: !52, size: 64, offset: 3072)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !616, file: !613, line: 871, baseType: !52, size: 64, offset: 3136)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !616, file: !613, line: 871, baseType: !52, size: 64, offset: 3200)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !616, file: !613, line: 873, baseType: !705, size: 3328, offset: 3264)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3328, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 52)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !616, file: !613, line: 875, baseType: !709, size: 1280, offset: 6592)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1280, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 4)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !616, file: !613, line: 877, baseType: !713, size: 64, offset: 7872)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !613, line: 877, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !616, file: !613, line: 880, baseType: !716, size: 1088, offset: 7936)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !717, line: 72, baseType: !718)
!717 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 23, size: 1088, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !727, !728, !736, !737, !741, !742, !743}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !718, file: !717, line: 28, baseType: !365, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !718, file: !717, line: 38, baseType: !162, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !718, file: !717, line: 40, baseType: !52, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !718, file: !717, line: 43, baseType: !668, size: 320, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !718, file: !717, line: 44, baseType: !725, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !717, line: 44, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !717, line: 48, baseType: !52, size: 64, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !718, file: !717, line: 59, baseType: !729, size: 256, offset: 640)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !730, line: 66, size: 256, elements: !731)
!730 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!731 = !{!732, !733, !734, !735}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !729, file: !730, line: 67, baseType: !160, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !729, file: !730, line: 68, baseType: !149, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !729, file: !730, line: 70, baseType: !674, size: 32, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !729, file: !730, line: 72, baseType: !110, size: 128, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !718, file: !717, line: 60, baseType: !33, size: 64, offset: 896)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !718, file: !717, line: 61, baseType: !738, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !717, line: 61, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !718, file: !717, line: 63, baseType: !62, size: 32, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !718, file: !717, line: 69, baseType: !106, size: 16, offset: 1056)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !718, file: !717, line: 70, baseType: !744, size: 16, offset: 1072)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !97, line: 18, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !99, line: 23, baseType: !746)
!746 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !613, line: 882, baseType: !52, size: 64, offset: 9024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !616, file: !613, line: 885, baseType: !72, size: 32, offset: 9088)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !616, file: !613, line: 886, baseType: !750, size: 64, offset: 9152)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !613, line: 732, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !616, file: !613, line: 901, baseType: !274, size: 64, offset: 9216)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !616, file: !613, line: 904, baseType: !639, size: 64, offset: 9280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !616, file: !613, line: 906, baseType: !755, size: 64, offset: 9344)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !613, line: 906, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !616, file: !613, line: 930, baseType: !62, size: 32, offset: 9408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !616, file: !613, line: 933, baseType: !62, size: 32, offset: 9440)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !616, file: !613, line: 935, baseType: !760, size: 64, offset: 9472)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !760, file: !18, line: 104, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !616, file: !613, line: 940, baseType: !160, size: 64, offset: 9536)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !616, file: !613, line: 942, baseType: !767, size: 256, offset: 9600)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !768, line: 98, size: 256, elements: !769)
!768 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !767, file: !768, line: 99, baseType: !160, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !767, file: !768, line: 100, baseType: !110, size: 128, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !767, file: !768, line: 101, baseType: !773, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !768, line: 21, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !612, file: !613, line: 986, baseType: !779, offset: 10240)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: -1)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !304, file: !305, line: 882, baseType: !611, size: 64, offset: 9792)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !304, file: !305, line: 884, baseType: !35, size: 32, offset: 9856)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !304, file: !305, line: 885, baseType: !35, size: 32, offset: 9888)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !304, file: !305, line: 886, baseType: !35, size: 32, offset: 9920)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !304, file: !305, line: 888, baseType: !35, size: 32, offset: 9952)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !304, file: !305, line: 890, baseType: !52, size: 64, offset: 9984)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !304, file: !305, line: 893, baseType: !7, size: 32, offset: 10048)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !304, file: !305, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !304, file: !305, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !304, file: !305, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !304, file: !305, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !304, file: !305, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !304, file: !305, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !304, file: !305, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !304, file: !305, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !304, file: !305, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !304, file: !305, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !304, file: !305, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !304, file: !305, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !304, file: !305, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !304, file: !305, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !304, file: !305, line: 969, baseType: !52, size: 64, offset: 10176)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !304, file: !305, line: 971, baseType: !805, size: 448, offset: 10240)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !806)
!806 = !{!807, !808, !814}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !805, file: !12, line: 26, baseType: !52, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !805, file: !12, line: 27, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!812, !813}
!812 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !12, line: 28, baseType: !815, size: 320, offset: 128)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !12, line: 28, size: 320, elements: !816)
!816 = !{!817, !827, !852}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !815, file: !12, line: 37, baseType: !818, size: 320)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !815, file: !12, line: 30, size: 320, elements: !819)
!819 = !{!820, !822, !823, !824, !825, !826}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !818, file: !12, line: 31, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !818, file: !12, line: 32, baseType: !251, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !12, line: 33, baseType: !251, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !818, file: !12, line: 34, baseType: !251, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !818, file: !12, line: 35, baseType: !365, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !818, file: !12, line: 36, baseType: !821, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !815, file: !12, line: 47, baseType: !828, size: 192)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !815, file: !12, line: 39, size: 192, elements: !829)
!829 = !{!830, !831, !832, !851}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !828, file: !12, line: 40, baseType: !477, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !828, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !12, line: 42, baseType: !833, size: 64, offset: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !828, file: !12, line: 42, size: 64, elements: !834)
!834 = !{!835, !843}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !833, file: !12, line: 43, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !838, line: 7, size: 128, elements: !839)
!838 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!839 = !{!840, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !837, file: !838, line: 8, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !50, line: 93, baseType: !56)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !837, file: !838, line: 9, baseType: !56, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !833, file: !12, line: 44, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !846, line: 7, size: 64, elements: !847)
!846 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!847 = !{!848, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !845, file: !846, line: 8, baseType: !849, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !846, line: 5, baseType: !156)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !845, file: !846, line: 9, baseType: !156, size: 32, offset: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !828, file: !12, line: 46, baseType: !365, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !815, file: !12, line: 55, baseType: !853, size: 256)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !815, file: !12, line: 49, size: 256, elements: !854)
!854 = !{!855, !858, !859, !860, !861}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !853, file: !12, line: 50, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !853, file: !12, line: 51, baseType: !35, size: 32, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !853, file: !12, line: 52, baseType: !35, size: 32, offset: 96)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !853, file: !12, line: 53, baseType: !52, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !853, file: !12, line: 54, baseType: !52, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !304, file: !305, line: 973, baseType: !863, size: 32, offset: 10688)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !38, line: 27, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !50, line: 28, baseType: !35)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !304, file: !305, line: 974, baseType: !863, size: 32, offset: 10720)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !304, file: !305, line: 978, baseType: !52, size: 64, offset: 10752)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !304, file: !305, line: 987, baseType: !303, size: 64, offset: 10816)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !304, file: !305, line: 990, baseType: !303, size: 64, offset: 10880)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !304, file: !305, line: 995, baseType: !110, size: 128, offset: 10944)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !304, file: !305, line: 996, baseType: !110, size: 128, offset: 11072)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !304, file: !305, line: 997, baseType: !303, size: 64, offset: 11200)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !304, file: !305, line: 1005, baseType: !110, size: 128, offset: 11264)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !304, file: !305, line: 1006, baseType: !110, size: 128, offset: 11392)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !304, file: !305, line: 1009, baseType: !875, size: 64, offset: 11520)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !877, line: 59, size: 768, elements: !878)
!877 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!878 = !{!879, !880, !881, !882, !884, !885, !886, !895}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !876, file: !877, line: 61, baseType: !140, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !876, file: !877, line: 62, baseType: !7, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !877, line: 63, baseType: !72, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !876, file: !877, line: 65, baseType: !883, size: 256, offset: 128)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !710)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !876, file: !877, line: 66, baseType: !217, size: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !876, file: !877, line: 68, baseType: !67, size: 192, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !876, file: !877, line: 69, baseType: !887, size: 128, align: 64, offset: 640)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !38, line: 232, size: 128, align: 64, elements: !888)
!888 = !{!889, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !38, line: 233, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !887, file: !38, line: 234, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !890}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !876, file: !877, line: 70, baseType: !896, offset: 768)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, elements: !780)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !877, line: 54, size: 128, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !897, file: !877, line: 55, baseType: !35, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !897, file: !877, line: 56, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !877, line: 56, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !304, file: !305, line: 1010, baseType: !904, size: 512, offset: 11584)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 512, elements: !710)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !304, file: !305, line: 1011, baseType: !110, size: 128, offset: 12096)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !304, file: !305, line: 1012, baseType: !110, size: 128, offset: 12224)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !304, file: !305, line: 1014, baseType: !908, size: 64, offset: 12352)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !910, line: 26, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !909, file: !910, line: 27, baseType: !7, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !909, file: !910, line: 28, baseType: !914, size: 192, offset: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !915, line: 43, size: 192, elements: !916)
!915 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !915, line: 44, baseType: !149, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !914, file: !915, line: 45, baseType: !110, size: 128, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !304, file: !305, line: 1017, baseType: !920, size: 64, offset: 12416)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !304, file: !305, line: 1020, baseType: !920, size: 64, offset: 12480)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !304, file: !305, line: 1023, baseType: !33, size: 64, offset: 12544)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !304, file: !305, line: 1025, baseType: !365, size: 64, offset: 12608)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !304, file: !305, line: 1026, baseType: !365, size: 64, offset: 12672)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !304, file: !305, line: 1031, baseType: !365, size: 64, offset: 12736)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !304, file: !305, line: 1032, baseType: !927, size: 192, offset: 12800)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !305, line: 324, size: 192, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !927, file: !305, line: 326, baseType: !365, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !927, file: !305, line: 327, baseType: !365, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !927, file: !305, line: 328, baseType: !149, size: 32, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !304, file: !305, line: 1041, baseType: !52, size: 64, offset: 12992)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !304, file: !305, line: 1042, baseType: !52, size: 64, offset: 13056)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !304, file: !305, line: 1045, baseType: !365, size: 64, offset: 13120)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !304, file: !305, line: 1048, baseType: !365, size: 64, offset: 13184)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !304, file: !305, line: 1051, baseType: !52, size: 64, offset: 13248)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !304, file: !305, line: 1052, baseType: !52, size: 64, offset: 13312)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !304, file: !305, line: 1055, baseType: !939, size: 640, offset: 13376)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !940, line: 132, size: 640, elements: !941)
!940 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!941 = !{!942, !950, !951}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !939, file: !940, line: 133, baseType: !943, size: 576)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 576, elements: !948)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !940, line: 117, size: 192, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !944, file: !940, line: 118, baseType: !365, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !944, file: !940, line: 119, baseType: !491, size: 128, offset: 64)
!948 = !{!949}
!949 = !DISubrange(count: 3)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !939, file: !940, line: 134, baseType: !7, size: 32, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !939, file: !940, line: 135, baseType: !7, size: 32, offset: 608)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !304, file: !305, line: 1058, baseType: !953, size: 448, offset: 14016)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !940, line: 144, size: 448, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !953, file: !940, line: 145, baseType: !887, size: 128, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !953, file: !940, line: 146, baseType: !729, size: 256, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !953, file: !940, line: 147, baseType: !7, size: 32, offset: 384)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !304, file: !305, line: 1064, baseType: !959, size: 64, offset: 14464)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !305, line: 1064, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !304, file: !305, line: 1067, baseType: !959, size: 64, offset: 14528)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !304, file: !305, line: 1070, baseType: !959, size: 64, offset: 14592)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !304, file: !305, line: 1074, baseType: !965, size: 64, offset: 14656)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !967, line: 195, size: 1728, elements: !968)
!967 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!968 = !{!969, !970, !973, !978, !979, !982, !983, !990, !991, !992, !993, !996, !997, !998, !999, !1000, !1041, !1062}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !966, file: !967, line: 196, baseType: !140, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !966, file: !967, line: 197, baseType: !971, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !967, line: 28, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !38, line: 104, baseType: !156)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 198, baseType: !974, size: 192, offset: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 198, size: 192, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !974, file: !967, line: 199, baseType: !110, size: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !974, file: !967, line: 200, baseType: !357, size: 192, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !966, file: !967, line: 205, baseType: !668, size: 320, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !966, file: !967, line: 206, baseType: !980, size: 64, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !967, line: 206, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !966, file: !967, line: 207, baseType: !33, size: 64, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 208, baseType: !984, size: 64, offset: 704)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 208, size: 64, elements: !985)
!985 = !{!986, !989}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !984, file: !967, line: 209, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !988, line: 8, baseType: !152)
!988 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!989 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !984, file: !967, line: 210, baseType: !987, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !966, file: !967, line: 212, baseType: !987, size: 64, offset: 768)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !966, file: !967, line: 213, baseType: !174, size: 32, offset: 832)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !966, file: !967, line: 214, baseType: !278, size: 32, offset: 864)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !966, file: !967, line: 215, baseType: !994, size: 32, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !967, line: 31, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 110, baseType: !251)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !966, file: !967, line: 216, baseType: !39, size: 16, offset: 928)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !966, file: !967, line: 217, baseType: !39, size: 16, offset: 944)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !966, file: !967, line: 221, baseType: !746, size: 16, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 228, baseType: !52, size: 64, offset: 1024)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 245, baseType: !1001, size: 320, offset: 1088)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 245, size: 320, elements: !1002)
!1002 = !{!1003, !1032}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1001, file: !967, line: 246, baseType: !1004, size: 320)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !967, line: 114, size: 320, elements: !1005)
!1005 = !{!1006, !1007, !1019, !1022, !1031}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1004, file: !967, line: 116, baseType: !52, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !967, line: 117, baseType: !1008, size: 64, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !967, line: 117, size: 64, elements: !1009)
!1009 = !{!1010, !1018}
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !967, line: 118, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !967, line: 118, size: 64, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1011, file: !967, line: 120, baseType: !106, size: 16)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1011, file: !967, line: 121, baseType: !1015, size: 48, offset: 16)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 48, elements: !1016)
!1016 = !{!1017}
!1017 = !DISubrange(count: 6)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1008, file: !967, line: 127, baseType: !52, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1004, file: !967, line: 129, baseType: !1020, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !967, line: 102, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1004, file: !967, line: 130, baseType: !1023, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !967, line: 108, size: 192, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1024, file: !967, line: 109, baseType: !887, size: 128, align: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1024, file: !967, line: 110, baseType: !140, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1024, file: !967, line: 111, baseType: !1029, size: 8, offset: 160)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 35, baseType: !1030)
!1030 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1004, file: !967, line: 131, baseType: !29, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !967, line: 247, baseType: !1033, size: 320)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !967, line: 247, size: 320, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1033, file: !967, line: 248, baseType: !52, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1033, file: !967, line: 249, baseType: !52, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1033, file: !967, line: 250, baseType: !1020, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1033, file: !967, line: 251, baseType: !1023, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1033, file: !967, line: 252, baseType: !1040, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 260, baseType: !1042, size: 256, offset: 1408)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 260, size: 256, elements: !1043)
!1043 = !{!1044, !1050}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1042, file: !967, line: 261, baseType: !1045, size: 256)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !967, line: 134, size: 256, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1045, file: !967, line: 135, baseType: !33, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1045, file: !967, line: 136, baseType: !1049, size: 256)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !710)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !967, line: 262, baseType: !1051, size: 256)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !967, line: 262, size: 256, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1051, file: !967, line: 264, baseType: !110, size: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1051, file: !967, line: 265, baseType: !1055, size: 128, offset: 128)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1056, line: 22, size: 128, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1057 = !{!1058, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1055, file: !1056, line: 23, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1056, line: 23, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1055, file: !1056, line: 24, baseType: !52, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !966, file: !967, line: 280, baseType: !1063, size: 64, offset: 1664)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !967, line: 176, size: 192, elements: !1065)
!1065 = !{!1066, !1075, !1076}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1064, file: !967, line: 177, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !967, line: 171, baseType: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!35, !965, !1071, !1073, !965}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1064, file: !967, line: 178, baseType: !965, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1064, file: !967, line: 179, baseType: !1020, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !304, file: !305, line: 1084, baseType: !1078, size: 128, offset: 14720)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !1079)
!1079 = !{!1080}
!1080 = !DISubrange(count: 16)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !304, file: !305, line: 1086, baseType: !1082, size: 64, offset: 14848)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !305, line: 55, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !304, file: !305, line: 1089, baseType: !1085, size: 64, offset: 14912)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1086, line: 12, size: 64, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1085, file: !1086, line: 13, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1086, line: 8, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !304, file: !305, line: 1090, baseType: !1092, size: 128, offset: 14976)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1093, line: 13, size: 128, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1092, file: !1093, line: 14, baseType: !110, size: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !304, file: !305, line: 1097, baseType: !1097, size: 64, offset: 15104)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !305, line: 50, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !304, file: !305, line: 1100, baseType: !1100, size: 64, offset: 15168)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !305, line: 1100, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !304, file: !305, line: 1103, baseType: !1103, size: 64, offset: 15232)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !305, line: 53, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !304, file: !305, line: 1107, baseType: !1106, size: 64, offset: 15296)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1108, line: 31, size: 576, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1109 = !{!1110, !1111, !1114, !1117, !1120, !1121, !1124, !1127, !1128}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1107, file: !1108, line: 32, baseType: !140, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1107, file: !1108, line: 33, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1108, line: 9, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1107, file: !1108, line: 34, baseType: !1115, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1108, line: 10, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1107, file: !1108, line: 35, baseType: !1118, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1108, line: 8, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1107, file: !1108, line: 36, baseType: !901, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1107, file: !1108, line: 37, baseType: !1122, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !967, line: 34, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1107, file: !1108, line: 38, baseType: !1125, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1108, line: 38, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1107, file: !1108, line: 39, baseType: !1125, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1107, file: !1108, line: 40, baseType: !1129, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1108, line: 12, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !304, file: !305, line: 1110, baseType: !1132, size: 64, offset: 15360)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !940, line: 236, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !304, file: !305, line: 1111, baseType: !1135, size: 64, offset: 15424)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !305, line: 67, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !304, file: !305, line: 1112, baseType: !1138, size: 64, offset: 15488)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1139, line: 25, baseType: !1140)
!1139 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1139, line: 23, size: 64, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1140, file: !1139, line: 24, baseType: !562, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !304, file: !305, line: 1113, baseType: !1138, size: 64, offset: 15552)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !304, file: !305, line: 1115, baseType: !1138, size: 64, offset: 15616)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !304, file: !305, line: 1116, baseType: !1146, size: 192, offset: 15680)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1147, line: 32, size: 192, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1146, file: !1147, line: 33, baseType: !110, size: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1146, file: !1147, line: 34, baseType: !1138, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !304, file: !305, line: 1117, baseType: !52, size: 64, offset: 15872)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !304, file: !305, line: 1118, baseType: !48, size: 64, offset: 15936)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !304, file: !305, line: 1119, baseType: !7, size: 32, offset: 16000)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !304, file: !305, line: 1121, baseType: !890, size: 64, offset: 16064)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !304, file: !305, line: 1125, baseType: !1156, size: 64, offset: 16128)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !305, line: 43, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !304, file: !305, line: 1127, baseType: !174, size: 32, offset: 16192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !304, file: !305, line: 1128, baseType: !7, size: 32, offset: 16224)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !304, file: !305, line: 1130, baseType: !1161, size: 128, offset: 16256)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1162, line: 37, size: 128, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1161, file: !1162, line: 38, baseType: !35, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1161, file: !1162, line: 39, baseType: !62, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1161, file: !1162, line: 40, baseType: !1167, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1162, line: 24, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !304, file: !305, line: 1131, baseType: !1170, size: 256, offset: 16384)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1171, line: 12, size: 256, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1172 = !{!1173, !1174, !1175, !1176}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1170, file: !1171, line: 13, baseType: !1040, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1170, file: !1171, line: 14, baseType: !52, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1170, file: !1171, line: 15, baseType: !52, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1170, file: !1171, line: 16, baseType: !1029, size: 8, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !304, file: !305, line: 1134, baseType: !365, size: 64, offset: 16640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !304, file: !305, line: 1135, baseType: !365, size: 64, offset: 16704)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !304, file: !305, line: 1138, baseType: !72, size: 32, offset: 16768)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !304, file: !305, line: 1141, baseType: !149, size: 32, offset: 16800)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !304, file: !305, line: 1143, baseType: !1182, size: 64, offset: 16832)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !305, line: 735, size: 64, elements: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1182, file: !305, line: 736, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !304, file: !305, line: 1147, baseType: !494, size: 128, offset: 16896)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !304, file: !305, line: 1149, baseType: !303, size: 64, offset: 17024)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !304, file: !305, line: 1151, baseType: !1189, size: 64, offset: 17088)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !305, line: 1151, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !304, file: !305, line: 1188, baseType: !33, size: 64, offset: 17152)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !304, file: !305, line: 1191, baseType: !1193, size: 64, offset: 17216)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !305, line: 44, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !304, file: !305, line: 1194, baseType: !1196, size: 64, offset: 17280)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !305, line: 45, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !304, file: !305, line: 1197, baseType: !1199, size: 64, offset: 17344)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !305, line: 61, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !304, file: !305, line: 1199, baseType: !1202, size: 64, offset: 17408)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !305, line: 52, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !304, file: !305, line: 1202, baseType: !1205, size: 64, offset: 17472)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !305, line: 48, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !304, file: !305, line: 1205, baseType: !52, size: 64, offset: 17536)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !304, file: !305, line: 1206, baseType: !1209, size: 64, offset: 17600)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1147, line: 14, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1147, line: 12, size: 384, elements: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1147, line: 13, baseType: !1214, size: 384)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1211, file: !1147, line: 13, size: 384, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1214, file: !1147, line: 13, baseType: !35, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1214, file: !1147, line: 13, baseType: !35, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1214, file: !1147, line: 13, baseType: !35, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1214, file: !1147, line: 13, baseType: !1220, size: 256, offset: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1221, line: 37, size: 256, elements: !1222)
!1221 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1222 = !{!1223, !1228, !1241, !1247, !1257, !1284, !1289}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1220, file: !1221, line: 42, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1221, line: 39, size: 64, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1224, file: !1221, line: 40, baseType: !864, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1224, file: !1221, line: 41, baseType: !180, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1220, file: !1221, line: 50, baseType: !1229, size: 192)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1221, line: 45, size: 192, elements: !1230)
!1230 = !{!1231, !1233, !1234, !1240}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1229, file: !1221, line: 46, baseType: !1232, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !50, line: 95, baseType: !35)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1229, file: !1221, line: 47, baseType: !35, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1229, file: !1221, line: 48, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1221, line: 11, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1221, line: 8, size: 64, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1236, file: !1221, line: 9, baseType: !35, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1236, file: !1221, line: 10, baseType: !33, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1229, file: !1221, line: 49, baseType: !35, size: 32, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1220, file: !1221, line: 57, baseType: !1242, size: 128)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1221, line: 53, size: 128, elements: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1242, file: !1221, line: 54, baseType: !864, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1242, file: !1221, line: 55, baseType: !180, size: 32, offset: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1242, file: !1221, line: 56, baseType: !1235, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1220, file: !1221, line: 66, baseType: !1248, size: 256)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1221, line: 60, size: 256, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1248, file: !1221, line: 61, baseType: !864, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1248, file: !1221, line: 62, baseType: !180, size: 32, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1248, file: !1221, line: 63, baseType: !35, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1248, file: !1221, line: 64, baseType: !1254, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !50, line: 94, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !50, line: 15, baseType: !812)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1248, file: !1221, line: 65, baseType: !1254, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1220, file: !1221, line: 105, baseType: !1258, size: 256)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1221, line: 69, size: 256, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1258, file: !1221, line: 70, baseType: !33, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1221, line: 79, baseType: !1262, size: 192, offset: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1221, line: 79, size: 192, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1273, !1278}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1262, file: !1221, line: 81, baseType: !35, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1262, file: !1221, line: 86, baseType: !746, size: 16)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1262, file: !1221, line: 92, baseType: !1267, size: 192)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1262, file: !1221, line: 88, size: 192, elements: !1268)
!1268 = !{!1269, !1271, !1272}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1267, file: !1221, line: 89, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !473)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1267, file: !1221, line: 90, baseType: !33, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1267, file: !1221, line: 91, baseType: !33, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1262, file: !1221, line: 97, baseType: !1274, size: 96)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1262, file: !1221, line: 94, size: 96, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1274, file: !1221, line: 95, baseType: !1270, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1274, file: !1221, line: 96, baseType: !252, size: 32, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1262, file: !1221, line: 103, baseType: !1279, size: 128)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1262, file: !1221, line: 99, size: 128, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1279, file: !1221, line: 100, baseType: !52, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1279, file: !1221, line: 101, baseType: !252, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1279, file: !1221, line: 102, baseType: !252, size: 32, offset: 96)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1220, file: !1221, line: 111, baseType: !1285, size: 128)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1221, line: 108, size: 128, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1285, file: !1221, line: 109, baseType: !812, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1285, file: !1221, line: 110, baseType: !35, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1220, file: !1221, line: 118, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1221, line: 114, size: 128, elements: !1291)
!1291 = !{!1292, !1293, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1290, file: !1221, line: 115, baseType: !33, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1290, file: !1221, line: 116, baseType: !35, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1290, file: !1221, line: 117, baseType: !7, size: 32, offset: 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !304, file: !305, line: 1208, baseType: !1296, size: 448, offset: 17664)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1297, line: 12, size: 448, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1296, file: !1297, line: 15, baseType: !365, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1296, file: !1297, line: 17, baseType: !365, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1296, file: !1297, line: 19, baseType: !365, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1296, file: !1297, line: 21, baseType: !365, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1296, file: !1297, line: 29, baseType: !365, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1296, file: !1297, line: 35, baseType: !365, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1296, file: !1297, line: 44, baseType: !365, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !304, file: !305, line: 1215, baseType: !365, size: 64, offset: 18112)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !304, file: !305, line: 1217, baseType: !365, size: 64, offset: 18176)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !304, file: !305, line: 1219, baseType: !365, size: 64, offset: 18240)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !304, file: !305, line: 1223, baseType: !1310, size: 64, offset: 18304)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1311, line: 99, baseType: !1312)
!1311 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1311, line: 99, size: 64, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1312, file: !1311, line: 99, baseType: !562, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !304, file: !305, line: 1225, baseType: !1316, size: 32, offset: 18368)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !481, line: 275, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !481, line: 275, size: 32, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1317, file: !481, line: 275, baseType: !485, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !304, file: !305, line: 1226, baseType: !35, size: 32, offset: 18400)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !304, file: !305, line: 1227, baseType: !35, size: 32, offset: 18432)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !304, file: !305, line: 1231, baseType: !1323, size: 64, offset: 18496)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !305, line: 1231, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !304, file: !305, line: 1233, baseType: !110, size: 128, offset: 18560)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !304, file: !305, line: 1240, baseType: !1327, size: 64, offset: 18688)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !305, line: 62, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !304, file: !305, line: 1242, baseType: !1330, size: 64, offset: 18752)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !305, line: 1242, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !304, file: !305, line: 1244, baseType: !110, size: 128, offset: 18816)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !304, file: !305, line: 1245, baseType: !1334, size: 64, offset: 18944)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !305, line: 51, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !304, file: !305, line: 1246, baseType: !729, size: 256, offset: 19008)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !304, file: !305, line: 1247, baseType: !7, size: 32, offset: 19264)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !304, file: !305, line: 1250, baseType: !1339, size: 64, offset: 19328)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !305, line: 57, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !304, file: !305, line: 1251, baseType: !729, size: 256, offset: 19392)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !304, file: !305, line: 1252, baseType: !110, size: 128, offset: 19648)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !304, file: !305, line: 1259, baseType: !1344, size: 64, offset: 19776)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !305, line: 54, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !304, file: !305, line: 1260, baseType: !746, size: 16, offset: 19840)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !304, file: !305, line: 1261, baseType: !746, size: 16, offset: 19856)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !304, file: !305, line: 1314, baseType: !1349, size: 64, offset: 19904)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1351, line: 62, size: 256, align: 256, elements: !1352)
!1351 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1352 = !{!1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1350, file: !1351, line: 75, baseType: !252, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1350, file: !1351, line: 90, baseType: !252, size: 32, offset: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1350, file: !1351, line: 112, baseType: !366, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1350, file: !1351, line: 132, baseType: !252, size: 32, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1350, file: !1351, line: 140, baseType: !252, size: 32, offset: 160)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1350, file: !1351, line: 149, baseType: !252, size: 32, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1350, file: !1351, line: 154, baseType: !1360, offset: 224)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !780)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !304, file: !305, line: 1315, baseType: !251, size: 32, offset: 19968)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !304, file: !305, line: 1316, baseType: !251, size: 32, offset: 20000)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !304, file: !305, line: 1321, baseType: !52, size: 64, offset: 20032)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !304, file: !305, line: 1325, baseType: !35, size: 32, offset: 20096)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !304, file: !305, line: 1326, baseType: !35, size: 32, offset: 20128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !304, file: !305, line: 1327, baseType: !35, size: 32, offset: 20160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !304, file: !305, line: 1328, baseType: !35, size: 32, offset: 20192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !304, file: !305, line: 1329, baseType: !887, size: 128, align: 64, offset: 20224)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !304, file: !305, line: 1332, baseType: !1370, size: 128, offset: 20352)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1371, line: 51, size: 128, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1372 = !{!1373, !1378, !1379}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1370, file: !1371, line: 60, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1375, line: 7, size: 64, elements: !1376)
!1375 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1374, file: !1375, line: 12, baseType: !559, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1370, file: !1371, line: 63, baseType: !1029, size: 8, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1370, file: !1371, line: 70, baseType: !1029, size: 8, offset: 72)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !304, file: !305, line: 1335, baseType: !1381, size: 64, offset: 20480)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !305, line: 59, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !304, file: !305, line: 1337, baseType: !1384, size: 128, offset: 20544)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1371, line: 39, size: 128, elements: !1385)
!1385 = !{!1386, !1449, !1450}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1384, file: !1371, line: 40, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !613, line: 74, size: 512, align: 128, elements: !1389)
!1389 = !{!1390, !1391, !1443, !1448}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1388, file: !613, line: 75, baseType: !52, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !613, line: 83, baseType: !1392, size: 320, offset: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !613, line: 83, size: 320, elements: !1393)
!1393 = !{!1394, !1417, !1431, !1435, !1442}
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !613, line: 84, baseType: !1395, size: 320)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !613, line: 84, size: 320, elements: !1396)
!1396 = !{!1397, !1408, !1411, !1416}
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !613, line: 90, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !613, line: 90, size: 128, elements: !1399)
!1399 = !{!1400, !1401, !1406, !1407}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1398, file: !613, line: 91, baseType: !110, size: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !613, line: 94, baseType: !1402, size: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !613, line: 94, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1402, file: !613, line: 96, baseType: !33, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1402, file: !613, line: 98, baseType: !7, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1398, file: !613, line: 102, baseType: !110, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1398, file: !613, line: 103, baseType: !110, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1395, file: !613, line: 106, baseType: !1409, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !613, line: 32, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !613, line: 107, baseType: !1412, size: 64, offset: 192)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !613, line: 107, size: 64, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1412, file: !613, line: 108, baseType: !52, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1412, file: !613, line: 109, baseType: !52, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1395, file: !613, line: 117, baseType: !52, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !613, line: 119, baseType: !1418, size: 320)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !613, line: 119, size: 320, elements: !1419)
!1419 = !{!1420, !1421, !1424, !1425, !1426}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1418, file: !613, line: 124, baseType: !52, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1418, file: !613, line: 125, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !613, line: 125, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1418, file: !613, line: 126, baseType: !52, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1418, file: !613, line: 127, baseType: !52, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !613, line: 128, baseType: !1427, size: 64, offset: 256)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !613, line: 128, size: 64, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1427, file: !613, line: 133, baseType: !52, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1427, file: !613, line: 138, baseType: !160, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !613, line: 141, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !613, line: 141, size: 64, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1432, file: !613, line: 142, baseType: !52, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !613, line: 144, baseType: !1436, size: 128)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !613, line: 144, size: 128, elements: !1437)
!1437 = !{!1438, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1436, file: !613, line: 146, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !613, line: 146, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1436, file: !613, line: 147, baseType: !33, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1392, file: !613, line: 161, baseType: !887, size: 128, align: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !613, line: 164, baseType: !1444, size: 32, offset: 384)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !613, line: 164, size: 32, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1444, file: !613, line: 169, baseType: !62, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1444, file: !613, line: 177, baseType: !7, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1388, file: !613, line: 181, baseType: !62, size: 32, offset: 416)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1384, file: !1371, line: 42, baseType: !252, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1384, file: !1371, line: 43, baseType: !252, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !304, file: !305, line: 1340, baseType: !1452, size: 64, offset: 20672)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !305, line: 69, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !304, file: !305, line: 1351, baseType: !35, size: 32, offset: 20736)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !304, file: !305, line: 1352, baseType: !35, size: 32, offset: 20768)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !304, file: !305, line: 1354, baseType: !52, size: 64, offset: 20800)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !304, file: !305, line: 1364, baseType: !365, size: 64, offset: 20864)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !304, file: !305, line: 1365, baseType: !365, size: 64, offset: 20928)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !304, file: !305, line: 1412, baseType: !52, size: 64, offset: 20992)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !304, file: !305, line: 1453, baseType: !1461, size: 64, offset: 21056)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !305, line: 1453, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !304, file: !305, line: 1457, baseType: !1464, size: 64, offset: 21120)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1466)
!1466 = !{!1467, !1468, !1487, !1490, !1491, !1524, !1534}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1465, file: !18, line: 62, baseType: !17, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !18, line: 64, baseType: !1469, size: 192, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !18, line: 64, size: 192, elements: !1470)
!1470 = !{!1471, !1482}
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !18, line: 65, baseType: !1472, size: 192)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !18, line: 65, size: 192, elements: !1473)
!1473 = !{!1474, !1481}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1472, file: !18, line: 66, baseType: !1475, size: 128)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1476, line: 50, size: 128, elements: !1477)
!1476 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1477 = !{!1478, !1479, !1480}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1475, file: !1476, line: 52, baseType: !52, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1475, file: !1476, line: 54, baseType: !7, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1475, file: !1476, line: 55, baseType: !7, size: 32, offset: 96)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1472, file: !18, line: 67, baseType: !52, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !18, line: 70, baseType: !1483, size: 192)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !18, line: 70, size: 192, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1483, file: !18, line: 71, baseType: !887, size: 128, align: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1483, file: !18, line: 72, baseType: !52, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1465, file: !18, line: 76, baseType: !1488, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1465, file: !18, line: 77, baseType: !52, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1465, file: !18, line: 79, baseType: !1492, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1476, line: 25, size: 256, elements: !1494)
!1494 = !{!1495, !1501, !1505}
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1476, line: 26, baseType: !1496, size: 128)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1476, line: 26, size: 128, elements: !1497)
!1497 = !{!1498, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1496, file: !1476, line: 27, baseType: !1499, size: 128)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !1079)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1496, file: !1476, line: 28, baseType: !1499, size: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1493, file: !1476, line: 31, baseType: !1502, size: 64, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1476, line: 23, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1476, line: 33, baseType: !1506, size: 64, offset: 192)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1476, line: 33, size: 64, elements: !1507)
!1507 = !{!1508, !1514, !1519}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1506, file: !1476, line: 38, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !1476, line: 34, size: 64, elements: !1510)
!1510 = !{!1511, !1512, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1509, file: !1476, line: 35, baseType: !156, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1509, file: !1476, line: 36, baseType: !96, size: 8, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1509, file: !1476, line: 37, baseType: !96, size: 8, offset: 40)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1506, file: !1476, line: 42, baseType: !1515, size: 16)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !1476, line: 39, size: 16, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1515, file: !1476, line: 40, baseType: !96, size: 8)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1515, file: !1476, line: 41, baseType: !96, size: 8, offset: 8)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1506, file: !1476, line: 46, baseType: !1520, size: 16)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !1476, line: 43, size: 16, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1520, file: !1476, line: 44, baseType: !96, size: 8)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1520, file: !1476, line: 45, baseType: !96, size: 8, offset: 8)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1465, file: !18, line: 81, baseType: !1525, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1527)
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1526, file: !18, line: 86, baseType: !1488, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1526, file: !18, line: 87, baseType: !52, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1526, file: !18, line: 88, baseType: !52, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1526, file: !18, line: 89, baseType: !52, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1526, file: !18, line: 90, baseType: !1029, size: 8, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1526, file: !18, line: 92, baseType: !1525, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1465, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !304, file: !305, line: 1463, baseType: !1536, offset: 21184)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !305, line: 739, elements: !233)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !304, file: !305, line: 1470, baseType: !887, size: 128, align: 64, offset: 21184)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !304, file: !305, line: 1471, baseType: !140, size: 32, offset: 21312)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !304, file: !305, line: 1472, baseType: !35, size: 32, offset: 21344)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !304, file: !305, line: 1474, baseType: !303, size: 64, offset: 21376)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !304, file: !305, line: 1475, baseType: !1542, size: 320, offset: 21440)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1543, line: 11, size: 320, elements: !1544)
!1543 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1544 = !{!1545, !1546, !1547, !1552}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1542, file: !1543, line: 16, baseType: !167, size: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1542, file: !1543, line: 17, baseType: !52, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1542, file: !1543, line: 18, baseType: !1548, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !1543, line: 19, baseType: !251, size: 32, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !304, file: !305, line: 1478, baseType: !1554, size: 64, offset: 21760)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !305, line: 1478, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !304, file: !305, line: 1482, baseType: !140, size: 32, offset: 21824)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !304, file: !305, line: 1489, baseType: !33, size: 64, offset: 21888)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !304, file: !305, line: 1504, baseType: !33, size: 64, offset: 21952)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !304, file: !305, line: 1505, baseType: !366, size: 64, offset: 22016)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !304, file: !305, line: 1506, baseType: !365, size: 64, offset: 22080)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !304, file: !305, line: 1507, baseType: !366, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !304, file: !305, line: 1508, baseType: !366, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !304, file: !305, line: 1509, baseType: !366, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !304, file: !305, line: 1510, baseType: !887, size: 128, align: 64, offset: 22208)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !304, file: !305, line: 1511, baseType: !35, size: 32, offset: 22336)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !304, file: !305, line: 1515, baseType: !1567, size: 64, offset: 22400)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !327, line: 56, size: 64, elements: !1568)
!1568 = !{!1569}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1567, file: !327, line: 57, baseType: !330, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !304, file: !305, line: 1518, baseType: !1567, size: 64, offset: 22464)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !304, file: !305, line: 1528, baseType: !887, size: 128, align: 64, offset: 22528)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !304, file: !305, line: 1552, baseType: !1573, size: 35328, offset: 23040)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1574, line: 430, size: 35328, elements: !1575)
!1574 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1575 = !{!1576, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1605, !1606, !1607, !1608, !1609, !1610, !1613, !1614, !1615, !1616}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1573, file: !1574, line: 432, baseType: !1577, size: 192)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1578, size: 192, elements: !948)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1579, line: 16, size: 64, elements: !1580)
!1579 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1578, file: !1579, line: 17, baseType: !106, size: 16)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1578, file: !1579, line: 18, baseType: !106, size: 16, offset: 16)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1578, file: !1579, line: 19, baseType: !106, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1578, file: !1579, line: 19, baseType: !106, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1578, file: !1579, line: 19, baseType: !106, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1578, file: !1579, line: 19, baseType: !106, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1578, file: !1579, line: 19, baseType: !106, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1578, file: !1579, line: 20, baseType: !106, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1578, file: !1579, line: 20, baseType: !106, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1578, file: !1579, line: 20, baseType: !106, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1578, file: !1579, line: 20, baseType: !106, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1578, file: !1579, line: 20, baseType: !106, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1578, file: !1579, line: 20, baseType: !106, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1573, file: !1574, line: 436, baseType: !52, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1573, file: !1574, line: 440, baseType: !39, size: 16, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1573, file: !1574, line: 441, baseType: !39, size: 16, offset: 272)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1573, file: !1574, line: 442, baseType: !39, size: 16, offset: 288)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1573, file: !1574, line: 443, baseType: !39, size: 16, offset: 304)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1573, file: !1574, line: 447, baseType: !52, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1573, file: !1574, line: 448, baseType: !52, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1573, file: !1574, line: 459, baseType: !1602, size: 256, offset: 448)
!1602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1603, size: 256, elements: !710)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1574, line: 428, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1573, file: !1574, line: 461, baseType: !52, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1573, file: !1574, line: 463, baseType: !52, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1573, file: !1574, line: 465, baseType: !52, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1573, file: !1574, line: 466, baseType: !52, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1573, file: !1574, line: 467, baseType: !52, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1573, file: !1574, line: 473, baseType: !1611, size: 64, offset: 1024)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1574, line: 10, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1573, file: !1574, line: 480, baseType: !52, size: 64, offset: 1088)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1573, file: !1574, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1573, file: !1574, line: 491, baseType: !251, size: 32, offset: 1184)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1573, file: !1574, line: 501, baseType: !1617, size: 33792, offset: 1536)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1618, line: 448, size: 33792, elements: !1619)
!1618 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1619 = !{!1620, !1621, !1622, !1788, !1789, !1795, !1796}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1617, file: !1618, line: 461, baseType: !7, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1617, file: !1618, line: 468, baseType: !52, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1617, file: !1618, line: 476, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1618, line: 356, size: 33280, align: 512, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1624, file: !1618, line: 358, baseType: !7, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1624, file: !1618, line: 361, baseType: !7, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1624, file: !1618, line: 364, baseType: !365, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1624, file: !1618, line: 367, baseType: !365, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1624, file: !1618, line: 370, baseType: !365, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1624, file: !1618, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1624, file: !1618, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1624, file: !1618, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1624, file: !1618, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1624, file: !1618, line: 397, baseType: !1636, size: 32768, offset: 512)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1618, line: 348, size: 32768, elements: !1637)
!1637 = !{!1638, !1653, !1694, !1771, !1784}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1636, file: !1618, line: 349, baseType: !1639, size: 896)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1618, line: 12, size: 896, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1652}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1639, file: !1618, line: 13, baseType: !251, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1639, file: !1618, line: 14, baseType: !251, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1639, file: !1618, line: 15, baseType: !251, size: 32, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1639, file: !1618, line: 16, baseType: !251, size: 32, offset: 96)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1639, file: !1618, line: 17, baseType: !251, size: 32, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1639, file: !1618, line: 18, baseType: !251, size: 32, offset: 160)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1639, file: !1618, line: 19, baseType: !251, size: 32, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1639, file: !1618, line: 22, baseType: !1649, size: 640, offset: 224)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 640, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 20)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1639, file: !1618, line: 25, baseType: !251, size: 32, offset: 864)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1636, file: !1618, line: 350, baseType: !1654, size: 4096, align: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1618, line: 34, size: 4096, align: 128, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1675, !1676, !1677, !1681, !1685, !1689}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1654, file: !1618, line: 35, baseType: !106, size: 16)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1654, file: !1618, line: 36, baseType: !106, size: 16, offset: 16)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1654, file: !1618, line: 37, baseType: !106, size: 16, offset: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1654, file: !1618, line: 38, baseType: !106, size: 16, offset: 48)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1618, line: 39, baseType: !1661, size: 128, offset: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1618, line: 39, size: 128, elements: !1662)
!1662 = !{!1663, !1668}
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1618, line: 40, baseType: !1664, size: 128)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !1618, line: 40, size: 128, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1664, file: !1618, line: 41, baseType: !365, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1664, file: !1618, line: 42, baseType: !365, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1618, line: 44, baseType: !1669, size: 128)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !1618, line: 44, size: 128, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1669, file: !1618, line: 45, baseType: !251, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1669, file: !1618, line: 46, baseType: !251, size: 32, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1669, file: !1618, line: 47, baseType: !251, size: 32, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1669, file: !1618, line: 48, baseType: !251, size: 32, offset: 96)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1654, file: !1618, line: 51, baseType: !251, size: 32, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1654, file: !1618, line: 52, baseType: !251, size: 32, offset: 224)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1654, file: !1618, line: 55, baseType: !1678, size: 1024, offset: 256)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 1024, elements: !1679)
!1679 = !{!1680}
!1680 = !DISubrange(count: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1654, file: !1618, line: 58, baseType: !1682, size: 2048, offset: 1280)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 2048, elements: !1683)
!1683 = !{!1684}
!1684 = !DISubrange(count: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1654, file: !1618, line: 60, baseType: !1686, size: 384, offset: 3328)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 384, elements: !1687)
!1687 = !{!1688}
!1688 = !DISubrange(count: 12)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1618, line: 62, baseType: !1690, size: 384, offset: 3712)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1618, line: 62, size: 384, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1690, file: !1618, line: 63, baseType: !1686, size: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1690, file: !1618, line: 64, baseType: !1686, size: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1636, file: !1618, line: 351, baseType: !1695, size: 1088)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1618, line: 79, size: 1088, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1770}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1695, file: !1618, line: 80, baseType: !251, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1695, file: !1618, line: 81, baseType: !251, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1695, file: !1618, line: 82, baseType: !251, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1695, file: !1618, line: 83, baseType: !251, size: 32, offset: 96)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1695, file: !1618, line: 84, baseType: !251, size: 32, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1695, file: !1618, line: 85, baseType: !251, size: 32, offset: 160)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1695, file: !1618, line: 86, baseType: !251, size: 32, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1695, file: !1618, line: 88, baseType: !1649, size: 640, offset: 224)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1695, file: !1618, line: 89, baseType: !96, size: 8, offset: 864)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1695, file: !1618, line: 90, baseType: !96, size: 8, offset: 872)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1695, file: !1618, line: 91, baseType: !96, size: 8, offset: 880)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1695, file: !1618, line: 92, baseType: !96, size: 8, offset: 888)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1695, file: !1618, line: 93, baseType: !96, size: 8, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1695, file: !1618, line: 94, baseType: !96, size: 8, offset: 904)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1695, file: !1618, line: 95, baseType: !1712, size: 64, offset: 960)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1714, line: 11, size: 128, elements: !1715)
!1714 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1715 = !{!1716, !1717}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1713, file: !1714, line: 12, baseType: !812, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1713, file: !1714, line: 13, baseType: !1718, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1720, line: 103, size: 1344, elements: !1721)
!1720 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1750, !1751, !1752}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1719, file: !1720, line: 109, baseType: !52, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1719, file: !1720, line: 110, baseType: !52, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1719, file: !1720, line: 111, baseType: !52, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1719, file: !1720, line: 112, baseType: !52, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1719, file: !1720, line: 113, baseType: !52, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1719, file: !1720, line: 114, baseType: !52, size: 64, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1719, file: !1720, line: 117, baseType: !52, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1719, file: !1720, line: 118, baseType: !52, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1719, file: !1720, line: 119, baseType: !52, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1719, file: !1720, line: 120, baseType: !52, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1719, file: !1720, line: 121, baseType: !52, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1719, file: !1720, line: 122, baseType: !52, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1719, file: !1720, line: 123, baseType: !52, size: 64, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1719, file: !1720, line: 124, baseType: !52, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1719, file: !1720, line: 125, baseType: !52, size: 64, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1719, file: !1720, line: 139, baseType: !52, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1719, file: !1720, line: 142, baseType: !52, size: 64, offset: 1024)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1720, line: 144, baseType: !1740, size: 64, offset: 1088)
!1740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1720, line: 144, size: 64, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1740, file: !1720, line: 146, baseType: !106, size: 16)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1740, file: !1720, line: 148, baseType: !365, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1740, file: !1720, line: 150, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1720, line: 59, size: 64, elements: !1746)
!1746 = !{!1747, !1748, !1749}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1745, file: !1720, line: 61, baseType: !365, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1745, file: !1720, line: 63, baseType: !365, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1745, file: !1720, line: 65, baseType: !365, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1719, file: !1720, line: 153, baseType: !52, size: 64, offset: 1152)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1719, file: !1720, line: 154, baseType: !52, size: 64, offset: 1216)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1720, line: 156, baseType: !1753, size: 64, offset: 1280)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1720, line: 156, size: 64, elements: !1754)
!1754 = !{!1755, !1756, !1757}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1753, file: !1720, line: 158, baseType: !106, size: 16)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1753, file: !1720, line: 160, baseType: !365, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1753, file: !1720, line: 162, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1720, line: 69, size: 64, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1758, file: !1720, line: 71, baseType: !365, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1758, file: !1720, line: 73, baseType: !365, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1758, file: !1720, line: 75, baseType: !365, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1758, file: !1720, line: 77, baseType: !365, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1758, file: !1720, line: 80, baseType: !365, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1758, file: !1720, line: 83, baseType: !365, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1758, file: !1720, line: 86, baseType: !365, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1758, file: !1720, line: 88, baseType: !365, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1758, file: !1720, line: 93, baseType: !365, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1758, file: !1720, line: 100, baseType: !365, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1695, file: !1618, line: 96, baseType: !251, size: 32, offset: 1024)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1636, file: !1618, line: 352, baseType: !1772, size: 4608, align: 512)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1618, line: 333, size: 4608, align: 512, elements: !1773)
!1773 = !{!1774, !1775, !1782}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1772, file: !1618, line: 334, baseType: !1654, size: 4096, align: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1772, file: !1618, line: 335, baseType: !1776, size: 512, offset: 4096)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1618, line: 312, size: 512, elements: !1777)
!1777 = !{!1778, !1779, !1780}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1776, file: !1618, line: 313, baseType: !365, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1776, file: !1618, line: 314, baseType: !365, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1776, file: !1618, line: 315, baseType: !1781, size: 384, offset: 128)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 384, elements: !1016)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1772, file: !1618, line: 336, baseType: !1783, offset: 4608)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !780)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1636, file: !1618, line: 353, baseType: !1785, size: 32768)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32768, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 4096)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1617, file: !1618, line: 484, baseType: !1623, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1617, file: !1618, line: 491, baseType: !1790, size: 128, offset: 256)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1618, line: 404, size: 128, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1790, file: !1618, line: 424, baseType: !365, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1790, file: !1618, line: 432, baseType: !7, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1790, file: !1618, line: 440, baseType: !7, size: 32, offset: 96)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1617, file: !1618, line: 498, baseType: !1790, size: 128, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1617, file: !1618, line: 508, baseType: !1624, size: 33280, align: 512, offset: 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !292, file: !293, line: 21, baseType: !1798, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !302}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !292, file: !293, line: 22, baseType: !1802, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!35, !1805, !302}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !1108, line: 53, size: 256, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1806, file: !1108, line: 54, baseType: !7, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1806, file: !1108, line: 55, baseType: !1106, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1806, file: !1108, line: 56, baseType: !1097, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1806, file: !1108, line: 57, baseType: !959, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !292, file: !293, line: 23, baseType: !1813, size: 64, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!274, !302}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !292, file: !293, line: 24, baseType: !1817, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!302, !302}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !285, file: !286, line: 12, baseType: !7, size: 32, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !285, file: !286, line: 13, baseType: !140, size: 32, offset: 160)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !245, line: 77, baseType: !52, size: 64, offset: 2112)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !244, file: !245, line: 80, baseType: !1029, size: 8, offset: 2176)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !244, file: !245, line: 88, baseType: !110, size: 128, offset: 2240)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !244, file: !245, line: 89, baseType: !965, size: 64, offset: 2368)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !244, file: !245, line: 90, baseType: !668, size: 320, offset: 2432)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !244, file: !245, line: 97, baseType: !767, size: 256, offset: 2752)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !244, file: !245, line: 99, baseType: !1829, size: 768, offset: 3008)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !25, line: 199, size: 768, elements: !1830)
!1830 = !{!1831, !1836}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1829, file: !25, line: 200, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!35, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1829, file: !25, line: 201, baseType: !1837, size: 704, offset: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !25, line: 193, size: 704, elements: !1838)
!1838 = !{!1839, !1886}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1837, file: !25, line: 195, baseType: !1840, size: 640)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !25, line: 173, size: 640, elements: !1841)
!1841 = !{!1842, !1854, !1855, !1856, !1876, !1877, !1879, !1885}
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !25, line: 174, baseType: !1843, size: 192)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1840, file: !25, line: 174, size: 192, elements: !1844)
!1844 = !{!1845, !1853}
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !25, line: 175, baseType: !1846, size: 192)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1843, file: !25, line: 175, size: 192, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1852}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1846, file: !25, line: 176, baseType: !46, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1846, file: !25, line: 177, baseType: !35, size: 32, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1846, file: !25, line: 178, baseType: !35, size: 32, offset: 96)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1846, file: !25, line: 179, baseType: !35, size: 32, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1846, file: !25, line: 180, baseType: !35, size: 32, offset: 160)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1843, file: !25, line: 182, baseType: !887, size: 128, align: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1840, file: !25, line: 184, baseType: !908, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1840, file: !25, line: 185, baseType: !46, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1840, file: !25, line: 186, baseType: !1857, size: 64, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !25, line: 204, size: 960, elements: !1859)
!1859 = !{!1860, !1861, !1865, !1872}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1858, file: !25, line: 205, baseType: !1829, size: 768)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1858, file: !25, line: 206, baseType: !1862, size: 64, offset: 768)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1835, !1857}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1858, file: !25, line: 207, baseType: !1866, size: 64, offset: 832)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1869, !1870, !1871}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1858, file: !25, line: 209, baseType: !1873, size: 64, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!35, !1869, !46}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1840, file: !25, line: 187, baseType: !1835, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1840, file: !25, line: 188, baseType: !1878, size: 64, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1840, file: !25, line: 189, baseType: !1880, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !25, line: 157, size: 256, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1881, file: !25, line: 158, baseType: !357, size: 192, align: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1881, file: !25, line: 159, baseType: !1869, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1840, file: !25, line: 190, baseType: !217, size: 64, offset: 576)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1837, file: !25, line: 196, baseType: !497, size: 64, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !244, file: !245, line: 100, baseType: !1869, size: 64, offset: 3776)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !244, file: !245, line: 102, baseType: !1889, size: 64, offset: 3840)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !245, line: 107, size: 1152, elements: !1891)
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1898}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1890, file: !245, line: 108, baseType: !167, size: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1890, file: !245, line: 109, baseType: !274, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1890, file: !245, line: 110, baseType: !174, size: 32, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1890, file: !245, line: 111, baseType: !62, size: 32, offset: 224)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1890, file: !245, line: 112, baseType: !1897, size: 640, offset: 256)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 640, elements: !237)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1890, file: !245, line: 113, baseType: !1899, size: 256, offset: 896)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !710)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !244, file: !245, line: 103, baseType: !1901, size: 640, offset: 3904)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 640, elements: !237)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !244, file: !245, line: 104, baseType: !1903, size: 256, offset: 4544)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 256, elements: !710)
!1904 = !{i32 7, !"Dwarf Version", i32 5}
!1905 = !{i32 2, !"Debug Info Version", i32 3}
!1906 = !{i32 1, !"wchar_size", i32 2}
!1907 = !{i32 8, !"cf-protection-branch", i32 1}
!1908 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1909 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1910 = !{i32 1, !"Code Model", i32 2}
!1911 = !{i32 1, !"override-stack-alignment", i32 8}
!1912 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1913 = distinct !DISubprogram(name: "find_user", scope: !3, file: !3, line: 167, type: !1914, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!135, !174}
!1916 = !{!1917, !1918, !1919, !1920, !1924}
!1917 = !DILocalVariable(name: "uid", arg: 1, scope: !1913, file: !3, line: 167, type: !174)
!1918 = !DILocalVariable(name: "ret", scope: !1913, file: !3, line: 169, type: !135)
!1919 = !DILocalVariable(name: "flags", scope: !1913, file: !3, line: 170, type: !52)
!1920 = !DILocalVariable(name: "__dummy", scope: !1921, file: !3, line: 172, type: !52)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 172, column: 2)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 172, column: 2)
!1923 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 172, column: 2)
!1924 = !DILocalVariable(name: "__dummy2", scope: !1921, file: !3, line: 172, type: !52)
!1925 = !DILocation(line: 167, column: 38, scope: !1913)
!1926 = !DILocation(line: 169, column: 2, scope: !1913)
!1927 = !DILocation(line: 169, column: 22, scope: !1913)
!1928 = !DILocation(line: 170, column: 2, scope: !1913)
!1929 = !DILocation(line: 170, column: 16, scope: !1913)
!1930 = !DILocation(line: 172, column: 2, scope: !1913)
!1931 = !DILocation(line: 172, column: 2, scope: !1923)
!1932 = !DILocation(line: 172, column: 2, scope: !1921)
!1933 = !DILocation(line: 172, column: 2, scope: !1922)
!1934 = !DILocation(line: 173, column: 27, scope: !1913)
!1935 = !DILocation(line: 173, column: 8, scope: !1913)
!1936 = !DILocation(line: 173, column: 6, scope: !1913)
!1937 = !DILocation(line: 174, column: 40, scope: !1913)
!1938 = !DILocation(line: 174, column: 2, scope: !1913)
!1939 = !DILocation(line: 175, column: 9, scope: !1913)
!1940 = !DILocation(line: 176, column: 1, scope: !1913)
!1941 = !DILocation(line: 175, column: 2, scope: !1913)
!1942 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1943, file: !1943, line: 32, type: !1944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1943 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!52, !1946}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1947 = distinct !DISubprogram(name: "spinlock_check", scope: !1948, file: !1948, line: 324, type: !1949, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1952)
!1948 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1946, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1952 = !{!1953}
!1953 = !DILocalVariable(name: "lock", arg: 1, scope: !1947, file: !1948, line: 324, type: !1951)
!1954 = !DILocation(line: 324, column: 67, scope: !1947)
!1955 = !DILocation(line: 326, column: 10, scope: !1947)
!1956 = !DILocation(line: 326, column: 16, scope: !1947)
!1957 = !DILocation(line: 326, column: 2, scope: !1947)
!1958 = distinct !DISubprogram(name: "uid_hash_find", scope: !3, file: !3, line: 118, type: !1959, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1962)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!135, !174, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1962 = !{!1963, !1964, !1965, !1966, !1969, !1971, !1974}
!1963 = !DILocalVariable(name: "uid", arg: 1, scope: !1958, file: !3, line: 118, type: !174)
!1964 = !DILocalVariable(name: "hashent", arg: 2, scope: !1958, file: !3, line: 118, type: !1961)
!1965 = !DILocalVariable(name: "user", scope: !1958, file: !3, line: 120, type: !135)
!1966 = !DILocalVariable(name: "____ptr", scope: !1967, file: !3, line: 122, type: !170)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 122, column: 2)
!1968 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 122, column: 2)
!1969 = !DILocalVariable(name: "__mptr", scope: !1970, file: !3, line: 122, type: !33)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 122, column: 2)
!1971 = !DILocalVariable(name: "____ptr", scope: !1972, file: !3, line: 122, type: !170)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 122, column: 2)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 122, column: 2)
!1974 = !DILocalVariable(name: "__mptr", scope: !1975, file: !3, line: 122, type: !33)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 122, column: 2)
!1976 = !DILocation(line: 118, column: 49, scope: !1958)
!1977 = !DILocation(line: 118, column: 73, scope: !1958)
!1978 = !DILocation(line: 120, column: 2, scope: !1958)
!1979 = !DILocation(line: 120, column: 22, scope: !1958)
!1980 = !DILocation(line: 122, column: 2, scope: !1967)
!1981 = !DILocation(line: 122, column: 2, scope: !1970)
!1982 = !DILocation(line: 122, column: 2, scope: !1968)
!1983 = !DILocation(line: 122, column: 2, scope: !1973)
!1984 = !DILocation(line: 123, column: 14, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 123, column: 7)
!1986 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 122, column: 52)
!1987 = !DILocation(line: 123, column: 20, scope: !1985)
!1988 = !DILocation(line: 123, column: 7, scope: !1985)
!1989 = !DILocation(line: 123, column: 7, scope: !1986)
!1990 = !DILocation(line: 124, column: 18, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 123, column: 31)
!1992 = !DILocation(line: 124, column: 24, scope: !1991)
!1993 = !DILocation(line: 124, column: 4, scope: !1991)
!1994 = !DILocation(line: 125, column: 11, scope: !1991)
!1995 = !DILocation(line: 125, column: 4, scope: !1991)
!1996 = !DILocation(line: 127, column: 2, scope: !1986)
!1997 = !DILocation(line: 122, column: 2, scope: !1972)
!1998 = !DILocation(line: 122, column: 2, scope: !1975)
!1999 = distinct !{!1999, !1982, !2000, !2001, !2002}
!2000 = !DILocation(line: 127, column: 2, scope: !1968)
!2001 = !{!"llvm.loop.mustprogress"}
!2002 = !{!"llvm.loop.unroll.disable"}
!2003 = !DILocation(line: 129, column: 2, scope: !1958)
!2004 = !DILocation(line: 130, column: 1, scope: !1958)
!2005 = distinct !DISubprogram(name: "__kuid_val", scope: !175, file: !175, line: 34, type: !2006, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!179, !174}
!2008 = !{!2009}
!2009 = !DILocalVariable(name: "uid", arg: 1, scope: !2005, file: !175, line: 34, type: !174)
!2010 = !DILocation(line: 34, column: 39, scope: !2005)
!2011 = !DILocation(line: 36, column: 13, scope: !2005)
!2012 = !DILocation(line: 36, column: 2, scope: !2005)
!2013 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !1948, file: !1948, line: 404, type: !2014, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2016)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !1951, !52}
!2016 = !{!2017, !2018, !2019, !2022}
!2017 = !DILocalVariable(name: "lock", arg: 1, scope: !2013, file: !1948, line: 404, type: !1951)
!2018 = !DILocalVariable(name: "flags", arg: 2, scope: !2013, file: !1948, line: 404, type: !52)
!2019 = !DILocalVariable(name: "__dummy", scope: !2020, file: !1948, line: 406, type: !52)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !1948, line: 406, column: 2)
!2021 = distinct !DILexicalBlock(scope: !2013, file: !1948, line: 406, column: 2)
!2022 = !DILocalVariable(name: "__dummy2", scope: !2020, file: !1948, line: 406, type: !52)
!2023 = !DILocation(line: 404, column: 64, scope: !2013)
!2024 = !DILocation(line: 404, column: 84, scope: !2013)
!2025 = !DILocation(line: 406, column: 2, scope: !2013)
!2026 = !DILocation(line: 406, column: 2, scope: !2020)
!2027 = !DILocation(line: 406, column: 2, scope: !2021)
!2028 = !DILocation(line: 407, column: 1, scope: !2013)
!2029 = distinct !DISubprogram(name: "free_uid", scope: !3, file: !3, line: 178, type: !2030, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !135}
!2032 = !{!2033, !2034}
!2033 = !DILocalVariable(name: "up", arg: 1, scope: !2029, file: !3, line: 178, type: !135)
!2034 = !DILocalVariable(name: "flags", scope: !2029, file: !3, line: 180, type: !52)
!2035 = !DILocation(line: 178, column: 35, scope: !2029)
!2036 = !DILocation(line: 180, column: 2, scope: !2029)
!2037 = !DILocation(line: 180, column: 16, scope: !2029)
!2038 = !DILocation(line: 182, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 182, column: 6)
!2040 = !DILocation(line: 182, column: 6, scope: !2029)
!2041 = !DILocation(line: 183, column: 3, scope: !2039)
!2042 = !DILocation(line: 185, column: 37, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 185, column: 6)
!2044 = !DILocation(line: 185, column: 41, scope: !2043)
!2045 = !DILocation(line: 185, column: 6, scope: !2043)
!2046 = !DILocation(line: 185, column: 6, scope: !2029)
!2047 = !DILocation(line: 186, column: 13, scope: !2043)
!2048 = !DILocation(line: 186, column: 17, scope: !2043)
!2049 = !DILocation(line: 186, column: 3, scope: !2043)
!2050 = !DILocation(line: 187, column: 1, scope: !2029)
!2051 = !DISubprogram(name: "refcount_dec_and_lock_irqsave", scope: !121, file: !121, line: 366, type: !2052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!1029, !2054, !1951, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!2056 = distinct !DISubprogram(name: "free_user", scope: !3, file: !3, line: 152, type: !2057, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !135, !52}
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "up", arg: 1, scope: !2056, file: !3, line: 152, type: !135)
!2061 = !DILocalVariable(name: "flags", arg: 2, scope: !2056, file: !3, line: 152, type: !52)
!2062 = !DILocation(line: 152, column: 43, scope: !2056)
!2063 = !DILocation(line: 152, column: 61, scope: !2056)
!2064 = !DILocation(line: 155, column: 18, scope: !2056)
!2065 = !DILocation(line: 155, column: 2, scope: !2056)
!2066 = !DILocation(line: 156, column: 40, scope: !2056)
!2067 = !DILocation(line: 156, column: 2, scope: !2056)
!2068 = !DILocation(line: 157, column: 18, scope: !2056)
!2069 = !DILocation(line: 157, column: 2, scope: !2056)
!2070 = !DILocation(line: 158, column: 18, scope: !2056)
!2071 = !DILocation(line: 158, column: 30, scope: !2056)
!2072 = !DILocation(line: 158, column: 2, scope: !2056)
!2073 = !DILocation(line: 159, column: 1, scope: !2056)
!2074 = distinct !DISubprogram(name: "alloc_uid", scope: !3, file: !3, line: 190, type: !1914, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DILocalVariable(name: "uid", arg: 1, scope: !2074, file: !3, line: 190, type: !174)
!2077 = !DILocalVariable(name: "hashent", scope: !2074, file: !3, line: 192, type: !1961)
!2078 = !DILocalVariable(name: "up", scope: !2074, file: !3, line: 193, type: !135)
!2079 = !DILocalVariable(name: "new", scope: !2074, file: !3, line: 193, type: !135)
!2080 = !DILocation(line: 190, column: 38, scope: !2074)
!2081 = !DILocation(line: 192, column: 2, scope: !2074)
!2082 = !DILocation(line: 192, column: 21, scope: !2074)
!2083 = !DILocation(line: 192, column: 31, scope: !2074)
!2084 = !DILocation(line: 193, column: 2, scope: !2074)
!2085 = !DILocation(line: 193, column: 22, scope: !2074)
!2086 = !DILocation(line: 193, column: 27, scope: !2074)
!2087 = !DILocation(line: 195, column: 2, scope: !2074)
!2088 = !DILocation(line: 196, column: 26, scope: !2074)
!2089 = !DILocation(line: 196, column: 7, scope: !2074)
!2090 = !DILocation(line: 196, column: 5, scope: !2074)
!2091 = !DILocation(line: 197, column: 2, scope: !2074)
!2092 = !DILocation(line: 199, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 199, column: 6)
!2094 = !DILocation(line: 199, column: 6, scope: !2074)
!2095 = !DILocation(line: 200, column: 27, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 199, column: 11)
!2097 = !DILocation(line: 200, column: 9, scope: !2096)
!2098 = !DILocation(line: 200, column: 7, scope: !2096)
!2099 = !DILocation(line: 201, column: 8, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 201, column: 7)
!2101 = !DILocation(line: 201, column: 7, scope: !2096)
!2102 = !DILocation(line: 202, column: 4, scope: !2100)
!2103 = !DILocation(line: 204, column: 3, scope: !2096)
!2104 = !DILocation(line: 204, column: 8, scope: !2096)
!2105 = !DILocation(line: 204, column: 14, scope: !2096)
!2106 = !DILocation(line: 205, column: 17, scope: !2096)
!2107 = !DILocation(line: 205, column: 22, scope: !2096)
!2108 = !DILocation(line: 205, column: 3, scope: !2096)
!2109 = !DILocation(line: 206, column: 24, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 206, column: 7)
!2111 = !DILocation(line: 206, column: 7, scope: !2110)
!2112 = !DILocation(line: 206, column: 7, scope: !2096)
!2113 = !DILocation(line: 207, column: 20, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 206, column: 30)
!2115 = !DILocation(line: 207, column: 32, scope: !2114)
!2116 = !DILocation(line: 207, column: 4, scope: !2114)
!2117 = !DILocation(line: 208, column: 4, scope: !2114)
!2118 = !DILocation(line: 210, column: 25, scope: !2096)
!2119 = !DILocation(line: 210, column: 30, scope: !2096)
!2120 = !DILocation(line: 210, column: 3, scope: !2096)
!2121 = !DILocation(line: 211, column: 24, scope: !2096)
!2122 = !DILocation(line: 211, column: 29, scope: !2096)
!2123 = !DILocation(line: 211, column: 3, scope: !2096)
!2124 = !DILocation(line: 217, column: 3, scope: !2096)
!2125 = !DILocation(line: 218, column: 27, scope: !2096)
!2126 = !DILocation(line: 218, column: 8, scope: !2096)
!2127 = !DILocation(line: 218, column: 6, scope: !2096)
!2128 = !DILocation(line: 219, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 219, column: 7)
!2130 = !DILocation(line: 219, column: 7, scope: !2096)
!2131 = !DILocation(line: 220, column: 20, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 219, column: 11)
!2133 = !DILocation(line: 220, column: 4, scope: !2132)
!2134 = !DILocation(line: 221, column: 20, scope: !2132)
!2135 = !DILocation(line: 221, column: 32, scope: !2132)
!2136 = !DILocation(line: 221, column: 4, scope: !2132)
!2137 = !DILocation(line: 222, column: 3, scope: !2132)
!2138 = !DILocation(line: 223, column: 20, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 222, column: 10)
!2140 = !DILocation(line: 223, column: 25, scope: !2139)
!2141 = !DILocation(line: 223, column: 4, scope: !2139)
!2142 = !DILocation(line: 224, column: 9, scope: !2139)
!2143 = !DILocation(line: 224, column: 7, scope: !2139)
!2144 = !DILocation(line: 226, column: 3, scope: !2096)
!2145 = !DILocation(line: 227, column: 2, scope: !2096)
!2146 = !DILocation(line: 229, column: 9, scope: !2074)
!2147 = !DILocation(line: 229, column: 2, scope: !2074)
!2148 = !DILocation(line: 230, column: 1, scope: !2074)
!2149 = distinct !DISubprogram(name: "spin_lock_irq", scope: !1948, file: !1948, line: 374, type: !2150, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !1951}
!2152 = !{!2153}
!2153 = !DILocalVariable(name: "lock", arg: 1, scope: !2149, file: !1948, line: 374, type: !1951)
!2154 = !DILocation(line: 374, column: 55, scope: !2149)
!2155 = !DILocation(line: 376, column: 2, scope: !2149)
!2156 = !DILocation(line: 377, column: 1, scope: !2149)
!2157 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !1948, file: !1948, line: 399, type: !2150, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2158 = !{!2159}
!2159 = !DILocalVariable(name: "lock", arg: 1, scope: !2157, file: !1948, line: 399, type: !1951)
!2160 = !DILocation(line: 399, column: 57, scope: !2157)
!2161 = !DILocation(line: 401, column: 2, scope: !2157)
!2162 = !DILocation(line: 402, column: 1, scope: !2157)
!2163 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !2164, file: !2164, line: 709, type: !2165, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2167)
!2164 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!33, !211, !134}
!2167 = !{!2168, !2169}
!2168 = !DILocalVariable(name: "k", arg: 1, scope: !2163, file: !2164, line: 709, type: !211)
!2169 = !DILocalVariable(name: "flags", arg: 2, scope: !2163, file: !2164, line: 709, type: !134)
!2170 = !DILocation(line: 709, column: 58, scope: !2163)
!2171 = !DILocation(line: 709, column: 67, scope: !2163)
!2172 = !DILocation(line: 711, column: 26, scope: !2163)
!2173 = !DILocation(line: 711, column: 29, scope: !2163)
!2174 = !DILocation(line: 711, column: 35, scope: !2163)
!2175 = !DILocation(line: 711, column: 9, scope: !2163)
!2176 = !DILocation(line: 711, column: 2, scope: !2163)
!2177 = distinct !DISubprogram(name: "refcount_set", scope: !121, file: !121, line: 134, type: !2178, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !2054, !35}
!2180 = !{!2181, !2182}
!2181 = !DILocalVariable(name: "r", arg: 1, scope: !2177, file: !121, line: 134, type: !2054)
!2182 = !DILocalVariable(name: "n", arg: 2, scope: !2177, file: !121, line: 134, type: !35)
!2183 = !DILocation(line: 134, column: 45, scope: !2177)
!2184 = !DILocation(line: 134, column: 52, scope: !2177)
!2185 = !DILocation(line: 136, column: 14, scope: !2177)
!2186 = !DILocation(line: 136, column: 17, scope: !2177)
!2187 = !DILocation(line: 136, column: 23, scope: !2177)
!2188 = !DILocation(line: 136, column: 2, scope: !2177)
!2189 = !DILocation(line: 137, column: 1, scope: !2177)
!2190 = !DILocation(line: 132, column: 49, scope: !226)
!2191 = !DILocation(line: 135, column: 9, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !226, file: !3, line: 135, column: 9)
!2193 = !DILocation(line: 135, column: 2, scope: !226)
!2194 = !DISubprogram(name: "kmem_cache_free", scope: !2164, file: !2164, line: 503, type: !2195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !211, !33}
!2197 = distinct !DISubprogram(name: "ratelimit_state_init", scope: !2198, file: !2198, line: 9, type: !2199, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2198 = !DIFile(filename: "./include/linux/ratelimit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f5d4377bf2ea5ec5a0ece3b86c0b910")
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !2201, !35, !35}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!2202 = !{!2203, !2204, !2205}
!2203 = !DILocalVariable(name: "rs", arg: 1, scope: !2197, file: !2198, line: 9, type: !2201)
!2204 = !DILocalVariable(name: "interval", arg: 2, scope: !2197, file: !2198, line: 10, type: !35)
!2205 = !DILocalVariable(name: "burst", arg: 3, scope: !2197, file: !2198, line: 10, type: !35)
!2206 = !DILocation(line: 9, column: 65, scope: !2197)
!2207 = !DILocation(line: 10, column: 10, scope: !2197)
!2208 = !DILocation(line: 10, column: 24, scope: !2197)
!2209 = !DILocation(line: 12, column: 9, scope: !2197)
!2210 = !DILocation(line: 12, column: 2, scope: !2197)
!2211 = !DILocation(line: 14, column: 2, scope: !2197)
!2212 = !DILocation(line: 14, column: 2, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2197, file: !2198, line: 14, column: 2)
!2214 = !DILocation(line: 15, column: 17, scope: !2197)
!2215 = !DILocation(line: 15, column: 2, scope: !2197)
!2216 = !DILocation(line: 15, column: 6, scope: !2197)
!2217 = !DILocation(line: 15, column: 15, scope: !2197)
!2218 = !DILocation(line: 16, column: 14, scope: !2197)
!2219 = !DILocation(line: 16, column: 2, scope: !2197)
!2220 = !DILocation(line: 16, column: 6, scope: !2197)
!2221 = !DILocation(line: 16, column: 12, scope: !2197)
!2222 = !DILocation(line: 17, column: 1, scope: !2197)
!2223 = distinct !DISubprogram(name: "ratelimit_set_flags", scope: !2198, file: !2198, line: 38, type: !2224, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !2201, !52}
!2226 = !{!2227, !2228}
!2227 = !DILocalVariable(name: "rs", arg: 1, scope: !2223, file: !2198, line: 38, type: !2201)
!2228 = !DILocalVariable(name: "flags", arg: 2, scope: !2223, file: !2198, line: 38, type: !52)
!2229 = !DILocation(line: 38, column: 45, scope: !2223)
!2230 = !DILocation(line: 38, column: 63, scope: !2223)
!2231 = !DILocation(line: 40, column: 14, scope: !2223)
!2232 = !DILocation(line: 40, column: 2, scope: !2223)
!2233 = !DILocation(line: 40, column: 6, scope: !2223)
!2234 = !DILocation(line: 40, column: 12, scope: !2223)
!2235 = !DILocation(line: 41, column: 1, scope: !2223)
!2236 = distinct !DISubprogram(name: "user_epoll_free", scope: !3, file: !3, line: 141, type: !2030, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2237 = !{!2238}
!2238 = !DILocalVariable(name: "up", arg: 1, scope: !2236, file: !3, line: 141, type: !135)
!2239 = !DILocation(line: 141, column: 49, scope: !2236)
!2240 = !DILocation(line: 144, column: 26, scope: !2236)
!2241 = !DILocation(line: 144, column: 30, scope: !2236)
!2242 = !DILocation(line: 144, column: 2, scope: !2236)
!2243 = !DILocation(line: 146, column: 1, scope: !2236)
!2244 = distinct !DISubprogram(name: "uid_hash_insert", scope: !3, file: !3, line: 108, type: !2245, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !135, !1961}
!2247 = !{!2248, !2249}
!2248 = !DILocalVariable(name: "up", arg: 1, scope: !2244, file: !3, line: 108, type: !135)
!2249 = !DILocalVariable(name: "hashent", arg: 2, scope: !2244, file: !3, line: 108, type: !1961)
!2250 = !DILocation(line: 108, column: 49, scope: !2244)
!2251 = !DILocation(line: 108, column: 72, scope: !2244)
!2252 = !DILocation(line: 110, column: 18, scope: !2244)
!2253 = !DILocation(line: 110, column: 22, scope: !2244)
!2254 = !DILocation(line: 110, column: 36, scope: !2244)
!2255 = !DILocation(line: 110, column: 2, scope: !2244)
!2256 = !DILocation(line: 111, column: 1, scope: !2244)
!2257 = distinct !DISubprogram(name: "__initstub__kmod_user__179_252_uid_cache_init4", scope: !3, file: !3, line: 252, type: !2258, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!35}
!2260 = !DILocation(line: 252, column: 1, scope: !2257)
!2261 = distinct !DISubprogram(name: "uid_cache_init", scope: !3, file: !3, line: 232, type: !2258, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2262)
!2262 = !{!2263}
!2263 = !DILocalVariable(name: "n", scope: !2261, file: !3, line: 234, type: !35)
!2264 = !DILocation(line: 234, column: 2, scope: !2261)
!2265 = !DILocation(line: 234, column: 6, scope: !2261)
!2266 = !DILocation(line: 236, column: 15, scope: !2261)
!2267 = !DILocation(line: 236, column: 13, scope: !2261)
!2268 = !DILocation(line: 239, column: 8, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 239, column: 2)
!2270 = !DILocation(line: 239, column: 6, scope: !2269)
!2271 = !DILocation(line: 239, column: 13, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 239, column: 2)
!2273 = !DILocation(line: 239, column: 15, scope: !2272)
!2274 = !DILocation(line: 239, column: 2, scope: !2269)
!2275 = !DILocation(line: 240, column: 3, scope: !2272)
!2276 = !DILocation(line: 239, column: 29, scope: !2272)
!2277 = !DILocation(line: 239, column: 2, scope: !2272)
!2278 = distinct !{!2278, !2274, !2279, !2001, !2002}
!2279 = !DILocation(line: 240, column: 3, scope: !2269)
!2280 = !DILocation(line: 242, column: 6, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 242, column: 6)
!2282 = !DILocation(line: 242, column: 6, scope: !2261)
!2283 = !DILocation(line: 243, column: 3, scope: !2281)
!2284 = !DILocation(line: 246, column: 2, scope: !2261)
!2285 = !DILocation(line: 247, column: 30, scope: !2261)
!2286 = !DILocation(line: 247, column: 2, scope: !2261)
!2287 = !DILocation(line: 248, column: 2, scope: !2261)
!2288 = !DILocation(line: 251, column: 1, scope: !2261)
!2289 = !DILocation(line: 250, column: 2, scope: !2261)
!2290 = distinct !DISubprogram(name: "uid_eq", scope: !175, file: !175, line: 61, type: !2291, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!1029, !174, !174}
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "left", arg: 1, scope: !2290, file: !175, line: 61, type: !174)
!2295 = !DILocalVariable(name: "right", arg: 2, scope: !2290, file: !175, line: 61, type: !174)
!2296 = !DILocation(line: 61, column: 34, scope: !2290)
!2297 = !DILocation(line: 61, column: 47, scope: !2290)
!2298 = !DILocation(line: 63, column: 9, scope: !2290)
!2299 = !DILocation(line: 63, column: 29, scope: !2290)
!2300 = !DILocation(line: 63, column: 26, scope: !2290)
!2301 = !DILocation(line: 63, column: 2, scope: !2290)
!2302 = distinct !DISubprogram(name: "refcount_inc", scope: !121, file: !121, line: 265, type: !2303, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2054}
!2305 = !{!2306}
!2306 = !DILocalVariable(name: "r", arg: 1, scope: !2302, file: !121, line: 265, type: !2054)
!2307 = !DILocation(line: 265, column: 45, scope: !2302)
!2308 = !DILocation(line: 267, column: 17, scope: !2302)
!2309 = !DILocation(line: 267, column: 2, scope: !2302)
!2310 = !DILocation(line: 268, column: 1, scope: !2302)
!2311 = distinct !DISubprogram(name: "__refcount_inc", scope: !121, file: !121, line: 248, type: !2312, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !2054, !920}
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "r", arg: 1, scope: !2311, file: !121, line: 248, type: !2054)
!2316 = !DILocalVariable(name: "oldp", arg: 2, scope: !2311, file: !121, line: 248, type: !920)
!2317 = !DILocation(line: 248, column: 47, scope: !2311)
!2318 = !DILocation(line: 248, column: 55, scope: !2311)
!2319 = !DILocation(line: 250, column: 20, scope: !2311)
!2320 = !DILocation(line: 250, column: 23, scope: !2311)
!2321 = !DILocation(line: 250, column: 2, scope: !2311)
!2322 = !DILocation(line: 251, column: 1, scope: !2311)
!2323 = distinct !DISubprogram(name: "__refcount_add", scope: !121, file: !121, line: 191, type: !2324, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !35, !2054, !920}
!2326 = !{!2327, !2328, !2329, !2330}
!2327 = !DILocalVariable(name: "i", arg: 1, scope: !2323, file: !121, line: 191, type: !35)
!2328 = !DILocalVariable(name: "r", arg: 2, scope: !2323, file: !121, line: 191, type: !2054)
!2329 = !DILocalVariable(name: "oldp", arg: 3, scope: !2323, file: !121, line: 191, type: !920)
!2330 = !DILocalVariable(name: "old", scope: !2323, file: !121, line: 193, type: !35)
!2331 = !DILocation(line: 191, column: 39, scope: !2323)
!2332 = !DILocation(line: 191, column: 54, scope: !2323)
!2333 = !DILocation(line: 191, column: 62, scope: !2323)
!2334 = !DILocation(line: 193, column: 2, scope: !2323)
!2335 = !DILocation(line: 193, column: 6, scope: !2323)
!2336 = !DILocation(line: 193, column: 37, scope: !2323)
!2337 = !DILocation(line: 193, column: 41, scope: !2323)
!2338 = !DILocation(line: 193, column: 44, scope: !2323)
!2339 = !DILocation(line: 193, column: 12, scope: !2323)
!2340 = !DILocation(line: 195, column: 6, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2323, file: !121, line: 195, column: 6)
!2342 = !DILocation(line: 195, column: 6, scope: !2323)
!2343 = !DILocation(line: 196, column: 11, scope: !2341)
!2344 = !DILocation(line: 196, column: 4, scope: !2341)
!2345 = !DILocation(line: 196, column: 9, scope: !2341)
!2346 = !DILocation(line: 196, column: 3, scope: !2341)
!2347 = !DILocation(line: 198, column: 6, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2323, file: !121, line: 198, column: 6)
!2349 = !DILocation(line: 198, column: 6, scope: !2323)
!2350 = !DILocation(line: 199, column: 26, scope: !2348)
!2351 = !DILocation(line: 199, column: 3, scope: !2348)
!2352 = !DILocation(line: 200, column: 11, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !121, line: 200, column: 11)
!2354 = !DILocation(line: 200, column: 11, scope: !2348)
!2355 = !DILocation(line: 201, column: 26, scope: !2353)
!2356 = !DILocation(line: 201, column: 3, scope: !2353)
!2357 = !DILocation(line: 202, column: 1, scope: !2323)
!2358 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2359, file: !2359, line: 250, type: !2360, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2363)
!2359 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!35, !35, !2362}
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "i", arg: 1, scope: !2358, file: !2359, line: 250, type: !35)
!2365 = !DILocalVariable(name: "v", arg: 2, scope: !2358, file: !2359, line: 250, type: !2362)
!2366 = !DILocation(line: 250, column: 30, scope: !2358)
!2367 = !DILocation(line: 250, column: 43, scope: !2358)
!2368 = !DILocation(line: 252, column: 31, scope: !2358)
!2369 = !DILocation(line: 252, column: 2, scope: !2358)
!2370 = !DILocation(line: 253, column: 38, scope: !2358)
!2371 = !DILocation(line: 253, column: 41, scope: !2358)
!2372 = !DILocation(line: 253, column: 9, scope: !2358)
!2373 = !DILocation(line: 253, column: 2, scope: !2358)
!2374 = !DISubprogram(name: "refcount_warn_saturate", scope: !121, file: !121, line: 127, type: !2375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2054, !120}
!2377 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2378, file: !2378, line: 94, type: !2379, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2378 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !2381, !48}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2383)
!2383 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "v", arg: 1, scope: !2377, file: !2378, line: 94, type: !2381)
!2386 = !DILocalVariable(name: "size", arg: 2, scope: !2377, file: !2378, line: 94, type: !48)
!2387 = !DILocation(line: 94, column: 79, scope: !2377)
!2388 = !DILocation(line: 94, column: 89, scope: !2377)
!2389 = !DILocation(line: 96, column: 20, scope: !2377)
!2390 = !DILocation(line: 96, column: 23, scope: !2377)
!2391 = !DILocation(line: 96, column: 2, scope: !2377)
!2392 = !DILocation(line: 97, column: 2, scope: !2377)
!2393 = !DILocation(line: 98, column: 1, scope: !2377)
!2394 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2395, file: !2395, line: 731, type: !2360, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2395 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "i", arg: 1, scope: !2394, file: !2395, line: 731, type: !35)
!2398 = !DILocalVariable(name: "v", arg: 2, scope: !2394, file: !2395, line: 731, type: !2362)
!2399 = !DILocation(line: 731, column: 34, scope: !2394)
!2400 = !DILocation(line: 731, column: 47, scope: !2394)
!2401 = !DILocation(line: 736, column: 31, scope: !2394)
!2402 = !DILocation(line: 736, column: 34, scope: !2394)
!2403 = !DILocation(line: 736, column: 9, scope: !2394)
!2404 = !DILocation(line: 736, column: 2, scope: !2394)
!2405 = distinct !DISubprogram(name: "kasan_check_write", scope: !2406, file: !2406, line: 44, type: !2407, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2409)
!2406 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!1029, !2381, !7}
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "p", arg: 1, scope: !2405, file: !2406, line: 44, type: !2381)
!2411 = !DILocalVariable(name: "size", arg: 2, scope: !2405, file: !2406, line: 44, type: !7)
!2412 = !DILocation(line: 44, column: 59, scope: !2405)
!2413 = !DILocation(line: 44, column: 75, scope: !2405)
!2414 = !DILocation(line: 46, column: 2, scope: !2405)
!2415 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2416, file: !2416, line: 229, type: !2417, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2416 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2381, !48, !35}
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "ptr", arg: 1, scope: !2415, file: !2416, line: 229, type: !2381)
!2421 = !DILocalVariable(name: "size", arg: 2, scope: !2415, file: !2416, line: 229, type: !48)
!2422 = !DILocalVariable(name: "type", arg: 3, scope: !2415, file: !2416, line: 230, type: !35)
!2423 = !DILocation(line: 229, column: 60, scope: !2415)
!2424 = !DILocation(line: 229, column: 72, scope: !2415)
!2425 = !DILocation(line: 230, column: 15, scope: !2415)
!2426 = !DILocation(line: 230, column: 23, scope: !2415)
!2427 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2428, file: !2428, line: 95, type: !2360, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2429)
!2428 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "i", arg: 1, scope: !2427, file: !2428, line: 95, type: !35)
!2431 = !DILocalVariable(name: "v", arg: 2, scope: !2427, file: !2428, line: 95, type: !2362)
!2432 = !DILocalVariable(name: "__ret", scope: !2433, file: !2428, line: 97, type: !35)
!2433 = distinct !DILexicalBlock(scope: !2427, file: !2428, line: 97, column: 9)
!2434 = !DILocation(line: 95, column: 54, scope: !2427)
!2435 = !DILocation(line: 95, column: 67, scope: !2427)
!2436 = !DILocation(line: 97, column: 9, scope: !2433)
!2437 = !{i64 2148412758, i64 2148412797, i64 2148412818, i64 2148412855, i64 2148412878, i64 2148412887}
!2438 = !DILocation(line: 97, column: 9, scope: !2427)
!2439 = !DILocation(line: 97, column: 2, scope: !2427)
!2440 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1943, file: !1943, line: 43, type: !2441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !1946, !52}
!2443 = distinct !DISubprogram(name: "uid_hash_remove", scope: !3, file: !3, line: 113, type: !2030, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "up", arg: 1, scope: !2443, file: !3, line: 113, type: !135)
!2446 = !DILocation(line: 113, column: 49, scope: !2443)
!2447 = !DILocation(line: 115, column: 18, scope: !2443)
!2448 = !DILocation(line: 115, column: 22, scope: !2443)
!2449 = !DILocation(line: 115, column: 2, scope: !2443)
!2450 = !DILocation(line: 116, column: 1, scope: !2443)
!2451 = distinct !DISubprogram(name: "hlist_del_init", scope: !2452, file: !2452, line: 1005, type: !2453, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2452 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !170}
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "n", arg: 1, scope: !2451, file: !2452, line: 1005, type: !170)
!2457 = !DILocation(line: 1005, column: 54, scope: !2451)
!2458 = !DILocation(line: 1007, column: 22, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2451, file: !2452, line: 1007, column: 6)
!2460 = !DILocation(line: 1007, column: 7, scope: !2459)
!2461 = !DILocation(line: 1007, column: 6, scope: !2451)
!2462 = !DILocation(line: 1008, column: 15, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !2452, line: 1007, column: 26)
!2464 = !DILocation(line: 1008, column: 3, scope: !2463)
!2465 = !DILocation(line: 1009, column: 19, scope: !2463)
!2466 = !DILocation(line: 1009, column: 3, scope: !2463)
!2467 = !DILocation(line: 1010, column: 2, scope: !2463)
!2468 = !DILocation(line: 1011, column: 1, scope: !2451)
!2469 = distinct !DISubprogram(name: "hlist_unhashed", scope: !2452, file: !2452, line: 948, type: !2470, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2474)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!35, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!2474 = !{!2475}
!2475 = !DILocalVariable(name: "h", arg: 1, scope: !2469, file: !2452, line: 948, type: !2472)
!2476 = !DILocation(line: 948, column: 59, scope: !2469)
!2477 = !DILocation(line: 950, column: 10, scope: !2469)
!2478 = !DILocation(line: 950, column: 13, scope: !2469)
!2479 = !DILocation(line: 950, column: 9, scope: !2469)
!2480 = !DILocation(line: 950, column: 2, scope: !2469)
!2481 = distinct !DISubprogram(name: "__hlist_del", scope: !2452, file: !2452, line: 975, type: !2453, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2482)
!2482 = !{!2483, !2484, !2485}
!2483 = !DILocalVariable(name: "n", arg: 1, scope: !2481, file: !2452, line: 975, type: !170)
!2484 = !DILocalVariable(name: "next", scope: !2481, file: !2452, line: 977, type: !170)
!2485 = !DILocalVariable(name: "pprev", scope: !2481, file: !2452, line: 978, type: !172)
!2486 = !DILocation(line: 975, column: 51, scope: !2481)
!2487 = !DILocation(line: 977, column: 2, scope: !2481)
!2488 = !DILocation(line: 977, column: 21, scope: !2481)
!2489 = !DILocation(line: 977, column: 28, scope: !2481)
!2490 = !DILocation(line: 977, column: 31, scope: !2481)
!2491 = !DILocation(line: 978, column: 2, scope: !2481)
!2492 = !DILocation(line: 978, column: 22, scope: !2481)
!2493 = !DILocation(line: 978, column: 30, scope: !2481)
!2494 = !DILocation(line: 978, column: 33, scope: !2481)
!2495 = !DILocation(line: 980, column: 2, scope: !2481)
!2496 = !DILocation(line: 980, column: 2, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2481, file: !2452, line: 980, column: 2)
!2498 = !DILocation(line: 980, column: 2, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2497, file: !2452, line: 980, column: 2)
!2500 = !DILocation(line: 980, column: 2, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !2452, line: 980, column: 2)
!2502 = !DILocation(line: 981, column: 6, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2481, file: !2452, line: 981, column: 6)
!2504 = !DILocation(line: 981, column: 6, scope: !2481)
!2505 = !DILocation(line: 982, column: 3, scope: !2503)
!2506 = !DILocation(line: 982, column: 3, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2503, file: !2452, line: 982, column: 3)
!2508 = !DILocation(line: 982, column: 3, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2507, file: !2452, line: 982, column: 3)
!2510 = !DILocation(line: 982, column: 3, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !2452, line: 982, column: 3)
!2512 = !DILocation(line: 983, column: 1, scope: !2481)
!2513 = distinct !DISubprogram(name: "INIT_HLIST_NODE", scope: !2452, file: !2452, line: 934, type: !2453, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2514 = !{!2515}
!2515 = !DILocalVariable(name: "h", arg: 1, scope: !2513, file: !2452, line: 934, type: !170)
!2516 = !DILocation(line: 934, column: 55, scope: !2513)
!2517 = !DILocation(line: 936, column: 2, scope: !2513)
!2518 = !DILocation(line: 936, column: 5, scope: !2513)
!2519 = !DILocation(line: 936, column: 10, scope: !2513)
!2520 = !DILocation(line: 937, column: 2, scope: !2513)
!2521 = !DILocation(line: 937, column: 5, scope: !2513)
!2522 = !DILocation(line: 937, column: 11, scope: !2513)
!2523 = !DILocation(line: 938, column: 1, scope: !2513)
!2524 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !1943, file: !1943, line: 29, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{null, !1946}
!2527 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !1943, file: !1943, line: 41, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2528 = !DISubprogram(name: "kmem_cache_alloc", scope: !2164, file: !2164, line: 500, type: !2165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2529 = distinct !DISubprogram(name: "atomic_set", scope: !2359, file: !2359, line: 65, type: !2530, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2362, !35}
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "v", arg: 1, scope: !2529, file: !2359, line: 65, type: !2362)
!2534 = !DILocalVariable(name: "i", arg: 2, scope: !2529, file: !2359, line: 65, type: !35)
!2535 = !DILocation(line: 65, column: 22, scope: !2529)
!2536 = !DILocation(line: 65, column: 29, scope: !2529)
!2537 = !DILocation(line: 67, column: 26, scope: !2529)
!2538 = !DILocation(line: 67, column: 2, scope: !2529)
!2539 = !DILocation(line: 68, column: 17, scope: !2529)
!2540 = !DILocation(line: 68, column: 20, scope: !2529)
!2541 = !DILocation(line: 68, column: 2, scope: !2529)
!2542 = !DILocation(line: 69, column: 1, scope: !2529)
!2543 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2378, file: !2378, line: 80, type: !2379, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2544)
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "v", arg: 1, scope: !2543, file: !2378, line: 80, type: !2381)
!2546 = !DILocalVariable(name: "size", arg: 2, scope: !2543, file: !2378, line: 80, type: !48)
!2547 = !DILocation(line: 80, column: 74, scope: !2543)
!2548 = !DILocation(line: 80, column: 84, scope: !2543)
!2549 = !DILocation(line: 82, column: 20, scope: !2543)
!2550 = !DILocation(line: 82, column: 23, scope: !2543)
!2551 = !DILocation(line: 82, column: 2, scope: !2543)
!2552 = !DILocation(line: 83, column: 2, scope: !2543)
!2553 = !DILocation(line: 84, column: 1, scope: !2543)
!2554 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2395, file: !2395, line: 488, type: !2530, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2555)
!2555 = !{!2556, !2557}
!2556 = !DILocalVariable(name: "v", arg: 1, scope: !2554, file: !2395, line: 488, type: !2362)
!2557 = !DILocalVariable(name: "i", arg: 2, scope: !2554, file: !2395, line: 488, type: !35)
!2558 = !DILocation(line: 488, column: 26, scope: !2554)
!2559 = !DILocation(line: 488, column: 33, scope: !2554)
!2560 = !DILocation(line: 490, column: 18, scope: !2554)
!2561 = !DILocation(line: 490, column: 21, scope: !2554)
!2562 = !DILocation(line: 490, column: 2, scope: !2554)
!2563 = !DILocation(line: 491, column: 1, scope: !2554)
!2564 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2428, file: !2428, line: 26, type: !2530, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2565)
!2565 = !{!2566, !2567}
!2566 = !DILocalVariable(name: "v", arg: 1, scope: !2564, file: !2428, line: 26, type: !2362)
!2567 = !DILocalVariable(name: "i", arg: 2, scope: !2564, file: !2428, line: 26, type: !35)
!2568 = !DILocation(line: 26, column: 55, scope: !2564)
!2569 = !DILocation(line: 26, column: 62, scope: !2564)
!2570 = !DILocation(line: 28, column: 2, scope: !2564)
!2571 = !DILocation(line: 28, column: 2, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2564, file: !2428, line: 28, column: 2)
!2573 = !DILocation(line: 29, column: 1, scope: !2564)
!2574 = !DISubprogram(name: "__percpu_counter_init_many", scope: !146, file: !146, line: 33, type: !2575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!35, !2577, !151, !134, !251, !2578}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!2579 = distinct !DISubprogram(name: "percpu_counter_destroy", scope: !146, file: !146, line: 50, type: !2580, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !2577}
!2582 = !{!2583}
!2583 = !DILocalVariable(name: "fbc", arg: 1, scope: !2579, file: !146, line: 50, type: !2577)
!2584 = !DILocation(line: 50, column: 66, scope: !2579)
!2585 = !DILocation(line: 52, column: 30, scope: !2579)
!2586 = !DILocation(line: 52, column: 2, scope: !2579)
!2587 = !DILocation(line: 53, column: 1, scope: !2579)
!2588 = !DISubprogram(name: "percpu_counter_destroy_many", scope: !146, file: !146, line: 49, type: !2589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !2577, !251}
!2591 = distinct !DISubprogram(name: "hlist_add_head", scope: !2452, file: !2452, line: 1021, type: !2592, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !170, !1961}
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "n", arg: 1, scope: !2591, file: !2452, line: 1021, type: !170)
!2596 = !DILocalVariable(name: "h", arg: 2, scope: !2591, file: !2452, line: 1021, type: !1961)
!2597 = !DILocalVariable(name: "first", scope: !2591, file: !2452, line: 1023, type: !170)
!2598 = !DILocation(line: 1021, column: 54, scope: !2591)
!2599 = !DILocation(line: 1021, column: 76, scope: !2591)
!2600 = !DILocation(line: 1023, column: 2, scope: !2591)
!2601 = !DILocation(line: 1023, column: 21, scope: !2591)
!2602 = !DILocation(line: 1023, column: 29, scope: !2591)
!2603 = !DILocation(line: 1023, column: 32, scope: !2591)
!2604 = !DILocation(line: 1024, column: 2, scope: !2591)
!2605 = !DILocation(line: 1024, column: 2, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2591, file: !2452, line: 1024, column: 2)
!2607 = !DILocation(line: 1024, column: 2, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2606, file: !2452, line: 1024, column: 2)
!2609 = !DILocation(line: 1024, column: 2, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !2452, line: 1024, column: 2)
!2611 = !DILocation(line: 1025, column: 6, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2591, file: !2452, line: 1025, column: 6)
!2613 = !DILocation(line: 1025, column: 6, scope: !2591)
!2614 = !DILocation(line: 1026, column: 3, scope: !2612)
!2615 = !DILocation(line: 1026, column: 3, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2612, file: !2452, line: 1026, column: 3)
!2617 = !DILocation(line: 1026, column: 3, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2616, file: !2452, line: 1026, column: 3)
!2619 = !DILocation(line: 1026, column: 3, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !2452, line: 1026, column: 3)
!2621 = !DILocation(line: 1027, column: 2, scope: !2591)
!2622 = !DILocation(line: 1027, column: 2, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2591, file: !2452, line: 1027, column: 2)
!2624 = !DILocation(line: 1027, column: 2, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2623, file: !2452, line: 1027, column: 2)
!2626 = !DILocation(line: 1027, column: 2, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2623, file: !2452, line: 1027, column: 2)
!2628 = !DILocation(line: 1028, column: 2, scope: !2591)
!2629 = !DILocation(line: 1028, column: 2, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2591, file: !2452, line: 1028, column: 2)
!2631 = !DILocation(line: 1028, column: 2, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2630, file: !2452, line: 1028, column: 2)
!2633 = !DILocation(line: 1028, column: 2, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !2452, line: 1028, column: 2)
!2635 = !DILocation(line: 1029, column: 1, scope: !2591)
!2636 = !DISubprogram(name: "kmem_cache_create", scope: !2164, file: !2164, line: 189, type: !2637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!211, !29, !7, !7, !199, !2639}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !33}
!2642 = !DISubprogram(name: "panic", scope: !2643, file: !2643, line: 12, type: !2644, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2643 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !29, null}
