; ModuleID = 'net/ipv4/inetpeer.c'
source_filename = "net/ipv4/inetpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inet_peer_base_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad inet_peer_base_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inet_getpeer: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad inet_getpeer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inet_peer_xrlim_allow: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad inet_peer_xrlim_allow ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inetpeer_invalidate_tree: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad inetpeer_invalidate_tree ; .previous"

%struct.atomic64_t = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.inet_peer = type { %struct.rb_node, %struct.inetpeer_addr, [17 x i32], i32, i32, i64, %union.anon.4, i32, %struct.refcount_struct }
%struct.rb_node = type { i64, ptr, ptr }
%struct.inetpeer_addr = type { %union.anon.2, i16 }
%union.anon.2 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.5 = type { %struct.atomic_t }

@__UNIQUE_ID___addressable_inet_peer_base_init585 = internal global ptr @inet_peer_base_init, section ".discard.addressable", align 8, !dbg !0
@inet_peer_minttl = hidden global i32 120000, section ".data..read_mostly", align 4, !dbg !157
@inet_peer_maxttl = hidden global i32 600000, section ".data..read_mostly", align 4, !dbg !159
@inet_peer_threshold = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !181
@.str = private unnamed_addr constant [16 x i8] c"inet_peer_cache\00", align 1, !dbg !161
@peer_cachep = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !176
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__UNIQUE_ID___addressable_inet_getpeer597 = internal global ptr @inet_getpeer, section ".discard.addressable", align 8, !dbg !165
@__UNIQUE_ID___addressable_inet_peer_xrlim_allow598 = internal global ptr @inet_peer_xrlim_allow, section ".discard.addressable", align 8, !dbg !167
@.str.1 = private unnamed_addr constant [20 x i8] c"net/ipv4/inetpeer.c\00", align 1, !dbg !169
@__UNIQUE_ID___addressable_inetpeer_invalidate_tree599 = internal global ptr @inetpeer_invalidate_tree, section ".discard.addressable", align 8, !dbg !174
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched168 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !183
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_inet_peer_base_init585, ptr @__UNIQUE_ID___addressable_inet_getpeer597, ptr @__UNIQUE_ID___addressable_inet_peer_xrlim_allow598, ptr @__UNIQUE_ID___addressable_inetpeer_invalidate_tree599, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched168], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @inet_peer_base_init(ptr noundef %bp) #0 align 16 !dbg !198 {
entry:
  %bp.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.rb_root, align 8
  %.compoundliteral5 = alloca %struct.spinlock, align 4
  %____s = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !257, metadata !DIExpression()), !dbg !262
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !263
  %rb_root = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 0, !dbg !264
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %.compoundliteral, i32 0, i32 0, !dbg !265
  store ptr null, ptr %rb_node, align 8, !dbg !265
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rb_root, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !265
  br label %do.body, !dbg !266

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !267

do.body1:                                         ; preds = %do.body
  %1 = load ptr, ptr %bp.addr, align 8, !dbg !268
  %lock = getelementptr inbounds %struct.inet_peer_base, ptr %1, i32 0, i32 1, !dbg !268
  %lock2 = getelementptr inbounds %struct.seqlock_t, ptr %lock, i32 0, i32 1, !dbg !268
  %call = call ptr @spinlock_check(ptr noundef %lock2) #9, !dbg !268
  %2 = load ptr, ptr %bp.addr, align 8, !dbg !268
  %lock3 = getelementptr inbounds %struct.inet_peer_base, ptr %2, i32 0, i32 1, !dbg !268
  %lock4 = getelementptr inbounds %struct.seqlock_t, ptr %lock3, i32 0, i32 1, !dbg !268
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral5, i32 0, i32 0, !dbg !268
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !268
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !268
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !268
  store i32 0, ptr %counter, align 4, !dbg !268
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock4, ptr align 4 %.compoundliteral5, i64 4, i1 false), !dbg !268
  br label %do.end, !dbg !268

do.end:                                           ; preds = %do.body1
  br label %do.body6, !dbg !267

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____s) #10, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %____s, metadata !258, metadata !DIExpression()), !dbg !270
  %5 = load ptr, ptr %bp.addr, align 8, !dbg !270
  %lock7 = getelementptr inbounds %struct.inet_peer_base, ptr %5, i32 0, i32 1, !dbg !270
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %lock7, i32 0, i32 0, !dbg !270
  store ptr %seqcount, ptr %____s, align 8, !dbg !270
  %6 = load ptr, ptr %____s, align 8, !dbg !270
  %seqcount8 = getelementptr inbounds %struct.seqcount_spinlock, ptr %6, i32 0, i32 0, !dbg !270
  call void @__seqcount_init(ptr noundef %seqcount8, ptr noundef null, ptr noundef null) #9, !dbg !270
  call void @llvm.lifetime.end.p0(i64 8, ptr %____s) #10, !dbg !267
  br label %do.end9, !dbg !270

do.end9:                                          ; preds = %do.body6
  br label %do.end10, !dbg !267

do.end10:                                         ; preds = %do.end9
  %7 = load ptr, ptr %bp.addr, align 8, !dbg !271
  %total = getelementptr inbounds %struct.inet_peer_base, ptr %7, i32 0, i32 2, !dbg !272
  store i32 0, ptr %total, align 8, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !275 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !283, metadata !DIExpression()), !dbg !284
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !285
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !286
  ret ptr %1, !dbg !287
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqcount_init(ptr noundef %s, ptr noundef %name, ptr noundef %key) #5 align 16 !dbg !288 {
entry:
  %s.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !299, metadata !DIExpression()), !dbg !302
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !300, metadata !DIExpression()), !dbg !303
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !301, metadata !DIExpression()), !dbg !304
  br label %do.body, !dbg !305

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8, !dbg !306
  %1 = load ptr, ptr %key.addr, align 8, !dbg !306
  br label %do.end, !dbg !306

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %s.addr, align 8, !dbg !308
  %sequence = getelementptr inbounds %struct.seqcount, ptr %2, i32 0, i32 0, !dbg !309
  store i32 0, ptr %sequence, align 4, !dbg !310
  ret void, !dbg !311
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @inet_initpeers() #6 section ".init.text" align 16 !dbg !312 {
entry:
  %nr_entries = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___val586 = alloca i64, align 8
  %__UNIQUE_ID___lo587 = alloca i64, align 8
  %__UNIQUE_ID___hi588 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_entries) #10, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %nr_entries, metadata !316, metadata !DIExpression()), !dbg !323
  %call = call i64 @totalram_pages() #9, !dbg !324
  %shl = shl i64 %call, 12, !dbg !324
  %call1 = call i64 @div64_u64(i64 noundef %shl, i64 noundef 19200) #9, !dbg !324
  store i64 %call1, ptr %nr_entries, align 8, !dbg !325
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val586) #10, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val586, metadata !317, metadata !DIExpression()), !dbg !326
  %0 = load i64, ptr %nr_entries, align 8, !dbg !326
  store i64 %0, ptr %__UNIQUE_ID___val586, align 8, !dbg !326
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo587) #10, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo587, metadata !320, metadata !DIExpression()), !dbg !326
  store i64 4096, ptr %__UNIQUE_ID___lo587, align 8, !dbg !326
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi588) #10, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi588, metadata !321, metadata !DIExpression()), !dbg !326
  store i64 65664, ptr %__UNIQUE_ID___hi588, align 8, !dbg !326
  %1 = load i64, ptr %__UNIQUE_ID___val586, align 8, !dbg !326
  %2 = load i64, ptr %__UNIQUE_ID___hi588, align 8, !dbg !326
  %cmp = icmp uge i64 %1, %2, !dbg !326
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !326

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___hi588, align 8, !dbg !326
  br label %cond.end6, !dbg !326

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___val586, align 8, !dbg !326
  %5 = load i64, ptr %__UNIQUE_ID___lo587, align 8, !dbg !326
  %cmp3 = icmp ule i64 %4, %5, !dbg !326
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !326

cond.true4:                                       ; preds = %cond.false
  %6 = load i64, ptr %__UNIQUE_ID___lo587, align 8, !dbg !326
  br label %cond.end, !dbg !326

cond.false5:                                      ; preds = %cond.false
  %7 = load i64, ptr %__UNIQUE_ID___val586, align 8, !dbg !326
  br label %cond.end, !dbg !326

cond.end:                                         ; preds = %cond.false5, %cond.true4
  %cond = phi i64 [ %6, %cond.true4 ], [ %7, %cond.false5 ], !dbg !326
  br label %cond.end6, !dbg !326

cond.end6:                                        ; preds = %cond.end, %cond.true
  %cond7 = phi i64 [ %3, %cond.true ], [ %cond, %cond.end ], !dbg !326
  store i64 %cond7, ptr %tmp2, align 8, !dbg !326
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi588) #10, !dbg !327
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo587) #10, !dbg !327
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val586) #10, !dbg !327
  %8 = load i64, ptr %tmp2, align 8, !dbg !326
  store i64 %8, ptr %tmp, align 8, !dbg !328
  %9 = load i64, ptr %tmp, align 8, !dbg !327
  %conv = trunc i64 %9 to i32, !dbg !328
  store i32 %conv, ptr @inet_peer_threshold, align 4, !dbg !329
  %call8 = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 152, i32 noundef 0, i32 noundef 270336, ptr noundef null) #9, !dbg !330
  store ptr %call8, ptr @peer_cachep, align 8, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_entries) #10, !dbg !332
  ret void, !dbg !332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) #5 align 16 !dbg !333 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !338, metadata !DIExpression()), !dbg !340
  store i64 %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !339, metadata !DIExpression()), !dbg !341
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !342
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !343
  %div = udiv i64 %0, %1, !dbg !344
  ret i64 %div, !dbg !345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @totalram_pages() #5 align 16 !dbg !346 {
entry:
  %call = call i64 @atomic_long_read(ptr noundef @_totalram_pages) #9, !dbg !350
  ret i64 %call, !dbg !351
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !352 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @inet_getpeer(ptr noundef %base, ptr noundef %daddr) #0 align 16 !dbg !359 {
entry:
  %retval = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %daddr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %gc_stack = alloca [32 x ptr], align 16
  %pp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %gc_cnt = alloca i32, align 4
  %seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !365, metadata !DIExpression()), !dbg !377
  store ptr %daddr, ptr %daddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %daddr.addr, metadata !366, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %p, metadata !367, metadata !DIExpression()), !dbg !380
  call void @llvm.lifetime.start.p0(i64 256, ptr %gc_stack) #10, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %gc_stack, metadata !368, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #10, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %pp, metadata !372, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #10, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !374, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 4, ptr %gc_cnt) #10, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %gc_cnt, metadata !375, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #10, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !376, metadata !DIExpression()), !dbg !387
  %0 = load ptr, ptr %base.addr, align 8, !dbg !388
  %lock = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 1, !dbg !389
  %call = call i32 @read_seqbegin(ptr noundef %lock) #9, !dbg !390
  store i32 %call, ptr %seq, align 4, !dbg !391
  %1 = load ptr, ptr %daddr.addr, align 8, !dbg !392
  %2 = load ptr, ptr %base.addr, align 8, !dbg !393
  %3 = load i32, ptr %seq, align 4, !dbg !394
  %call1 = call ptr @lookup(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %gc_cnt, ptr noundef %parent, ptr noundef %pp) #9, !dbg !395
  store ptr %call1, ptr %p, align 8, !dbg !396
  %4 = load ptr, ptr %p, align 8, !dbg !397
  %tobool = icmp ne ptr %4, null, !dbg !397
  br i1 %tobool, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p, align 8, !dbg !400
  store ptr %5, ptr %retval, align 8, !dbg !401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !401

if.end:                                           ; preds = %entry
  store ptr null, ptr %parent, align 8, !dbg !402
  %6 = load ptr, ptr %base.addr, align 8, !dbg !403
  %lock2 = getelementptr inbounds %struct.inet_peer_base, ptr %6, i32 0, i32 1, !dbg !404
  call void @write_seqlock_bh(ptr noundef %lock2) #9, !dbg !405
  store i32 0, ptr %gc_cnt, align 4, !dbg !406
  %7 = load ptr, ptr %daddr.addr, align 8, !dbg !407
  %8 = load ptr, ptr %base.addr, align 8, !dbg !408
  %9 = load i32, ptr %seq, align 4, !dbg !409
  %arraydecay = getelementptr inbounds [32 x ptr], ptr %gc_stack, i64 0, i64 0, !dbg !410
  %call3 = call ptr @lookup(ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %arraydecay, ptr noundef %gc_cnt, ptr noundef %parent, ptr noundef %pp) #9, !dbg !411
  store ptr %call3, ptr %p, align 8, !dbg !412
  %10 = load ptr, ptr %p, align 8, !dbg !413
  %tobool4 = icmp ne ptr %10, null, !dbg !413
  br i1 %tobool4, label %if.end12, label %if.then5, !dbg !415

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr @peer_cachep, align 8, !dbg !416
  %call6 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %11, i32 noundef 2080) #9, !dbg !418
  store ptr %call6, ptr %p, align 8, !dbg !419
  %12 = load ptr, ptr %p, align 8, !dbg !420
  %tobool7 = icmp ne ptr %12, null, !dbg !420
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !423

if.then8:                                         ; preds = %if.then5
  %13 = load ptr, ptr %p, align 8, !dbg !424
  %daddr9 = getelementptr inbounds %struct.inet_peer, ptr %13, i32 0, i32 1, !dbg !426
  %14 = load ptr, ptr %daddr.addr, align 8, !dbg !427
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %daddr9, ptr align 4 %14, i64 20, i1 false), !dbg !428
  %15 = load volatile i64, ptr @jiffies, align 64, !dbg !429
  %conv = trunc i64 %15 to i32, !dbg !430
  %16 = load ptr, ptr %p, align 8, !dbg !431
  %dtime = getelementptr inbounds %struct.inet_peer, ptr %16, i32 0, i32 7, !dbg !432
  store i32 %conv, ptr %dtime, align 8, !dbg !433
  %17 = load ptr, ptr %p, align 8, !dbg !434
  %refcnt = getelementptr inbounds %struct.inet_peer, ptr %17, i32 0, i32 8, !dbg !435
  call void @refcount_set(ptr noundef %refcnt, i32 noundef 1) #9, !dbg !436
  %18 = load ptr, ptr %p, align 8, !dbg !437
  %19 = getelementptr inbounds %struct.inet_peer, ptr %18, i32 0, i32 6, !dbg !438
  %rid = getelementptr inbounds %struct.anon.5, ptr %19, i32 0, i32 0, !dbg !438
  call void @atomic_set(ptr noundef %rid, i32 noundef 0) #9, !dbg !439
  %20 = load ptr, ptr %p, align 8, !dbg !440
  %metrics = getelementptr inbounds %struct.inet_peer, ptr %20, i32 0, i32 2, !dbg !441
  %arrayidx = getelementptr [17 x i32], ptr %metrics, i64 0, i64 0, !dbg !440
  store i32 -1, ptr %arrayidx, align 4, !dbg !442
  %21 = load ptr, ptr %p, align 8, !dbg !443
  %rate_tokens = getelementptr inbounds %struct.inet_peer, ptr %21, i32 0, i32 3, !dbg !444
  store i32 0, ptr %rate_tokens, align 8, !dbg !445
  %22 = load ptr, ptr %p, align 8, !dbg !446
  %n_redirects = getelementptr inbounds %struct.inet_peer, ptr %22, i32 0, i32 4, !dbg !447
  store i32 0, ptr %n_redirects, align 4, !dbg !448
  %23 = load volatile i64, ptr @jiffies, align 64, !dbg !449
  %sub = sub i64 %23, 60000, !dbg !450
  %24 = load ptr, ptr %p, align 8, !dbg !451
  %rate_last = getelementptr inbounds %struct.inet_peer, ptr %24, i32 0, i32 5, !dbg !452
  store i64 %sub, ptr %rate_last, align 8, !dbg !453
  %25 = load ptr, ptr %p, align 8, !dbg !454
  %rb_node = getelementptr inbounds %struct.inet_peer, ptr %25, i32 0, i32 0, !dbg !455
  %26 = load ptr, ptr %parent, align 8, !dbg !456
  %27 = load ptr, ptr %pp, align 8, !dbg !457
  call void @rb_link_node(ptr noundef %rb_node, ptr noundef %26, ptr noundef %27) #9, !dbg !458
  %28 = load ptr, ptr %p, align 8, !dbg !459
  %rb_node10 = getelementptr inbounds %struct.inet_peer, ptr %28, i32 0, i32 0, !dbg !460
  %29 = load ptr, ptr %base.addr, align 8, !dbg !461
  %rb_root = getelementptr inbounds %struct.inet_peer_base, ptr %29, i32 0, i32 0, !dbg !462
  call void @rb_insert_color(ptr noundef %rb_node10, ptr noundef %rb_root) #9, !dbg !463
  %30 = load ptr, ptr %base.addr, align 8, !dbg !464
  %total = getelementptr inbounds %struct.inet_peer_base, ptr %30, i32 0, i32 2, !dbg !465
  %31 = load i32, ptr %total, align 8, !dbg !466
  %inc = add i32 %31, 1, !dbg !466
  store i32 %inc, ptr %total, align 8, !dbg !466
  br label %if.end11, !dbg !467

if.end11:                                         ; preds = %if.then8, %if.then5
  br label %if.end12, !dbg !468

if.end12:                                         ; preds = %if.end11, %if.end
  %32 = load i32, ptr %gc_cnt, align 4, !dbg !469
  %tobool13 = icmp ne i32 %32, 0, !dbg !469
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !471

if.then14:                                        ; preds = %if.end12
  %33 = load ptr, ptr %base.addr, align 8, !dbg !472
  %arraydecay15 = getelementptr inbounds [32 x ptr], ptr %gc_stack, i64 0, i64 0, !dbg !473
  %34 = load i32, ptr %gc_cnt, align 4, !dbg !474
  call void @inet_peer_gc(ptr noundef %33, ptr noundef %arraydecay15, i32 noundef %34) #9, !dbg !475
  br label %if.end16, !dbg !475

if.end16:                                         ; preds = %if.then14, %if.end12
  %35 = load ptr, ptr %base.addr, align 8, !dbg !476
  %lock17 = getelementptr inbounds %struct.inet_peer_base, ptr %35, i32 0, i32 1, !dbg !477
  call void @write_sequnlock_bh(ptr noundef %lock17) #9, !dbg !478
  %36 = load ptr, ptr %p, align 8, !dbg !479
  store ptr %36, ptr %retval, align 8, !dbg !480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !480

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #10, !dbg !481
  call void @llvm.lifetime.end.p0(i64 4, ptr %gc_cnt) #10, !dbg !481
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #10, !dbg !481
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #10, !dbg !481
  call void @llvm.lifetime.end.p0(i64 256, ptr %gc_stack) #10, !dbg !481
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !481
  %37 = load ptr, ptr %retval, align 8, !dbg !481
  ret ptr %37, !dbg !481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_seqbegin(ptr noundef %sl) #5 align 16 !dbg !482 {
entry:
  %sl.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !488, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #10, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !489, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #10, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !492, metadata !DIExpression()), !dbg !496
  br label %while.cond, !dbg !496

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !496
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !496
  %call = call i32 @__seqprop_spinlock_sequence(ptr noundef %seqcount) #9, !dbg !496
  store i32 %call, ptr %__seq, align 4, !dbg !496
  %and = and i32 %call, 1, !dbg !496
  %tobool = icmp ne i32 %and, 0, !dbg !496
  br i1 %tobool, label %while.body, label %while.end, !dbg !496

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #9, !dbg !496
  br label %while.cond, !dbg !496, !llvm.loop !497

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #9, !dbg !496
  %1 = load i32, ptr %__seq, align 4, !dbg !496
  store i32 %1, ptr %tmp1, align 4, !dbg !496
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #10, !dbg !495
  %2 = load i32, ptr %tmp1, align 4, !dbg !496
  store i32 %2, ptr %_seq, align 4, !dbg !495
  br label %do.body, !dbg !495

do.body:                                          ; preds = %while.end
  br label %do.body2, !dbg !500

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !502

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !502

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !500

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !504

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !506

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !506

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !504, !srcloc !508
  br label %do.cond7, !dbg !504

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !504

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !500

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !500

do.end10:                                         ; preds = %do.cond9
  %3 = load i32, ptr %_seq, align 4, !dbg !495
  store i32 %3, ptr %tmp11, align 4, !dbg !500
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #10, !dbg !509
  %4 = load i32, ptr %tmp11, align 4, !dbg !495
  store i32 %4, ptr %tmp, align 4, !dbg !510
  %5 = load i32, ptr %tmp, align 4, !dbg !509
  ret i32 %5, !dbg !511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lookup(ptr noundef %daddr, ptr noundef %base, i32 noundef %seq, ptr noundef %gc_stack, ptr noundef %gc_cnt, ptr noundef %parent_p, ptr noundef %pp_p) #0 align 16 !dbg !512 {
entry:
  %retval = alloca ptr, align 8
  %daddr.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %seq.addr = alloca i32, align 4
  %gc_stack.addr = alloca ptr, align 8
  %gc_cnt.addr = alloca ptr, align 8
  %parent_p.addr = alloca ptr, align 8
  %pp_p.addr = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %next = alloca ptr, align 8
  %p = alloca ptr, align 8
  %now = alloca i32, align 4
  %cmp = alloca i32, align 4
  %__UNIQUE_ID_rcu589 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp9 = alloca i32, align 4
  store ptr %daddr, ptr %daddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %daddr.addr, metadata !519, metadata !DIExpression()), !dbg !537
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !520, metadata !DIExpression()), !dbg !538
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !521, metadata !DIExpression()), !dbg !539
  store ptr %gc_stack, ptr %gc_stack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gc_stack.addr, metadata !522, metadata !DIExpression()), !dbg !540
  store ptr %gc_cnt, ptr %gc_cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gc_cnt.addr, metadata !523, metadata !DIExpression()), !dbg !541
  store ptr %parent_p, ptr %parent_p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_p.addr, metadata !524, metadata !DIExpression()), !dbg !542
  store ptr %pp_p, ptr %pp_p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pp_p.addr, metadata !525, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #10, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %pp, metadata !526, metadata !DIExpression()), !dbg !545
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #10, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !527, metadata !DIExpression()), !dbg !546
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %next, metadata !528, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %p, metadata !529, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 4, ptr %now) #10, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %now, metadata !530, metadata !DIExpression()), !dbg !551
  %0 = load ptr, ptr %base.addr, align 8, !dbg !552
  %rb_root = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 0, !dbg !553
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !554
  store ptr %rb_node, ptr %pp, align 8, !dbg !555
  store ptr null, ptr %parent, align 8, !dbg !556
  br label %while.cond, !dbg !557

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !557

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp) #10, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !531, metadata !DIExpression()), !dbg !559
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu589) #10, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu589, metadata !533, metadata !DIExpression()), !dbg !560
  br label %do.body, !dbg !561

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !563

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !563

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %pp, align 8, !dbg !561
  %2 = load volatile ptr, ptr %1, align 8, !dbg !561
  store ptr %2, ptr %tmp, align 8, !dbg !563
  %3 = load ptr, ptr %tmp, align 8, !dbg !561
  store ptr %3, ptr %__UNIQUE_ID_rcu589, align 8, !dbg !560
  %4 = load ptr, ptr %__UNIQUE_ID_rcu589, align 8, !dbg !560
  store ptr %4, ptr %tmp1, align 8, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu589) #10, !dbg !565
  %5 = load ptr, ptr %tmp1, align 8, !dbg !560
  store ptr %5, ptr %next, align 8, !dbg !566
  %6 = load ptr, ptr %next, align 8, !dbg !567
  %tobool = icmp ne ptr %6, null, !dbg !567
  br i1 %tobool, label %if.end, label %if.then, !dbg !569

if.then:                                          ; preds = %do.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !570

if.end:                                           ; preds = %do.end
  %7 = load ptr, ptr %next, align 8, !dbg !571
  store ptr %7, ptr %parent, align 8, !dbg !572
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !535, metadata !DIExpression()), !dbg !573
  %8 = load ptr, ptr %parent, align 8, !dbg !573
  store ptr %8, ptr %__mptr, align 8, !dbg !573
  %9 = load ptr, ptr %__mptr, align 8, !dbg !573
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !573
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !573
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !574
  %10 = load ptr, ptr %tmp2, align 8, !dbg !573
  store ptr %10, ptr %p, align 8, !dbg !575
  %11 = load ptr, ptr %daddr.addr, align 8, !dbg !576
  %12 = load ptr, ptr %p, align 8, !dbg !577
  %daddr3 = getelementptr inbounds %struct.inet_peer, ptr %12, i32 0, i32 1, !dbg !578
  %call = call i32 @inetpeer_addr_cmp(ptr noundef %11, ptr noundef %daddr3) #9, !dbg !579
  store i32 %call, ptr %cmp, align 4, !dbg !580
  %13 = load i32, ptr %cmp, align 4, !dbg !581
  %cmp4 = icmp eq i32 %13, 0, !dbg !583
  br i1 %cmp4, label %if.then5, label %if.end24, !dbg !584

if.then5:                                         ; preds = %if.end
  %14 = load volatile i64, ptr @jiffies, align 64, !dbg !585
  %conv = trunc i64 %14 to i32, !dbg !585
  store i32 %conv, ptr %now, align 4, !dbg !587
  br label %do.body6, !dbg !588

do.body6:                                         ; preds = %if.then5
  br label %do.cond7, !dbg !591

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !591

do.end8:                                          ; preds = %do.cond7
  %15 = load ptr, ptr %p, align 8, !dbg !588
  %dtime = getelementptr inbounds %struct.inet_peer, ptr %15, i32 0, i32 7, !dbg !588
  %16 = load volatile i32, ptr %dtime, align 8, !dbg !588
  store i32 %16, ptr %tmp9, align 4, !dbg !591
  %17 = load i32, ptr %tmp9, align 4, !dbg !588
  %18 = load i32, ptr %now, align 4, !dbg !593
  %cmp10 = icmp ne i32 %17, %18, !dbg !594
  br i1 %cmp10, label %if.then12, label %if.end23, !dbg !595

if.then12:                                        ; preds = %do.end8
  br label %do.body13, !dbg !596

do.body13:                                        ; preds = %if.then12
  br label %do.body14, !dbg !597

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !599

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !599

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !597

do.body17:                                        ; preds = %do.end16
  %19 = load i32, ptr %now, align 4, !dbg !601
  %20 = load ptr, ptr %p, align 8, !dbg !601
  %dtime18 = getelementptr inbounds %struct.inet_peer, ptr %20, i32 0, i32 7, !dbg !601
  store volatile i32 %19, ptr %dtime18, align 8, !dbg !601
  br label %do.cond19, !dbg !601

do.cond19:                                        ; preds = %do.body17
  br label %do.end20, !dbg !601

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !597

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !597

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !597

if.end23:                                         ; preds = %do.end22, %do.end8
  %21 = load ptr, ptr %p, align 8, !dbg !603
  store ptr %21, ptr %retval, align 8, !dbg !604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !604

if.end24:                                         ; preds = %if.end
  %22 = load ptr, ptr %gc_stack.addr, align 8, !dbg !605
  %tobool25 = icmp ne ptr %22, null, !dbg !605
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !607

if.then26:                                        ; preds = %if.end24
  %23 = load ptr, ptr %gc_cnt.addr, align 8, !dbg !608
  %24 = load i32, ptr %23, align 4, !dbg !611
  %cmp27 = icmp ult i32 %24, 32, !dbg !612
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !613

if.then29:                                        ; preds = %if.then26
  %25 = load ptr, ptr %p, align 8, !dbg !614
  %26 = load ptr, ptr %gc_stack.addr, align 8, !dbg !615
  %27 = load ptr, ptr %gc_cnt.addr, align 8, !dbg !616
  %28 = load i32, ptr %27, align 4, !dbg !617
  %inc = add i32 %28, 1, !dbg !617
  store i32 %inc, ptr %27, align 4, !dbg !617
  %idxprom = zext i32 %28 to i64, !dbg !615
  %arrayidx = getelementptr ptr, ptr %26, i64 %idxprom, !dbg !615
  store ptr %25, ptr %arrayidx, align 8, !dbg !618
  br label %if.end30, !dbg !615

if.end30:                                         ; preds = %if.then29, %if.then26
  br label %if.end38, !dbg !619

if.else:                                          ; preds = %if.end24
  %29 = load ptr, ptr %base.addr, align 8, !dbg !620
  %lock = getelementptr inbounds %struct.inet_peer_base, ptr %29, i32 0, i32 1, !dbg !620
  %30 = load i32, ptr %seq.addr, align 4, !dbg !620
  %call31 = call i32 @read_seqretry(ptr noundef %lock, i32 noundef %30) #9, !dbg !620
  %tobool32 = icmp ne i32 %call31, 0, !dbg !620
  %lnot = xor i1 %tobool32, true, !dbg !620
  %lnot33 = xor i1 %lnot, true, !dbg !620
  %lnot.ext = zext i1 %lnot33 to i32, !dbg !620
  %conv34 = sext i32 %lnot.ext to i64, !dbg !620
  %expval = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !620
  %tobool35 = icmp ne i64 %expval, 0, !dbg !620
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !622

if.then36:                                        ; preds = %if.else
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !623

if.end37:                                         ; preds = %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end30
  %31 = load i32, ptr %cmp, align 4, !dbg !625
  %cmp39 = icmp eq i32 %31, -1, !dbg !627
  br i1 %cmp39, label %if.then41, label %if.else42, !dbg !628

if.then41:                                        ; preds = %if.end38
  %32 = load ptr, ptr %next, align 8, !dbg !629
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 2, !dbg !630
  store ptr %rb_left, ptr %pp, align 8, !dbg !631
  br label %if.end43, !dbg !632

if.else42:                                        ; preds = %if.end38
  %33 = load ptr, ptr %next, align 8, !dbg !633
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1, !dbg !634
  store ptr %rb_right, ptr %pp, align 8, !dbg !635
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !636
  br label %cleanup, !dbg !636

cleanup:                                          ; preds = %if.end43, %if.then36, %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp) #10, !dbg !636
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !557, !llvm.loop !637

while.end:                                        ; preds = %cleanup
  %34 = load ptr, ptr %parent, align 8, !dbg !638
  %35 = load ptr, ptr %parent_p.addr, align 8, !dbg !639
  store ptr %34, ptr %35, align 8, !dbg !640
  %36 = load ptr, ptr %pp, align 8, !dbg !641
  %37 = load ptr, ptr %pp_p.addr, align 8, !dbg !642
  store ptr %36, ptr %37, align 8, !dbg !643
  store ptr null, ptr %retval, align 8, !dbg !644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !644

cleanup44:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %now) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #10, !dbg !645
  %38 = load ptr, ptr %retval, align 8, !dbg !645
  ret ptr %38, !dbg !645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_seqlock_bh(ptr noundef %sl) #5 align 16 !dbg !646 {
entry:
  %sl.addr = alloca ptr, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !653
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 1, !dbg !654
  call void @spin_lock_bh(ptr noundef %lock) #9, !dbg !655
  %1 = load ptr, ptr %sl.addr, align 8, !dbg !656
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %1, i32 0, i32 0, !dbg !657
  %seqcount1 = getelementptr inbounds %struct.seqcount_spinlock, ptr %seqcount, i32 0, i32 0, !dbg !658
  call void @do_write_seqcount_begin(ptr noundef %seqcount1) #9, !dbg !659
  ret void, !dbg !660
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !661 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #5 align 16 !dbg !664 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !669, metadata !DIExpression()), !dbg !671
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !670, metadata !DIExpression()), !dbg !672
  %0 = load ptr, ptr %r.addr, align 8, !dbg !673
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !674
  %1 = load i32, ptr %n.addr, align 4, !dbg !675
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #9, !dbg !676
  ret void, !dbg !677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !678 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !684, metadata !DIExpression()), !dbg !686
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !685, metadata !DIExpression()), !dbg !687
  %0 = load ptr, ptr %v.addr, align 8, !dbg !688
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #9, !dbg !689
  %1 = load ptr, ptr %v.addr, align 8, !dbg !690
  %2 = load i32, ptr %i.addr, align 4, !dbg !691
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #9, !dbg !692
  ret void, !dbg !693
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #5 align 16 !dbg !694 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !699, metadata !DIExpression()), !dbg !702
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !700, metadata !DIExpression()), !dbg !703
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !701, metadata !DIExpression()), !dbg !704
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !705
  %1 = ptrtoint ptr %0 to i64, !dbg !706
  %2 = load ptr, ptr %node.addr, align 8, !dbg !707
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !708
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !709
  %3 = load ptr, ptr %node.addr, align 8, !dbg !710
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !711
  store ptr null, ptr %rb_right, align 8, !dbg !712
  %4 = load ptr, ptr %node.addr, align 8, !dbg !713
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !714
  store ptr null, ptr %rb_left, align 8, !dbg !715
  %5 = load ptr, ptr %node.addr, align 8, !dbg !716
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !717
  store ptr %5, ptr %6, align 8, !dbg !718
  ret void, !dbg !719
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !720 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inet_peer_gc(ptr noundef %base, ptr noundef %gc_stack, i32 noundef %gc_cnt) #0 align 16 !dbg !724 {
entry:
  %base.addr = alloca ptr, align 8
  %gc_stack.addr = alloca ptr, align 8
  %gc_cnt.addr = alloca i32, align 4
  %peer_threshold = alloca i32, align 4
  %peer_maxttl = alloca i32, align 4
  %peer_minttl = alloca i32, align 4
  %p = alloca ptr, align 8
  %delta = alloca i32, align 4
  %ttl = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !728, metadata !DIExpression()), !dbg !738
  store ptr %gc_stack, ptr %gc_stack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gc_stack.addr, metadata !729, metadata !DIExpression()), !dbg !739
  store i32 %gc_cnt, ptr %gc_cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gc_cnt.addr, metadata !730, metadata !DIExpression()), !dbg !740
  call void @llvm.lifetime.start.p0(i64 4, ptr %peer_threshold) #10, !dbg !741
  call void @llvm.dbg.declare(metadata ptr %peer_threshold, metadata !731, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %peer_maxttl) #10, !dbg !741
  call void @llvm.dbg.declare(metadata ptr %peer_maxttl, metadata !732, metadata !DIExpression()), !dbg !743
  call void @llvm.lifetime.start.p0(i64 4, ptr %peer_minttl) #10, !dbg !741
  call void @llvm.dbg.declare(metadata ptr %peer_minttl, metadata !733, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %p, metadata !734, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #10, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !735, metadata !DIExpression()), !dbg !748
  call void @llvm.lifetime.start.p0(i64 4, ptr %ttl) #10, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %ttl, metadata !736, metadata !DIExpression()), !dbg !749
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %i, metadata !737, metadata !DIExpression()), !dbg !751
  br label %do.body, !dbg !752

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !754

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !754

do.end:                                           ; preds = %do.cond
  %0 = load volatile i32, ptr @inet_peer_threshold, align 4, !dbg !752
  store i32 %0, ptr %tmp, align 4, !dbg !754
  %1 = load i32, ptr %tmp, align 4, !dbg !752
  store i32 %1, ptr %peer_threshold, align 4, !dbg !756
  br label %do.body1, !dbg !757

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !759

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !759

do.end3:                                          ; preds = %do.cond2
  %2 = load volatile i32, ptr @inet_peer_maxttl, align 4, !dbg !757
  store i32 %2, ptr %tmp4, align 4, !dbg !759
  %3 = load i32, ptr %tmp4, align 4, !dbg !757
  store i32 %3, ptr %peer_maxttl, align 4, !dbg !761
  br label %do.body5, !dbg !762

do.body5:                                         ; preds = %do.end3
  br label %do.cond6, !dbg !764

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !764

do.end7:                                          ; preds = %do.cond6
  %4 = load volatile i32, ptr @inet_peer_minttl, align 4, !dbg !762
  store i32 %4, ptr %tmp8, align 4, !dbg !764
  %5 = load i32, ptr %tmp8, align 4, !dbg !762
  store i32 %5, ptr %peer_minttl, align 4, !dbg !766
  %6 = load ptr, ptr %base.addr, align 8, !dbg !767
  %total = getelementptr inbounds %struct.inet_peer_base, ptr %6, i32 0, i32 2, !dbg !769
  %7 = load i32, ptr %total, align 8, !dbg !769
  %8 = load i32, ptr %peer_threshold, align 4, !dbg !770
  %cmp = icmp sge i32 %7, %8, !dbg !771
  br i1 %cmp, label %if.then, label %if.else, !dbg !772

if.then:                                          ; preds = %do.end7
  store i32 0, ptr %ttl, align 4, !dbg !773
  br label %if.end, !dbg !774

if.else:                                          ; preds = %do.end7
  %9 = load i32, ptr %peer_maxttl, align 4, !dbg !775
  %10 = load i32, ptr %peer_maxttl, align 4, !dbg !776
  %11 = load i32, ptr %peer_minttl, align 4, !dbg !777
  %sub = sub i32 %10, %11, !dbg !778
  %div = sdiv i32 %sub, 1000, !dbg !779
  %12 = load ptr, ptr %base.addr, align 8, !dbg !780
  %total9 = getelementptr inbounds %struct.inet_peer_base, ptr %12, i32 0, i32 2, !dbg !781
  %13 = load i32, ptr %total9, align 8, !dbg !781
  %mul = mul i32 %div, %13, !dbg !782
  %14 = load i32, ptr %peer_threshold, align 4, !dbg !783
  %div10 = sdiv i32 %mul, %14, !dbg !784
  %mul11 = mul i32 %div10, 1000, !dbg !785
  %sub12 = sub i32 %9, %mul11, !dbg !786
  store i32 %sub12, ptr %ttl, align 4, !dbg !787
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4, !dbg !788
  br label %for.cond, !dbg !790

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4, !dbg !791
  %16 = load i32, ptr %gc_cnt.addr, align 4, !dbg !793
  %cmp13 = icmp ult i32 %15, %16, !dbg !794
  br i1 %cmp13, label %for.body, label %for.end, !dbg !795

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %gc_stack.addr, align 8, !dbg !796
  %18 = load i32, ptr %i, align 4, !dbg !798
  %idxprom = sext i32 %18 to i64, !dbg !796
  %arrayidx = getelementptr ptr, ptr %17, i64 %idxprom, !dbg !796
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !796
  store ptr %19, ptr %p, align 8, !dbg !799
  %20 = load volatile i64, ptr @jiffies, align 64, !dbg !800
  %conv = trunc i64 %20 to i32, !dbg !801
  br label %do.body14, !dbg !802

do.body14:                                        ; preds = %for.body
  br label %do.cond15, !dbg !804

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !804

do.end16:                                         ; preds = %do.cond15
  %21 = load ptr, ptr %p, align 8, !dbg !802
  %dtime = getelementptr inbounds %struct.inet_peer, ptr %21, i32 0, i32 7, !dbg !802
  %22 = load volatile i32, ptr %dtime, align 8, !dbg !802
  store i32 %22, ptr %tmp17, align 4, !dbg !804
  %23 = load i32, ptr %tmp17, align 4, !dbg !802
  %sub18 = sub i32 %conv, %23, !dbg !806
  store i32 %sub18, ptr %delta, align 4, !dbg !807
  %24 = load i32, ptr %delta, align 4, !dbg !808
  %25 = load i32, ptr %ttl, align 4, !dbg !810
  %cmp19 = icmp ult i32 %24, %25, !dbg !811
  br i1 %cmp19, label %if.then21, label %lor.lhs.false, !dbg !812

lor.lhs.false:                                    ; preds = %do.end16
  %26 = load ptr, ptr %p, align 8, !dbg !813
  %refcnt = getelementptr inbounds %struct.inet_peer, ptr %26, i32 0, i32 8, !dbg !814
  %call = call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt) #9, !dbg !815
  br i1 %call, label %if.end24, label %if.then21, !dbg !816

if.then21:                                        ; preds = %lor.lhs.false, %do.end16
  %27 = load ptr, ptr %gc_stack.addr, align 8, !dbg !817
  %28 = load i32, ptr %i, align 4, !dbg !818
  %idxprom22 = sext i32 %28 to i64, !dbg !817
  %arrayidx23 = getelementptr ptr, ptr %27, i64 %idxprom22, !dbg !817
  store ptr null, ptr %arrayidx23, align 8, !dbg !819
  br label %if.end24, !dbg !817

if.end24:                                         ; preds = %if.then21, %lor.lhs.false
  br label %for.inc, !dbg !820

for.inc:                                          ; preds = %if.end24
  %29 = load i32, ptr %i, align 4, !dbg !821
  %inc = add i32 %29, 1, !dbg !821
  store i32 %inc, ptr %i, align 4, !dbg !821
  br label %for.cond, !dbg !822, !llvm.loop !823

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !825
  br label %for.cond25, !dbg !827

for.cond25:                                       ; preds = %for.inc34, %for.end
  %30 = load i32, ptr %i, align 4, !dbg !828
  %31 = load i32, ptr %gc_cnt.addr, align 4, !dbg !830
  %cmp26 = icmp ult i32 %30, %31, !dbg !831
  br i1 %cmp26, label %for.body28, label %for.end36, !dbg !832

for.body28:                                       ; preds = %for.cond25
  %32 = load ptr, ptr %gc_stack.addr, align 8, !dbg !833
  %33 = load i32, ptr %i, align 4, !dbg !835
  %idxprom29 = sext i32 %33 to i64, !dbg !833
  %arrayidx30 = getelementptr ptr, ptr %32, i64 %idxprom29, !dbg !833
  %34 = load ptr, ptr %arrayidx30, align 8, !dbg !833
  store ptr %34, ptr %p, align 8, !dbg !836
  %35 = load ptr, ptr %p, align 8, !dbg !837
  %tobool = icmp ne ptr %35, null, !dbg !837
  br i1 %tobool, label %if.then31, label %if.end33, !dbg !839

if.then31:                                        ; preds = %for.body28
  %36 = load ptr, ptr %p, align 8, !dbg !840
  %rb_node = getelementptr inbounds %struct.inet_peer, ptr %36, i32 0, i32 0, !dbg !842
  %37 = load ptr, ptr %base.addr, align 8, !dbg !843
  %rb_root = getelementptr inbounds %struct.inet_peer_base, ptr %37, i32 0, i32 0, !dbg !844
  call void @rb_erase(ptr noundef %rb_node, ptr noundef %rb_root) #9, !dbg !845
  %38 = load ptr, ptr %base.addr, align 8, !dbg !846
  %total32 = getelementptr inbounds %struct.inet_peer_base, ptr %38, i32 0, i32 2, !dbg !847
  %39 = load i32, ptr %total32, align 8, !dbg !848
  %dec = add i32 %39, -1, !dbg !848
  store i32 %dec, ptr %total32, align 8, !dbg !848
  %40 = load ptr, ptr %p, align 8, !dbg !849
  %41 = getelementptr inbounds %struct.inet_peer, ptr %40, i32 0, i32 6, !dbg !850
  call void @call_rcu(ptr noundef %41, ptr noundef @inetpeer_free_rcu) #9, !dbg !851
  br label %if.end33, !dbg !852

if.end33:                                         ; preds = %if.then31, %for.body28
  br label %for.inc34, !dbg !853

for.inc34:                                        ; preds = %if.end33
  %42 = load i32, ptr %i, align 4, !dbg !854
  %inc35 = add i32 %42, 1, !dbg !854
  store i32 %inc35, ptr %i, align 4, !dbg !854
  br label %for.cond25, !dbg !855, !llvm.loop !856

for.end36:                                        ; preds = %for.cond25
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !858
  call void @llvm.lifetime.end.p0(i64 4, ptr %ttl) #10, !dbg !858
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #10, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !858
  call void @llvm.lifetime.end.p0(i64 4, ptr %peer_minttl) #10, !dbg !858
  call void @llvm.lifetime.end.p0(i64 4, ptr %peer_maxttl) #10, !dbg !858
  call void @llvm.lifetime.end.p0(i64 4, ptr %peer_threshold) #10, !dbg !858
  ret void, !dbg !858
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_sequnlock_bh(ptr noundef %sl) #5 align 16 !dbg !859 {
entry:
  %sl.addr = alloca ptr, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !861, metadata !DIExpression()), !dbg !862
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !863
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !864
  %seqcount1 = getelementptr inbounds %struct.seqcount_spinlock, ptr %seqcount, i32 0, i32 0, !dbg !865
  call void @do_write_seqcount_end(ptr noundef %seqcount1) #9, !dbg !866
  %1 = load ptr, ptr %sl.addr, align 8, !dbg !867
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %1, i32 0, i32 1, !dbg !868
  call void @spin_unlock_bh(ptr noundef %lock) #9, !dbg !869
  ret void, !dbg !870
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @inet_putpeer(ptr noundef %p) #0 align 16 !dbg !871 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !875, metadata !DIExpression()), !dbg !876
  %0 = load ptr, ptr %p.addr, align 8, !dbg !877
  %refcnt = getelementptr inbounds %struct.inet_peer, ptr %0, i32 0, i32 8, !dbg !879
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcnt) #9, !dbg !880
  br i1 %call, label %if.then, label %if.end, !dbg !881

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !882
  %2 = getelementptr inbounds %struct.inet_peer, ptr %1, i32 0, i32 6, !dbg !883
  call void @call_rcu(ptr noundef %2, ptr noundef @inetpeer_free_rcu) #9, !dbg !884
  br label %if.end, !dbg !884

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !885
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !886 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !892, metadata !DIExpression()), !dbg !893
  %0 = load ptr, ptr %r.addr, align 8, !dbg !894
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #9, !dbg !895
  ret i1 %call, !dbg !896
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !897 dso_local void @call_rcu(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inetpeer_free_rcu(ptr noundef %head) #0 align 16 !dbg !902 {
entry:
  %head.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !904, metadata !DIExpression()), !dbg !907
  %0 = load ptr, ptr @peer_cachep, align 8, !dbg !908
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !905, metadata !DIExpression()), !dbg !909
  %1 = load ptr, ptr %head.addr, align 8, !dbg !909
  store ptr %1, ptr %__mptr, align 8, !dbg !909
  %2 = load ptr, ptr %__mptr, align 8, !dbg !909
  %add.ptr = getelementptr i8, ptr %2, i64 -128, !dbg !909
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !909
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !910
  %3 = load ptr, ptr %tmp, align 8, !dbg !909
  call void @kmem_cache_free(ptr noundef %0, ptr noundef %3) #9, !dbg !911
  ret void, !dbg !912
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @inet_peer_xrlim_allow(ptr noundef %peer, i32 noundef %timeout) #0 align 16 !dbg !913 {
entry:
  %retval = alloca i1, align 1
  %peer.addr = alloca ptr, align 8
  %timeout.addr = alloca i32, align 4
  %now = alloca i64, align 8
  %token = alloca i64, align 8
  %rc = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %peer, ptr %peer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %peer.addr, metadata !917, metadata !DIExpression()), !dbg !922
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !918, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #10, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %now, metadata !919, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 8, ptr %token) #10, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %token, metadata !920, metadata !DIExpression()), !dbg !926
  call void @llvm.lifetime.start.p0(i64 1, ptr %rc) #10, !dbg !927
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !921, metadata !DIExpression()), !dbg !928
  store i8 0, ptr %rc, align 1, !dbg !928
  %0 = load ptr, ptr %peer.addr, align 8, !dbg !929
  %tobool = icmp ne ptr %0, null, !dbg !929
  br i1 %tobool, label %if.end, label %if.then, !dbg !931

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !932

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %peer.addr, align 8, !dbg !933
  %rate_tokens = getelementptr inbounds %struct.inet_peer, ptr %1, i32 0, i32 3, !dbg !934
  %2 = load i32, ptr %rate_tokens, align 8, !dbg !934
  %conv = zext i32 %2 to i64, !dbg !933
  store i64 %conv, ptr %token, align 8, !dbg !935
  %3 = load volatile i64, ptr @jiffies, align 64, !dbg !936
  store i64 %3, ptr %now, align 8, !dbg !937
  %4 = load i64, ptr %now, align 8, !dbg !938
  %5 = load ptr, ptr %peer.addr, align 8, !dbg !939
  %rate_last = getelementptr inbounds %struct.inet_peer, ptr %5, i32 0, i32 5, !dbg !940
  %6 = load i64, ptr %rate_last, align 8, !dbg !940
  %sub = sub i64 %4, %6, !dbg !941
  %7 = load i64, ptr %token, align 8, !dbg !942
  %add = add i64 %7, %sub, !dbg !942
  store i64 %add, ptr %token, align 8, !dbg !942
  %8 = load i64, ptr %now, align 8, !dbg !943
  %9 = load ptr, ptr %peer.addr, align 8, !dbg !944
  %rate_last1 = getelementptr inbounds %struct.inet_peer, ptr %9, i32 0, i32 5, !dbg !945
  store i64 %8, ptr %rate_last1, align 8, !dbg !946
  %10 = load i64, ptr %token, align 8, !dbg !947
  %11 = load i32, ptr %timeout.addr, align 4, !dbg !949
  %mul = mul i32 6, %11, !dbg !950
  %conv2 = sext i32 %mul to i64, !dbg !951
  %cmp = icmp ugt i64 %10, %conv2, !dbg !952
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !953

if.then4:                                         ; preds = %if.end
  %12 = load i32, ptr %timeout.addr, align 4, !dbg !954
  %mul5 = mul i32 6, %12, !dbg !955
  %conv6 = sext i32 %mul5 to i64, !dbg !956
  store i64 %conv6, ptr %token, align 8, !dbg !957
  br label %if.end7, !dbg !958

if.end7:                                          ; preds = %if.then4, %if.end
  %13 = load i64, ptr %token, align 8, !dbg !959
  %14 = load i32, ptr %timeout.addr, align 4, !dbg !961
  %conv8 = sext i32 %14 to i64, !dbg !961
  %cmp9 = icmp uge i64 %13, %conv8, !dbg !962
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !963

if.then11:                                        ; preds = %if.end7
  %15 = load i32, ptr %timeout.addr, align 4, !dbg !964
  %conv12 = sext i32 %15 to i64, !dbg !964
  %16 = load i64, ptr %token, align 8, !dbg !966
  %sub13 = sub i64 %16, %conv12, !dbg !966
  store i64 %sub13, ptr %token, align 8, !dbg !966
  store i8 1, ptr %rc, align 1, !dbg !967
  br label %if.end14, !dbg !968

if.end14:                                         ; preds = %if.then11, %if.end7
  %17 = load i64, ptr %token, align 8, !dbg !969
  %conv15 = trunc i64 %17 to i32, !dbg !969
  %18 = load ptr, ptr %peer.addr, align 8, !dbg !970
  %rate_tokens16 = getelementptr inbounds %struct.inet_peer, ptr %18, i32 0, i32 3, !dbg !971
  store i32 %conv15, ptr %rate_tokens16, align 8, !dbg !972
  %19 = load i8, ptr %rc, align 1, !dbg !973, !range !974, !noundef !297
  %tobool17 = trunc i8 %19 to i1, !dbg !973
  store i1 %tobool17, ptr %retval, align 1, !dbg !975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !975

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %rc) #10, !dbg !976
  call void @llvm.lifetime.end.p0(i64 8, ptr %token) #10, !dbg !976
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #10, !dbg !976
  %20 = load i1, ptr %retval, align 1, !dbg !976
  ret i1 %20, !dbg !976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @inetpeer_invalidate_tree(ptr noundef %base) #0 align 16 !dbg !977 {
entry:
  %base.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %peer = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca i32, align 4
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !979, metadata !DIExpression()), !dbg !985
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !986
  call void @llvm.dbg.declare(metadata ptr %p, metadata !980, metadata !DIExpression()), !dbg !987
  %0 = load ptr, ptr %base.addr, align 8, !dbg !988
  %rb_root = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 0, !dbg !989
  %call = call ptr @rb_first(ptr noundef %rb_root) #9, !dbg !990
  store ptr %call, ptr %p, align 8, !dbg !987
  br label %while.cond, !dbg !991

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !992
  %tobool = icmp ne ptr %1, null, !dbg !991
  br i1 %tobool, label %while.body, label %while.end, !dbg !991

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %peer) #10, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %peer, metadata !981, metadata !DIExpression()), !dbg !994
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !995
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !983, metadata !DIExpression()), !dbg !995
  %2 = load ptr, ptr %p, align 8, !dbg !995
  store ptr %2, ptr %__mptr, align 8, !dbg !995
  %3 = load ptr, ptr %__mptr, align 8, !dbg !995
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !995
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !996
  %4 = load ptr, ptr %tmp, align 8, !dbg !995
  store ptr %4, ptr %peer, align 8, !dbg !994
  %5 = load ptr, ptr %p, align 8, !dbg !997
  %call1 = call ptr @rb_next(ptr noundef %5) #9, !dbg !998
  store ptr %call1, ptr %p, align 8, !dbg !999
  %6 = load ptr, ptr %peer, align 8, !dbg !1000
  %rb_node = getelementptr inbounds %struct.inet_peer, ptr %6, i32 0, i32 0, !dbg !1001
  %7 = load ptr, ptr %base.addr, align 8, !dbg !1002
  %rb_root2 = getelementptr inbounds %struct.inet_peer_base, ptr %7, i32 0, i32 0, !dbg !1003
  call void @rb_erase(ptr noundef %rb_node, ptr noundef %rb_root2) #9, !dbg !1004
  %8 = load ptr, ptr %peer, align 8, !dbg !1005
  call void @inet_putpeer(ptr noundef %8) #9, !dbg !1006
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 288, i32 noundef 0) #9, !dbg !1007
  %call4 = call i32 @_cond_resched() #9, !dbg !1007
  store i32 %call4, ptr %tmp3, align 4, !dbg !1007
  %9 = load i32, ptr %tmp3, align 4, !dbg !1007
  call void @llvm.lifetime.end.p0(i64 8, ptr %peer) #10, !dbg !1009
  br label %while.cond, !dbg !991, !llvm.loop !1010

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %base.addr, align 8, !dbg !1011
  %total = getelementptr inbounds %struct.inet_peer_base, ptr %10, i32 0, i32 2, !dbg !1012
  store i32 0, ptr %total, align 8, !dbg !1013
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !1014
  ret void, !dbg !1014
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1015 dso_local ptr @rb_first(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1020 dso_local ptr @rb_next(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1025 dso_local void @rb_erase(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #5 align 16 !dbg !1026 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1031, metadata !DIExpression()), !dbg !1034
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !1032, metadata !DIExpression()), !dbg !1035
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !1033, metadata !DIExpression()), !dbg !1036
  ret void, !dbg !1037
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #3 align 16 !dbg !185 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !1038
  %0 = load ptr, ptr %tmp, align 8, !dbg !1038
  %call = call i32 %0() #9, !dbg !1040
  ret i32 %call, !dbg !1041
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #3 align 16 !dbg !1042 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1059
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #9, !dbg !1060
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1061
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #9, !dbg !1062
  ret i64 %call, !dbg !1063
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1064 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1076, metadata !DIExpression()), !dbg !1078
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1077, metadata !DIExpression()), !dbg !1079
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1080
  %1 = load i64, ptr %size.addr, align 8, !dbg !1081
  %conv = trunc i64 %1 to i32, !dbg !1081
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !1082
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1083
  %3 = load i64, ptr %size.addr, align 8, !dbg !1083
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !1083
  ret void, !dbg !1084
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #3 align 16 !dbg !1085 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1087, metadata !DIExpression()), !dbg !1088
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1089
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #9, !dbg !1090
  ret i64 %call, !dbg !1091
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !1092 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1097, metadata !DIExpression()), !dbg !1099
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1098, metadata !DIExpression()), !dbg !1100
  ret i1 true, !dbg !1101
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !1102 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1107, metadata !DIExpression()), !dbg !1110
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1108, metadata !DIExpression()), !dbg !1111
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1109, metadata !DIExpression()), !dbg !1112
  ret void, !dbg !1113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #3 align 16 !dbg !1114 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1121, metadata !DIExpression()), !dbg !1122
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1123
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #9, !dbg !1124
  ret i64 %call, !dbg !1125
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #3 align 16 !dbg !1126 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1129, metadata !DIExpression()), !dbg !1130
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1131
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !1131
  %1 = load volatile i64, ptr %counter, align 8, !dbg !1131
  ret i64 %1, !dbg !1132
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seqprop_spinlock_sequence(ptr noundef %s) #3 align 16 !dbg !1133 {
entry:
  %s.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1139, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #10, !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1140, metadata !DIExpression()), !dbg !1141
  br label %do.body, !dbg !1142

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1144

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1144

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1142
  %seqcount = getelementptr inbounds %struct.seqcount_spinlock, ptr %0, i32 0, i32 0, !dbg !1142
  %sequence = getelementptr inbounds %struct.seqcount, ptr %seqcount, i32 0, i32 0, !dbg !1142
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !1142
  store i32 %1, ptr %tmp, align 4, !dbg !1144
  %2 = load i32, ptr %tmp, align 4, !dbg !1142
  store i32 %2, ptr %seq, align 4, !dbg !1141
  %3 = load i32, ptr %seq, align 4, !dbg !1146
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #10, !dbg !1141
  ret i32 %3, !dbg !1146
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #3 align 16 !dbg !1148 {
entry:
  call void @rep_nop() #9, !dbg !1150
  ret void, !dbg !1151
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_atomic_next(i32 noundef %n) #5 align 16 !dbg !1152 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1156, metadata !DIExpression()), !dbg !1157
  ret void, !dbg !1158
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #3 align 16 !dbg !1159 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1160, !srcloc !1161
  ret void, !dbg !1162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inetpeer_addr_cmp(ptr noundef %a, ptr noundef %b) #5 align 16 !dbg !1163 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1167, metadata !DIExpression()), !dbg !1171
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1168, metadata !DIExpression()), !dbg !1172
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1169, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1170, metadata !DIExpression()), !dbg !1175
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1176
  %family = getelementptr inbounds %struct.inetpeer_addr, ptr %0, i32 0, i32 1, !dbg !1178
  %1 = load i16, ptr %family, align 4, !dbg !1178
  %conv = zext i16 %1 to i32, !dbg !1176
  %cmp = icmp eq i32 %conv, 2, !dbg !1179
  br i1 %cmp, label %if.then, label %if.else, !dbg !1180

if.then:                                          ; preds = %entry
  store i32 2, ptr %n, align 4, !dbg !1181
  br label %if.end, !dbg !1182

if.else:                                          ; preds = %entry
  store i32 4, ptr %n, align 4, !dbg !1183
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4, !dbg !1184
  br label %for.cond, !dbg !1186

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !1187
  %3 = load i32, ptr %n, align 4, !dbg !1189
  %cmp2 = icmp slt i32 %2, %3, !dbg !1190
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1191

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !dbg !1192
  %5 = getelementptr inbounds %struct.inetpeer_addr, ptr %4, i32 0, i32 0, !dbg !1195
  %6 = load i32, ptr %i, align 4, !dbg !1196
  %idxprom = sext i32 %6 to i64, !dbg !1192
  %arrayidx = getelementptr [4 x i32], ptr %5, i64 0, i64 %idxprom, !dbg !1192
  %7 = load i32, ptr %arrayidx, align 4, !dbg !1192
  %8 = load ptr, ptr %b.addr, align 8, !dbg !1197
  %9 = getelementptr inbounds %struct.inetpeer_addr, ptr %8, i32 0, i32 0, !dbg !1198
  %10 = load i32, ptr %i, align 4, !dbg !1199
  %idxprom4 = sext i32 %10 to i64, !dbg !1197
  %arrayidx5 = getelementptr [4 x i32], ptr %9, i64 0, i64 %idxprom4, !dbg !1197
  %11 = load i32, ptr %arrayidx5, align 4, !dbg !1197
  %cmp6 = icmp eq i32 %7, %11, !dbg !1200
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1201

if.then8:                                         ; preds = %for.body
  br label %for.inc, !dbg !1202

if.end9:                                          ; preds = %for.body
  %12 = load ptr, ptr %a.addr, align 8, !dbg !1203
  %13 = getelementptr inbounds %struct.inetpeer_addr, ptr %12, i32 0, i32 0, !dbg !1205
  %14 = load i32, ptr %i, align 4, !dbg !1206
  %idxprom10 = sext i32 %14 to i64, !dbg !1203
  %arrayidx11 = getelementptr [4 x i32], ptr %13, i64 0, i64 %idxprom10, !dbg !1203
  %15 = load i32, ptr %arrayidx11, align 4, !dbg !1203
  %16 = load ptr, ptr %b.addr, align 8, !dbg !1207
  %17 = getelementptr inbounds %struct.inetpeer_addr, ptr %16, i32 0, i32 0, !dbg !1208
  %18 = load i32, ptr %i, align 4, !dbg !1209
  %idxprom12 = sext i32 %18 to i64, !dbg !1207
  %arrayidx13 = getelementptr [4 x i32], ptr %17, i64 0, i64 %idxprom12, !dbg !1207
  %19 = load i32, ptr %arrayidx13, align 4, !dbg !1207
  %cmp14 = icmp ult i32 %15, %19, !dbg !1210
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1211

if.then16:                                        ; preds = %if.end9
  store i32 -1, ptr %retval, align 4, !dbg !1212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1212

if.end17:                                         ; preds = %if.end9
  store i32 1, ptr %retval, align 4, !dbg !1213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1213

for.inc:                                          ; preds = %if.then8
  %20 = load i32, ptr %i, align 4, !dbg !1214
  %inc = add i32 %20, 1, !dbg !1214
  store i32 %inc, ptr %i, align 4, !dbg !1214
  br label %for.cond, !dbg !1215, !llvm.loop !1216

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1218

cleanup:                                          ; preds = %for.end, %if.end17, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10, !dbg !1219
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1219
  %21 = load i32, ptr %retval, align 4, !dbg !1219
  ret i32 %21, !dbg !1219
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_seqretry(ptr noundef %sl, i32 noundef %start) #5 align 16 !dbg !1220 {
entry:
  %sl.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !1224, metadata !DIExpression()), !dbg !1226
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1225, metadata !DIExpression()), !dbg !1227
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !1228
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !1228
  %call = call ptr @__seqprop_spinlock_ptr(ptr noundef %seqcount) #9, !dbg !1228
  %1 = load i32, ptr %start.addr, align 4, !dbg !1228
  %call1 = call i32 @do_read_seqcount_retry(ptr noundef %call, i32 noundef %1) #9, !dbg !1228
  ret i32 %call1, !dbg !1229
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_read_seqcount_retry(ptr noundef %s, i32 noundef %start) #5 align 16 !dbg !1230 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1236, metadata !DIExpression()), !dbg !1238
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1237, metadata !DIExpression()), !dbg !1239
  br label %do.body, !dbg !1240

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1241

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1243

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1241

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !1245

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1247

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1245, !srcloc !1249
  br label %do.end5, !dbg !1245

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !1241

do.end6:                                          ; preds = %do.end5
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1250
  %1 = load i32, ptr %start.addr, align 4, !dbg !1251
  %call = call i32 @do___read_seqcount_retry(ptr noundef %0, i32 noundef %1) #9, !dbg !1252
  ret i32 %call, !dbg !1253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__seqprop_spinlock_ptr(ptr noundef %s) #3 align 16 !dbg !1254 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1258, metadata !DIExpression()), !dbg !1259
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1259
  %seqcount = getelementptr inbounds %struct.seqcount_spinlock, ptr %0, i32 0, i32 0, !dbg !1259
  ret ptr %seqcount, !dbg !1259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do___read_seqcount_retry(ptr noundef %s, i32 noundef %start) #5 align 16 !dbg !1260 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1262, metadata !DIExpression()), !dbg !1264
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1263, metadata !DIExpression()), !dbg !1265
  call void @kcsan_atomic_next(i32 noundef 0) #9, !dbg !1266
  br label %do.body, !dbg !1267

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1269

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1267
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1267
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !1267
  store i32 %1, ptr %tmp, align 4, !dbg !1269
  %2 = load i32, ptr %tmp, align 4, !dbg !1267
  %3 = load i32, ptr %start.addr, align 4, !dbg !1271
  %cmp = icmp ne i32 %2, %3, !dbg !1271
  %lnot = xor i1 %cmp, true, !dbg !1271
  %lnot1 = xor i1 %lnot, true, !dbg !1271
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1271
  %conv = sext i32 %lnot.ext to i64, !dbg !1271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1271
  %conv2 = trunc i64 %expval to i32, !dbg !1271
  ret i32 %conv2, !dbg !1272
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_bh(ptr noundef %lock) #3 align 16 !dbg !1273 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1277, metadata !DIExpression()), !dbg !1278
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1279
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1279
  call void @_raw_spin_lock_bh(ptr noundef %1) #9, !dbg !1279
  ret void, !dbg !1280
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin(ptr noundef %s) #5 align 16 !dbg !1281 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1285, metadata !DIExpression()), !dbg !1286
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1287
  call void @do_write_seqcount_begin_nested(ptr noundef %0, i32 noundef 0) #9, !dbg !1288
  ret void, !dbg !1289
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1290 dso_local void @_raw_spin_lock_bh(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin_nested(ptr noundef %s, i32 noundef %subclass) #5 align 16 !dbg !1294 {
entry:
  %s.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1298, metadata !DIExpression()), !dbg !1300
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !1299, metadata !DIExpression()), !dbg !1301
  br label %do.body, !dbg !1302

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1303

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1305
  call void @do_raw_write_seqcount_begin(ptr noundef %0) #9, !dbg !1306
  ret void, !dbg !1307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_begin(ptr noundef %s) #5 align 16 !dbg !1308 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1310, metadata !DIExpression()), !dbg !1311
  call void @kcsan_nestable_atomic_begin() #9, !dbg !1312
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1313
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1314
  %1 = load i32, ptr %sequence, align 4, !dbg !1315
  %inc = add i32 %1, 1, !dbg !1315
  store i32 %inc, ptr %sequence, align 4, !dbg !1315
  br label %do.body, !dbg !1316

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1317

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1319

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1317, !srcloc !1321
  br label %do.end2, !dbg !1317

do.end2:                                          ; preds = %do.end
  ret void, !dbg !1322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_begin() #5 align 16 !dbg !1323 {
entry:
  ret void, !dbg !1324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1325 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1327, metadata !DIExpression()), !dbg !1329
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1328, metadata !DIExpression()), !dbg !1330
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1331
  %1 = load i64, ptr %size.addr, align 8, !dbg !1332
  %conv = trunc i64 %1 to i32, !dbg !1332
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !1333
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1334
  %3 = load i64, ptr %size.addr, align 8, !dbg !1334
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !1334
  ret void, !dbg !1335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !1336 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1338, metadata !DIExpression()), !dbg !1340
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1339, metadata !DIExpression()), !dbg !1341
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1342
  %1 = load i32, ptr %i.addr, align 4, !dbg !1343
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #9, !dbg !1344
  ret void, !dbg !1345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !1346 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1348, metadata !DIExpression()), !dbg !1350
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1349, metadata !DIExpression()), !dbg !1351
  ret i1 true, !dbg !1352
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !1353 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1356, metadata !DIExpression()), !dbg !1358
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1357, metadata !DIExpression()), !dbg !1359
  br label %do.body, !dbg !1360

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !1361
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1361
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !1361
  store volatile i32 %0, ptr %counter, align 4, !dbg !1361
  br label %do.end, !dbg !1361

do.end:                                           ; preds = %do.body
  ret void, !dbg !1363
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1364 dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_end(ptr noundef %s) #5 align 16 !dbg !1365 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1367, metadata !DIExpression()), !dbg !1368
  br label %do.body, !dbg !1369

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1370

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1372
  call void @do_raw_write_seqcount_end(ptr noundef %0) #9, !dbg !1373
  ret void, !dbg !1374
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_bh(ptr noundef %lock) #3 align 16 !dbg !1375 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1377, metadata !DIExpression()), !dbg !1378
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1379
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1379
  call void @_raw_spin_unlock_bh(ptr noundef %1) #9, !dbg !1379
  ret void, !dbg !1380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_end(ptr noundef %s) #5 align 16 !dbg !1381 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1383, metadata !DIExpression()), !dbg !1384
  br label %do.body, !dbg !1385

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1386

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1388

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1386, !srcloc !1390
  br label %do.end2, !dbg !1386

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1391
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1392
  %1 = load i32, ptr %sequence, align 4, !dbg !1393
  %inc = add i32 %1, 1, !dbg !1393
  store i32 %inc, ptr %sequence, align 4, !dbg !1393
  call void @kcsan_nestable_atomic_end() #9, !dbg !1394
  ret void, !dbg !1395
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_end() #5 align 16 !dbg !1396 {
entry:
  ret void, !dbg !1397
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1398 dso_local void @_raw_spin_unlock_bh(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !1399 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1404, metadata !DIExpression()), !dbg !1406
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1405, metadata !DIExpression()), !dbg !1407
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1408
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !1409
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !1410
  ret i1 %call, !dbg !1411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !1412 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1416, metadata !DIExpression()), !dbg !1420
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1417, metadata !DIExpression()), !dbg !1421
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1418, metadata !DIExpression()), !dbg !1422
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !1423
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1419, metadata !DIExpression()), !dbg !1424
  %0 = load i32, ptr %i.addr, align 4, !dbg !1425
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1426
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !1427
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #9, !dbg !1428
  store i32 %call, ptr %old, align 4, !dbg !1424
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !1429
  %tobool = icmp ne ptr %2, null, !dbg !1429
  br i1 %tobool, label %if.then, label %if.end, !dbg !1431

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !1432
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !1433
  store i32 %3, ptr %4, align 4, !dbg !1434
  br label %if.end, !dbg !1435

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !1436
  %6 = load i32, ptr %i.addr, align 4, !dbg !1438
  %cmp = icmp eq i32 %5, %6, !dbg !1439
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !1440

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !1441

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !1443

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !1445

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1445

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !1443

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !1447

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !1449

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1449

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1447, !srcloc !1451
  br label %do.cond7, !dbg !1447

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !1447

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !1443

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !1443

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !1452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1452

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !1453
  %cmp12 = icmp slt i32 %7, 0, !dbg !1453
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !1453

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !1453
  %9 = load i32, ptr %i.addr, align 4, !dbg !1453
  %sub = sub i32 %8, %9, !dbg !1453
  %cmp13 = icmp slt i32 %sub, 0, !dbg !1453
  br label %lor.end, !dbg !1453

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !1453
  %lnot14 = xor i1 %lnot, true, !dbg !1453
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !1453
  %conv = sext i32 %lnot.ext to i64, !dbg !1453
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1453
  %tobool15 = icmp ne i64 %expval, 0, !dbg !1453
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1455

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1456
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #9, !dbg !1457
  br label %if.end17, !dbg !1457

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !1458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1458

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !1459
  %12 = load i1, ptr %retval, align 1, !dbg !1459
  ret i1 %12, !dbg !1459
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !1460 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1464, metadata !DIExpression()), !dbg !1466
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1465, metadata !DIExpression()), !dbg !1467
  br label %do.body, !dbg !1468

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1469

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1471
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !1472
  %1 = load i32, ptr %i.addr, align 4, !dbg !1473
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1474
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #9, !dbg !1475
  ret i32 %call, !dbg !1476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1477 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1480 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1482, metadata !DIExpression()), !dbg !1484
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1483, metadata !DIExpression()), !dbg !1485
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1486
  %1 = load i64, ptr %size.addr, align 8, !dbg !1487
  %conv = trunc i64 %1 to i32, !dbg !1487
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !1488
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1489
  %3 = load i64, ptr %size.addr, align 8, !dbg !1489
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !1489
  ret void, !dbg !1490
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !1491 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1493, metadata !DIExpression()), !dbg !1495
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1494, metadata !DIExpression()), !dbg !1496
  %0 = load i32, ptr %i.addr, align 4, !dbg !1497
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1498
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #9, !dbg !1499
  ret i32 %call, !dbg !1500
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !1501 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1503, metadata !DIExpression()), !dbg !1507
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1504, metadata !DIExpression()), !dbg !1508
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1505, metadata !DIExpression()), !dbg !1509
  %0 = load i32, ptr %i.addr, align 4, !dbg !1509
  %sub = sub i32 0, %0, !dbg !1509
  store i32 %sub, ptr %__ret, align 4, !dbg !1509
  %1 = load i32, ptr %__ret, align 4, !dbg !1509
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1509
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1509
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #10, !dbg !1509, !srcloc !1510
  store i32 %3, ptr %__ret, align 4, !dbg !1509
  %4 = load i32, ptr %__ret, align 4, !dbg !1509
  store i32 %4, ptr %tmp, align 4, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !1511
  %5 = load i32, ptr %tmp, align 4, !dbg !1509
  ret i32 %5, !dbg !1512
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1513 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_inet_peer_base_init585", scope: !2, file: !3, line: 63, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/ipv4/.inetpeer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/ipv4/inetpeer\22 -D KBUILD_BASENAME=\22inetpeer\22 -D KBUILD_MODNAME=\22inetpeer\22 -D __KBUILD_MODNAME=kmod_inetpeer -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/ipv4/inetpeer.ll net/ipv4/inetpeer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !156, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/ipv4/inetpeer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7bfef2b605201978a960d3dc03a4c35")
!4 = !{!5, !28, !33}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 463, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/rtnetlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3424c71d3a70e17dc50919bcbae9815d")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!9 = !DIEnumerator(name: "RTAX_UNSPEC", value: 0)
!10 = !DIEnumerator(name: "RTAX_LOCK", value: 1)
!11 = !DIEnumerator(name: "RTAX_MTU", value: 2)
!12 = !DIEnumerator(name: "RTAX_WINDOW", value: 3)
!13 = !DIEnumerator(name: "RTAX_RTT", value: 4)
!14 = !DIEnumerator(name: "RTAX_RTTVAR", value: 5)
!15 = !DIEnumerator(name: "RTAX_SSTHRESH", value: 6)
!16 = !DIEnumerator(name: "RTAX_CWND", value: 7)
!17 = !DIEnumerator(name: "RTAX_ADVMSS", value: 8)
!18 = !DIEnumerator(name: "RTAX_REORDERING", value: 9)
!19 = !DIEnumerator(name: "RTAX_HOPLIMIT", value: 10)
!20 = !DIEnumerator(name: "RTAX_INITCWND", value: 11)
!21 = !DIEnumerator(name: "RTAX_FEATURES", value: 12)
!22 = !DIEnumerator(name: "RTAX_RTO_MIN", value: 13)
!23 = !DIEnumerator(name: "RTAX_INITRWND", value: 14)
!24 = !DIEnumerator(name: "RTAX_QUICKACK", value: 15)
!25 = !DIEnumerator(name: "RTAX_CC_ALGO", value: 16)
!26 = !DIEnumerator(name: "RTAX_FASTOPEN_NO_COOKIE", value: 17)
!27 = !DIEnumerator(name: "__RTAX_MAX", value: 18)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 10, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "false", value: 0)
!32 = !DIEnumerator(name: "true", value: 1)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !34, line: 119, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!35 = !{!36, !37, !38, !39, !40}
!36 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!37 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!38 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!39 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!40 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!41 = !{!42, !43, !48, !49, !51, !52, !53, !54, !140, !144, !147, !64, !150, !152, !154}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !44, line: 23, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !50, line: 155, baseType: !7)
!50 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !50, line: 154, baseType: !7)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !46, line: 27, baseType: !7)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !44, line: 21, baseType: !52)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_peer", file: !56, line: 36, size: 1216, elements: !57)
!56 = !DIFile(filename: "./include/net/inetpeer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8cf599deb5b176d77779075784a0666")
!57 = !{!58, !66, !107, !111, !112, !113, !114, !134, !135}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !55, file: !56, line: 37, baseType: !59, size: 192, align: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !60, line: 5, size: 192, align: 64, elements: !61)
!60 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!61 = !{!62, !63, !65}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !59, file: !60, line: 6, baseType: !48, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !59, file: !60, line: 7, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !59, file: !60, line: 8, baseType: !64, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !55, file: !56, line: 38, baseType: !67, size: 160, offset: 192)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inetpeer_addr", file: !56, line: 27, size: 160, elements: !68)
!68 = !{!69, !106}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !56, line: 28, baseType: !70, size: 128)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !56, line: 28, size: 128, elements: !71)
!71 = !{!72, !80, !104}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "a4", scope: !70, file: !56, line: 29, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv4_addr_key", file: !56, line: 20, size: 64, elements: !74)
!74 = !{!75, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !73, file: !56, line: 21, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !77, line: 39, baseType: !52)
!77 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!78 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !73, file: !56, line: 22, baseType: !79, size: 32, offset: 32)
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "a6", scope: !70, file: !56, line: 30, baseType: !81, size: 128)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !82, line: 33, size: 128, elements: !83)
!82 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !81, file: !82, line: 40, baseType: !85, size: 128)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !82, line: 34, size: 128, elements: !86)
!86 = !{!87, !93, !100}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !85, file: !82, line: 35, baseType: !88, size: 128)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !91)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !46, line: 21, baseType: !90)
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !{!92}
!92 = !DISubrange(count: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !85, file: !82, line: 37, baseType: !94, size: 128)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !98)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !77, line: 37, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !46, line: 24, baseType: !97)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !{!99}
!99 = !DISubrange(count: 8)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !85, file: !82, line: 38, baseType: !101, size: 128)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 4)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !70, file: !56, line: 31, baseType: !105, size: 128)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !102)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !67, file: !56, line: 33, baseType: !96, size: 16, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !55, file: !56, line: 40, baseType: !108, size: 544, offset: 352)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 544, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 17)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rate_tokens", scope: !55, file: !56, line: 41, baseType: !53, size: 32, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "n_redirects", scope: !55, file: !56, line: 42, baseType: !53, size: 32, offset: 928)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "rate_last", scope: !55, file: !56, line: 43, baseType: !48, size: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !56, line: 49, baseType: !115, size: 128, offset: 1024)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !56, line: 49, size: 128, elements: !116)
!116 = !{!117, !125}
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !56, line: 50, baseType: !118, size: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !56, line: 50, size: 32, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rid", scope: !118, file: !56, line: 51, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !50, line: 174, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 172, size: 32, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !122, file: !50, line: 173, baseType: !79, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !115, file: !56, line: 53, baseType: !126, size: 128, align: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !50, line: 232, size: 128, align: 64, elements: !127)
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !50, line: 233, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !126, file: !50, line: 234, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !129}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dtime", scope: !55, file: !56, line: 57, baseType: !52, size: 32, offset: 1152)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !55, file: !56, line: 58, baseType: !136, size: 32, offset: 1184)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !34, line: 113, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !34, line: 111, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !137, file: !34, line: 112, baseType: !121, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!143 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !79)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!156 = !{!0, !157, !159, !161, !165, !167, !169, !174, !176, !181, !183}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "inet_peer_minttl", scope: !2, file: !3, line: 70, type: !79, isLocal: false, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "inet_peer_maxttl", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !91)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_inet_getpeer597", scope: !2, file: !3, line: 229, type: !42, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_inet_peer_xrlim_allow598", scope: !2, file: !3, line: 276, type: !42, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 160, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 20)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_inetpeer_invalidate_tree599", scope: !2, file: !3, line: 293, type: !42, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "peer_cachep", scope: !2, file: !3, line: 55, type: !178, isLocal: true, isDefinition: true)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !180, line: 11, flags: DIFlagFwdDecl)
!180 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "inet_peer_threshold", scope: !2, file: !3, line: 68, type: !79, isLocal: false, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched168", scope: !185, file: !186, line: 2104, type: !42, isLocal: true, isDefinition: true)
!185 = distinct !DISubprogram(name: "_cond_resched", scope: !186, file: !186, line: 2102, type: !187, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!186 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!187 = !DISubroutineType(types: !188)
!188 = !{!79}
!189 = !{i32 7, !"Dwarf Version", i32 5}
!190 = !{i32 2, !"Debug Info Version", i32 3}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 8, !"cf-protection-branch", i32 1}
!193 = !{i32 4, !"function_return_thunk_extern", i32 1}
!194 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!195 = !{i32 1, !"Code Model", i32 2}
!196 = !{i32 1, !"override-stack-alignment", i32 8}
!197 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!198 = distinct !DISubprogram(name: "inet_peer_base_init", scope: !3, file: !3, line: 57, type: !199, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_peer_base", file: !56, line: 61, size: 192, elements: !203)
!203 = !{!204, !208, !255}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !202, file: !56, line: 62, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !60, line: 12, size: 64, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !205, file: !60, line: 13, baseType: !64, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !202, file: !56, line: 63, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !210, line: 860, baseType: !211)
!210 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 853, size: 64, elements: !212)
!212 = !{!213, !222}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !211, file: !210, line: 858, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !210, line: 275, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !210, line: 275, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !215, file: !210, line: 275, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !210, line: 69, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !210, line: 64, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !219, file: !210, line: 65, baseType: !7, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !211, file: !210, line: 859, baseType: !223, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !224, line: 29, baseType: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !224, line: 17, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !224, line: 18, baseType: !228, size: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !224, line: 18, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !228, file: !224, line: 19, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !232, line: 14, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !231, file: !232, line: 15, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !236, line: 44, baseType: !237)
!236 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !236, line: 14, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !236, line: 15, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !236, line: 15, size: 32, elements: !241)
!241 = !{!242, !243, !249}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !240, file: !236, line: 16, baseType: !121, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !236, line: 24, baseType: !244, size: 16)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !236, line: 24, size: 16, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !244, file: !236, line: 25, baseType: !247, size: 8)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !44, line: 17, baseType: !89)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !244, file: !236, line: 26, baseType: !247, size: 8, offset: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !236, line: 28, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !236, line: 28, size: 32, elements: !251)
!251 = !{!252, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !250, file: !236, line: 29, baseType: !253, size: 16)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !44, line: 19, baseType: !96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !250, file: !236, line: 30, baseType: !253, size: 16, offset: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !202, file: !56, line: 64, baseType: !79, size: 32, offset: 128)
!256 = !{!257, !258}
!257 = !DILocalVariable(name: "bp", arg: 1, scope: !198, file: !3, line: 57, type: !201)
!258 = !DILocalVariable(name: "____s", scope: !259, file: !3, line: 60, type: !261)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 60, column: 2)
!260 = distinct !DILexicalBlock(scope: !198, file: !3, line: 60, column: 2)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!262 = !DILocation(line: 57, column: 49, scope: !198)
!263 = !DILocation(line: 59, column: 2, scope: !198)
!264 = !DILocation(line: 59, column: 6, scope: !198)
!265 = !DILocation(line: 59, column: 16, scope: !198)
!266 = !DILocation(line: 60, column: 2, scope: !198)
!267 = !DILocation(line: 60, column: 2, scope: !260)
!268 = !DILocation(line: 60, column: 2, scope: !269)
!269 = distinct !DILexicalBlock(scope: !260, file: !3, line: 60, column: 2)
!270 = !DILocation(line: 60, column: 2, scope: !259)
!271 = !DILocation(line: 61, column: 2, scope: !198)
!272 = !DILocation(line: 61, column: 6, scope: !198)
!273 = !DILocation(line: 61, column: 12, scope: !198)
!274 = !DILocation(line: 62, column: 1, scope: !198)
!275 = distinct !DISubprogram(name: "spinlock_check", scope: !276, file: !276, line: 324, type: !277, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!276 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !281}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !232, line: 23, baseType: !231)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!282 = !{!283}
!283 = !DILocalVariable(name: "lock", arg: 1, scope: !275, file: !276, line: 324, type: !281)
!284 = !DILocation(line: 324, column: 67, scope: !275)
!285 = !DILocation(line: 326, column: 10, scope: !275)
!286 = !DILocation(line: 326, column: 16, scope: !275)
!287 = !DILocation(line: 326, column: 2, scope: !275)
!288 = distinct !DISubprogram(name: "__seqcount_init", scope: !210, file: !210, line: 71, type: !289, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !291, !292, !294}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !296, line: 206, elements: !297)
!296 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!297 = !{}
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "s", arg: 1, scope: !288, file: !210, line: 71, type: !291)
!300 = !DILocalVariable(name: "name", arg: 2, scope: !288, file: !210, line: 71, type: !292)
!301 = !DILocalVariable(name: "key", arg: 3, scope: !288, file: !210, line: 72, type: !294)
!302 = !DILocation(line: 71, column: 48, scope: !288)
!303 = !DILocation(line: 71, column: 63, scope: !288)
!304 = !DILocation(line: 72, column: 31, scope: !288)
!305 = !DILocation(line: 77, column: 2, scope: !288)
!306 = !DILocation(line: 77, column: 2, scope: !307)
!307 = distinct !DILexicalBlock(scope: !288, file: !210, line: 77, column: 2)
!308 = !DILocation(line: 78, column: 2, scope: !288)
!309 = !DILocation(line: 78, column: 5, scope: !288)
!310 = !DILocation(line: 78, column: 14, scope: !288)
!311 = !DILocation(line: 79, column: 1, scope: !288)
!312 = distinct !DISubprogram(name: "inet_initpeers", scope: !3, file: !3, line: 74, type: !313, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{null}
!315 = !{!316, !317, !320, !321}
!316 = !DILocalVariable(name: "nr_entries", scope: !312, file: !3, line: 76, type: !43)
!317 = !DILocalVariable(name: "__UNIQUE_ID___val586", scope: !318, file: !3, line: 82, type: !43)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 82, column: 24)
!319 = distinct !DILexicalBlock(scope: !312, file: !3, line: 82, column: 24)
!320 = !DILocalVariable(name: "__UNIQUE_ID___lo587", scope: !318, file: !3, line: 82, type: !43)
!321 = !DILocalVariable(name: "__UNIQUE_ID___hi588", scope: !318, file: !3, line: 82, type: !43)
!322 = !DILocation(line: 76, column: 2, scope: !312)
!323 = !DILocation(line: 76, column: 6, scope: !312)
!324 = !DILocation(line: 79, column: 15, scope: !312)
!325 = !DILocation(line: 79, column: 13, scope: !312)
!326 = !DILocation(line: 82, column: 24, scope: !318)
!327 = !DILocation(line: 82, column: 24, scope: !319)
!328 = !DILocation(line: 82, column: 24, scope: !312)
!329 = !DILocation(line: 82, column: 22, scope: !312)
!330 = !DILocation(line: 84, column: 16, scope: !312)
!331 = !DILocation(line: 84, column: 14, scope: !312)
!332 = !DILocation(line: 88, column: 1, scope: !312)
!333 = distinct !DISubprogram(name: "div64_u64", scope: !334, file: !334, line: 67, type: !335, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!334 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!335 = !DISubroutineType(types: !336)
!336 = !{!43, !43, !43}
!337 = !{!338, !339}
!338 = !DILocalVariable(name: "dividend", arg: 1, scope: !333, file: !334, line: 67, type: !43)
!339 = !DILocalVariable(name: "divisor", arg: 2, scope: !333, file: !334, line: 67, type: !43)
!340 = !DILocation(line: 67, column: 33, scope: !333)
!341 = !DILocation(line: 67, column: 47, scope: !333)
!342 = !DILocation(line: 69, column: 9, scope: !333)
!343 = !DILocation(line: 69, column: 20, scope: !333)
!344 = !DILocation(line: 69, column: 18, scope: !333)
!345 = !DILocation(line: 69, column: 2, scope: !333)
!346 = distinct !DISubprogram(name: "totalram_pages", scope: !347, file: !347, line: 57, type: !348, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!347 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!348 = !DISubroutineType(types: !349)
!349 = !{!48}
!350 = !DILocation(line: 59, column: 24, scope: !346)
!351 = !DILocation(line: 59, column: 2, scope: !346)
!352 = !DISubprogram(name: "kmem_cache_create", scope: !353, file: !353, line: 189, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!354 = !DISubroutineType(types: !355)
!355 = !{!178, !292, !7, !7, !49, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !42}
!359 = distinct !DISubprogram(name: "inet_getpeer", scope: !3, file: !3, line: 179, type: !360, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !364)
!360 = !DISubroutineType(types: !361)
!361 = !{!54, !201, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!364 = !{!365, !366, !367, !368, !372, !374, !375, !376}
!365 = !DILocalVariable(name: "base", arg: 1, scope: !359, file: !3, line: 179, type: !201)
!366 = !DILocalVariable(name: "daddr", arg: 2, scope: !359, file: !3, line: 180, type: !362)
!367 = !DILocalVariable(name: "p", scope: !359, file: !3, line: 182, type: !54)
!368 = !DILocalVariable(name: "gc_stack", scope: !359, file: !3, line: 182, type: !369)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 32)
!372 = !DILocalVariable(name: "pp", scope: !359, file: !3, line: 183, type: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!374 = !DILocalVariable(name: "parent", scope: !359, file: !3, line: 183, type: !64)
!375 = !DILocalVariable(name: "gc_cnt", scope: !359, file: !3, line: 184, type: !7)
!376 = !DILocalVariable(name: "seq", scope: !359, file: !3, line: 184, type: !7)
!377 = !DILocation(line: 179, column: 55, scope: !359)
!378 = !DILocation(line: 180, column: 39, scope: !359)
!379 = !DILocation(line: 182, column: 2, scope: !359)
!380 = !DILocation(line: 182, column: 20, scope: !359)
!381 = !DILocation(line: 182, column: 24, scope: !359)
!382 = !DILocation(line: 183, column: 2, scope: !359)
!383 = !DILocation(line: 183, column: 19, scope: !359)
!384 = !DILocation(line: 183, column: 24, scope: !359)
!385 = !DILocation(line: 184, column: 2, scope: !359)
!386 = !DILocation(line: 184, column: 15, scope: !359)
!387 = !DILocation(line: 184, column: 23, scope: !359)
!388 = !DILocation(line: 189, column: 23, scope: !359)
!389 = !DILocation(line: 189, column: 29, scope: !359)
!390 = !DILocation(line: 189, column: 8, scope: !359)
!391 = !DILocation(line: 189, column: 6, scope: !359)
!392 = !DILocation(line: 190, column: 13, scope: !359)
!393 = !DILocation(line: 190, column: 20, scope: !359)
!394 = !DILocation(line: 190, column: 26, scope: !359)
!395 = !DILocation(line: 190, column: 6, scope: !359)
!396 = !DILocation(line: 190, column: 4, scope: !359)
!397 = !DILocation(line: 192, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !359, file: !3, line: 192, column: 6)
!399 = !DILocation(line: 192, column: 6, scope: !359)
!400 = !DILocation(line: 193, column: 10, scope: !398)
!401 = !DILocation(line: 193, column: 3, scope: !398)
!402 = !DILocation(line: 198, column: 9, scope: !359)
!403 = !DILocation(line: 199, column: 20, scope: !359)
!404 = !DILocation(line: 199, column: 26, scope: !359)
!405 = !DILocation(line: 199, column: 2, scope: !359)
!406 = !DILocation(line: 201, column: 9, scope: !359)
!407 = !DILocation(line: 202, column: 13, scope: !359)
!408 = !DILocation(line: 202, column: 20, scope: !359)
!409 = !DILocation(line: 202, column: 26, scope: !359)
!410 = !DILocation(line: 202, column: 31, scope: !359)
!411 = !DILocation(line: 202, column: 6, scope: !359)
!412 = !DILocation(line: 202, column: 4, scope: !359)
!413 = !DILocation(line: 203, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !359, file: !3, line: 203, column: 6)
!415 = !DILocation(line: 203, column: 6, scope: !359)
!416 = !DILocation(line: 204, column: 24, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !3, line: 203, column: 10)
!418 = !DILocation(line: 204, column: 7, scope: !417)
!419 = !DILocation(line: 204, column: 5, scope: !417)
!420 = !DILocation(line: 205, column: 7, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 205, column: 7)
!422 = !DILexicalBlockFile(scope: !417, file: !3, discriminator: 0)
!423 = !DILocation(line: 205, column: 7, scope: !422)
!424 = !DILocation(line: 206, column: 4, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !3, line: 205, column: 10)
!426 = !DILocation(line: 206, column: 7, scope: !425)
!427 = !DILocation(line: 206, column: 16, scope: !425)
!428 = !DILocation(line: 206, column: 15, scope: !425)
!429 = !DILocation(line: 207, column: 22, scope: !425)
!430 = !DILocation(line: 207, column: 15, scope: !425)
!431 = !DILocation(line: 207, column: 4, scope: !425)
!432 = !DILocation(line: 207, column: 7, scope: !425)
!433 = !DILocation(line: 207, column: 13, scope: !425)
!434 = !DILocation(line: 208, column: 18, scope: !425)
!435 = !DILocation(line: 208, column: 21, scope: !425)
!436 = !DILocation(line: 208, column: 4, scope: !425)
!437 = !DILocation(line: 209, column: 16, scope: !425)
!438 = !DILocation(line: 209, column: 19, scope: !425)
!439 = !DILocation(line: 209, column: 4, scope: !425)
!440 = !DILocation(line: 210, column: 4, scope: !425)
!441 = !DILocation(line: 210, column: 7, scope: !425)
!442 = !DILocation(line: 210, column: 28, scope: !425)
!443 = !DILocation(line: 211, column: 4, scope: !425)
!444 = !DILocation(line: 211, column: 7, scope: !425)
!445 = !DILocation(line: 211, column: 19, scope: !425)
!446 = !DILocation(line: 212, column: 4, scope: !425)
!447 = !DILocation(line: 212, column: 7, scope: !425)
!448 = !DILocation(line: 212, column: 19, scope: !425)
!449 = !DILocation(line: 216, column: 19, scope: !425)
!450 = !DILocation(line: 216, column: 27, scope: !425)
!451 = !DILocation(line: 216, column: 4, scope: !425)
!452 = !DILocation(line: 216, column: 7, scope: !425)
!453 = !DILocation(line: 216, column: 17, scope: !425)
!454 = !DILocation(line: 218, column: 18, scope: !425)
!455 = !DILocation(line: 218, column: 21, scope: !425)
!456 = !DILocation(line: 218, column: 30, scope: !425)
!457 = !DILocation(line: 218, column: 38, scope: !425)
!458 = !DILocation(line: 218, column: 4, scope: !425)
!459 = !DILocation(line: 219, column: 21, scope: !425)
!460 = !DILocation(line: 219, column: 24, scope: !425)
!461 = !DILocation(line: 219, column: 34, scope: !425)
!462 = !DILocation(line: 219, column: 40, scope: !425)
!463 = !DILocation(line: 219, column: 4, scope: !425)
!464 = !DILocation(line: 220, column: 4, scope: !425)
!465 = !DILocation(line: 220, column: 10, scope: !425)
!466 = !DILocation(line: 220, column: 15, scope: !425)
!467 = !DILocation(line: 221, column: 3, scope: !425)
!468 = !DILocation(line: 222, column: 2, scope: !422)
!469 = !DILocation(line: 223, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !359, file: !3, line: 223, column: 6)
!471 = !DILocation(line: 223, column: 6, scope: !359)
!472 = !DILocation(line: 224, column: 16, scope: !470)
!473 = !DILocation(line: 224, column: 22, scope: !470)
!474 = !DILocation(line: 224, column: 32, scope: !470)
!475 = !DILocation(line: 224, column: 3, scope: !470)
!476 = !DILocation(line: 225, column: 22, scope: !359)
!477 = !DILocation(line: 225, column: 28, scope: !359)
!478 = !DILocation(line: 225, column: 2, scope: !359)
!479 = !DILocation(line: 227, column: 9, scope: !359)
!480 = !DILocation(line: 227, column: 2, scope: !359)
!481 = !DILocation(line: 228, column: 1, scope: !359)
!482 = distinct !DISubprogram(name: "read_seqbegin", scope: !210, file: !210, line: 891, type: !483, scopeLine: 892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !487)
!483 = !DISubroutineType(types: !484)
!484 = !{!7, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!487 = !{!488, !489, !492}
!488 = !DILocalVariable(name: "sl", arg: 1, scope: !482, file: !210, line: 891, type: !485)
!489 = !DILocalVariable(name: "_seq", scope: !490, file: !210, line: 893, type: !7)
!490 = distinct !DILexicalBlock(scope: !491, file: !210, line: 893, column: 9)
!491 = distinct !DILexicalBlock(scope: !482, file: !210, line: 893, column: 9)
!492 = !DILocalVariable(name: "__seq", scope: !493, file: !210, line: 893, type: !7)
!493 = distinct !DILexicalBlock(scope: !490, file: !210, line: 893, column: 9)
!494 = !DILocation(line: 891, column: 55, scope: !482)
!495 = !DILocation(line: 893, column: 9, scope: !490)
!496 = !DILocation(line: 893, column: 9, scope: !493)
!497 = distinct !{!497, !496, !496, !498, !499}
!498 = !{!"llvm.loop.mustprogress"}
!499 = !{!"llvm.loop.unroll.disable"}
!500 = !DILocation(line: 893, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !490, file: !210, line: 893, column: 9)
!502 = !DILocation(line: 893, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !501, file: !210, line: 893, column: 9)
!504 = !DILocation(line: 893, column: 9, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !210, line: 893, column: 9)
!506 = !DILocation(line: 893, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !505, file: !210, line: 893, column: 9)
!508 = !{i64 2150437596}
!509 = !DILocation(line: 893, column: 9, scope: !491)
!510 = !DILocation(line: 893, column: 9, scope: !482)
!511 = !DILocation(line: 893, column: 2, scope: !482)
!512 = distinct !DISubprogram(name: "lookup", scope: !3, file: !3, line: 91, type: !513, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !518)
!513 = !DISubroutineType(types: !514)
!514 = !{!54, !362, !201, !7, !515, !516, !373, !517}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !533, !535}
!519 = !DILocalVariable(name: "daddr", arg: 1, scope: !512, file: !3, line: 91, type: !362)
!520 = !DILocalVariable(name: "base", arg: 2, scope: !512, file: !3, line: 92, type: !201)
!521 = !DILocalVariable(name: "seq", arg: 3, scope: !512, file: !3, line: 93, type: !7)
!522 = !DILocalVariable(name: "gc_stack", arg: 4, scope: !512, file: !3, line: 94, type: !515)
!523 = !DILocalVariable(name: "gc_cnt", arg: 5, scope: !512, file: !3, line: 95, type: !516)
!524 = !DILocalVariable(name: "parent_p", arg: 6, scope: !512, file: !3, line: 96, type: !373)
!525 = !DILocalVariable(name: "pp_p", arg: 7, scope: !512, file: !3, line: 97, type: !517)
!526 = !DILocalVariable(name: "pp", scope: !512, file: !3, line: 99, type: !373)
!527 = !DILocalVariable(name: "parent", scope: !512, file: !3, line: 99, type: !64)
!528 = !DILocalVariable(name: "next", scope: !512, file: !3, line: 99, type: !64)
!529 = !DILocalVariable(name: "p", scope: !512, file: !3, line: 100, type: !54)
!530 = !DILocalVariable(name: "now", scope: !512, file: !3, line: 101, type: !53)
!531 = !DILocalVariable(name: "cmp", scope: !532, file: !3, line: 106, type: !79)
!532 = distinct !DILexicalBlock(scope: !512, file: !3, line: 105, column: 12)
!533 = !DILocalVariable(name: "__UNIQUE_ID_rcu589", scope: !534, file: !3, line: 108, type: !64)
!534 = distinct !DILexicalBlock(scope: !532, file: !3, line: 108, column: 10)
!535 = !DILocalVariable(name: "__mptr", scope: !536, file: !3, line: 112, type: !42)
!536 = distinct !DILexicalBlock(scope: !532, file: !3, line: 112, column: 7)
!537 = !DILocation(line: 91, column: 61, scope: !512)
!538 = !DILocation(line: 92, column: 28, scope: !512)
!539 = !DILocation(line: 93, column: 18, scope: !512)
!540 = !DILocation(line: 94, column: 23, scope: !512)
!541 = !DILocation(line: 95, column: 19, scope: !512)
!542 = !DILocation(line: 96, column: 22, scope: !512)
!543 = !DILocation(line: 97, column: 23, scope: !512)
!544 = !DILocation(line: 99, column: 2, scope: !512)
!545 = !DILocation(line: 99, column: 19, scope: !512)
!546 = !DILocation(line: 99, column: 24, scope: !512)
!547 = !DILocation(line: 99, column: 33, scope: !512)
!548 = !DILocation(line: 100, column: 2, scope: !512)
!549 = !DILocation(line: 100, column: 20, scope: !512)
!550 = !DILocation(line: 101, column: 2, scope: !512)
!551 = !DILocation(line: 101, column: 6, scope: !512)
!552 = !DILocation(line: 103, column: 8, scope: !512)
!553 = !DILocation(line: 103, column: 14, scope: !512)
!554 = !DILocation(line: 103, column: 22, scope: !512)
!555 = !DILocation(line: 103, column: 5, scope: !512)
!556 = !DILocation(line: 104, column: 9, scope: !512)
!557 = !DILocation(line: 105, column: 2, scope: !512)
!558 = !DILocation(line: 106, column: 3, scope: !532)
!559 = !DILocation(line: 106, column: 7, scope: !532)
!560 = !DILocation(line: 108, column: 10, scope: !534)
!561 = !DILocation(line: 108, column: 10, scope: !562)
!562 = distinct !DILexicalBlock(scope: !534, file: !3, line: 108, column: 10)
!563 = !DILocation(line: 108, column: 10, scope: !564)
!564 = distinct !DILexicalBlock(scope: !562, file: !3, line: 108, column: 10)
!565 = !DILocation(line: 108, column: 10, scope: !532)
!566 = !DILocation(line: 108, column: 8, scope: !532)
!567 = !DILocation(line: 109, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !532, file: !3, line: 109, column: 7)
!569 = !DILocation(line: 109, column: 7, scope: !532)
!570 = !DILocation(line: 110, column: 4, scope: !568)
!571 = !DILocation(line: 111, column: 12, scope: !532)
!572 = !DILocation(line: 111, column: 10, scope: !532)
!573 = !DILocation(line: 112, column: 7, scope: !536)
!574 = !DILocation(line: 112, column: 7, scope: !532)
!575 = !DILocation(line: 112, column: 5, scope: !532)
!576 = !DILocation(line: 113, column: 27, scope: !532)
!577 = !DILocation(line: 113, column: 35, scope: !532)
!578 = !DILocation(line: 113, column: 38, scope: !532)
!579 = !DILocation(line: 113, column: 9, scope: !532)
!580 = !DILocation(line: 113, column: 7, scope: !532)
!581 = !DILocation(line: 114, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !532, file: !3, line: 114, column: 7)
!583 = !DILocation(line: 114, column: 11, scope: !582)
!584 = !DILocation(line: 114, column: 7, scope: !532)
!585 = !DILocation(line: 115, column: 10, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !3, line: 114, column: 17)
!587 = !DILocation(line: 115, column: 8, scope: !586)
!588 = !DILocation(line: 116, column: 8, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 116, column: 8)
!590 = distinct !DILexicalBlock(scope: !586, file: !3, line: 116, column: 8)
!591 = !DILocation(line: 116, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !3, line: 116, column: 8)
!593 = !DILocation(line: 116, column: 31, scope: !590)
!594 = !DILocation(line: 116, column: 28, scope: !590)
!595 = !DILocation(line: 116, column: 8, scope: !586)
!596 = !DILocation(line: 117, column: 5, scope: !590)
!597 = !DILocation(line: 117, column: 5, scope: !598)
!598 = distinct !DILexicalBlock(scope: !590, file: !3, line: 117, column: 5)
!599 = !DILocation(line: 117, column: 5, scope: !600)
!600 = distinct !DILexicalBlock(scope: !598, file: !3, line: 117, column: 5)
!601 = !DILocation(line: 117, column: 5, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !3, line: 117, column: 5)
!603 = !DILocation(line: 118, column: 11, scope: !586)
!604 = !DILocation(line: 118, column: 4, scope: !586)
!605 = !DILocation(line: 120, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !532, file: !3, line: 120, column: 7)
!607 = !DILocation(line: 120, column: 7, scope: !532)
!608 = !DILocation(line: 121, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 121, column: 8)
!610 = distinct !DILexicalBlock(scope: !606, file: !3, line: 120, column: 17)
!611 = !DILocation(line: 121, column: 8, scope: !609)
!612 = !DILocation(line: 121, column: 16, scope: !609)
!613 = !DILocation(line: 121, column: 8, scope: !610)
!614 = !DILocation(line: 122, column: 29, scope: !609)
!615 = !DILocation(line: 122, column: 5, scope: !609)
!616 = !DILocation(line: 122, column: 16, scope: !609)
!617 = !DILocation(line: 122, column: 23, scope: !609)
!618 = !DILocation(line: 122, column: 27, scope: !609)
!619 = !DILocation(line: 123, column: 3, scope: !610)
!620 = !DILocation(line: 123, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !606, file: !3, line: 123, column: 14)
!622 = !DILocation(line: 123, column: 14, scope: !606)
!623 = !DILocation(line: 124, column: 4, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 123, column: 57)
!625 = !DILocation(line: 126, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !532, file: !3, line: 126, column: 7)
!627 = !DILocation(line: 126, column: 11, scope: !626)
!628 = !DILocation(line: 126, column: 7, scope: !532)
!629 = !DILocation(line: 127, column: 10, scope: !626)
!630 = !DILocation(line: 127, column: 16, scope: !626)
!631 = !DILocation(line: 127, column: 7, scope: !626)
!632 = !DILocation(line: 127, column: 4, scope: !626)
!633 = !DILocation(line: 129, column: 10, scope: !626)
!634 = !DILocation(line: 129, column: 16, scope: !626)
!635 = !DILocation(line: 129, column: 7, scope: !626)
!636 = !DILocation(line: 130, column: 2, scope: !512)
!637 = distinct !{!637, !557, !636, !499}
!638 = !DILocation(line: 131, column: 14, scope: !512)
!639 = !DILocation(line: 131, column: 3, scope: !512)
!640 = !DILocation(line: 131, column: 12, scope: !512)
!641 = !DILocation(line: 132, column: 10, scope: !512)
!642 = !DILocation(line: 132, column: 3, scope: !512)
!643 = !DILocation(line: 132, column: 8, scope: !512)
!644 = !DILocation(line: 133, column: 2, scope: !512)
!645 = !DILocation(line: 134, column: 1, scope: !512)
!646 = distinct !DISubprogram(name: "write_seqlock_bh", scope: !210, file: !210, line: 957, type: !647, scopeLine: 958, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!650 = !{!651}
!651 = !DILocalVariable(name: "sl", arg: 1, scope: !646, file: !210, line: 957, type: !649)
!652 = !DILocation(line: 957, column: 48, scope: !646)
!653 = !DILocation(line: 959, column: 16, scope: !646)
!654 = !DILocation(line: 959, column: 20, scope: !646)
!655 = !DILocation(line: 959, column: 2, scope: !646)
!656 = !DILocation(line: 960, column: 27, scope: !646)
!657 = !DILocation(line: 960, column: 31, scope: !646)
!658 = !DILocation(line: 960, column: 40, scope: !646)
!659 = !DILocation(line: 960, column: 2, scope: !646)
!660 = !DILocation(line: 961, column: 1, scope: !646)
!661 = !DISubprogram(name: "kmem_cache_alloc", scope: !353, file: !353, line: 500, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DISubroutineType(types: !663)
!663 = !{!42, !178, !51}
!664 = distinct !DISubprogram(name: "refcount_set", scope: !34, file: !34, line: 134, type: !665, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !667, !79}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!668 = !{!669, !670}
!669 = !DILocalVariable(name: "r", arg: 1, scope: !664, file: !34, line: 134, type: !667)
!670 = !DILocalVariable(name: "n", arg: 2, scope: !664, file: !34, line: 134, type: !79)
!671 = !DILocation(line: 134, column: 45, scope: !664)
!672 = !DILocation(line: 134, column: 52, scope: !664)
!673 = !DILocation(line: 136, column: 14, scope: !664)
!674 = !DILocation(line: 136, column: 17, scope: !664)
!675 = !DILocation(line: 136, column: 23, scope: !664)
!676 = !DILocation(line: 136, column: 2, scope: !664)
!677 = !DILocation(line: 137, column: 1, scope: !664)
!678 = distinct !DISubprogram(name: "atomic_set", scope: !679, file: !679, line: 65, type: !680, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!679 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682, !79}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!683 = !{!684, !685}
!684 = !DILocalVariable(name: "v", arg: 1, scope: !678, file: !679, line: 65, type: !682)
!685 = !DILocalVariable(name: "i", arg: 2, scope: !678, file: !679, line: 65, type: !79)
!686 = !DILocation(line: 65, column: 22, scope: !678)
!687 = !DILocation(line: 65, column: 29, scope: !678)
!688 = !DILocation(line: 67, column: 26, scope: !678)
!689 = !DILocation(line: 67, column: 2, scope: !678)
!690 = !DILocation(line: 68, column: 17, scope: !678)
!691 = !DILocation(line: 68, column: 20, scope: !678)
!692 = !DILocation(line: 68, column: 2, scope: !678)
!693 = !DILocation(line: 69, column: 1, scope: !678)
!694 = distinct !DISubprogram(name: "rb_link_node", scope: !695, file: !695, line: 59, type: !696, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !698)
!695 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!696 = !DISubroutineType(types: !697)
!697 = !{null, !64, !64, !373}
!698 = !{!699, !700, !701}
!699 = !DILocalVariable(name: "node", arg: 1, scope: !694, file: !695, line: 59, type: !64)
!700 = !DILocalVariable(name: "parent", arg: 2, scope: !694, file: !695, line: 59, type: !64)
!701 = !DILocalVariable(name: "rb_link", arg: 3, scope: !694, file: !695, line: 60, type: !373)
!702 = !DILocation(line: 59, column: 49, scope: !694)
!703 = !DILocation(line: 59, column: 71, scope: !694)
!704 = !DILocation(line: 60, column: 22, scope: !694)
!705 = !DILocation(line: 62, column: 43, scope: !694)
!706 = !DILocation(line: 62, column: 28, scope: !694)
!707 = !DILocation(line: 62, column: 2, scope: !694)
!708 = !DILocation(line: 62, column: 8, scope: !694)
!709 = !DILocation(line: 62, column: 26, scope: !694)
!710 = !DILocation(line: 63, column: 18, scope: !694)
!711 = !DILocation(line: 63, column: 24, scope: !694)
!712 = !DILocation(line: 63, column: 33, scope: !694)
!713 = !DILocation(line: 63, column: 2, scope: !694)
!714 = !DILocation(line: 63, column: 8, scope: !694)
!715 = !DILocation(line: 63, column: 16, scope: !694)
!716 = !DILocation(line: 65, column: 13, scope: !694)
!717 = !DILocation(line: 65, column: 3, scope: !694)
!718 = !DILocation(line: 65, column: 11, scope: !694)
!719 = !DILocation(line: 66, column: 1, scope: !694)
!720 = !DISubprogram(name: "rb_insert_color", scope: !695, file: !695, line: 39, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !64, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!724 = distinct !DISubprogram(name: "inet_peer_gc", scope: !3, file: !3, line: 142, type: !725, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !201, !515, !7}
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!728 = !DILocalVariable(name: "base", arg: 1, scope: !724, file: !3, line: 142, type: !201)
!729 = !DILocalVariable(name: "gc_stack", arg: 2, scope: !724, file: !3, line: 143, type: !515)
!730 = !DILocalVariable(name: "gc_cnt", arg: 3, scope: !724, file: !3, line: 144, type: !7)
!731 = !DILocalVariable(name: "peer_threshold", scope: !724, file: !3, line: 146, type: !79)
!732 = !DILocalVariable(name: "peer_maxttl", scope: !724, file: !3, line: 146, type: !79)
!733 = !DILocalVariable(name: "peer_minttl", scope: !724, file: !3, line: 146, type: !79)
!734 = !DILocalVariable(name: "p", scope: !724, file: !3, line: 147, type: !54)
!735 = !DILocalVariable(name: "delta", scope: !724, file: !3, line: 148, type: !52)
!736 = !DILocalVariable(name: "ttl", scope: !724, file: !3, line: 148, type: !52)
!737 = !DILocalVariable(name: "i", scope: !724, file: !3, line: 149, type: !79)
!738 = !DILocation(line: 142, column: 49, scope: !724)
!739 = !DILocation(line: 143, column: 23, scope: !724)
!740 = !DILocation(line: 144, column: 18, scope: !724)
!741 = !DILocation(line: 146, column: 2, scope: !724)
!742 = !DILocation(line: 146, column: 6, scope: !724)
!743 = !DILocation(line: 146, column: 22, scope: !724)
!744 = !DILocation(line: 146, column: 35, scope: !724)
!745 = !DILocation(line: 147, column: 2, scope: !724)
!746 = !DILocation(line: 147, column: 20, scope: !724)
!747 = !DILocation(line: 148, column: 2, scope: !724)
!748 = !DILocation(line: 148, column: 8, scope: !724)
!749 = !DILocation(line: 148, column: 15, scope: !724)
!750 = !DILocation(line: 149, column: 2, scope: !724)
!751 = !DILocation(line: 149, column: 6, scope: !724)
!752 = !DILocation(line: 151, column: 19, scope: !753)
!753 = distinct !DILexicalBlock(scope: !724, file: !3, line: 151, column: 19)
!754 = !DILocation(line: 151, column: 19, scope: !755)
!755 = distinct !DILexicalBlock(scope: !753, file: !3, line: 151, column: 19)
!756 = !DILocation(line: 151, column: 17, scope: !724)
!757 = !DILocation(line: 152, column: 16, scope: !758)
!758 = distinct !DILexicalBlock(scope: !724, file: !3, line: 152, column: 16)
!759 = !DILocation(line: 152, column: 16, scope: !760)
!760 = distinct !DILexicalBlock(scope: !758, file: !3, line: 152, column: 16)
!761 = !DILocation(line: 152, column: 14, scope: !724)
!762 = !DILocation(line: 153, column: 16, scope: !763)
!763 = distinct !DILexicalBlock(scope: !724, file: !3, line: 153, column: 16)
!764 = !DILocation(line: 153, column: 16, scope: !765)
!765 = distinct !DILexicalBlock(scope: !763, file: !3, line: 153, column: 16)
!766 = !DILocation(line: 153, column: 14, scope: !724)
!767 = !DILocation(line: 155, column: 6, scope: !768)
!768 = distinct !DILexicalBlock(scope: !724, file: !3, line: 155, column: 6)
!769 = !DILocation(line: 155, column: 12, scope: !768)
!770 = !DILocation(line: 155, column: 21, scope: !768)
!771 = !DILocation(line: 155, column: 18, scope: !768)
!772 = !DILocation(line: 155, column: 6, scope: !724)
!773 = !DILocation(line: 156, column: 7, scope: !768)
!774 = !DILocation(line: 156, column: 3, scope: !768)
!775 = !DILocation(line: 158, column: 9, scope: !768)
!776 = !DILocation(line: 158, column: 24, scope: !768)
!777 = !DILocation(line: 158, column: 38, scope: !768)
!778 = !DILocation(line: 158, column: 36, scope: !768)
!779 = !DILocation(line: 158, column: 51, scope: !768)
!780 = !DILocation(line: 159, column: 4, scope: !768)
!781 = !DILocation(line: 159, column: 10, scope: !768)
!782 = !DILocation(line: 158, column: 56, scope: !768)
!783 = !DILocation(line: 159, column: 18, scope: !768)
!784 = !DILocation(line: 159, column: 16, scope: !768)
!785 = !DILocation(line: 159, column: 33, scope: !768)
!786 = !DILocation(line: 158, column: 21, scope: !768)
!787 = !DILocation(line: 158, column: 7, scope: !768)
!788 = !DILocation(line: 160, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !724, file: !3, line: 160, column: 2)
!790 = !DILocation(line: 160, column: 7, scope: !789)
!791 = !DILocation(line: 160, column: 14, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !3, line: 160, column: 2)
!793 = !DILocation(line: 160, column: 18, scope: !792)
!794 = !DILocation(line: 160, column: 16, scope: !792)
!795 = !DILocation(line: 160, column: 2, scope: !789)
!796 = !DILocation(line: 161, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !792, file: !3, line: 160, column: 31)
!798 = !DILocation(line: 161, column: 16, scope: !797)
!799 = !DILocation(line: 161, column: 5, scope: !797)
!800 = !DILocation(line: 163, column: 18, scope: !797)
!801 = !DILocation(line: 163, column: 11, scope: !797)
!802 = !DILocation(line: 163, column: 28, scope: !803)
!803 = distinct !DILexicalBlock(scope: !797, file: !3, line: 163, column: 28)
!804 = !DILocation(line: 163, column: 28, scope: !805)
!805 = distinct !DILexicalBlock(scope: !803, file: !3, line: 163, column: 28)
!806 = !DILocation(line: 163, column: 26, scope: !797)
!807 = !DILocation(line: 163, column: 9, scope: !797)
!808 = !DILocation(line: 165, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !797, file: !3, line: 165, column: 7)
!810 = !DILocation(line: 165, column: 15, scope: !809)
!811 = !DILocation(line: 165, column: 13, scope: !809)
!812 = !DILocation(line: 165, column: 19, scope: !809)
!813 = !DILocation(line: 165, column: 44, scope: !809)
!814 = !DILocation(line: 165, column: 47, scope: !809)
!815 = !DILocation(line: 165, column: 23, scope: !809)
!816 = !DILocation(line: 165, column: 7, scope: !797)
!817 = !DILocation(line: 166, column: 4, scope: !809)
!818 = !DILocation(line: 166, column: 13, scope: !809)
!819 = !DILocation(line: 166, column: 16, scope: !809)
!820 = !DILocation(line: 167, column: 2, scope: !797)
!821 = !DILocation(line: 160, column: 27, scope: !792)
!822 = !DILocation(line: 160, column: 2, scope: !792)
!823 = distinct !{!823, !795, !824, !498, !499}
!824 = !DILocation(line: 167, column: 2, scope: !789)
!825 = !DILocation(line: 168, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !724, file: !3, line: 168, column: 2)
!827 = !DILocation(line: 168, column: 7, scope: !826)
!828 = !DILocation(line: 168, column: 14, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 168, column: 2)
!830 = !DILocation(line: 168, column: 18, scope: !829)
!831 = !DILocation(line: 168, column: 16, scope: !829)
!832 = !DILocation(line: 168, column: 2, scope: !826)
!833 = !DILocation(line: 169, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !829, file: !3, line: 168, column: 31)
!835 = !DILocation(line: 169, column: 16, scope: !834)
!836 = !DILocation(line: 169, column: 5, scope: !834)
!837 = !DILocation(line: 170, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !3, line: 170, column: 7)
!839 = !DILocation(line: 170, column: 7, scope: !834)
!840 = !DILocation(line: 171, column: 14, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !3, line: 170, column: 10)
!842 = !DILocation(line: 171, column: 17, scope: !841)
!843 = !DILocation(line: 171, column: 27, scope: !841)
!844 = !DILocation(line: 171, column: 33, scope: !841)
!845 = !DILocation(line: 171, column: 4, scope: !841)
!846 = !DILocation(line: 172, column: 4, scope: !841)
!847 = !DILocation(line: 172, column: 10, scope: !841)
!848 = !DILocation(line: 172, column: 15, scope: !841)
!849 = !DILocation(line: 173, column: 14, scope: !841)
!850 = !DILocation(line: 173, column: 17, scope: !841)
!851 = !DILocation(line: 173, column: 4, scope: !841)
!852 = !DILocation(line: 174, column: 3, scope: !841)
!853 = !DILocation(line: 175, column: 2, scope: !834)
!854 = !DILocation(line: 168, column: 27, scope: !829)
!855 = !DILocation(line: 168, column: 2, scope: !829)
!856 = distinct !{!856, !832, !857, !498, !499}
!857 = !DILocation(line: 175, column: 2, scope: !826)
!858 = !DILocation(line: 176, column: 1, scope: !724)
!859 = distinct !DISubprogram(name: "write_sequnlock_bh", scope: !210, file: !210, line: 971, type: !647, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!860 = !{!861}
!861 = !DILocalVariable(name: "sl", arg: 1, scope: !859, file: !210, line: 971, type: !649)
!862 = !DILocation(line: 971, column: 50, scope: !859)
!863 = !DILocation(line: 973, column: 25, scope: !859)
!864 = !DILocation(line: 973, column: 29, scope: !859)
!865 = !DILocation(line: 973, column: 38, scope: !859)
!866 = !DILocation(line: 973, column: 2, scope: !859)
!867 = !DILocation(line: 974, column: 18, scope: !859)
!868 = !DILocation(line: 974, column: 22, scope: !859)
!869 = !DILocation(line: 974, column: 2, scope: !859)
!870 = !DILocation(line: 975, column: 1, scope: !859)
!871 = distinct !DISubprogram(name: "inet_putpeer", scope: !3, file: !3, line: 231, type: !872, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !874)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !54}
!874 = !{!875}
!875 = !DILocalVariable(name: "p", arg: 1, scope: !871, file: !3, line: 231, type: !54)
!876 = !DILocation(line: 231, column: 37, scope: !871)
!877 = !DILocation(line: 233, column: 29, scope: !878)
!878 = distinct !DILexicalBlock(scope: !871, file: !3, line: 233, column: 6)
!879 = !DILocation(line: 233, column: 32, scope: !878)
!880 = !DILocation(line: 233, column: 6, scope: !878)
!881 = !DILocation(line: 233, column: 6, scope: !871)
!882 = !DILocation(line: 234, column: 13, scope: !878)
!883 = !DILocation(line: 234, column: 16, scope: !878)
!884 = !DILocation(line: 234, column: 3, scope: !878)
!885 = !DILocation(line: 235, column: 1, scope: !871)
!886 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !34, file: !34, line: 331, type: !887, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!887 = !DISubroutineType(types: !888)
!888 = !{!889, !667}
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !50, line: 35, baseType: !890)
!890 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!891 = !{!892}
!892 = !DILocalVariable(name: "r", arg: 1, scope: !886, file: !34, line: 331, type: !667)
!893 = !DILocation(line: 331, column: 67, scope: !886)
!894 = !DILocation(line: 333, column: 33, scope: !886)
!895 = !DILocation(line: 333, column: 9, scope: !886)
!896 = !DILocation(line: 333, column: 2, scope: !886)
!897 = !DISubprogram(name: "call_rcu", scope: !898, file: !898, line: 42, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!899 = !DISubroutineType(types: !900)
!900 = !{null, !129, !901}
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !50, line: 238, baseType: !131)
!902 = distinct !DISubprogram(name: "inetpeer_free_rcu", scope: !3, file: !3, line: 136, type: !132, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!903 = !{!904, !905}
!904 = !DILocalVariable(name: "head", arg: 1, scope: !902, file: !3, line: 136, type: !129)
!905 = !DILocalVariable(name: "__mptr", scope: !906, file: !3, line: 138, type: !42)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 138, column: 31)
!907 = !DILocation(line: 136, column: 48, scope: !902)
!908 = !DILocation(line: 138, column: 18, scope: !902)
!909 = !DILocation(line: 138, column: 31, scope: !906)
!910 = !DILocation(line: 138, column: 31, scope: !902)
!911 = !DILocation(line: 138, column: 2, scope: !902)
!912 = !DILocation(line: 139, column: 1, scope: !902)
!913 = distinct !DISubprogram(name: "inet_peer_xrlim_allow", scope: !3, file: !3, line: 255, type: !914, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{!889, !54, !79}
!916 = !{!917, !918, !919, !920, !921}
!917 = !DILocalVariable(name: "peer", arg: 1, scope: !913, file: !3, line: 255, type: !54)
!918 = !DILocalVariable(name: "timeout", arg: 2, scope: !913, file: !3, line: 255, type: !79)
!919 = !DILocalVariable(name: "now", scope: !913, file: !3, line: 257, type: !48)
!920 = !DILocalVariable(name: "token", scope: !913, file: !3, line: 257, type: !48)
!921 = !DILocalVariable(name: "rc", scope: !913, file: !3, line: 258, type: !889)
!922 = !DILocation(line: 255, column: 46, scope: !913)
!923 = !DILocation(line: 255, column: 56, scope: !913)
!924 = !DILocation(line: 257, column: 2, scope: !913)
!925 = !DILocation(line: 257, column: 16, scope: !913)
!926 = !DILocation(line: 257, column: 21, scope: !913)
!927 = !DILocation(line: 258, column: 2, scope: !913)
!928 = !DILocation(line: 258, column: 7, scope: !913)
!929 = !DILocation(line: 260, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !913, file: !3, line: 260, column: 6)
!931 = !DILocation(line: 260, column: 6, scope: !913)
!932 = !DILocation(line: 261, column: 3, scope: !930)
!933 = !DILocation(line: 263, column: 10, scope: !913)
!934 = !DILocation(line: 263, column: 16, scope: !913)
!935 = !DILocation(line: 263, column: 8, scope: !913)
!936 = !DILocation(line: 264, column: 8, scope: !913)
!937 = !DILocation(line: 264, column: 6, scope: !913)
!938 = !DILocation(line: 265, column: 11, scope: !913)
!939 = !DILocation(line: 265, column: 17, scope: !913)
!940 = !DILocation(line: 265, column: 23, scope: !913)
!941 = !DILocation(line: 265, column: 15, scope: !913)
!942 = !DILocation(line: 265, column: 8, scope: !913)
!943 = !DILocation(line: 266, column: 20, scope: !913)
!944 = !DILocation(line: 266, column: 2, scope: !913)
!945 = !DILocation(line: 266, column: 8, scope: !913)
!946 = !DILocation(line: 266, column: 18, scope: !913)
!947 = !DILocation(line: 267, column: 6, scope: !948)
!948 = distinct !DILexicalBlock(scope: !913, file: !3, line: 267, column: 6)
!949 = !DILocation(line: 267, column: 35, scope: !948)
!950 = !DILocation(line: 267, column: 33, scope: !948)
!951 = !DILocation(line: 267, column: 14, scope: !948)
!952 = !DILocation(line: 267, column: 12, scope: !948)
!953 = !DILocation(line: 267, column: 6, scope: !913)
!954 = !DILocation(line: 268, column: 32, scope: !948)
!955 = !DILocation(line: 268, column: 30, scope: !948)
!956 = !DILocation(line: 268, column: 11, scope: !948)
!957 = !DILocation(line: 268, column: 9, scope: !948)
!958 = !DILocation(line: 268, column: 3, scope: !948)
!959 = !DILocation(line: 269, column: 6, scope: !960)
!960 = distinct !DILexicalBlock(scope: !913, file: !3, line: 269, column: 6)
!961 = !DILocation(line: 269, column: 15, scope: !960)
!962 = !DILocation(line: 269, column: 12, scope: !960)
!963 = !DILocation(line: 269, column: 6, scope: !913)
!964 = !DILocation(line: 270, column: 12, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !3, line: 269, column: 24)
!966 = !DILocation(line: 270, column: 9, scope: !965)
!967 = !DILocation(line: 271, column: 6, scope: !965)
!968 = !DILocation(line: 272, column: 2, scope: !965)
!969 = !DILocation(line: 273, column: 22, scope: !913)
!970 = !DILocation(line: 273, column: 2, scope: !913)
!971 = !DILocation(line: 273, column: 8, scope: !913)
!972 = !DILocation(line: 273, column: 20, scope: !913)
!973 = !DILocation(line: 274, column: 9, scope: !913)
!974 = !{i8 0, i8 2}
!975 = !DILocation(line: 274, column: 2, scope: !913)
!976 = !DILocation(line: 275, column: 1, scope: !913)
!977 = distinct !DISubprogram(name: "inetpeer_invalidate_tree", scope: !3, file: !3, line: 278, type: !199, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!978 = !{!979, !980, !981, !983}
!979 = !DILocalVariable(name: "base", arg: 1, scope: !977, file: !3, line: 278, type: !201)
!980 = !DILocalVariable(name: "p", scope: !977, file: !3, line: 280, type: !64)
!981 = !DILocalVariable(name: "peer", scope: !982, file: !3, line: 283, type: !54)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 282, column: 12)
!983 = !DILocalVariable(name: "__mptr", scope: !984, file: !3, line: 283, type: !42)
!984 = distinct !DILexicalBlock(scope: !982, file: !3, line: 283, column: 28)
!985 = !DILocation(line: 278, column: 54, scope: !977)
!986 = !DILocation(line: 280, column: 2, scope: !977)
!987 = !DILocation(line: 280, column: 18, scope: !977)
!988 = !DILocation(line: 280, column: 32, scope: !977)
!989 = !DILocation(line: 280, column: 38, scope: !977)
!990 = !DILocation(line: 280, column: 22, scope: !977)
!991 = !DILocation(line: 282, column: 2, scope: !977)
!992 = !DILocation(line: 282, column: 9, scope: !977)
!993 = !DILocation(line: 283, column: 3, scope: !982)
!994 = !DILocation(line: 283, column: 21, scope: !982)
!995 = !DILocation(line: 283, column: 28, scope: !984)
!996 = !DILocation(line: 283, column: 28, scope: !982)
!997 = !DILocation(line: 285, column: 15, scope: !982)
!998 = !DILocation(line: 285, column: 7, scope: !982)
!999 = !DILocation(line: 285, column: 5, scope: !982)
!1000 = !DILocation(line: 286, column: 13, scope: !982)
!1001 = !DILocation(line: 286, column: 19, scope: !982)
!1002 = !DILocation(line: 286, column: 29, scope: !982)
!1003 = !DILocation(line: 286, column: 35, scope: !982)
!1004 = !DILocation(line: 286, column: 3, scope: !982)
!1005 = !DILocation(line: 287, column: 16, scope: !982)
!1006 = !DILocation(line: 287, column: 3, scope: !982)
!1007 = !DILocation(line: 288, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !982, file: !3, line: 288, column: 3)
!1009 = !DILocation(line: 289, column: 2, scope: !977)
!1010 = distinct !{!1010, !991, !1009, !498, !499}
!1011 = !DILocation(line: 291, column: 2, scope: !977)
!1012 = !DILocation(line: 291, column: 8, scope: !977)
!1013 = !DILocation(line: 291, column: 14, scope: !977)
!1014 = !DILocation(line: 292, column: 1, scope: !977)
!1015 = !DISubprogram(name: "rb_first", scope: !695, file: !695, line: 46, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!64, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!1020 = !DISubprogram(name: "rb_next", scope: !695, file: !695, line: 44, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!64, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1025 = !DISubprogram(name: "rb_erase", scope: !695, file: !695, line: 40, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = distinct !DISubprogram(name: "__might_resched", scope: !1027, file: !1027, line: 184, type: !1028, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1027 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !292, !79, !7}
!1030 = !{!1031, !1032, !1033}
!1031 = !DILocalVariable(name: "file", arg: 1, scope: !1026, file: !1027, line: 184, type: !292)
!1032 = !DILocalVariable(name: "line", arg: 2, scope: !1026, file: !1027, line: 184, type: !79)
!1033 = !DILocalVariable(name: "offsets", arg: 3, scope: !1026, file: !1027, line: 185, type: !7)
!1034 = !DILocation(line: 184, column: 50, scope: !1026)
!1035 = !DILocation(line: 184, column: 60, scope: !1026)
!1036 = !DILocation(line: 185, column: 23, scope: !1026)
!1037 = !DILocation(line: 185, column: 34, scope: !1026)
!1038 = !DILocation(line: 2104, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !185, file: !186, line: 2104, column: 9)
!1040 = !DILocation(line: 2104, column: 9, scope: !185)
!1041 = !DILocation(line: 2104, column: 2, scope: !185)
!1042 = distinct !DISubprogram(name: "atomic_long_read", scope: !679, file: !679, line: 3158, type: !1043, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1056)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1049, line: 13, baseType: !1050)
!1049 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !50, line: 181, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 179, size: 64, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1051, file: !50, line: 180, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !44, line: 22, baseType: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !46, line: 30, baseType: !143)
!1056 = !{!1057}
!1057 = !DILocalVariable(name: "v", arg: 1, scope: !1042, file: !679, line: 3158, type: !1046)
!1058 = !DILocation(line: 3158, column: 39, scope: !1042)
!1059 = !DILocation(line: 3160, column: 25, scope: !1042)
!1060 = !DILocation(line: 3160, column: 2, scope: !1042)
!1061 = !DILocation(line: 3161, column: 30, scope: !1042)
!1062 = !DILocation(line: 3161, column: 9, scope: !1042)
!1063 = !DILocation(line: 3161, column: 2, scope: !1042)
!1064 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1065, file: !1065, line: 66, type: !1066, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1065 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !1068, !1071}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 61, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1073, line: 72, baseType: !1074)
!1073 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1073, line: 16, baseType: !48)
!1075 = !{!1076, !1077}
!1076 = !DILocalVariable(name: "v", arg: 1, scope: !1064, file: !1065, line: 66, type: !1068)
!1077 = !DILocalVariable(name: "size", arg: 2, scope: !1064, file: !1065, line: 66, type: !1071)
!1078 = !DILocation(line: 66, column: 73, scope: !1064)
!1079 = !DILocation(line: 66, column: 83, scope: !1064)
!1080 = !DILocation(line: 68, column: 19, scope: !1064)
!1081 = !DILocation(line: 68, column: 22, scope: !1064)
!1082 = !DILocation(line: 68, column: 2, scope: !1064)
!1083 = !DILocation(line: 69, column: 2, scope: !1064)
!1084 = !DILocation(line: 70, column: 1, scope: !1064)
!1085 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !1049, file: !1049, line: 35, type: !1043, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1086 = !{!1087}
!1087 = !DILocalVariable(name: "v", arg: 1, scope: !1085, file: !1049, line: 35, type: !1046)
!1088 = !DILocation(line: 35, column: 43, scope: !1085)
!1089 = !DILocation(line: 38, column: 27, scope: !1085)
!1090 = !DILocation(line: 38, column: 9, scope: !1085)
!1091 = !DILocation(line: 38, column: 2, scope: !1085)
!1092 = distinct !DISubprogram(name: "kasan_check_read", scope: !1093, file: !1093, line: 40, type: !1094, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1093 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!889, !1068, !7}
!1096 = !{!1097, !1098}
!1097 = !DILocalVariable(name: "p", arg: 1, scope: !1092, file: !1093, line: 40, type: !1068)
!1098 = !DILocalVariable(name: "size", arg: 2, scope: !1092, file: !1093, line: 40, type: !7)
!1099 = !DILocation(line: 40, column: 58, scope: !1092)
!1100 = !DILocation(line: 40, column: 74, scope: !1092)
!1101 = !DILocation(line: 42, column: 2, scope: !1092)
!1102 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1103, file: !1103, line: 229, type: !1104, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1103 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !1068, !1071, !79}
!1106 = !{!1107, !1108, !1109}
!1107 = !DILocalVariable(name: "ptr", arg: 1, scope: !1102, file: !1103, line: 229, type: !1068)
!1108 = !DILocalVariable(name: "size", arg: 2, scope: !1102, file: !1103, line: 229, type: !1071)
!1109 = !DILocalVariable(name: "type", arg: 3, scope: !1102, file: !1103, line: 230, type: !79)
!1110 = !DILocation(line: 229, column: 60, scope: !1102)
!1111 = !DILocation(line: 229, column: 72, scope: !1102)
!1112 = !DILocation(line: 230, column: 15, scope: !1102)
!1113 = !DILocation(line: 230, column: 23, scope: !1102)
!1114 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !1115, file: !1115, line: 2554, type: !1116, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1120)
!1115 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1054, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1120 = !{!1121}
!1121 = !DILocalVariable(name: "v", arg: 1, scope: !1114, file: !1115, line: 2554, type: !1118)
!1122 = !DILocation(line: 2554, column: 37, scope: !1114)
!1123 = !DILocation(line: 2556, column: 28, scope: !1114)
!1124 = !DILocation(line: 2556, column: 9, scope: !1114)
!1125 = !DILocation(line: 2556, column: 2, scope: !1114)
!1126 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !1127, file: !1127, line: 13, type: !1116, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1128)
!1127 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!1128 = !{!1129}
!1129 = !DILocalVariable(name: "v", arg: 1, scope: !1126, file: !1127, line: 13, type: !1118)
!1130 = !DILocation(line: 13, column: 65, scope: !1126)
!1131 = !DILocation(line: 15, column: 9, scope: !1126)
!1132 = !DILocation(line: 15, column: 2, scope: !1126)
!1133 = distinct !DISubprogram(name: "__seqprop_spinlock_sequence", scope: !210, file: !210, line: 275, type: !1134, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1138)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!7, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!1138 = !{!1139, !1140}
!1139 = !DILocalVariable(name: "s", arg: 1, scope: !1133, file: !210, line: 275, type: !1136)
!1140 = !DILocalVariable(name: "seq", scope: !1133, file: !210, line: 275, type: !7)
!1141 = !DILocation(line: 275, column: 1, scope: !1133)
!1142 = !DILocation(line: 275, column: 1, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1133, file: !210, line: 275, column: 1)
!1144 = !DILocation(line: 275, column: 1, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1143, file: !210, line: 275, column: 1)
!1146 = !DILocation(line: 275, column: 1, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1133, file: !210, line: 275, column: 1)
!1148 = distinct !DISubprogram(name: "cpu_relax", scope: !1149, file: !1149, line: 16, type: !313, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1149 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!1150 = !DILocation(line: 18, column: 2, scope: !1148)
!1151 = !DILocation(line: 19, column: 1, scope: !1148)
!1152 = distinct !DISubprogram(name: "kcsan_atomic_next", scope: !1103, file: !1103, line: 203, type: !1153, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !79}
!1155 = !{!1156}
!1156 = !DILocalVariable(name: "n", arg: 1, scope: !1152, file: !1103, line: 203, type: !79)
!1157 = !DILocation(line: 203, column: 42, scope: !1152)
!1158 = !DILocation(line: 203, column: 48, scope: !1152)
!1159 = distinct !DISubprogram(name: "rep_nop", scope: !1149, file: !1149, line: 11, type: !313, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1160 = !DILocation(line: 13, column: 2, scope: !1159)
!1161 = !{i64 1927797}
!1162 = !DILocation(line: 14, column: 1, scope: !1159)
!1163 = distinct !DISubprogram(name: "inetpeer_addr_cmp", scope: !56, file: !56, line: 123, type: !1164, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1166)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!79, !362, !362}
!1166 = !{!1167, !1168, !1169, !1170}
!1167 = !DILocalVariable(name: "a", arg: 1, scope: !1163, file: !56, line: 123, type: !362)
!1168 = !DILocalVariable(name: "b", arg: 2, scope: !1163, file: !56, line: 124, type: !362)
!1169 = !DILocalVariable(name: "i", scope: !1163, file: !56, line: 126, type: !79)
!1170 = !DILocalVariable(name: "n", scope: !1163, file: !56, line: 126, type: !79)
!1171 = !DILocation(line: 123, column: 65, scope: !1163)
!1172 = !DILocation(line: 124, column: 37, scope: !1163)
!1173 = !DILocation(line: 126, column: 2, scope: !1163)
!1174 = !DILocation(line: 126, column: 6, scope: !1163)
!1175 = !DILocation(line: 126, column: 9, scope: !1163)
!1176 = !DILocation(line: 128, column: 6, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1163, file: !56, line: 128, column: 6)
!1178 = !DILocation(line: 128, column: 9, scope: !1177)
!1179 = !DILocation(line: 128, column: 16, scope: !1177)
!1180 = !DILocation(line: 128, column: 6, scope: !1163)
!1181 = !DILocation(line: 129, column: 5, scope: !1177)
!1182 = !DILocation(line: 129, column: 3, scope: !1177)
!1183 = !DILocation(line: 131, column: 5, scope: !1177)
!1184 = !DILocation(line: 133, column: 9, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1163, file: !56, line: 133, column: 2)
!1186 = !DILocation(line: 133, column: 7, scope: !1185)
!1187 = !DILocation(line: 133, column: 14, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !56, line: 133, column: 2)
!1189 = !DILocation(line: 133, column: 18, scope: !1188)
!1190 = !DILocation(line: 133, column: 16, scope: !1188)
!1191 = !DILocation(line: 133, column: 2, scope: !1185)
!1192 = !DILocation(line: 134, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !56, line: 134, column: 7)
!1194 = distinct !DILexicalBlock(scope: !1188, file: !56, line: 133, column: 26)
!1195 = !DILocation(line: 134, column: 10, scope: !1193)
!1196 = !DILocation(line: 134, column: 14, scope: !1193)
!1197 = !DILocation(line: 134, column: 20, scope: !1193)
!1198 = !DILocation(line: 134, column: 23, scope: !1193)
!1199 = !DILocation(line: 134, column: 27, scope: !1193)
!1200 = !DILocation(line: 134, column: 17, scope: !1193)
!1201 = !DILocation(line: 134, column: 7, scope: !1194)
!1202 = !DILocation(line: 135, column: 4, scope: !1193)
!1203 = !DILocation(line: 136, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1194, file: !56, line: 136, column: 7)
!1205 = !DILocation(line: 136, column: 10, scope: !1204)
!1206 = !DILocation(line: 136, column: 14, scope: !1204)
!1207 = !DILocation(line: 136, column: 19, scope: !1204)
!1208 = !DILocation(line: 136, column: 22, scope: !1204)
!1209 = !DILocation(line: 136, column: 26, scope: !1204)
!1210 = !DILocation(line: 136, column: 17, scope: !1204)
!1211 = !DILocation(line: 136, column: 7, scope: !1194)
!1212 = !DILocation(line: 137, column: 4, scope: !1204)
!1213 = !DILocation(line: 138, column: 3, scope: !1194)
!1214 = !DILocation(line: 133, column: 22, scope: !1188)
!1215 = !DILocation(line: 133, column: 2, scope: !1188)
!1216 = distinct !{!1216, !1191, !1217, !498, !499}
!1217 = !DILocation(line: 139, column: 2, scope: !1185)
!1218 = !DILocation(line: 141, column: 2, scope: !1163)
!1219 = !DILocation(line: 142, column: 1, scope: !1163)
!1220 = distinct !DISubprogram(name: "read_seqretry", scope: !210, file: !210, line: 907, type: !1221, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1223)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!7, !485, !7}
!1223 = !{!1224, !1225}
!1224 = !DILocalVariable(name: "sl", arg: 1, scope: !1220, file: !210, line: 907, type: !485)
!1225 = !DILocalVariable(name: "start", arg: 2, scope: !1220, file: !210, line: 907, type: !7)
!1226 = !DILocation(line: 907, column: 55, scope: !1220)
!1227 = !DILocation(line: 907, column: 68, scope: !1220)
!1228 = !DILocation(line: 909, column: 9, scope: !1220)
!1229 = !DILocation(line: 909, column: 2, scope: !1220)
!1230 = distinct !DISubprogram(name: "do_read_seqcount_retry", scope: !210, file: !210, line: 446, type: !1231, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1235)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!79, !1233, !7}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!1235 = !{!1236, !1237}
!1236 = !DILocalVariable(name: "s", arg: 1, scope: !1230, file: !210, line: 446, type: !1233)
!1237 = !DILocalVariable(name: "start", arg: 2, scope: !1230, file: !210, line: 446, type: !7)
!1238 = !DILocation(line: 446, column: 60, scope: !1230)
!1239 = !DILocation(line: 446, column: 72, scope: !1230)
!1240 = !DILocation(line: 448, column: 2, scope: !1230)
!1241 = !DILocation(line: 448, column: 2, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1230, file: !210, line: 448, column: 2)
!1243 = !DILocation(line: 448, column: 2, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1242, file: !210, line: 448, column: 2)
!1245 = !DILocation(line: 448, column: 2, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !210, line: 448, column: 2)
!1247 = !DILocation(line: 448, column: 2, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !210, line: 448, column: 2)
!1249 = !{i64 2150424497}
!1250 = !DILocation(line: 449, column: 34, scope: !1230)
!1251 = !DILocation(line: 449, column: 37, scope: !1230)
!1252 = !DILocation(line: 449, column: 9, scope: !1230)
!1253 = !DILocation(line: 449, column: 2, scope: !1230)
!1254 = distinct !DISubprogram(name: "__seqprop_spinlock_ptr", scope: !210, file: !210, line: 275, type: !1255, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!291, !261}
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "s", arg: 1, scope: !1254, file: !210, line: 275, type: !261)
!1259 = !DILocation(line: 275, column: 1, scope: !1254)
!1260 = distinct !DISubprogram(name: "do___read_seqcount_retry", scope: !210, file: !210, line: 426, type: !1231, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1261)
!1261 = !{!1262, !1263}
!1262 = !DILocalVariable(name: "s", arg: 1, scope: !1260, file: !210, line: 426, type: !1233)
!1263 = !DILocalVariable(name: "start", arg: 2, scope: !1260, file: !210, line: 426, type: !7)
!1264 = !DILocation(line: 426, column: 62, scope: !1260)
!1265 = !DILocation(line: 426, column: 74, scope: !1260)
!1266 = !DILocation(line: 428, column: 2, scope: !1260)
!1267 = !DILocation(line: 429, column: 9, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1260, file: !210, line: 429, column: 9)
!1269 = !DILocation(line: 429, column: 9, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !210, line: 429, column: 9)
!1271 = !DILocation(line: 429, column: 9, scope: !1260)
!1272 = !DILocation(line: 429, column: 2, scope: !1260)
!1273 = distinct !DISubprogram(name: "spin_lock_bh", scope: !276, file: !276, line: 354, type: !1274, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !281}
!1276 = !{!1277}
!1277 = !DILocalVariable(name: "lock", arg: 1, scope: !1273, file: !276, line: 354, type: !281)
!1278 = !DILocation(line: 354, column: 54, scope: !1273)
!1279 = !DILocation(line: 356, column: 2, scope: !1273)
!1280 = !DILocation(line: 357, column: 1, scope: !1273)
!1281 = distinct !DISubprogram(name: "do_write_seqcount_begin", scope: !210, file: !210, line: 539, type: !1282, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1284)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !291}
!1284 = !{!1285}
!1285 = !DILocalVariable(name: "s", arg: 1, scope: !1281, file: !210, line: 539, type: !291)
!1286 = !DILocation(line: 539, column: 56, scope: !1281)
!1287 = !DILocation(line: 541, column: 33, scope: !1281)
!1288 = !DILocation(line: 541, column: 2, scope: !1281)
!1289 = !DILocation(line: 542, column: 1, scope: !1281)
!1290 = !DISubprogram(name: "_raw_spin_lock_bh", scope: !1291, file: !1291, line: 28, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !279}
!1294 = distinct !DISubprogram(name: "do_write_seqcount_begin_nested", scope: !210, file: !210, line: 513, type: !1295, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !291, !79}
!1297 = !{!1298, !1299}
!1298 = !DILocalVariable(name: "s", arg: 1, scope: !1294, file: !210, line: 513, type: !291)
!1299 = !DILocalVariable(name: "subclass", arg: 2, scope: !1294, file: !210, line: 513, type: !79)
!1300 = !DILocation(line: 513, column: 63, scope: !1294)
!1301 = !DILocation(line: 513, column: 70, scope: !1294)
!1302 = !DILocation(line: 515, column: 2, scope: !1294)
!1303 = !DILocation(line: 515, column: 2, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1294, file: !210, line: 515, column: 2)
!1305 = !DILocation(line: 516, column: 30, scope: !1294)
!1306 = !DILocation(line: 516, column: 2, scope: !1294)
!1307 = !DILocation(line: 517, column: 1, scope: !1294)
!1308 = distinct !DISubprogram(name: "do_raw_write_seqcount_begin", scope: !210, file: !210, line: 466, type: !1282, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1309 = !{!1310}
!1310 = !DILocalVariable(name: "s", arg: 1, scope: !1308, file: !210, line: 466, type: !291)
!1311 = !DILocation(line: 466, column: 60, scope: !1308)
!1312 = !DILocation(line: 468, column: 2, scope: !1308)
!1313 = !DILocation(line: 469, column: 2, scope: !1308)
!1314 = !DILocation(line: 469, column: 5, scope: !1308)
!1315 = !DILocation(line: 469, column: 13, scope: !1308)
!1316 = !DILocation(line: 470, column: 2, scope: !1308)
!1317 = !DILocation(line: 470, column: 2, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1308, file: !210, line: 470, column: 2)
!1319 = !DILocation(line: 470, column: 2, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1318, file: !210, line: 470, column: 2)
!1321 = !{i64 2150424770}
!1322 = !DILocation(line: 471, column: 1, scope: !1308)
!1323 = distinct !DISubprogram(name: "kcsan_nestable_atomic_begin", scope: !1103, file: !1103, line: 199, type: !313, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1324 = !DILocation(line: 199, column: 56, scope: !1323)
!1325 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1065, file: !1065, line: 80, type: !1066, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1326)
!1326 = !{!1327, !1328}
!1327 = !DILocalVariable(name: "v", arg: 1, scope: !1325, file: !1065, line: 80, type: !1068)
!1328 = !DILocalVariable(name: "size", arg: 2, scope: !1325, file: !1065, line: 80, type: !1071)
!1329 = !DILocation(line: 80, column: 74, scope: !1325)
!1330 = !DILocation(line: 80, column: 84, scope: !1325)
!1331 = !DILocation(line: 82, column: 20, scope: !1325)
!1332 = !DILocation(line: 82, column: 23, scope: !1325)
!1333 = !DILocation(line: 82, column: 2, scope: !1325)
!1334 = !DILocation(line: 83, column: 2, scope: !1325)
!1335 = !DILocation(line: 84, column: 1, scope: !1325)
!1336 = distinct !DISubprogram(name: "raw_atomic_set", scope: !1115, file: !1115, line: 488, type: !680, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1337 = !{!1338, !1339}
!1338 = !DILocalVariable(name: "v", arg: 1, scope: !1336, file: !1115, line: 488, type: !682)
!1339 = !DILocalVariable(name: "i", arg: 2, scope: !1336, file: !1115, line: 488, type: !79)
!1340 = !DILocation(line: 488, column: 26, scope: !1336)
!1341 = !DILocation(line: 488, column: 33, scope: !1336)
!1342 = !DILocation(line: 490, column: 18, scope: !1336)
!1343 = !DILocation(line: 490, column: 21, scope: !1336)
!1344 = !DILocation(line: 490, column: 2, scope: !1336)
!1345 = !DILocation(line: 491, column: 1, scope: !1336)
!1346 = distinct !DISubprogram(name: "kasan_check_write", scope: !1093, file: !1093, line: 44, type: !1094, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1347)
!1347 = !{!1348, !1349}
!1348 = !DILocalVariable(name: "p", arg: 1, scope: !1346, file: !1093, line: 44, type: !1068)
!1349 = !DILocalVariable(name: "size", arg: 2, scope: !1346, file: !1093, line: 44, type: !7)
!1350 = !DILocation(line: 44, column: 59, scope: !1346)
!1351 = !DILocation(line: 44, column: 75, scope: !1346)
!1352 = !DILocation(line: 46, column: 2, scope: !1346)
!1353 = distinct !DISubprogram(name: "arch_atomic_set", scope: !1354, file: !1354, line: 26, type: !680, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1355)
!1354 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1355 = !{!1356, !1357}
!1356 = !DILocalVariable(name: "v", arg: 1, scope: !1353, file: !1354, line: 26, type: !682)
!1357 = !DILocalVariable(name: "i", arg: 2, scope: !1353, file: !1354, line: 26, type: !79)
!1358 = !DILocation(line: 26, column: 55, scope: !1353)
!1359 = !DILocation(line: 26, column: 62, scope: !1353)
!1360 = !DILocation(line: 28, column: 2, scope: !1353)
!1361 = !DILocation(line: 28, column: 2, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !1354, line: 28, column: 2)
!1363 = !DILocation(line: 29, column: 1, scope: !1353)
!1364 = !DISubprogram(name: "refcount_dec_if_one", scope: !34, file: !34, line: 362, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1365 = distinct !DISubprogram(name: "do_write_seqcount_end", scope: !210, file: !210, line: 559, type: !1282, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1366 = !{!1367}
!1367 = !DILocalVariable(name: "s", arg: 1, scope: !1365, file: !210, line: 559, type: !291)
!1368 = !DILocation(line: 559, column: 54, scope: !1365)
!1369 = !DILocation(line: 561, column: 2, scope: !1365)
!1370 = !DILocation(line: 561, column: 2, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1365, file: !210, line: 561, column: 2)
!1372 = !DILocation(line: 562, column: 28, scope: !1365)
!1373 = !DILocation(line: 562, column: 2, scope: !1365)
!1374 = !DILocation(line: 563, column: 1, scope: !1365)
!1375 = distinct !DISubprogram(name: "spin_unlock_bh", scope: !276, file: !276, line: 394, type: !1274, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1376)
!1376 = !{!1377}
!1377 = !DILocalVariable(name: "lock", arg: 1, scope: !1375, file: !276, line: 394, type: !281)
!1378 = !DILocation(line: 394, column: 56, scope: !1375)
!1379 = !DILocation(line: 396, column: 2, scope: !1375)
!1380 = !DILocation(line: 397, column: 1, scope: !1375)
!1381 = distinct !DISubprogram(name: "do_raw_write_seqcount_end", scope: !210, file: !210, line: 487, type: !1282, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1382)
!1382 = !{!1383}
!1383 = !DILocalVariable(name: "s", arg: 1, scope: !1381, file: !210, line: 487, type: !291)
!1384 = !DILocation(line: 487, column: 58, scope: !1381)
!1385 = !DILocation(line: 489, column: 2, scope: !1381)
!1386 = !DILocation(line: 489, column: 2, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1381, file: !210, line: 489, column: 2)
!1388 = !DILocation(line: 489, column: 2, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1387, file: !210, line: 489, column: 2)
!1390 = !{i64 2150425043}
!1391 = !DILocation(line: 490, column: 2, scope: !1381)
!1392 = !DILocation(line: 490, column: 5, scope: !1381)
!1393 = !DILocation(line: 490, column: 13, scope: !1381)
!1394 = !DILocation(line: 491, column: 2, scope: !1381)
!1395 = !DILocation(line: 492, column: 1, scope: !1381)
!1396 = distinct !DISubprogram(name: "kcsan_nestable_atomic_end", scope: !1103, file: !1103, line: 200, type: !313, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1397 = !DILocation(line: 200, column: 54, scope: !1396)
!1398 = !DISubprogram(name: "_raw_spin_unlock_bh", scope: !1291, file: !1291, line: 40, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1399 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !34, file: !34, line: 313, type: !1400, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1403)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!889, !667, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1403 = !{!1404, !1405}
!1404 = !DILocalVariable(name: "r", arg: 1, scope: !1399, file: !34, line: 313, type: !667)
!1405 = !DILocalVariable(name: "oldp", arg: 2, scope: !1399, file: !34, line: 313, type: !1402)
!1406 = !DILocation(line: 313, column: 69, scope: !1399)
!1407 = !DILocation(line: 313, column: 77, scope: !1399)
!1408 = !DILocation(line: 315, column: 36, scope: !1399)
!1409 = !DILocation(line: 315, column: 39, scope: !1399)
!1410 = !DILocation(line: 315, column: 9, scope: !1399)
!1411 = !DILocation(line: 315, column: 2, scope: !1399)
!1412 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !34, file: !34, line: 270, type: !1413, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!889, !79, !667, !1402}
!1415 = !{!1416, !1417, !1418, !1419}
!1416 = !DILocalVariable(name: "i", arg: 1, scope: !1412, file: !34, line: 270, type: !79)
!1417 = !DILocalVariable(name: "r", arg: 2, scope: !1412, file: !34, line: 270, type: !667)
!1418 = !DILocalVariable(name: "oldp", arg: 3, scope: !1412, file: !34, line: 270, type: !1402)
!1419 = !DILocalVariable(name: "old", scope: !1412, file: !34, line: 272, type: !79)
!1420 = !DILocation(line: 270, column: 61, scope: !1412)
!1421 = !DILocation(line: 270, column: 76, scope: !1412)
!1422 = !DILocation(line: 270, column: 84, scope: !1412)
!1423 = !DILocation(line: 272, column: 2, scope: !1412)
!1424 = !DILocation(line: 272, column: 6, scope: !1412)
!1425 = !DILocation(line: 272, column: 37, scope: !1412)
!1426 = !DILocation(line: 272, column: 41, scope: !1412)
!1427 = !DILocation(line: 272, column: 44, scope: !1412)
!1428 = !DILocation(line: 272, column: 12, scope: !1412)
!1429 = !DILocation(line: 274, column: 6, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1412, file: !34, line: 274, column: 6)
!1431 = !DILocation(line: 274, column: 6, scope: !1412)
!1432 = !DILocation(line: 275, column: 11, scope: !1430)
!1433 = !DILocation(line: 275, column: 4, scope: !1430)
!1434 = !DILocation(line: 275, column: 9, scope: !1430)
!1435 = !DILocation(line: 275, column: 3, scope: !1430)
!1436 = !DILocation(line: 277, column: 6, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1412, file: !34, line: 277, column: 6)
!1438 = !DILocation(line: 277, column: 13, scope: !1437)
!1439 = !DILocation(line: 277, column: 10, scope: !1437)
!1440 = !DILocation(line: 277, column: 6, scope: !1412)
!1441 = !DILocation(line: 278, column: 3, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !34, line: 277, column: 16)
!1443 = !DILocation(line: 278, column: 3, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1442, file: !34, line: 278, column: 3)
!1445 = !DILocation(line: 278, column: 3, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1444, file: !34, line: 278, column: 3)
!1447 = !DILocation(line: 278, column: 3, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !34, line: 278, column: 3)
!1449 = !DILocation(line: 278, column: 3, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1448, file: !34, line: 278, column: 3)
!1451 = !{i64 2149923888}
!1452 = !DILocation(line: 279, column: 3, scope: !1442)
!1453 = !DILocation(line: 282, column: 6, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1412, file: !34, line: 282, column: 6)
!1455 = !DILocation(line: 282, column: 6, scope: !1412)
!1456 = !DILocation(line: 283, column: 26, scope: !1454)
!1457 = !DILocation(line: 283, column: 3, scope: !1454)
!1458 = !DILocation(line: 285, column: 2, scope: !1412)
!1459 = !DILocation(line: 286, column: 1, scope: !1412)
!1460 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !679, file: !679, line: 397, type: !1461, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!79, !79, !682}
!1463 = !{!1464, !1465}
!1464 = !DILocalVariable(name: "i", arg: 1, scope: !1460, file: !679, line: 397, type: !79)
!1465 = !DILocalVariable(name: "v", arg: 2, scope: !1460, file: !679, line: 397, type: !682)
!1466 = !DILocation(line: 397, column: 30, scope: !1460)
!1467 = !DILocation(line: 397, column: 43, scope: !1460)
!1468 = !DILocation(line: 399, column: 2, scope: !1460)
!1469 = !DILocation(line: 399, column: 2, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1460, file: !679, line: 399, column: 2)
!1471 = !DILocation(line: 400, column: 31, scope: !1460)
!1472 = !DILocation(line: 400, column: 2, scope: !1460)
!1473 = !DILocation(line: 401, column: 38, scope: !1460)
!1474 = !DILocation(line: 401, column: 41, scope: !1460)
!1475 = !DILocation(line: 401, column: 9, scope: !1460)
!1476 = !DILocation(line: 401, column: 2, scope: !1460)
!1477 = !DISubprogram(name: "refcount_warn_saturate", scope: !34, file: !34, line: 127, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !667, !33}
!1480 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1065, file: !1065, line: 94, type: !1066, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1481)
!1481 = !{!1482, !1483}
!1482 = !DILocalVariable(name: "v", arg: 1, scope: !1480, file: !1065, line: 94, type: !1068)
!1483 = !DILocalVariable(name: "size", arg: 2, scope: !1480, file: !1065, line: 94, type: !1071)
!1484 = !DILocation(line: 94, column: 79, scope: !1480)
!1485 = !DILocation(line: 94, column: 89, scope: !1480)
!1486 = !DILocation(line: 96, column: 20, scope: !1480)
!1487 = !DILocation(line: 96, column: 23, scope: !1480)
!1488 = !DILocation(line: 96, column: 2, scope: !1480)
!1489 = !DILocation(line: 97, column: 2, scope: !1480)
!1490 = !DILocation(line: 98, column: 1, scope: !1480)
!1491 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !1115, file: !1115, line: 928, type: !1461, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1492)
!1492 = !{!1493, !1494}
!1493 = !DILocalVariable(name: "i", arg: 1, scope: !1491, file: !1115, line: 928, type: !79)
!1494 = !DILocalVariable(name: "v", arg: 2, scope: !1491, file: !1115, line: 928, type: !682)
!1495 = !DILocation(line: 928, column: 34, scope: !1491)
!1496 = !DILocation(line: 928, column: 47, scope: !1491)
!1497 = !DILocation(line: 936, column: 31, scope: !1491)
!1498 = !DILocation(line: 936, column: 34, scope: !1491)
!1499 = !DILocation(line: 936, column: 9, scope: !1491)
!1500 = !DILocation(line: 936, column: 2, scope: !1491)
!1501 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !1354, file: !1354, line: 101, type: !1461, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DILocalVariable(name: "i", arg: 1, scope: !1501, file: !1354, line: 101, type: !79)
!1504 = !DILocalVariable(name: "v", arg: 2, scope: !1501, file: !1354, line: 101, type: !682)
!1505 = !DILocalVariable(name: "__ret", scope: !1506, file: !1354, line: 103, type: !79)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !1354, line: 103, column: 9)
!1507 = !DILocation(line: 101, column: 54, scope: !1501)
!1508 = !DILocation(line: 101, column: 67, scope: !1501)
!1509 = !DILocation(line: 103, column: 9, scope: !1506)
!1510 = !{i64 2148800810, i64 2148800849, i64 2148800870, i64 2148800907, i64 2148800930, i64 2148800939}
!1511 = !DILocation(line: 103, column: 9, scope: !1501)
!1512 = !DILocation(line: 103, column: 2, scope: !1501)
!1513 = !DISubprogram(name: "kmem_cache_free", scope: !353, file: !353, line: 503, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !178, !42}
