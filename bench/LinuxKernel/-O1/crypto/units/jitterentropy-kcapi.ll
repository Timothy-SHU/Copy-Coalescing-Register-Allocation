; ModuleID = 'crypto/jitterentropy-kcapi.c'
source_filename = "crypto/jitterentropy-kcapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_jitterentropy_rng__197_358_jent_mod_init\22, \22a\22\09\09"
module asm "__initcall__kmod_jitterentropy_rng__197_358_jent_mod_init6:\09\09\09"
module asm ".long\09__initstub__kmod_jitterentropy_rng__197_358_jent_mod_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rng_alg = type { ptr, ptr, ptr, i32, %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.1, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.1 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.shash_desc = type { ptr, [0 x ptr] }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, %struct.crypto_alg }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.crypto_shash = type { i32, %struct.crypto_tfm }
%struct.jitterentropy = type { %struct.spinlock, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.crypto_rng = type { %struct.crypto_tfm }

@jent_hash_time._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !0
@__func__.jent_hash_time = private unnamed_addr constant [15 x i8] c"jent_hash_time\00", align 1, !dbg !1301
@.str = private unnamed_addr constant [26 x i8] c"\014Unexpected digest size\0A\00", align 1, !dbg !1306
@jent_alg = internal global %struct.rng_alg { ptr @jent_kcapi_random, ptr @jent_kcapi_reset, ptr null, i32 0, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 32, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"jitterentropy_rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"jitterentropy_rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.1 zeroinitializer, ptr @jent_kcapi_init, ptr @jent_kcapi_cleanup, ptr null, ptr null } }, align 8, !dbg !1352
@__UNIQUE_ID___addressable___initstub__kmod_jitterentropy_rng__197_358_jent_mod_init6198 = internal global ptr @__initstub__kmod_jitterentropy_rng__197_358_jent_mod_init6, section ".discard.addressable", align 8, !dbg !1311
@__exitcall_jent_mod_exit = internal global ptr @jent_mod_exit, section ".exitcall.exit", align 8, !dbg !1313
@__UNIQUE_ID_file199 = internal constant [48 x i8] c"jitterentropy_rng.file=crypto/jitterentropy_rng\00", section ".modinfo", align 1, !dbg !1317
@__UNIQUE_ID_license200 = internal constant [39 x i8] c"jitterentropy_rng.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !1322
@__UNIQUE_ID_author201 = internal constant [63 x i8] c"jitterentropy_rng.author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1, !dbg !1327
@__UNIQUE_ID_description202 = internal constant [92 x i8] c"jitterentropy_rng.description=Non-physical True Random Number Generator based on CPU Jitter\00", section ".modinfo", align 1, !dbg !1332
@__UNIQUE_ID_alias_userspace203 = internal constant [42 x i8] c"jitterentropy_rng.alias=jitterentropy_rng\00", section ".modinfo", align 1, !dbg !1337
@__UNIQUE_ID_alias_crypto204 = internal constant [49 x i8] c"jitterentropy_rng.alias=crypto-jitterentropy_rng\00", section ".modinfo", align 1, !dbg !1342
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1347
@.str.2 = private unnamed_addr constant [44 x i8] c"\013Jitter RNG permanent health test failure\0A\00", align 1, !dbg !1375
@jent_kcapi_random._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !1380
@__func__.jent_kcapi_random = private unnamed_addr constant [18 x i8] c"jent_kcapi_random\00", align 1, !dbg !1411
@.str.3 = private unnamed_addr constant [60 x i8] c"\014Reset Jitter RNG due to intermittent health test failure\0A\00", align 1, !dbg !1416
@.str.4 = private unnamed_addr constant [17 x i8] c"sha3-256-generic\00", align 1, !dbg !1421
@.str.5 = private unnamed_addr constant [39 x i8] c"\013Cannot allocate conditioning digest\0A\00", align 1, !dbg !1426
@.str.6 = private unnamed_addr constant [86 x i8] c"\016jitterentropy: Initialization failed with host not compliant with requirements: %d\0A\00", align 1, !dbg !1429
@llvm.compiler.used = appending global [9 x ptr] [ptr @jent_mod_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_jitterentropy_rng__197_358_jent_mod_init6198, ptr @__exitcall_jent_mod_exit, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_description202, ptr @__UNIQUE_ID_alias_userspace203, ptr @__UNIQUE_ID_alias_crypto204], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @jent_zalloc(i32 noundef %len) #0 align 16 !dbg !1463 {
entry:
  %len.addr = alloca i32, align 4
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1467, metadata !DIExpression()), !dbg !1468
  %0 = load i32, ptr %len.addr, align 4, !dbg !1469
  %conv = zext i32 %0 to i64, !dbg !1469
  %call = call noalias ptr @kzalloc(i64 noundef %conv, i32 noundef 3264) #17, !dbg !1470
  ret ptr %call, !dbg !1471
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #2 align 16 !dbg !1472 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1476, metadata !DIExpression()), !dbg !1478
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1477, metadata !DIExpression()), !dbg !1479
  %0 = load i64, ptr %size.addr, align 8, !dbg !1480
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1481
  %or = or i32 %1, 256, !dbg !1482
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1483
  ret ptr %call, !dbg !1484
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jent_zfree(ptr noundef %ptr) #0 align 16 !dbg !1485 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1487, metadata !DIExpression()), !dbg !1488
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1489
  call void @kfree_sensitive(ptr noundef %0) #18, !dbg !1490
  ret void, !dbg !1491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1492 dso_local void @kfree_sensitive(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jent_get_nstime(ptr noundef %out) #0 align 16 !dbg !1495 {
entry:
  %out.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1500, metadata !DIExpression()), !dbg !1502
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #19, !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1501, metadata !DIExpression()), !dbg !1504
  store i64 0, ptr %tmp, align 8, !dbg !1504
  %call = call i64 @random_get_entropy() #18, !dbg !1505
  store i64 %call, ptr %tmp, align 8, !dbg !1506
  %0 = load i64, ptr %tmp, align 8, !dbg !1507
  %cmp = icmp eq i64 %0, 0, !dbg !1509
  br i1 %cmp, label %if.then, label %if.end, !dbg !1510

if.then:                                          ; preds = %entry
  %call1 = call i64 @ktime_get_ns() #18, !dbg !1511
  store i64 %call1, ptr %tmp, align 8, !dbg !1512
  br label %if.end, !dbg !1513

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %tmp, align 8, !dbg !1514
  %2 = load ptr, ptr %out.addr, align 8, !dbg !1515
  store i64 %1, ptr %2, align 8, !dbg !1516
  %3 = load i64, ptr %tmp, align 8, !dbg !1517
  %conv = trunc i64 %3 to i32, !dbg !1517
  %call2 = call i32 @jent_raw_hires_entropy_store(i32 noundef %conv) #18, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #19, !dbg !1519
  ret void, !dbg !1519
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @random_get_entropy() #5 align 16 !dbg !1520 {
entry:
  %call = call i64 @rdtsc() #18, !dbg !1524
  ret i64 %call, !dbg !1525
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_get_ns() #5 align 16 !dbg !1526 {
entry:
  %call = call i64 @ktime_get() #18, !dbg !1530
  %call1 = call i64 @ktime_to_ns(i64 noundef %call) #18, !dbg !1531
  ret i64 %call1, !dbg !1532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jent_raw_hires_entropy_store(i32 noundef %value) #5 align 16 !dbg !1533 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1537, metadata !DIExpression()), !dbg !1538
  ret i32 0, !dbg !1539
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jent_hash_time(ptr noundef %hash_state, i64 noundef %time, ptr noundef %addtl, i32 noundef %addtl_len, i64 noundef %hash_loop_cnt, i32 noundef %stuck) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %hash_state.addr = alloca ptr, align 8
  %time.addr = alloca i64, align 8
  %addtl.addr = alloca ptr, align 8
  %addtl_len.addr = alloca i32, align 4
  %hash_loop_cnt.addr = alloca i64, align 8
  %stuck.addr = alloca i32, align 4
  %hash_state_desc = alloca ptr, align 8
  %__desc_desc = alloca [376 x i8], align 8
  %desc = alloca ptr, align 8
  %intermediary = alloca [32 x i8], align 16
  %j = alloca i64, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash_state, ptr %hash_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash_state.addr, metadata !1435, metadata !DIExpression()), !dbg !1540
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !1436, metadata !DIExpression()), !dbg !1541
  store ptr %addtl, ptr %addtl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addtl.addr, metadata !1437, metadata !DIExpression()), !dbg !1542
  store i32 %addtl_len, ptr %addtl_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addtl_len.addr, metadata !1438, metadata !DIExpression()), !dbg !1543
  store i64 %hash_loop_cnt, ptr %hash_loop_cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash_loop_cnt.addr, metadata !1439, metadata !DIExpression()), !dbg !1544
  store i32 %stuck, ptr %stuck.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %stuck.addr, metadata !1440, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_state_desc) #19, !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %hash_state_desc, metadata !1441, metadata !DIExpression()), !dbg !1547
  %0 = load ptr, ptr %hash_state.addr, align 8, !dbg !1548
  store ptr %0, ptr %hash_state_desc, align 8, !dbg !1547
  call void @llvm.lifetime.start.p0(i64 376, ptr %__desc_desc) #19, !dbg !1549
  call void @llvm.dbg.declare(metadata ptr %__desc_desc, metadata !1442, metadata !DIExpression()), !dbg !1549
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #19, !dbg !1549
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !1446, metadata !DIExpression()), !dbg !1549
  %arraydecay = getelementptr inbounds [376 x i8], ptr %__desc_desc, i64 0, i64 0, !dbg !1549
  store ptr %arraydecay, ptr %desc, align 8, !dbg !1549
  call void @llvm.lifetime.start.p0(i64 32, ptr %intermediary) #19, !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %intermediary, metadata !1447, metadata !DIExpression()), !dbg !1551
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #19, !dbg !1552
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1451, metadata !DIExpression()), !dbg !1553
  store i64 0, ptr %j, align 8, !dbg !1553
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !1554
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1452, metadata !DIExpression()), !dbg !1555
  %1 = load ptr, ptr %hash_state_desc, align 8, !dbg !1556
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %1, i32 0, i32 0, !dbg !1557
  %2 = load ptr, ptr %tfm, align 8, !dbg !1557
  %3 = load ptr, ptr %desc, align 8, !dbg !1558
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %3, i32 0, i32 0, !dbg !1559
  store ptr %2, ptr %tfm1, align 8, !dbg !1560
  %4 = load ptr, ptr %desc, align 8, !dbg !1561
  %tfm2 = getelementptr inbounds %struct.shash_desc, ptr %4, i32 0, i32 0, !dbg !1563
  %5 = load ptr, ptr %tfm2, align 8, !dbg !1563
  %call = call i32 @crypto_shash_digestsize(ptr noundef %5) #18, !dbg !1564
  %conv = zext i32 %call to i64, !dbg !1564
  %cmp = icmp ne i64 32, %conv, !dbg !1565
  br i1 %cmp, label %if.then, label %if.end7, !dbg !1566

if.then:                                          ; preds = %entry
  %call4 = call i32 @___ratelimit(ptr noundef @jent_hash_time._rs, ptr noundef @__func__.jent_hash_time) #18, !dbg !1567
  %tobool = icmp ne i32 %call4, 0, !dbg !1567
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1571

if.then5:                                         ; preds = %if.then
  br label %do.body, !dbg !1572

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !1574

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1574

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #20, !dbg !1572
  store i32 %call6, ptr %tmp, align 4, !dbg !1574
  %6 = load i32, ptr %tmp, align 4, !dbg !1572
  br label %if.end, !dbg !1567

if.end:                                           ; preds = %do.end, %if.then
  store i32 -22, ptr %retval, align 4, !dbg !1576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1576

if.end7:                                          ; preds = %entry
  store i64 0, ptr %j, align 8, !dbg !1577
  br label %for.cond, !dbg !1579

for.cond:                                         ; preds = %for.inc, %if.end7
  %7 = load i64, ptr %j, align 8, !dbg !1580
  %8 = load i64, ptr %hash_loop_cnt.addr, align 8, !dbg !1582
  %cmp8 = icmp ult i64 %7, %8, !dbg !1583
  br i1 %cmp8, label %for.body, label %for.end, !dbg !1584

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %desc, align 8, !dbg !1585
  %call10 = call i32 @crypto_shash_init(ptr noundef %9) #18, !dbg !1587
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1587
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !1587

cond.true:                                        ; preds = %for.body
  br label %cond.end19, !dbg !1587

cond.false:                                       ; preds = %for.body
  %10 = load ptr, ptr %desc, align 8, !dbg !1588
  %arraydecay12 = getelementptr inbounds [32 x i8], ptr %intermediary, i64 0, i64 0, !dbg !1589
  %call13 = call i32 @crypto_shash_update(ptr noundef %10, ptr noundef %arraydecay12, i32 noundef 32) #18, !dbg !1590
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1590
  br i1 %tobool14, label %cond.true15, label %cond.false16, !dbg !1590

cond.true15:                                      ; preds = %cond.false
  br label %cond.end, !dbg !1590

cond.false16:                                     ; preds = %cond.false
  %11 = load ptr, ptr %desc, align 8, !dbg !1591
  %12 = load ptr, ptr %addtl.addr, align 8, !dbg !1592
  %13 = load i32, ptr %addtl_len.addr, align 4, !dbg !1593
  %arraydecay17 = getelementptr inbounds [32 x i8], ptr %intermediary, i64 0, i64 0, !dbg !1594
  %call18 = call i32 @crypto_shash_finup(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %arraydecay17) #18, !dbg !1595
  br label %cond.end, !dbg !1590

cond.end:                                         ; preds = %cond.false16, %cond.true15
  %cond = phi i32 [ %call13, %cond.true15 ], [ %call18, %cond.false16 ], !dbg !1590
  br label %cond.end19, !dbg !1587

cond.end19:                                       ; preds = %cond.end, %cond.true
  %cond20 = phi i32 [ %call10, %cond.true ], [ %cond, %cond.end ], !dbg !1587
  store i32 %cond20, ptr %ret, align 4, !dbg !1596
  %14 = load i32, ptr %ret, align 4, !dbg !1597
  %tobool21 = icmp ne i32 %14, 0, !dbg !1597
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1599

if.then22:                                        ; preds = %cond.end19
  br label %err, !dbg !1600

if.end23:                                         ; preds = %cond.end19
  br label %for.inc, !dbg !1601

for.inc:                                          ; preds = %if.end23
  %15 = load i64, ptr %j, align 8, !dbg !1602
  %inc = add i64 %15, 1, !dbg !1602
  store i64 %inc, ptr %j, align 8, !dbg !1602
  br label %for.cond, !dbg !1603, !llvm.loop !1604

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %desc, align 8, !dbg !1608
  %arraydecay24 = getelementptr inbounds [32 x i8], ptr %intermediary, i64 0, i64 0, !dbg !1609
  %call25 = call i32 @crypto_shash_update(ptr noundef %16, ptr noundef %arraydecay24, i32 noundef 32) #18, !dbg !1610
  store i32 %call25, ptr %ret, align 4, !dbg !1611
  %17 = load i32, ptr %ret, align 4, !dbg !1612
  %tobool26 = icmp ne i32 %17, 0, !dbg !1612
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1614

if.then27:                                        ; preds = %for.end
  br label %err, !dbg !1615

if.end28:                                         ; preds = %for.end
  %18 = load i32, ptr %stuck.addr, align 4, !dbg !1616
  %tobool29 = icmp ne i32 %18, 0, !dbg !1616
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !1618

if.then30:                                        ; preds = %if.end28
  %19 = load ptr, ptr %hash_state_desc, align 8, !dbg !1619
  %call31 = call i32 @crypto_shash_update(ptr noundef %19, ptr noundef %time.addr, i32 noundef 8) #18, !dbg !1621
  store i32 %call31, ptr %ret, align 4, !dbg !1622
  br label %if.end32, !dbg !1623

if.end32:                                         ; preds = %if.then30, %if.end28
  br label %err, !dbg !1616

err:                                              ; preds = %if.end32, %if.then27, %if.then22
  call void @llvm.dbg.label(metadata !1453), !dbg !1624
  %20 = load ptr, ptr %desc, align 8, !dbg !1625
  call void @shash_desc_zero(ptr noundef %20) #18, !dbg !1626
  %arraydecay33 = getelementptr inbounds [32 x i8], ptr %intermediary, i64 0, i64 0, !dbg !1627
  call void @memzero_explicit(ptr noundef %arraydecay33, i64 noundef 32) #18, !dbg !1628
  %21 = load i32, ptr %ret, align 4, !dbg !1629
  store i32 %21, ptr %retval, align 4, !dbg !1630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1630

cleanup:                                          ; preds = %err, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #19, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 32, ptr %intermediary) #19, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #19, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 376, ptr %__desc_desc) #19, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_state_desc) #19, !dbg !1631
  %22 = load i32, ptr %retval, align 4, !dbg !1631
  ret i32 %22, !dbg !1631
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_digestsize(ptr noundef %tfm) #5 align 16 !dbg !1632 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1636, metadata !DIExpression()), !dbg !1637
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1638
  %call = call ptr @crypto_shash_alg(ptr noundef %0) #18, !dbg !1639
  %1 = getelementptr inbounds %struct.shash_alg, ptr %call, i32 0, i32 12, !dbg !1640
  %digestsize = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 0, !dbg !1640
  %2 = load i32, ptr %digestsize, align 8, !dbg !1640
  ret i32 %2, !dbg !1641
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1642 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1646 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_init(ptr noundef %desc) #5 align 16 !dbg !1650 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #19, !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !1653, metadata !DIExpression()), !dbg !1656
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !1657
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !1658
  %1 = load ptr, ptr %tfm1, align 8, !dbg !1658
  store ptr %1, ptr %tfm, align 8, !dbg !1656
  %2 = load ptr, ptr %tfm, align 8, !dbg !1659
  %call = call i32 @crypto_shash_get_flags(ptr noundef %2) #18, !dbg !1661
  %and = and i32 %call, 1, !dbg !1662
  %tobool = icmp ne i32 %and, 0, !dbg !1662
  br i1 %tobool, label %if.then, label %if.end, !dbg !1663

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !1664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1664

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !1665
  %call2 = call ptr @crypto_shash_alg(ptr noundef %3) #18, !dbg !1666
  %init = getelementptr inbounds %struct.shash_alg, ptr %call2, i32 0, i32 0, !dbg !1667
  %4 = load ptr, ptr %init, align 8, !dbg !1667
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !1668
  %call3 = call i32 %4(ptr noundef %5) #18, !dbg !1666
  store i32 %call3, ptr %retval, align 4, !dbg !1669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1669

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #19, !dbg !1670
  %6 = load i32, ptr %retval, align 4, !dbg !1670
  ret i32 %6, !dbg !1670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1671 dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1672 dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @shash_desc_zero(ptr noundef %desc) #5 align 16 !dbg !1673 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1677, metadata !DIExpression()), !dbg !1678
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !1679
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !1680
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %1, i32 0, i32 0, !dbg !1681
  %2 = load ptr, ptr %tfm, align 8, !dbg !1681
  %call = call i32 @crypto_shash_descsize(ptr noundef %2) #18, !dbg !1682
  %conv = zext i32 %call to i64, !dbg !1682
  %add = add i64 8, %conv, !dbg !1683
  call void @memzero_explicit(ptr noundef %0, i64 noundef %add) #18, !dbg !1684
  ret void, !dbg !1685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #5 align 16 !dbg !1686 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1691, metadata !DIExpression()), !dbg !1693
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1692, metadata !DIExpression()), !dbg !1694
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1695
  %1 = load i64, ptr %count.addr, align 8, !dbg !1696
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !1697
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1698
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #19, !dbg !1698, !srcloc !1699
  ret void, !dbg !1700
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jent_read_random_block(ptr noundef %hash_state, ptr noundef %dst, i32 noundef %dst_len) #0 align 16 !dbg !1701 {
entry:
  %hash_state.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dst_len.addr = alloca i32, align 4
  %hash_state_desc = alloca ptr, align 8
  %jent_block = alloca [32 x i8], align 16
  %ret = alloca i32, align 4
  store ptr %hash_state, ptr %hash_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash_state.addr, metadata !1705, metadata !DIExpression()), !dbg !1711
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1706, metadata !DIExpression()), !dbg !1712
  store i32 %dst_len, ptr %dst_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dst_len.addr, metadata !1707, metadata !DIExpression()), !dbg !1713
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_state_desc) #19, !dbg !1714
  call void @llvm.dbg.declare(metadata ptr %hash_state_desc, metadata !1708, metadata !DIExpression()), !dbg !1715
  %0 = load ptr, ptr %hash_state.addr, align 8, !dbg !1716
  store ptr %0, ptr %hash_state_desc, align 8, !dbg !1715
  call void @llvm.lifetime.start.p0(i64 32, ptr %jent_block) #19, !dbg !1717
  call void @llvm.dbg.declare(metadata ptr %jent_block, metadata !1709, metadata !DIExpression()), !dbg !1718
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1710, metadata !DIExpression()), !dbg !1720
  %1 = load ptr, ptr %hash_state_desc, align 8, !dbg !1721
  %arraydecay = getelementptr inbounds [32 x i8], ptr %jent_block, i64 0, i64 0, !dbg !1722
  %call = call i32 @crypto_shash_final(ptr noundef %1, ptr noundef %arraydecay) #18, !dbg !1723
  %tobool = icmp ne i32 %call, 0, !dbg !1723
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1723

cond.true:                                        ; preds = %entry
  br label %cond.end7, !dbg !1723

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %hash_state_desc, align 8, !dbg !1724
  %call1 = call i32 @crypto_shash_init(ptr noundef %2) #18, !dbg !1725
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1725
  br i1 %tobool2, label %cond.true3, label %cond.false4, !dbg !1725

cond.true3:                                       ; preds = %cond.false
  br label %cond.end, !dbg !1725

cond.false4:                                      ; preds = %cond.false
  %3 = load ptr, ptr %hash_state_desc, align 8, !dbg !1726
  %arraydecay5 = getelementptr inbounds [32 x i8], ptr %jent_block, i64 0, i64 0, !dbg !1727
  %call6 = call i32 @crypto_shash_update(ptr noundef %3, ptr noundef %arraydecay5, i32 noundef 32) #18, !dbg !1728
  br label %cond.end, !dbg !1725

cond.end:                                         ; preds = %cond.false4, %cond.true3
  %cond = phi i32 [ %call1, %cond.true3 ], [ %call6, %cond.false4 ], !dbg !1725
  br label %cond.end7, !dbg !1723

cond.end7:                                        ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ %call, %cond.true ], [ %cond, %cond.end ], !dbg !1723
  store i32 %cond8, ptr %ret, align 4, !dbg !1720
  %4 = load i32, ptr %ret, align 4, !dbg !1729
  %tobool9 = icmp ne i32 %4, 0, !dbg !1729
  br i1 %tobool9, label %if.end, label %land.lhs.true, !dbg !1731

land.lhs.true:                                    ; preds = %cond.end7
  %5 = load i32, ptr %dst_len.addr, align 4, !dbg !1732
  %tobool10 = icmp ne i32 %5, 0, !dbg !1732
  br i1 %tobool10, label %if.then, label %if.end, !dbg !1733

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1734
  %arraydecay11 = getelementptr inbounds [32 x i8], ptr %jent_block, i64 0, i64 0, !dbg !1735
  %7 = load i32, ptr %dst_len.addr, align 4, !dbg !1736
  %conv = zext i32 %7 to i64, !dbg !1736
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 16 %arraydecay11, i64 %conv, i1 false), !dbg !1735
  br label %if.end, !dbg !1735

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end7
  %arraydecay12 = getelementptr inbounds [32 x i8], ptr %jent_block, i64 0, i64 0, !dbg !1737
  call void @memzero_explicit(ptr noundef %arraydecay12, i64 noundef 32) #18, !dbg !1738
  %8 = load i32, ptr %ret, align 4, !dbg !1739
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 32, ptr %jent_block) #19, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_state_desc) #19, !dbg !1740
  ret i32 %8, !dbg !1741
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1742 dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @jent_mod_exit() #8 section ".exit.text" align 16 !dbg !1743 {
entry:
  call void @jent_testing_exit() #18, !dbg !1744
  call void @crypto_unregister_rng(ptr noundef @jent_alg) #18, !dbg !1745
  ret void, !dbg !1746
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jent_testing_exit() #5 align 16 !dbg !1747 {
entry:
  ret void, !dbg !1748
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1749 dso_local void @crypto_unregister_rng(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_jitterentropy_rng__197_358_jent_mod_init6() #8 section ".init.text" align 16 !dbg !1754 {
entry:
  %call = call i32 @jent_mod_init() #20, !dbg !1755
  ret i32 %call, !dbg !1755
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @jent_mod_init() #8 section ".init.text" align 16 !dbg !1756 {
entry:
  %retval = alloca i32, align 4
  %__desc_desc = alloca [376 x i8], align 8
  %desc = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 376, ptr %__desc_desc) #19, !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %__desc_desc, metadata !1758, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #19, !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !1759, metadata !DIExpression()), !dbg !1762
  %arraydecay = getelementptr inbounds [376 x i8], ptr %__desc_desc, i64 0, i64 0, !dbg !1762
  store ptr %arraydecay, ptr %desc, align 8, !dbg !1762
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #19, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !1760, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1761, metadata !DIExpression()), !dbg !1766
  store i32 0, ptr %ret, align 4, !dbg !1766
  call void @jent_testing_init() #18, !dbg !1767
  %call = call ptr @crypto_alloc_shash(ptr noundef @.str.4, i32 noundef 0, i32 noundef 0) #18, !dbg !1768
  store ptr %call, ptr %tfm, align 8, !dbg !1769
  %0 = load ptr, ptr %tfm, align 8, !dbg !1770
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #18, !dbg !1772
  br i1 %call1, label %if.then, label %if.end, !dbg !1773

if.then:                                          ; preds = %entry
  call void @jent_testing_exit() #18, !dbg !1774
  %1 = load ptr, ptr %tfm, align 8, !dbg !1776
  %call2 = call i64 @PTR_ERR(ptr noundef %1) #18, !dbg !1777
  %conv = trunc i64 %call2 to i32, !dbg !1777
  store i32 %conv, ptr %retval, align 4, !dbg !1778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1778

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tfm, align 8, !dbg !1779
  %3 = load ptr, ptr %desc, align 8, !dbg !1780
  %tfm3 = getelementptr inbounds %struct.shash_desc, ptr %3, i32 0, i32 0, !dbg !1781
  store ptr %2, ptr %tfm3, align 8, !dbg !1782
  %4 = load ptr, ptr %desc, align 8, !dbg !1783
  %call4 = call i32 @crypto_shash_init(ptr noundef %4) #18, !dbg !1784
  %5 = load ptr, ptr %desc, align 8, !dbg !1785
  %call5 = call i32 @jent_entropy_init(ptr noundef %5) #18, !dbg !1786
  store i32 %call5, ptr %ret, align 4, !dbg !1787
  %6 = load ptr, ptr %desc, align 8, !dbg !1788
  call void @shash_desc_zero(ptr noundef %6) #18, !dbg !1789
  %7 = load ptr, ptr %tfm, align 8, !dbg !1790
  call void @crypto_free_shash(ptr noundef %7) #18, !dbg !1791
  %8 = load i32, ptr %ret, align 4, !dbg !1792
  %tobool = icmp ne i32 %8, 0, !dbg !1792
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !1794

if.then6:                                         ; preds = %if.end
  call void @jent_testing_exit() #18, !dbg !1795
  br label %do.body, !dbg !1797

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !1799

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1799

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %ret, align 4, !dbg !1797
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %9) #20, !dbg !1797
  store i32 %call7, ptr %tmp, align 4, !dbg !1799
  %10 = load i32, ptr %tmp, align 4, !dbg !1797
  store i32 -14, ptr %retval, align 4, !dbg !1801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1801

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @crypto_register_rng(ptr noundef @jent_alg) #18, !dbg !1802
  store i32 %call9, ptr %retval, align 4, !dbg !1803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1803

cleanup:                                          ; preds = %if.end8, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #19, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #19, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 376, ptr %__desc_desc) #19, !dbg !1804
  %11 = load i32, ptr %retval, align 4, !dbg !1804
  ret i32 %11, !dbg !1804
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !1805 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1807, metadata !DIExpression()), !dbg !1812
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1808, metadata !DIExpression()), !dbg !1813
  %0 = load i64, ptr %size.addr, align 8, !dbg !1814
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1815
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1816

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1817
  %tobool = icmp ne i64 %2, 0, !dbg !1817
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1818

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !1819
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1809, metadata !DIExpression()), !dbg !1820
  %3 = load i64, ptr %size.addr, align 8, !dbg !1821
  %cmp = icmp ugt i64 %3, 8192, !dbg !1823
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1824

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1825
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1826
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1827
  store ptr %call, ptr %retval, align 8, !dbg !1828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1828

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1829
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !1829
  store i32 %call2, ptr %index, align 4, !dbg !1830
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1831
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1832
  %9 = ptrtoint ptr %8 to i64, !dbg !1832
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !1833
  %idxprom = zext i32 %call3 to i64, !dbg !1834
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1834
  %10 = load i32, ptr %index, align 4, !dbg !1835
  %idxprom4 = zext i32 %10 to i64, !dbg !1834
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1834
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1834
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1836
  %13 = load i64, ptr %size.addr, align 8, !dbg !1837
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !1838
  store ptr %call6, ptr %retval, align 8, !dbg !1839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1839

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !1840
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1841
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1842
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !1843
  store ptr %call8, ptr %retval, align 8, !dbg !1844
  br label %return, !dbg !1844

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1845
  ret ptr %16, !dbg !1845
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1846 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !1847 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1851, metadata !DIExpression()), !dbg !1853
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1852, metadata !DIExpression()), !dbg !1854
  %0 = load i64, ptr %size.addr, align 8, !dbg !1855
  %tobool = icmp ne i64 %0, 0, !dbg !1855
  br i1 %tobool, label %if.end, label %if.then, !dbg !1857

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1858
  br label %return, !dbg !1858

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1859
  %cmp = icmp ule i64 %1, 8, !dbg !1861
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1862

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1863
  br label %return, !dbg !1863

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1864
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1866
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1867

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1868
  %cmp4 = icmp ule i64 %3, 96, !dbg !1869
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1870

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1871
  br label %return, !dbg !1871

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1872
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1874
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1875

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1876
  %cmp9 = icmp ule i64 %5, 192, !dbg !1877
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1878

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1879
  br label %return, !dbg !1879

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1880
  %cmp12 = icmp ule i64 %6, 8, !dbg !1882
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1883

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1884
  br label %return, !dbg !1884

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1885
  %cmp15 = icmp ule i64 %7, 16, !dbg !1887
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1888

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1889
  br label %return, !dbg !1889

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1890
  %cmp18 = icmp ule i64 %8, 32, !dbg !1892
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1893

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1894
  br label %return, !dbg !1894

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1895
  %cmp21 = icmp ule i64 %9, 64, !dbg !1897
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1898

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1899
  br label %return, !dbg !1899

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1900
  %cmp24 = icmp ule i64 %10, 128, !dbg !1902
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1903

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1904
  br label %return, !dbg !1904

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1905
  %cmp27 = icmp ule i64 %11, 256, !dbg !1907
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1908

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1909
  br label %return, !dbg !1909

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1910
  %cmp30 = icmp ule i64 %12, 512, !dbg !1912
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1913

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1914
  br label %return, !dbg !1914

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1915
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1917
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1918

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1919
  br label %return, !dbg !1919

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1920
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1922
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1923

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1924
  br label %return, !dbg !1924

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1925
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1927
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1928

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1929
  br label %return, !dbg !1929

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1930
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1932
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1933

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1934
  br label %return, !dbg !1934

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1935
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1937
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1938

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1939
  br label %return, !dbg !1939

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1940
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1942
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1943

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1944
  br label %return, !dbg !1944

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1945
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1947
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1948

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1949
  br label %return, !dbg !1949

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1950
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1952
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1953

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1954
  br label %return, !dbg !1954

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1955
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1957
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1958

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1959
  br label %return, !dbg !1959

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1960
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1962
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1963

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1964
  br label %return, !dbg !1964

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1965
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1967
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1968

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1969
  br label %return, !dbg !1969

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1970
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1972
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1973

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1974
  br label %return, !dbg !1974

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1975, !range !1977, !noundef !385
  %tobool69 = trunc i8 %25 to i1, !dbg !1975
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1978

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1979

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #22, !dbg !1980, !srcloc !1983
  unreachable, !dbg !1980

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1984

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1985

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1986

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1988

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1986

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #19, !dbg !1990, !srcloc !1992
  br label %do.end75, !dbg !1990

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1986

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1993
  br label %return, !dbg !1993

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1994
  ret i32 %26, !dbg !1994
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1995 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !2001 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2005, metadata !DIExpression()), !dbg !2007
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2006, metadata !DIExpression()), !dbg !2008
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2009
  %and = and i32 %0, 17, !dbg !2009
  %cmp = icmp eq i32 %and, 0, !dbg !2009
  %lnot = xor i1 %cmp, true, !dbg !2009
  %lnot1 = xor i1 %lnot, true, !dbg !2009
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2009
  %conv = sext i32 %lnot.ext to i64, !dbg !2009
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2009
  %tobool = icmp ne i64 %expval, 0, !dbg !2009
  br i1 %tobool, label %if.then, label %if.end, !dbg !2011

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2012
  br label %return, !dbg !2012

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2013
  %and2 = and i32 %1, 1, !dbg !2015
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2015
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2016

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2017
  br label %return, !dbg !2017

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2018
  br label %return, !dbg !2018

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2020
  ret i32 %2, !dbg !2020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2021 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2022 dso_local void @__compiletime_assert_117() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc() #12 align 16 !dbg !2023 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #19, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2028, metadata !DIExpression()), !dbg !2030
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #19, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2029, metadata !DIExpression()), !dbg !2030
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !2031, !srcloc !2032
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !2031
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !2031
  store i64 %asmresult, ptr %low, align 8, !dbg !2031
  store i64 %asmresult1, ptr %high, align 8, !dbg !2031
  %1 = load i64, ptr %low, align 8, !dbg !2033
  %2 = load i64, ptr %high, align 8, !dbg !2033
  %shl = shl i64 %2, 32, !dbg !2033
  %or = or i64 %1, %shl, !dbg !2033
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #19, !dbg !2034
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #19, !dbg !2034
  ret i64 %or, !dbg !2035
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ns(i64 noundef %kt) #5 align 16 !dbg !2036 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2043, metadata !DIExpression()), !dbg !2044
  %0 = load i64, ptr %kt.addr, align 8, !dbg !2045
  ret i64 %0, !dbg !2046
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2047 dso_local i64 @ktime_get() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_alg(ptr noundef %tfm) #5 align 16 !dbg !2050 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2054, metadata !DIExpression()), !dbg !2055
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2056
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #18, !dbg !2057
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %call, i32 0, i32 4, !dbg !2058
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !2058
  %call1 = call ptr @__crypto_shash_alg(ptr noundef %1) #18, !dbg !2059
  ret ptr %call1, !dbg !2060
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_shash_alg(ptr noundef %alg) #5 align 16 !dbg !2061 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !2065, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2066, metadata !DIExpression()), !dbg !2069
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !2069
  store ptr %0, ptr %__mptr, align 8, !dbg !2069
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2069
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !2069
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !2070
  %2 = load ptr, ptr %tmp, align 8, !dbg !2069
  ret ptr %2, !dbg !2071
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_tfm(ptr noundef %tfm) #5 align 16 !dbg !2072 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2076, metadata !DIExpression()), !dbg !2077
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2078
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !2079
  ret ptr %base, !dbg !2080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_get_flags(ptr noundef %tfm) #5 align 16 !dbg !2081 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2085, metadata !DIExpression()), !dbg !2086
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2087
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #18, !dbg !2088
  %call1 = call i32 @crypto_tfm_get_flags(ptr noundef %call) #18, !dbg !2089
  ret i32 %call1, !dbg !2090
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_get_flags(ptr noundef %tfm) #5 align 16 !dbg !2091 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2095, metadata !DIExpression()), !dbg !2096
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2097
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 1, !dbg !2098
  %1 = load i32, ptr %crt_flags, align 4, !dbg !2098
  ret i32 %1, !dbg !2099
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_descsize(ptr noundef %tfm) #5 align 16 !dbg !2100 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2102, metadata !DIExpression()), !dbg !2103
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2104
  %descsize = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 0, !dbg !2105
  %1 = load i32, ptr %descsize, align 8, !dbg !2105
  ret i32 %1, !dbg !2106
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jent_kcapi_random(ptr noundef %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %rdata, i32 noundef %dlen) #0 align 16 !dbg !1382 {
entry:
  %tfm.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %slen.addr = alloca i32, align 4
  %rdata.addr = alloca ptr, align 8
  %dlen.addr = alloca i32, align 4
  %rng = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1384, metadata !DIExpression()), !dbg !2107
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1385, metadata !DIExpression()), !dbg !2108
  store i32 %slen, ptr %slen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slen.addr, metadata !1386, metadata !DIExpression()), !dbg !2109
  store ptr %rdata, ptr %rdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rdata.addr, metadata !1387, metadata !DIExpression()), !dbg !2110
  store i32 %dlen, ptr %dlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dlen.addr, metadata !1388, metadata !DIExpression()), !dbg !2111
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #19, !dbg !2112
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !1389, metadata !DIExpression()), !dbg !2113
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2114
  %call = call ptr @crypto_rng_ctx(ptr noundef %0) #18, !dbg !2115
  store ptr %call, ptr %rng, align 8, !dbg !2113
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1400, metadata !DIExpression()), !dbg !2117
  store i32 0, ptr %ret, align 4, !dbg !2117
  %1 = load ptr, ptr %rng, align 8, !dbg !2118
  %jent_lock = getelementptr inbounds %struct.jitterentropy, ptr %1, i32 0, i32 0, !dbg !2119
  call void @spin_lock(ptr noundef %jent_lock) #18, !dbg !2120
  %2 = load ptr, ptr %rng, align 8, !dbg !2121
  %entropy_collector = getelementptr inbounds %struct.jitterentropy, ptr %2, i32 0, i32 1, !dbg !2122
  %3 = load ptr, ptr %entropy_collector, align 8, !dbg !2122
  %4 = load ptr, ptr %rdata.addr, align 8, !dbg !2123
  %5 = load i32, ptr %dlen.addr, align 4, !dbg !2124
  %call1 = call i32 @jent_read_entropy(ptr noundef %3, ptr noundef %4, i32 noundef %5) #18, !dbg !2125
  store i32 %call1, ptr %ret, align 4, !dbg !2126
  %6 = load i32, ptr %ret, align 4, !dbg !2127
  %cmp = icmp eq i32 %6, -3, !dbg !2129
  br i1 %cmp, label %if.then, label %if.else, !dbg !2130

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2131

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2134

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2134

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #20, !dbg !2131
  store i32 %call2, ptr %tmp, align 4, !dbg !2134
  %7 = load i32, ptr %tmp, align 4, !dbg !2131
  store i32 -14, ptr %ret, align 4, !dbg !2136
  br label %if.end17, !dbg !2137

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %ret, align 4, !dbg !2138
  %cmp3 = icmp eq i32 %8, -2, !dbg !2140
  br i1 %cmp3, label %if.then4, label %if.else12, !dbg !2141

if.then4:                                         ; preds = %if.else
  %call5 = call i32 @___ratelimit(ptr noundef @jent_kcapi_random._rs, ptr noundef @__func__.jent_kcapi_random) #18, !dbg !2142
  %tobool = icmp ne i32 %call5, 0, !dbg !2142
  br i1 %tobool, label %if.then6, label %if.end, !dbg !2146

if.then6:                                         ; preds = %if.then4
  br label %do.body7, !dbg !2147

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !2149

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2149

do.end9:                                          ; preds = %do.cond8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #20, !dbg !2147
  store i32 %call11, ptr %tmp10, align 4, !dbg !2149
  %9 = load i32, ptr %tmp10, align 4, !dbg !2147
  br label %if.end, !dbg !2142

if.end:                                           ; preds = %do.end9, %if.then4
  store i32 -11, ptr %ret, align 4, !dbg !2151
  br label %if.end16, !dbg !2152

if.else12:                                        ; preds = %if.else
  %10 = load i32, ptr %ret, align 4, !dbg !2153
  %cmp13 = icmp eq i32 %10, -1, !dbg !2155
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2156

if.then14:                                        ; preds = %if.else12
  store i32 -22, ptr %ret, align 4, !dbg !2157
  br label %if.end15, !dbg !2159

if.end15:                                         ; preds = %if.then14, %if.else12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %do.end
  %11 = load ptr, ptr %rng, align 8, !dbg !2160
  %jent_lock18 = getelementptr inbounds %struct.jitterentropy, ptr %11, i32 0, i32 0, !dbg !2161
  call void @spin_unlock(ptr noundef %jent_lock18) #18, !dbg !2162
  %12 = load i32, ptr %ret, align 4, !dbg !2163
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !2164
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #19, !dbg !2164
  ret i32 %12, !dbg !2165
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jent_kcapi_reset(ptr noundef %tfm, ptr noundef %seed, i32 noundef %slen) #0 align 16 !dbg !2166 {
entry:
  %tfm.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %slen.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2168, metadata !DIExpression()), !dbg !2171
  store ptr %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !2169, metadata !DIExpression()), !dbg !2172
  store i32 %slen, ptr %slen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slen.addr, metadata !2170, metadata !DIExpression()), !dbg !2173
  ret i32 0, !dbg !2174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jent_kcapi_init(ptr noundef %tfm) #0 align 16 !dbg !2175 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %rng = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %sdesc = alloca ptr, align 8
  %size = alloca i32, align 4
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral30 = alloca %struct.spinlock, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2177, metadata !DIExpression()), !dbg !2184
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #19, !dbg !2185
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !2178, metadata !DIExpression()), !dbg !2186
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2187
  %call = call ptr @crypto_tfm_ctx(ptr noundef %0) #18, !dbg !2188
  store ptr %call, ptr %rng, align 8, !dbg !2186
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #19, !dbg !2189
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !2179, metadata !DIExpression()), !dbg !2190
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdesc) #19, !dbg !2191
  call void @llvm.dbg.declare(metadata ptr %sdesc, metadata !2180, metadata !DIExpression()), !dbg !2192
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #19, !dbg !2193
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2181, metadata !DIExpression()), !dbg !2194
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !2193
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2182, metadata !DIExpression()), !dbg !2195
  store i32 0, ptr %ret, align 4, !dbg !2195
  br label %do.body, !dbg !2196

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %rng, align 8, !dbg !2197
  %jent_lock = getelementptr inbounds %struct.jitterentropy, ptr %1, i32 0, i32 0, !dbg !2197
  %call1 = call ptr @spinlock_check(ptr noundef %jent_lock) #18, !dbg !2197
  %2 = load ptr, ptr %rng, align 8, !dbg !2197
  %jent_lock2 = getelementptr inbounds %struct.jitterentropy, ptr %2, i32 0, i32 0, !dbg !2197
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2197
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !2197
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2197
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !2197
  store i32 0, ptr %counter, align 4, !dbg !2197
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %jent_lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2197
  br label %do.cond, !dbg !2197

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2197

do.end:                                           ; preds = %do.cond
  %call3 = call ptr @crypto_alloc_shash(ptr noundef @.str.4, i32 noundef 0, i32 noundef 0) #18, !dbg !2199
  store ptr %call3, ptr %hash, align 8, !dbg !2200
  %5 = load ptr, ptr %hash, align 8, !dbg !2201
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %5) #18, !dbg !2203
  br i1 %call4, label %if.then, label %if.end, !dbg !2204

if.then:                                          ; preds = %do.end
  br label %do.body5, !dbg !2205

do.body5:                                         ; preds = %if.then
  br label %do.cond6, !dbg !2208

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2208

do.end7:                                          ; preds = %do.cond6
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #20, !dbg !2205
  store i32 %call8, ptr %tmp, align 4, !dbg !2208
  %6 = load i32, ptr %tmp, align 4, !dbg !2205
  %7 = load ptr, ptr %hash, align 8, !dbg !2210
  %call9 = call i64 @PTR_ERR(ptr noundef %7) #18, !dbg !2211
  %conv = trunc i64 %call9 to i32, !dbg !2211
  store i32 %conv, ptr %retval, align 4, !dbg !2212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2212

if.end:                                           ; preds = %do.end
  %8 = load ptr, ptr %hash, align 8, !dbg !2213
  %9 = load ptr, ptr %rng, align 8, !dbg !2214
  %tfm10 = getelementptr inbounds %struct.jitterentropy, ptr %9, i32 0, i32 2, !dbg !2215
  store ptr %8, ptr %tfm10, align 8, !dbg !2216
  %10 = load ptr, ptr %hash, align 8, !dbg !2217
  %call11 = call i32 @crypto_shash_descsize(ptr noundef %10) #18, !dbg !2218
  %conv12 = zext i32 %call11 to i64, !dbg !2218
  %add = add i64 8, %conv12, !dbg !2219
  %conv13 = trunc i64 %add to i32, !dbg !2220
  store i32 %conv13, ptr %size, align 4, !dbg !2221
  %11 = load i32, ptr %size, align 4, !dbg !2222
  %conv14 = sext i32 %11 to i64, !dbg !2222
  %call15 = call noalias ptr @kmalloc(i64 noundef %conv14, i32 noundef 3264) #17, !dbg !2223
  store ptr %call15, ptr %sdesc, align 8, !dbg !2224
  %12 = load ptr, ptr %sdesc, align 8, !dbg !2225
  %tobool = icmp ne ptr %12, null, !dbg !2225
  br i1 %tobool, label %if.end17, label %if.then16, !dbg !2227

if.then16:                                        ; preds = %if.end
  store i32 -12, ptr %ret, align 4, !dbg !2228
  br label %err, !dbg !2230

if.end17:                                         ; preds = %if.end
  %13 = load ptr, ptr %hash, align 8, !dbg !2231
  %14 = load ptr, ptr %sdesc, align 8, !dbg !2232
  %tfm18 = getelementptr inbounds %struct.shash_desc, ptr %14, i32 0, i32 0, !dbg !2233
  store ptr %13, ptr %tfm18, align 8, !dbg !2234
  %15 = load ptr, ptr %sdesc, align 8, !dbg !2235
  %call19 = call i32 @crypto_shash_init(ptr noundef %15) #18, !dbg !2236
  %16 = load ptr, ptr %sdesc, align 8, !dbg !2237
  %17 = load ptr, ptr %rng, align 8, !dbg !2238
  %sdesc20 = getelementptr inbounds %struct.jitterentropy, ptr %17, i32 0, i32 3, !dbg !2239
  store ptr %16, ptr %sdesc20, align 8, !dbg !2240
  %18 = load ptr, ptr %sdesc, align 8, !dbg !2241
  %call21 = call ptr @jent_entropy_collector_alloc(i32 noundef 1, i32 noundef 0, ptr noundef %18) #18, !dbg !2242
  %19 = load ptr, ptr %rng, align 8, !dbg !2243
  %entropy_collector = getelementptr inbounds %struct.jitterentropy, ptr %19, i32 0, i32 1, !dbg !2244
  store ptr %call21, ptr %entropy_collector, align 8, !dbg !2245
  %20 = load ptr, ptr %rng, align 8, !dbg !2246
  %entropy_collector22 = getelementptr inbounds %struct.jitterentropy, ptr %20, i32 0, i32 1, !dbg !2248
  %21 = load ptr, ptr %entropy_collector22, align 8, !dbg !2248
  %tobool23 = icmp ne ptr %21, null, !dbg !2246
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !2249

if.then24:                                        ; preds = %if.end17
  store i32 -12, ptr %ret, align 4, !dbg !2250
  br label %err, !dbg !2252

if.end25:                                         ; preds = %if.end17
  br label %do.body26, !dbg !2253

do.body26:                                        ; preds = %if.end25
  %22 = load ptr, ptr %rng, align 8, !dbg !2254
  %jent_lock27 = getelementptr inbounds %struct.jitterentropy, ptr %22, i32 0, i32 0, !dbg !2254
  %call28 = call ptr @spinlock_check(ptr noundef %jent_lock27) #18, !dbg !2254
  %23 = load ptr, ptr %rng, align 8, !dbg !2254
  %jent_lock29 = getelementptr inbounds %struct.jitterentropy, ptr %23, i32 0, i32 0, !dbg !2254
  %24 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral30, i32 0, i32 0, !dbg !2254
  %raw_lock31 = getelementptr inbounds %struct.raw_spinlock, ptr %24, i32 0, i32 0, !dbg !2254
  %25 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock31, i32 0, i32 0, !dbg !2254
  %counter32 = getelementptr inbounds %struct.atomic_t, ptr %25, i32 0, i32 0, !dbg !2254
  store i32 0, ptr %counter32, align 4, !dbg !2254
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %jent_lock29, ptr align 4 %.compoundliteral30, i64 4, i1 false), !dbg !2254
  br label %do.cond33, !dbg !2254

do.cond33:                                        ; preds = %do.body26
  br label %do.end34, !dbg !2254

do.end34:                                         ; preds = %do.cond33
  store i32 0, ptr %retval, align 4, !dbg !2256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2256

err:                                              ; preds = %if.then24, %if.then16
  call void @llvm.dbg.label(metadata !2183), !dbg !2257
  %26 = load ptr, ptr %tfm.addr, align 8, !dbg !2258
  call void @jent_kcapi_cleanup(ptr noundef %26) #18, !dbg !2259
  %27 = load i32, ptr %ret, align 4, !dbg !2260
  store i32 %27, ptr %retval, align 4, !dbg !2261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2261

cleanup:                                          ; preds = %err, %do.end34, %do.end7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !2262
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #19, !dbg !2262
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdesc) #19, !dbg !2262
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #19, !dbg !2262
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #19, !dbg !2262
  %28 = load i32, ptr %retval, align 4, !dbg !2262
  ret i32 %28, !dbg !2262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jent_kcapi_cleanup(ptr noundef %tfm) #0 align 16 !dbg !2263 {
entry:
  %tfm.addr = alloca ptr, align 8
  %rng = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #19, !dbg !2268
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !2266, metadata !DIExpression()), !dbg !2269
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2270
  %call = call ptr @crypto_tfm_ctx(ptr noundef %0) #18, !dbg !2271
  store ptr %call, ptr %rng, align 8, !dbg !2269
  %1 = load ptr, ptr %rng, align 8, !dbg !2272
  %jent_lock = getelementptr inbounds %struct.jitterentropy, ptr %1, i32 0, i32 0, !dbg !2273
  call void @spin_lock(ptr noundef %jent_lock) #18, !dbg !2274
  %2 = load ptr, ptr %rng, align 8, !dbg !2275
  %sdesc = getelementptr inbounds %struct.jitterentropy, ptr %2, i32 0, i32 3, !dbg !2277
  %3 = load ptr, ptr %sdesc, align 8, !dbg !2277
  %tobool = icmp ne ptr %3, null, !dbg !2275
  br i1 %tobool, label %if.then, label %if.end, !dbg !2278

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %rng, align 8, !dbg !2279
  %sdesc1 = getelementptr inbounds %struct.jitterentropy, ptr %4, i32 0, i32 3, !dbg !2281
  %5 = load ptr, ptr %sdesc1, align 8, !dbg !2281
  call void @shash_desc_zero(ptr noundef %5) #18, !dbg !2282
  %6 = load ptr, ptr %rng, align 8, !dbg !2283
  %sdesc2 = getelementptr inbounds %struct.jitterentropy, ptr %6, i32 0, i32 3, !dbg !2284
  %7 = load ptr, ptr %sdesc2, align 8, !dbg !2284
  call void @kfree(ptr noundef %7) #18, !dbg !2285
  br label %if.end, !dbg !2286

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %rng, align 8, !dbg !2287
  %sdesc3 = getelementptr inbounds %struct.jitterentropy, ptr %8, i32 0, i32 3, !dbg !2288
  store ptr null, ptr %sdesc3, align 8, !dbg !2289
  %9 = load ptr, ptr %rng, align 8, !dbg !2290
  %tfm4 = getelementptr inbounds %struct.jitterentropy, ptr %9, i32 0, i32 2, !dbg !2292
  %10 = load ptr, ptr %tfm4, align 8, !dbg !2292
  %tobool5 = icmp ne ptr %10, null, !dbg !2290
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !2293

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %rng, align 8, !dbg !2294
  %tfm7 = getelementptr inbounds %struct.jitterentropy, ptr %11, i32 0, i32 2, !dbg !2295
  %12 = load ptr, ptr %tfm7, align 8, !dbg !2295
  call void @crypto_free_shash(ptr noundef %12) #18, !dbg !2296
  br label %if.end8, !dbg !2296

if.end8:                                          ; preds = %if.then6, %if.end
  %13 = load ptr, ptr %rng, align 8, !dbg !2297
  %tfm9 = getelementptr inbounds %struct.jitterentropy, ptr %13, i32 0, i32 2, !dbg !2298
  store ptr null, ptr %tfm9, align 8, !dbg !2299
  %14 = load ptr, ptr %rng, align 8, !dbg !2300
  %entropy_collector = getelementptr inbounds %struct.jitterentropy, ptr %14, i32 0, i32 1, !dbg !2302
  %15 = load ptr, ptr %entropy_collector, align 8, !dbg !2302
  %tobool10 = icmp ne ptr %15, null, !dbg !2300
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2303

if.then11:                                        ; preds = %if.end8
  %16 = load ptr, ptr %rng, align 8, !dbg !2304
  %entropy_collector12 = getelementptr inbounds %struct.jitterentropy, ptr %16, i32 0, i32 1, !dbg !2305
  %17 = load ptr, ptr %entropy_collector12, align 8, !dbg !2305
  call void @jent_entropy_collector_free(ptr noundef %17) #18, !dbg !2306
  br label %if.end13, !dbg !2306

if.end13:                                         ; preds = %if.then11, %if.end8
  %18 = load ptr, ptr %rng, align 8, !dbg !2307
  %entropy_collector14 = getelementptr inbounds %struct.jitterentropy, ptr %18, i32 0, i32 1, !dbg !2308
  store ptr null, ptr %entropy_collector14, align 8, !dbg !2309
  %19 = load ptr, ptr %rng, align 8, !dbg !2310
  %jent_lock15 = getelementptr inbounds %struct.jitterentropy, ptr %19, i32 0, i32 0, !dbg !2311
  call void @spin_unlock(ptr noundef %jent_lock15) #18, !dbg !2312
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #19, !dbg !2313
  ret void, !dbg !2313
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_rng_ctx(ptr noundef %tfm) #5 align 16 !dbg !2314 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2318, metadata !DIExpression()), !dbg !2319
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2320
  %base = getelementptr inbounds %struct.crypto_rng, ptr %0, i32 0, i32 0, !dbg !2321
  %call = call ptr @crypto_tfm_ctx(ptr noundef %base) #18, !dbg !2322
  ret ptr %call, !dbg !2323
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #12 align 16 !dbg !2324 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2330, metadata !DIExpression()), !dbg !2331
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2332
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2332
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !2332
  ret void, !dbg !2333
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2334 dso_local i32 @jent_read_entropy(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #12 align 16 !dbg !2338 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2340, metadata !DIExpression()), !dbg !2341
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2342
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2342
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !2342
  ret void, !dbg !2343
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_ctx(ptr noundef %tfm) #5 align 16 !dbg !2344 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2348, metadata !DIExpression()), !dbg !2349
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2350
  %__crt_ctx = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5, !dbg !2351
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__crt_ctx, i64 0, i64 0, !dbg !2350
  ret ptr %arraydecay, !dbg !2352
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2353 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2358 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #12 align 16 !dbg !2359 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2363, metadata !DIExpression()), !dbg !2364
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2365
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2366
  ret ptr %1, !dbg !2367
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2368 dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !2371 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2376, metadata !DIExpression()), !dbg !2377
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2378
  %1 = ptrtoint ptr %0 to i64, !dbg !2378
  %2 = inttoptr i64 %1 to ptr, !dbg !2378
  %3 = ptrtoint ptr %2 to i64, !dbg !2378
  %cmp = icmp uge i64 %3, -4095, !dbg !2378
  %lnot = xor i1 %cmp, true, !dbg !2378
  %lnot1 = xor i1 %lnot, true, !dbg !2378
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2378
  %conv = sext i32 %lnot.ext to i64, !dbg !2378
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2378
  %tobool = icmp ne i64 %expval, 0, !dbg !2378
  ret i1 %tobool, !dbg !2379
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !2380 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2384, metadata !DIExpression()), !dbg !2385
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2386
  %1 = ptrtoint ptr %0 to i64, !dbg !2387
  ret i64 %1, !dbg !2388
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2389 dso_local ptr @jent_entropy_collector_alloc(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2392 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_shash(ptr noundef %tfm) #5 align 16 !dbg !2393 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2397
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !2398
  %call = call ptr @crypto_shash_tfm(ptr noundef %1) #18, !dbg !2399
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #18, !dbg !2400
  ret void, !dbg !2401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2402 dso_local void @jent_entropy_collector_free(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2405 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jent_testing_init() #5 align 16 !dbg !2408 {
entry:
  ret void, !dbg !2409
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2410 dso_local i32 @jent_entropy_init(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2413 dso_local i32 @crypto_register_rng(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!llvm.ident = !{!1462}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_rs", scope: !2, file: !3, line: 107, type: !1401, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "jent_hash_time", scope: !3, file: !3, line: 94, type: !4, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1434)
!3 = !DIFile(filename: "crypto/jitterentropy-kcapi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58e2d20bd544f9db7c36c41d3256b08b")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !8, !11, !16, !8, !16}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 17, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.jitterentropy-kcapi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/jitterentropy_rng\22 -D KBUILD_BASENAME=\22jitterentropy_kcapi\22 -D KBUILD_MODNAME=\22jitterentropy_rng\22 -D __KBUILD_MODNAME=kmod_jitterentropy_rng -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/jitterentropy-kcapi.ll crypto/jitterentropy-kcapi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !47, globals: !1300, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19, !26, !32, !37}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !16, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !27, line: 26, baseType: !16, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!30 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!31 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 10, baseType: !16, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "false", value: 0)
!36 = !DIEnumerator(name: "true", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !38, line: 364, baseType: !16, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!39 = !{!40, !41, !42, !43, !44, !45, !46}
!40 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!41 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!42 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!43 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!44 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!45 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!46 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!47 = !{!48, !50, !11, !7, !299, !1240, !160, !285}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !49, line: 154, baseType: !16)
!49 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_desc", file: !52, line: 175, size: 64, elements: !53)
!52 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!53 = !{!54, !1239}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !51, file: !52, line: 176, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !52, line: 268, size: 320, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !56, file: !52, line: 269, baseType: !16, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !56, file: !52, line: 270, baseType: !60, size: 256, offset: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !61, line: 422, size: 256, elements: !62)
!61 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!62 = !{!63, !73, !76, !77, !82, !1238}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !60, file: !61, line: 423, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !65, line: 113, baseType: !66)
!65 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !65, line: 111, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !66, file: !65, line: 112, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !49, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !49, line: 173, baseType: !6, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !60, file: !61, line: 425, baseType: !74, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !60, file: !61, line: 427, baseType: !6, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !60, file: !61, line: 429, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !60, file: !61, line: 431, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !61, line: 343, size: 3072, align: 64, elements: !85)
!85 = !{!86, !92, !93, !94, !95, !96, !97, !98, !99, !104, !105, !1204, !1231, !1232, !1233, !1237}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !84, file: !61, line: 344, baseType: !87, size: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !49, line: 190, size: 128, elements: !88)
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !49, line: 191, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !87, file: !49, line: 191, baseType: !90, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !84, file: !61, line: 345, baseType: !87, size: 128, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !84, file: !61, line: 347, baseType: !74, size: 32, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !84, file: !61, line: 348, baseType: !16, size: 32, offset: 288)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !84, file: !61, line: 349, baseType: !16, size: 32, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !84, file: !61, line: 350, baseType: !16, size: 32, offset: 352)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !84, file: !61, line: 352, baseType: !6, size: 32, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !84, file: !61, line: 353, baseType: !64, size: 32, offset: 416)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !84, file: !61, line: 355, baseType: !100, size: 1024, offset: 448)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1024, elements: !102)
!101 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !{!103}
!103 = !DISubrange(count: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !84, file: !61, line: 356, baseType: !100, size: 1024, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !84, file: !61, line: 358, baseType: !106, size: 64, offset: 2496)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !109, line: 57, size: 512, elements: !110)
!109 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!110 = !{!111, !115, !119, !123, !130, !136, !1200, !1201, !1202, !1203}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !108, file: !109, line: 58, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!16, !83, !74, !74}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !108, file: !109, line: 59, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!16, !83}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !108, file: !109, line: 60, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!6, !81}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !108, file: !109, line: 61, baseType: !124, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127, !83}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !129, line: 66, flags: DIFlagFwdDecl)
!129 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !108, file: !109, line: 62, baseType: !131, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!6, !134, !83}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !109, line: 55, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !108, file: !109, line: 63, baseType: !137, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !109, line: 74, size: 3520, elements: !142)
!142 = !{!143, !144, !1178, !1197, !1198}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !141, file: !109, line: 75, baseType: !84, size: 3072, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !141, file: !109, line: 77, baseType: !145, size: 64, offset: 3072)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !109, line: 91, size: 1344, elements: !147)
!147 = !{!148, !149, !159, !1170, !1177}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !146, file: !109, line: 92, baseType: !87, size: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !146, file: !109, line: 93, baseType: !150, size: 64, offset: 128)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !49, line: 194, size: 64, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !150, file: !49, line: 195, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !49, line: 198, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !49, line: 199, baseType: !153, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !154, file: !49, line: 199, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !146, file: !109, line: 94, baseType: !160, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !162)
!162 = !{!163, !164, !165, !169, !831, !857, !858, !859, !860, !864, !867, !868, !869, !922, !923, !924, !925, !926, !927, !928, !929, !932, !936, !956, !974, !975, !976, !977, !986, !1009, !1010, !1013, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1027, !1028, !1128, !1136, !1137, !1138, !1140, !1144, !1145, !1149, !1150, !1151, !1152, !1154, !1155, !1156, !1163, !1164, !1165, !1169}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !161, file: !20, line: 403, baseType: !19, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !161, file: !20, line: 406, baseType: !87, size: 128, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !20, line: 409, baseType: !166, size: 448, offset: 192)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 448, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 56)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !161, file: !20, line: 417, baseType: !170, size: 768, offset: 640)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !171)
!171 = !{!172, !814, !815, !816, !819}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !170, file: !20, line: 46, baseType: !173, size: 512)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !174, line: 64, size: 512, elements: !175)
!174 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!175 = !{!176, !179, !180, !182, !262, !692, !804, !809, !810, !811, !812, !813}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !174, line: 65, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !173, file: !174, line: 66, baseType: !87, size: 128, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !174, line: 67, baseType: !181, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !173, file: !174, line: 68, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !174, line: 168, size: 768, elements: !185)
!185 = !{!186, !187, !221, !222}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !184, file: !174, line: 169, baseType: !87, size: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !184, file: !174, line: 170, baseType: !188, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !189, line: 29, baseType: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !189, line: 17, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !189, line: 18, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !189, line: 18, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !193, file: !189, line: 19, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !197, line: 14, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !196, file: !197, line: 15, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !201, line: 44, baseType: !202)
!201 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !201, line: 14, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !201, line: 15, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !201, line: 15, size: 32, elements: !206)
!206 = !{!207, !208, !213}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !205, file: !201, line: 16, baseType: !69, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !201, line: 24, baseType: !209, size: 16)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !201, line: 24, size: 16, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !209, file: !201, line: 25, baseType: !12, size: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !209, file: !201, line: 26, baseType: !12, size: 8, offset: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !201, line: 28, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !201, line: 28, size: 32, elements: !215)
!215 = !{!216, !220}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !214, file: !201, line: 29, baseType: !217, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !13, line: 19, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !219)
!219 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !214, file: !201, line: 30, baseType: !217, size: 16, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !184, file: !174, line: 171, baseType: !173, size: 512, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !184, file: !174, line: 172, baseType: !223, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !174, line: 133, size: 192, elements: !226)
!226 = !{!227, !234, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !225, file: !174, line: 134, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!6, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !174, line: 135, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!177, !232}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !225, file: !174, line: 136, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!6, !232, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !174, line: 125, size: 20736, elements: !246)
!246 = !{!247, !252, !256, !257, !261}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !245, file: !174, line: 126, baseType: !248, size: 192)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 192, elements: !250)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!250 = !{!251}
!251 = !DISubrange(count: 3)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !245, file: !174, line: 127, baseType: !253, size: 4096, offset: 192)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 4096, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !245, file: !174, line: 128, baseType: !6, size: 32, offset: 4288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !245, file: !174, line: 129, baseType: !258, size: 16384, offset: 4320)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16384, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 2048)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !245, file: !174, line: 130, baseType: !6, size: 32, offset: 20704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !173, file: !174, line: 69, baseType: !263, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !174, line: 116, size: 384, elements: !266)
!266 = !{!267, !271, !300, !638, !669, !673}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !265, file: !174, line: 117, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !181}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !265, file: !174, line: 118, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !275, line: 254, size: 128, elements: !276)
!275 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!276 = !{!277, !292}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !274, file: !275, line: 255, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !181, !286, !249}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !49, line: 66, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !283, line: 73, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !283, line: 15, baseType: !285)
!285 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !275, line: 30, size: 128, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !275, line: 31, baseType: !177, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !287, file: !275, line: 32, baseType: !291, size: 16, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !49, line: 24, baseType: !219)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !274, file: !275, line: 256, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!281, !181, !286, !177, !296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 61, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !299)
!299 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !265, file: !174, line: 119, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !275, line: 84, size: 320, elements: !305)
!305 = !{!306, !307, !311, !634, !636}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !275, line: 85, baseType: !177, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !304, file: !275, line: 86, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!291, !181, !286, !6}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !304, file: !275, line: 88, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!291, !181, !315, !6}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !275, line: 175, size: 512, elements: !317)
!317 = !{!318, !319, !320, !321, !328, !338, !339}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !316, file: !275, line: 176, baseType: !287, size: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !316, file: !275, line: 177, baseType: !296, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !316, file: !275, line: 178, baseType: !7, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !316, file: !275, line: 179, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !327, line: 32, flags: DIFlagFwdDecl)
!327 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !316, file: !275, line: 180, baseType: !329, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!281, !332, !181, !315, !249, !335, !296}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !334, line: 537, flags: DIFlagFwdDecl)
!334 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !49, line: 52, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !283, line: 88, baseType: !337)
!337 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !316, file: !275, line: 182, baseType: !329, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !316, file: !275, line: 184, baseType: !340, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!6, !332, !181, !315, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !327, line: 625, size: 1344, elements: !345)
!345 = !{!346, !363, !583, !589, !596, !597, !602, !605, !617, !618, !621, !625, !626, !627, !628, !629, !632}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !327, line: 628, baseType: !347, size: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !327, line: 628, size: 128, elements: !348)
!348 = !{!349, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !327, line: 629, baseType: !350, size: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !327, line: 629, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !350, file: !327, line: 631, baseType: !299, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !350, file: !327, line: 632, baseType: !299, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !347, file: !327, line: 635, baseType: !355, size: 128, align: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !49, line: 232, size: 128, align: 64, elements: !356)
!356 = !{!357, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !49, line: 233, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !355, file: !49, line: 234, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !358}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !344, file: !327, line: 639, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !327, line: 733, size: 10240, elements: !366)
!366 = !{!367, !579}
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !327, line: 734, baseType: !368, size: 10240)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !327, line: 734, size: 10240, elements: !369)
!369 = !{!370, !374, !388, !392, !393, !394, !395, !396, !397, !405, !406, !407, !414, !415, !424, !425, !426, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !473, !487, !490, !545, !546, !547, !550, !553, !554, !557, !558, !559, !566, !567}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !327, line: 739, baseType: !371, size: 512, align: 512)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !327, line: 739, size: 512, align: 512, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !371, file: !327, line: 747, baseType: !69, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !368, file: !327, line: 750, baseType: !375, size: 128, offset: 512)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !376, line: 218, size: 128, elements: !377)
!376 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!377 = !{!378, !386, !387}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 219, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 219, size: 32, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !379, file: !376, line: 220, baseType: !188, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !379, file: !376, line: 221, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !376, line: 197, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 197, elements: !385)
!385 = !{}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !375, file: !376, line: 223, baseType: !16, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !375, file: !376, line: 224, baseType: !7, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !368, file: !327, line: 752, baseType: !389, size: 64, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!299, !332, !299, !299, !299, !299}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !368, file: !327, line: 756, baseType: !299, size: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !368, file: !327, line: 757, baseType: !299, size: 64, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !368, file: !327, line: 760, baseType: !299, size: 64, offset: 832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !368, file: !327, line: 761, baseType: !299, size: 64, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !368, file: !327, line: 763, baseType: !299, size: 64, offset: 960)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !368, file: !327, line: 764, baseType: !398, size: 64, offset: 1024)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !334, line: 299, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 299, size: 64, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !400, file: !334, line: 299, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !404, line: 18, baseType: !299)
!404 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !368, file: !327, line: 773, baseType: !69, size: 32, offset: 1088)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !368, file: !327, line: 785, baseType: !69, size: 32, offset: 1120)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !368, file: !327, line: 795, baseType: !408, size: 64, offset: 1152)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !327, line: 726, size: 128, elements: !410)
!410 = !{!411, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !409, file: !327, line: 727, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !13, line: 23, baseType: !8)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !409, file: !327, line: 728, baseType: !6, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !368, file: !327, line: 801, baseType: !299, size: 64, offset: 1216)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !368, file: !327, line: 804, baseType: !416, size: 64, offset: 1280)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !417, line: 13, baseType: !418)
!417 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !49, line: 181, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 179, size: 64, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !419, file: !49, line: 180, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !13, line: 22, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !9, line: 30, baseType: !337)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !368, file: !327, line: 806, baseType: !6, size: 32, offset: 1344)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !368, file: !327, line: 808, baseType: !188, size: 32, offset: 1376)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !368, file: !327, line: 823, baseType: !427, size: 320, offset: 1408)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !428, line: 48, size: 320, elements: !429)
!428 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!429 = !{!430, !431, !432, !437, !439}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !427, file: !428, line: 49, baseType: !416, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !427, file: !428, line: 55, baseType: !416, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !427, file: !428, line: 57, baseType: !433, size: 32, offset: 128)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !434, line: 15, size: 32, elements: !435)
!434 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !433, file: !434, line: 20, baseType: !69, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !427, file: !428, line: 59, baseType: !438, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !197, line: 23, baseType: !196)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !427, file: !428, line: 60, baseType: !87, size: 128, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !368, file: !327, line: 825, baseType: !87, size: 128, offset: 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !368, file: !327, line: 845, baseType: !6, size: 32, offset: 1856)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !368, file: !327, line: 849, baseType: !299, size: 64, offset: 1920)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !368, file: !327, line: 850, baseType: !299, size: 64, offset: 1984)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !368, file: !327, line: 852, baseType: !299, size: 64, offset: 2048)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !368, file: !327, line: 853, baseType: !299, size: 64, offset: 2112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !368, file: !327, line: 854, baseType: !418, size: 64, offset: 2176)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !368, file: !327, line: 855, baseType: !299, size: 64, offset: 2240)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !368, file: !327, line: 856, baseType: !299, size: 64, offset: 2304)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !368, file: !327, line: 857, baseType: !299, size: 64, offset: 2368)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !368, file: !327, line: 858, baseType: !299, size: 64, offset: 2432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !368, file: !327, line: 865, baseType: !452, size: 32, offset: 2496)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !453, line: 69, baseType: !454)
!453 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !453, line: 64, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !454, file: !453, line: 65, baseType: !16, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !368, file: !327, line: 867, baseType: !188, size: 32, offset: 2528)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !368, file: !327, line: 869, baseType: !299, size: 64, offset: 2560)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !368, file: !327, line: 869, baseType: !299, size: 64, offset: 2624)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !368, file: !327, line: 869, baseType: !299, size: 64, offset: 2688)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !368, file: !327, line: 869, baseType: !299, size: 64, offset: 2752)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !368, file: !327, line: 870, baseType: !299, size: 64, offset: 2816)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !368, file: !327, line: 870, baseType: !299, size: 64, offset: 2880)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !368, file: !327, line: 870, baseType: !299, size: 64, offset: 2944)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !368, file: !327, line: 871, baseType: !299, size: 64, offset: 3008)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !368, file: !327, line: 871, baseType: !299, size: 64, offset: 3072)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !368, file: !327, line: 871, baseType: !299, size: 64, offset: 3136)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !368, file: !327, line: 871, baseType: !299, size: 64, offset: 3200)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !368, file: !327, line: 873, baseType: !470, size: 3328, offset: 3264)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 3328, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 52)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !368, file: !327, line: 875, baseType: !474, size: 1280, offset: 6592)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 1280, elements: !485)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !476, line: 22, size: 320, elements: !477)
!476 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!477 = !{!478, !479, !480, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !475, file: !476, line: 23, baseType: !438, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !475, file: !476, line: 24, baseType: !422, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !475, file: !476, line: 26, baseType: !87, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !475, file: !476, line: 28, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !13, line: 20, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !9, line: 26, baseType: !6)
!485 = !{!486}
!486 = !DISubrange(count: 4)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !368, file: !327, line: 877, baseType: !488, size: 64, offset: 7872)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !327, line: 877, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !368, file: !327, line: 880, baseType: !491, size: 1088, offset: 7936)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !492, line: 72, baseType: !493)
!492 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 23, size: 1088, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !502, !503, !511, !512, !539, !540, !541}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !493, file: !492, line: 28, baseType: !412, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !493, file: !492, line: 38, baseType: !418, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !493, file: !492, line: 40, baseType: !299, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !493, file: !492, line: 43, baseType: !427, size: 320, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !493, file: !492, line: 44, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !492, line: 44, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !492, line: 48, baseType: !299, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !493, file: !492, line: 59, baseType: !504, size: 256, offset: 640)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !505, line: 66, size: 256, elements: !506)
!505 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !504, file: !505, line: 67, baseType: !416, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !504, file: !505, line: 68, baseType: !438, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !504, file: !505, line: 70, baseType: !433, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !504, file: !505, line: 72, baseType: !87, size: 128, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !493, file: !492, line: 60, baseType: !7, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !493, file: !492, line: 61, baseType: !513, size: 64, offset: 960)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !516, line: 13, size: 1216, elements: !517)
!516 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!517 = !{!518, !519, !520, !521, !522, !523, !524, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !515, file: !516, line: 14, baseType: !7, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !515, file: !516, line: 15, baseType: !299, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !515, file: !516, line: 17, baseType: !299, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !515, file: !516, line: 17, baseType: !299, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !515, file: !516, line: 18, baseType: !299, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !515, file: !516, line: 18, baseType: !299, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !515, file: !516, line: 19, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !515, file: !516, line: 21, baseType: !285, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !515, file: !516, line: 23, baseType: !285, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !515, file: !516, line: 24, baseType: !285, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !515, file: !516, line: 25, baseType: !285, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !515, file: !516, line: 26, baseType: !285, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !515, file: !516, line: 27, baseType: !285, size: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !515, file: !516, line: 28, baseType: !285, size: 64, offset: 832)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !515, file: !516, line: 29, baseType: !285, size: 64, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !515, file: !516, line: 30, baseType: !285, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !515, file: !516, line: 31, baseType: !285, size: 64, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !515, file: !516, line: 32, baseType: !285, size: 64, offset: 1088)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !515, file: !516, line: 33, baseType: !285, size: 64, offset: 1152)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !493, file: !492, line: 63, baseType: !69, size: 32, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !493, file: !492, line: 69, baseType: !217, size: 16, offset: 1056)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !493, file: !492, line: 70, baseType: !542, size: 16, offset: 1072)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !13, line: 18, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !9, line: 23, baseType: !544)
!544 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !327, line: 882, baseType: !299, size: 64, offset: 9024)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !368, file: !327, line: 885, baseType: !188, size: 32, offset: 9088)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !368, file: !327, line: 886, baseType: !548, size: 64, offset: 9152)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !327, line: 732, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !368, file: !327, line: 901, baseType: !551, size: 64, offset: 9216)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !327, line: 901, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !368, file: !327, line: 904, baseType: !332, size: 64, offset: 9280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !368, file: !327, line: 906, baseType: !555, size: 64, offset: 9344)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !327, line: 906, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !368, file: !327, line: 930, baseType: !69, size: 32, offset: 9408)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !368, file: !327, line: 933, baseType: !69, size: 32, offset: 9440)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !368, file: !327, line: 935, baseType: !560, size: 64, offset: 9472)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !561, line: 103, size: 64, elements: !562)
!561 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !560, file: !561, line: 104, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !561, line: 101, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !368, file: !327, line: 940, baseType: !416, size: 64, offset: 9536)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !368, file: !327, line: 942, baseType: !568, size: 256, offset: 9600)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !569, line: 98, size: 256, elements: !570)
!569 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!570 = !{!571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !568, file: !569, line: 99, baseType: !416, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !568, file: !569, line: 100, baseType: !87, size: 128, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !568, file: !569, line: 101, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !569, line: 21, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !365, file: !327, line: 986, baseType: !580, offset: 10240)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: -1)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !344, file: !327, line: 640, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !334, line: 297, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !334, line: 297, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !585, file: !334, line: 297, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !404, line: 19, baseType: !299)
!589 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !327, line: 646, baseType: !590, size: 64, offset: 256)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !327, line: 646, size: 64, elements: !591)
!591 = !{!592, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !590, file: !327, line: 647, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !327, line: 542, baseType: !299)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !590, file: !327, line: 648, baseType: !594, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !344, file: !327, line: 666, baseType: !6, size: 32, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !344, file: !327, line: 667, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !327, line: 579, size: 320, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !599, file: !327, line: 580, baseType: !427, size: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !344, file: !327, line: 670, baseType: !603, size: 8, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !49, line: 35, baseType: !604)
!604 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !344, file: !327, line: 681, baseType: !606, size: 256, offset: 512)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !327, line: 678, size: 256, elements: !607)
!607 = !{!608, !616}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !606, file: !327, line: 679, baseType: !609, size: 192, align: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !610, line: 5, size: 192, align: 64, elements: !611)
!610 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!611 = !{!612, !613, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !609, file: !610, line: 6, baseType: !299, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !609, file: !610, line: 7, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !609, file: !610, line: 8, baseType: !614, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !606, file: !327, line: 680, baseType: !299, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !344, file: !327, line: 689, baseType: !87, size: 128, offset: 768)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !344, file: !327, line: 691, baseType: !619, size: 64, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !327, line: 691, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !344, file: !327, line: 694, baseType: !622, size: 64, offset: 960)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !327, line: 694, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !344, file: !327, line: 697, baseType: !299, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !344, file: !327, line: 699, baseType: !332, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !344, file: !327, line: 700, baseType: !7, size: 64, offset: 1152)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !344, file: !327, line: 711, baseType: !416, size: 64, offset: 1216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !344, file: !327, line: 717, baseType: !630, size: 64, offset: 1280)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !327, line: 717, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !344, file: !327, line: 722, baseType: !633, offset: 1344)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !327, line: 570, elements: !385)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !304, file: !275, line: 90, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !304, file: !275, line: 91, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !265, file: !174, line: 120, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!642, !232}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !27, line: 39, size: 384, elements: !645)
!645 = !{!646, !647, !651, !655, !661, !665}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !27, line: 40, baseType: !26, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !644, file: !27, line: 41, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!603}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !644, file: !27, line: 42, baseType: !652, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!7}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !644, file: !27, line: 43, baseType: !656, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!525, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !27, line: 19, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !644, file: !27, line: 44, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!525}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !644, file: !27, line: 45, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !7}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !265, file: !174, line: 121, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!525, !232}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !265, file: !174, line: 122, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !232, !677, !685}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !679, line: 23, baseType: !680)
!679 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 21, size: 32, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !680, file: !679, line: 22, baseType: !683, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !49, line: 37, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !16)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !679, line: 28, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 26, size: 32, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !687, file: !679, line: 27, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !49, line: 38, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !283, line: 50, baseType: !16)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !173, file: !174, line: 70, baseType: !693, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !695, line: 190, size: 1152, elements: !696)
!695 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !796, !797, !798, !799, !800, !803}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !694, file: !695, line: 191, baseType: !69, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !694, file: !695, line: 192, baseType: !69, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !694, file: !695, line: 202, baseType: !693, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !694, file: !695, line: 203, baseType: !177, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !694, file: !695, line: 205, baseType: !609, size: 192, align: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !694, file: !695, line: 207, baseType: !525, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !694, file: !695, line: 208, baseType: !16, size: 32, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !695, line: 209, baseType: !705, size: 256, offset: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !695, line: 209, size: 256, elements: !706)
!706 = !{!707, !719, !723}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !705, file: !695, line: 210, baseType: !708, size: 256)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !695, line: 153, size: 256, elements: !709)
!709 = !{!710, !711, !715, !718}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !708, file: !695, line: 154, baseType: !299, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !708, file: !695, line: 156, baseType: !712, size: 64, offset: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !610, line: 12, size: 64, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !712, file: !610, line: 13, baseType: !614, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !708, file: !695, line: 162, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !695, line: 162, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !708, file: !695, line: 167, baseType: !299, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !705, file: !695, line: 211, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !695, line: 170, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !720, file: !695, line: 171, baseType: !693, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !705, file: !695, line: 212, baseType: !724, size: 256)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !695, line: 174, size: 256, elements: !725)
!725 = !{!726, !791, !794, !795}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !724, file: !695, line: 175, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !695, line: 271, size: 768, elements: !730)
!730 = !{!731, !751, !755, !759, !764, !768, !772, !776, !777, !778, !779, !787}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !729, file: !695, line: 276, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!6, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !695, line: 251, size: 1216, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !736, file: !695, line: 253, baseType: !693, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !736, file: !695, line: 254, baseType: !332, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !736, file: !695, line: 255, baseType: !127, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !736, file: !695, line: 256, baseType: !7, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !736, file: !695, line: 259, baseType: !504, size: 256, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !736, file: !695, line: 260, baseType: !504, size: 256, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !736, file: !695, line: 261, baseType: !6, size: 32, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !736, file: !695, line: 262, baseType: !87, size: 128, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !736, file: !695, line: 263, baseType: !249, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !736, file: !695, line: 265, baseType: !296, size: 64, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !736, file: !695, line: 266, baseType: !603, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !736, file: !695, line: 267, baseType: !603, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !736, file: !695, line: 268, baseType: !622, size: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !729, file: !695, line: 277, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !735}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !729, file: !695, line: 290, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!6, !127, !7}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !729, file: !695, line: 292, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!7, !127, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !729, file: !695, line: 293, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!7, !127, !7, !763}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !729, file: !695, line: 294, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !127, !7}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !729, file: !695, line: 296, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!281, !735, !249, !296, !335}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !729, file: !695, line: 306, baseType: !296, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !729, file: !695, line: 313, baseType: !603, size: 8, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !729, file: !695, line: 314, baseType: !773, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !729, file: !695, line: 317, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !735, !785}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !784, line: 59, baseType: !16)
!784 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !695, line: 31, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !729, file: !695, line: 320, baseType: !788, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!6, !735, !343}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !724, file: !695, line: 176, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !695, line: 35, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !724, file: !695, line: 177, baseType: !335, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !724, file: !695, line: 178, baseType: !693, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !694, file: !695, line: 215, baseType: !7, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !694, file: !695, line: 221, baseType: !412, size: 64, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !695, line: 223, baseType: !219, size: 16, offset: 896)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !694, file: !695, line: 224, baseType: !291, size: 16, offset: 912)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !694, file: !695, line: 225, baseType: !801, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !695, line: 36, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !694, file: !695, line: 227, baseType: !355, size: 128, align: 64, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !173, file: !174, line: 71, baseType: !805, size: 32, offset: 448)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !806, line: 19, size: 32, elements: !807)
!806 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !805, file: !806, line: 20, baseType: !64, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !173, file: !174, line: 73, baseType: !16, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !173, file: !174, line: 74, baseType: !16, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !173, file: !174, line: 75, baseType: !16, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !173, file: !174, line: 76, baseType: !16, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !173, file: !174, line: 77, baseType: !16, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !170, file: !20, line: 47, baseType: !160, size: 64, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !170, file: !20, line: 48, baseType: !181, size: 64, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !170, file: !20, line: 49, baseType: !817, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !170, file: !20, line: 50, baseType: !820, size: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !822, line: 26, size: 256, elements: !823)
!822 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !821, file: !822, line: 27, baseType: !16, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !821, file: !822, line: 28, baseType: !826, size: 192, offset: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !827, line: 43, size: 192, elements: !828)
!827 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !826, file: !827, line: 44, baseType: !438, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !826, file: !827, line: 45, baseType: !87, size: 128, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !161, file: !20, line: 418, baseType: !832, size: 64, offset: 1408)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !834)
!834 = !{!835, !836, !841, !845, !849, !853}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !833, file: !20, line: 54, baseType: !287, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !833, file: !20, line: 55, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!281, !832, !840, !249}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !833, file: !20, line: 57, baseType: !842, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!281, !832, !840, !177, !296}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !833, file: !20, line: 59, baseType: !846, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !160, !177}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !833, file: !20, line: 60, baseType: !850, size: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!6, !160}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !833, file: !20, line: 61, baseType: !854, size: 64, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !160}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !161, file: !20, line: 419, baseType: !177, size: 64, offset: 1472)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !161, file: !20, line: 420, baseType: !177, size: 64, offset: 1536)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !161, file: !20, line: 421, baseType: !181, size: 64, offset: 1600)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !161, file: !20, line: 424, baseType: !861, size: 64, offset: 1664)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !161, file: !20, line: 425, baseType: !865, size: 64, offset: 1728)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !161, file: !20, line: 426, baseType: !16, size: 32, offset: 1792)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !161, file: !20, line: 435, baseType: !504, size: 256, offset: 1856)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !161, file: !20, line: 437, baseType: !870, size: 64, offset: 2112)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !872, line: 69, size: 320, elements: !873)
!872 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!873 = !{!874, !875, !876, !893, !895, !899, !900}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !871, file: !872, line: 70, baseType: !177, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !871, file: !872, line: 71, baseType: !160, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !871, file: !872, line: 72, baseType: !877, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !872, line: 47, size: 256, elements: !880)
!880 = !{!881, !882, !888, !892}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !879, file: !872, line: 49, baseType: !16, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !879, file: !872, line: 51, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!6, !177, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !879, file: !872, line: 53, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!6, !249, !886}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !879, file: !872, line: 55, baseType: !666, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !871, file: !872, line: 73, baseType: !894, size: 16, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !871, file: !872, line: 74, baseType: !896, size: 8, offset: 208)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !13, line: 16, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !9, line: 20, baseType: !898)
!898 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !871, file: !872, line: 75, baseType: !12, size: 8, offset: 216)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !872, line: 76, baseType: !901, size: 64, offset: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !872, line: 76, size: 64, elements: !902)
!902 = !{!903, !904, !911}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !901, file: !872, line: 77, baseType: !7, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !901, file: !872, line: 78, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !872, line: 86, size: 128, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !907, file: !872, line: 87, baseType: !16, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !907, file: !872, line: 88, baseType: !249, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !901, file: !872, line: 79, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !872, line: 92, size: 256, elements: !915)
!915 = !{!916, !917, !918, !920, !921}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !914, file: !872, line: 94, baseType: !16, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !914, file: !872, line: 95, baseType: !16, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !914, file: !872, line: 96, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !914, file: !872, line: 97, baseType: !877, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !914, file: !872, line: 98, baseType: !7, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !161, file: !20, line: 438, baseType: !16, size: 32, offset: 2176)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !161, file: !20, line: 441, baseType: !16, size: 32, offset: 2208)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !161, file: !20, line: 442, baseType: !861, size: 64, offset: 2240)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !161, file: !20, line: 443, baseType: !865, size: 64, offset: 2304)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !161, file: !20, line: 444, baseType: !603, size: 8, offset: 2368)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !161, file: !20, line: 451, baseType: !603, size: 8, offset: 2376)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !161, file: !20, line: 454, baseType: !16, size: 32, offset: 2400)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !161, file: !20, line: 455, baseType: !930, size: 64, offset: 2432)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !20, line: 43, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !161, file: !20, line: 458, baseType: !933, size: 64, offset: 2496)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!6}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !161, file: !20, line: 460, baseType: !937, size: 4032, align: 512, offset: 2560)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 4032, elements: !954)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !938, file: !20, line: 363, baseType: !7, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !938, file: !20, line: 364, baseType: !16, size: 32, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !938, file: !20, line: 367, baseType: !943, size: 448, offset: 128)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !943, file: !20, line: 320, baseType: !160, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !943, file: !20, line: 321, baseType: !947, size: 384, offset: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !948, line: 40, size: 384, elements: !949)
!948 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !947, file: !948, line: 41, baseType: !951, size: 384, align: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 384, align: 64, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 2)
!954 = !{!955}
!955 = !DISubrange(count: 7)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !161, file: !20, line: 463, baseType: !957, size: 192, offset: 6592)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !958, line: 8, size: 192, elements: !959)
!958 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!959 = !{!960, !961, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !957, file: !958, line: 10, baseType: !16, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !957, file: !958, line: 11, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !957, file: !958, line: 12, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !966, line: 59, size: 48, elements: !967)
!966 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!967 = !{!968, !969, !970, !971, !972, !973}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !965, file: !966, line: 60, baseType: !542, size: 16)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !965, file: !966, line: 61, baseType: !542, size: 16, offset: 16)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !965, file: !966, line: 63, baseType: !16, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !965, file: !966, line: 64, baseType: !16, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !965, file: !966, line: 65, baseType: !16, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !965, file: !966, line: 66, baseType: !16, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !161, file: !20, line: 465, baseType: !299, size: 64, offset: 6784)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !161, file: !20, line: 469, baseType: !16, size: 32, offset: 6848)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !161, file: !20, line: 470, baseType: !87, size: 128, offset: 6912)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !161, file: !20, line: 471, baseType: !978, size: 64, offset: 7040)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !980, line: 33, size: 96, elements: !981)
!980 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!981 = !{!982, !983, !984, !985}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !979, file: !980, line: 37, baseType: !6, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !979, file: !980, line: 43, baseType: !6, size: 32, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !979, file: !980, line: 45, baseType: !219, size: 16, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !980, line: 47, baseType: !219, size: 16, offset: 80)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !161, file: !20, line: 476, baseType: !987, size: 64, offset: 7104)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !989)
!989 = !{!990, !1006, !1007, !1008}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !988, file: !20, line: 379, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !993, line: 204, baseType: !994)
!993 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !993, line: 197, size: 192, elements: !995)
!995 = !{!996, !998, !999, !1000, !1002, !1004}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !994, file: !993, line: 198, baseType: !997, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !993, line: 21, baseType: !75)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !994, file: !993, line: 199, baseType: !15, size: 8, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !994, file: !993, line: 200, baseType: !15, size: 8, offset: 40)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !994, file: !993, line: 201, baseType: !1001, size: 16, offset: 48)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !993, line: 17, baseType: !218)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !994, file: !993, line: 202, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !993, line: 16, baseType: !8)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !994, file: !993, line: 203, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !993, line: 22, baseType: !8)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !988, file: !20, line: 380, baseType: !16, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !988, file: !20, line: 381, baseType: !249, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !988, file: !20, line: 382, baseType: !249, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !161, file: !20, line: 477, baseType: !988, size: 256, offset: 7168)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !161, file: !20, line: 480, baseType: !1011, size: 64, offset: 7424)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !161, file: !20, line: 483, baseType: !1014, size: 64, offset: 7488)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !161, file: !20, line: 488, baseType: !249, size: 64, offset: 7552)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !161, file: !20, line: 492, baseType: !7, size: 64, offset: 7616)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !161, file: !20, line: 493, baseType: !16, size: 32, offset: 7680)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !161, file: !20, line: 495, baseType: !7, size: 64, offset: 7744)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !161, file: !20, line: 496, baseType: !16, size: 32, offset: 7808)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !161, file: !20, line: 499, baseType: !16, size: 32, offset: 7840)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !161, file: !20, line: 500, baseType: !1023, size: 64, offset: 7872)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1025, line: 45, baseType: !1026)
!1025 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !161, file: !20, line: 503, baseType: !16, size: 32, offset: 7936)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !161, file: !20, line: 504, baseType: !1029, size: 64, offset: 8000)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1032, line: 96, size: 192, elements: !1033)
!1032 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1033 = !{!1034, !1035, !1089, !1092}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1031, file: !1032, line: 97, baseType: !16, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1031, file: !1032, line: 98, baseType: !1036, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1032, line: 24, size: 3072, elements: !1038)
!1038 = !{!1039, !1041, !1042, !1043, !1044, !1058, !1059, !1060, !1061, !1073, !1074, !1075, !1086, !1087, !1088}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1037, file: !1032, line: 26, baseType: !1040, size: 128)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 128, elements: !952)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1037, file: !1032, line: 27, baseType: !1040, size: 128, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1037, file: !1032, line: 28, baseType: !6, size: 32, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !1032, line: 31, baseType: !188, size: 32, align: 512, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1037, file: !1032, line: 32, baseType: !1045, size: 960, offset: 576)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1046, line: 206, size: 960, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1047 = !{!1048, !1049, !1052, !1054, !1055, !1057}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1045, file: !1046, line: 207, baseType: !358, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1045, file: !1046, line: 208, baseType: !1050, size: 256, offset: 64)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 256, elements: !485)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1045, file: !1046, line: 209, baseType: !1053, size: 256, offset: 320)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !485)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1045, file: !1046, line: 213, baseType: !285, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1045, file: !1046, line: 215, baseType: !1056, size: 256, offset: 640)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !485)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1045, file: !1046, line: 216, baseType: !12, size: 8, offset: 896)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1037, file: !1032, line: 33, baseType: !299, size: 64, offset: 1536)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1037, file: !1032, line: 34, baseType: !299, size: 64, offset: 1600)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1037, file: !1032, line: 35, baseType: !603, size: 8, offset: 1664)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1037, file: !1032, line: 36, baseType: !1062, size: 320, offset: 1728)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1063, line: 11, size: 320, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1064 = !{!1065, !1066, !1067, !1072}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1062, file: !1063, line: 16, baseType: !154, size: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1062, file: !1063, line: 17, baseType: !299, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1062, file: !1063, line: 18, baseType: !1068, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1062, file: !1063, line: 19, baseType: !74, size: 32, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1037, file: !1032, line: 37, baseType: !568, size: 256, offset: 2048)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1037, file: !1032, line: 38, baseType: !355, size: 128, align: 64, offset: 2304)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1037, file: !1032, line: 39, baseType: !1076, size: 64, offset: 2432)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1032, line: 49, size: 768, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !1032, line: 50, baseType: !188, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1077, file: !1032, line: 51, baseType: !1053, size: 256, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1077, file: !1032, line: 53, baseType: !1053, size: 256, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1077, file: !1032, line: 54, baseType: !299, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1077, file: !1032, line: 55, baseType: !1076, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1077, file: !1032, line: 56, baseType: !6, size: 32, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1077, file: !1032, line: 57, baseType: !6, size: 32, offset: 736)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1037, file: !1032, line: 40, baseType: !299, size: 64, offset: 2496)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1037, file: !1032, line: 42, baseType: !6, size: 32, offset: 2560)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1037, file: !1032, line: 43, baseType: !1030, size: 64, offset: 2624)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1031, file: !1032, line: 99, baseType: !1090, offset: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1091, line: 211, elements: !385)
!1091 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1031, file: !1032, line: 100, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1032, line: 63, size: 3008, elements: !1095)
!1095 = !{!1096, !1097, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1127}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1094, file: !1032, line: 64, baseType: !1076, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1094, file: !1032, line: 65, baseType: !1098, size: 192, offset: 64)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 192, elements: !250)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1094, file: !1032, line: 67, baseType: !6, size: 32, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1094, file: !1032, line: 68, baseType: !504, size: 256, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1094, file: !1032, line: 69, baseType: !188, size: 32, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1094, file: !1032, line: 70, baseType: !504, size: 256, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1094, file: !1032, line: 71, baseType: !299, size: 64, offset: 896)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1094, file: !1032, line: 72, baseType: !299, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1094, file: !1032, line: 73, baseType: !299, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1094, file: !1032, line: 74, baseType: !299, size: 64, offset: 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1094, file: !1032, line: 75, baseType: !299, size: 64, offset: 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1094, file: !1032, line: 76, baseType: !299, size: 64, offset: 1216)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1094, file: !1032, line: 77, baseType: !299, size: 64, offset: 1280)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1094, file: !1032, line: 78, baseType: !299, size: 64, offset: 1344)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1094, file: !1032, line: 79, baseType: !603, size: 8, offset: 1408)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1094, file: !1032, line: 80, baseType: !299, size: 64, offset: 1472)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1094, file: !1032, line: 81, baseType: !504, size: 256, offset: 1536)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1094, file: !1032, line: 82, baseType: !821, size: 256, offset: 1792)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1094, file: !1032, line: 84, baseType: !69, size: 32, offset: 2048)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1094, file: !1032, line: 87, baseType: !299, size: 64, offset: 2112)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1094, file: !1032, line: 88, baseType: !299, size: 64, offset: 2176)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1094, file: !1032, line: 89, baseType: !1119, size: 704, offset: 2240)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !569, line: 111, size: 704, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1126}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1119, file: !569, line: 112, baseType: !568, size: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1119, file: !569, line: 113, baseType: !1062, size: 320, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1119, file: !569, line: 116, baseType: !1124, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !569, line: 18, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1119, file: !569, line: 117, baseType: !6, size: 32, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1094, file: !1032, line: 90, baseType: !1030, size: 64, offset: 2944)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !161, file: !20, line: 515, baseType: !1129, size: 64, offset: 8064)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1131, line: 117, size: 128, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1130, file: !1131, line: 118, baseType: !483, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1130, file: !1131, line: 119, baseType: !483, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1130, file: !1131, line: 120, baseType: !285, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !161, file: !20, line: 516, baseType: !16, size: 32, offset: 8128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !161, file: !20, line: 519, baseType: !16, size: 32, offset: 8160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !161, file: !20, line: 520, baseType: !1139, size: 64, offset: 8192)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !161, file: !20, line: 523, baseType: !1141, size: 64, offset: 8256)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !161, file: !20, line: 524, baseType: !16, size: 32, offset: 8320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !161, file: !20, line: 525, baseType: !1146, size: 64, offset: 8384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !161, file: !20, line: 526, baseType: !16, size: 32, offset: 8448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !161, file: !20, line: 533, baseType: !7, size: 64, offset: 8512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !161, file: !20, line: 534, baseType: !16, size: 32, offset: 8576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !161, file: !20, line: 535, baseType: !1153, size: 64, offset: 8640)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !161, file: !20, line: 536, baseType: !16, size: 32, offset: 8704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !161, file: !20, line: 539, baseType: !6, size: 32, offset: 8736)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !161, file: !20, line: 540, baseType: !1157, size: 64, offset: 8768)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1159, line: 32, size: 64, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1158, file: !1159, line: 33, baseType: !483, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1158, file: !1159, line: 34, baseType: !483, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !161, file: !20, line: 563, baseType: !87, size: 128, offset: 8832)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !161, file: !20, line: 565, baseType: !87, size: 128, offset: 8960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !161, file: !20, line: 568, baseType: !1166, size: 64, offset: 9088)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !161, file: !20, line: 570, baseType: !69, size: 32, offset: 9152)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !146, file: !109, line: 96, baseType: !1171, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!6, !145, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !109, line: 52, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !109, line: 98, baseType: !100, size: 1024, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !109, line: 79, baseType: !1179, size: 128, offset: 3136)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !109, line: 79, size: 128, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1179, file: !109, line: 81, baseType: !154, size: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !1179, file: !109, line: 83, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !109, line: 101, size: 384, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1193, !1194, !1195, !1196}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1184, file: !109, line: 102, baseType: !87, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !1184, file: !109, line: 103, baseType: !83, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !109, line: 104, baseType: !1189, size: 64, offset: 192)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !109, line: 104, size: 64, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !1189, file: !109, line: 106, baseType: !140, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1189, file: !109, line: 108, baseType: !1183, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !1184, file: !109, line: 110, baseType: !106, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1184, file: !109, line: 111, baseType: !74, size: 32, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1184, file: !109, line: 112, baseType: !603, size: 8, offset: 352)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1184, file: !109, line: 113, baseType: !603, size: 8, offset: 360)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !141, file: !109, line: 86, baseType: !568, size: 256, offset: 3264)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !141, file: !109, line: 88, baseType: !1199, align: 64, offset: 3520)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !581)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !109, line: 68, baseType: !16, size: 32, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !108, file: !109, line: 69, baseType: !16, size: 32, offset: 416)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !108, file: !109, line: 70, baseType: !16, size: 32, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !108, file: !109, line: 71, baseType: !16, size: 32, offset: 480)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !84, file: !61, line: 363, baseType: !1205, size: 256, offset: 2560)
!1205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !61, line: 360, size: 256, elements: !1206)
!1206 = !{!1207, !1223}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1205, file: !61, line: 361, baseType: !1208, size: 256)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !61, line: 235, size: 256, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1218, !1222}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !1208, file: !61, line: 236, baseType: !16, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !1208, file: !61, line: 237, baseType: !16, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !1208, file: !61, line: 238, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!6, !81, !1216, !16}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !1208, file: !61, line: 240, baseType: !1219, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !81, !11, !1216}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !1208, file: !61, line: 241, baseType: !1219, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1205, file: !61, line: 362, baseType: !1224, size: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !61, line: 255, size: 128, elements: !1225)
!1225 = !{!1226, !1230}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !1224, file: !61, line: 256, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!6, !81, !1216, !16, !11, !919}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !1224, file: !61, line: 258, baseType: !1227, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !84, file: !61, line: 365, baseType: !120, size: 64, offset: 2816)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !84, file: !61, line: 366, baseType: !78, size: 64, offset: 2880)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !84, file: !61, line: 367, baseType: !1234, size: 64, offset: 2944)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !83}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !84, file: !61, line: 369, baseType: !160, size: 64, offset: 3008)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !60, file: !61, line: 433, baseType: !1199, align: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !51, file: !52, line: 177, baseType: !1199, align: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_alg", file: !52, line: 225, size: 3904, elements: !1242)
!1242 = !{!1243, !1247, !1251, !1255, !1259, !1260, !1264, !1268, !1272, !1276, !1280, !1284, !1285}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1241, file: !52, line: 226, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!6, !50}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1241, file: !52, line: 227, baseType: !1248, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!6, !50, !1216, !16}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1241, file: !52, line: 229, baseType: !1252, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!6, !50, !11}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !1241, file: !52, line: 230, baseType: !1256, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!6, !50, !1216, !16, !11}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !1241, file: !52, line: 232, baseType: !1256, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !1241, file: !52, line: 234, baseType: !1261, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!6, !50, !7}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !1241, file: !52, line: 235, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!6, !50, !525}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !1241, file: !52, line: 236, baseType: !1269, size: 64, offset: 448)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!6, !55, !1216, !16}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !1241, file: !52, line: 238, baseType: !1273, size: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!6, !55}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !1241, file: !52, line: 239, baseType: !1277, size: 64, offset: 576)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !55}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !1241, file: !52, line: 240, baseType: !1281, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!6, !55, !55}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !1241, file: !52, line: 242, baseType: !16, size: 32, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !52, line: 244, baseType: !1286, size: 3136, offset: 768)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !52, line: 244, size: 3136, elements: !1287)
!1287 = !{!1288, !1294}
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !52, line: 245, baseType: !1289, size: 3136)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !52, line: 245, size: 3136, elements: !1290)
!1290 = !{!1291, !1292, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !1289, file: !52, line: 245, baseType: !16, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !1289, file: !52, line: 245, baseType: !16, size: 32, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1289, file: !52, line: 245, baseType: !84, size: 3072, align: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !1286, file: !52, line: 246, baseType: !1295, size: 3136)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_alg_common", file: !52, line: 70, size: 3136, elements: !1296)
!1296 = !{!1297, !1298, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !1295, file: !52, line: 70, baseType: !16, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !1295, file: !52, line: 70, baseType: !16, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1295, file: !52, line: 70, baseType: !84, size: 3072, align: 64, offset: 64)
!1300 = !{!0, !1301, !1306, !1311, !1313, !1317, !1322, !1327, !1332, !1337, !1342, !1347, !1352, !1375, !1380, !1411, !1416, !1421, !1426, !1429}
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !1303, isLocal: true, isDefinition: true)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 120, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 15)
!1306 = !DIGlobalVariableExpression(var: !1307, expr: !DIExpression())
!1307 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !1308, isLocal: true, isDefinition: true)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 208, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 26)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_jitterentropy_rng__197_358_jent_mod_init6198", scope: !17, file: !3, line: 358, type: !7, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(name: "__exitcall_jent_mod_exit", scope: !17, file: !3, line: 359, type: !1315, isLocal: true, isDefinition: true)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1316, line: 120, baseType: !1166)
!1316 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1317 = !DIGlobalVariableExpression(var: !1318, expr: !DIExpression())
!1318 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file199", scope: !17, file: !3, line: 361, type: !1319, isLocal: true, isDefinition: true, align: 8)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 384, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 48)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license200", scope: !17, file: !3, line: 361, type: !1324, isLocal: true, isDefinition: true, align: 8)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 312, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 39)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author201", scope: !17, file: !3, line: 362, type: !1329, isLocal: true, isDefinition: true, align: 8)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 504, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 63)
!1332 = !DIGlobalVariableExpression(var: !1333, expr: !DIExpression())
!1333 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description202", scope: !17, file: !3, line: 363, type: !1334, isLocal: true, isDefinition: true, align: 8)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 736, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 92)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace203", scope: !17, file: !3, line: 364, type: !1339, isLocal: true, isDefinition: true, align: 8)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 336, elements: !1340)
!1340 = !{!1341}
!1341 = !DISubrange(count: 42)
!1342 = !DIGlobalVariableExpression(var: !1343, expr: !DIExpression())
!1343 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto204", scope: !17, file: !3, line: 364, type: !1344, isLocal: true, isDefinition: true, align: 8)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 392, elements: !1345)
!1345 = !{!1346}
!1346 = !DISubrange(count: 49)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression())
!1348 = distinct !DIGlobalVariable(scope: null, file: !38, line: 480, type: !1349, isLocal: true, isDefinition: true)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 168, elements: !1350)
!1350 = !{!1351}
!1351 = !DISubrange(count: 21)
!1352 = !DIGlobalVariableExpression(var: !1353, expr: !DIExpression())
!1353 = distinct !DIGlobalVariable(name: "jent_alg", scope: !17, file: !3, line: 306, type: !1354, isLocal: true, isDefinition: true)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rng_alg", file: !1355, line: 58, size: 3328, elements: !1356)
!1355 = !DIFile(filename: "./include/crypto/rng.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8b1199181bccfbde4a70430b217a12d5")
!1356 = !{!1357, !1365, !1369, !1373, !1374}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "generate", scope: !1354, file: !1355, line: 59, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!6, !1361, !1216, !16, !11, !16}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_rng", file: !1355, line: 75, size: 256, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1362, file: !1355, line: 76, baseType: !60, size: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1354, file: !1355, line: 62, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!6, !1361, !1216, !16}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "set_ent", scope: !1354, file: !1355, line: 63, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !1361, !1216, !16}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "seedsize", scope: !1354, file: !1355, line: 70, baseType: !16, size: 32, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1354, file: !1355, line: 72, baseType: !84, size: 3072, align: 64, offset: 256)
!1375 = !DIGlobalVariableExpression(var: !1376, expr: !DIExpression())
!1376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !1377, isLocal: true, isDefinition: true)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 352, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 44)
!1380 = !DIGlobalVariableExpression(var: !1381, expr: !DIExpression())
!1381 = distinct !DIGlobalVariable(name: "_rs", scope: !1382, file: !3, line: 288, type: !1401, isLocal: true, isDefinition: true)
!1382 = distinct !DISubprogram(name: "jent_kcapi_random", scope: !3, file: !3, line: 262, type: !1359, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1400}
!1384 = !DILocalVariable(name: "tfm", arg: 1, scope: !1382, file: !3, line: 262, type: !1361)
!1385 = !DILocalVariable(name: "src", arg: 2, scope: !1382, file: !3, line: 263, type: !1216)
!1386 = !DILocalVariable(name: "slen", arg: 3, scope: !1382, file: !3, line: 263, type: !16)
!1387 = !DILocalVariable(name: "rdata", arg: 4, scope: !1382, file: !3, line: 264, type: !11)
!1388 = !DILocalVariable(name: "dlen", arg: 5, scope: !1382, file: !3, line: 264, type: !16)
!1389 = !DILocalVariable(name: "rng", scope: !1382, file: !3, line: 266, type: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jitterentropy", file: !3, line: 183, size: 256, elements: !1392)
!1392 = !{!1393, !1394, !1398, !1399}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "jent_lock", scope: !1391, file: !3, line: 184, baseType: !188, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_collector", scope: !1391, file: !3, line: 185, baseType: !1395, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "rand_data", file: !1397, line: 11, flags: DIFlagFwdDecl)
!1397 = !DIFile(filename: "crypto/jitterentropy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c0910846da4ec93573d9bd517fc64e3")
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !1391, file: !3, line: 186, baseType: !55, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sdesc", scope: !1391, file: !3, line: 187, baseType: !50, size: 64, offset: 192)
!1400 = !DILocalVariable(name: "ret", scope: !1382, file: !3, line: 267, type: !6)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1402, line: 15, size: 320, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1401, file: !1402, line: 16, baseType: !438, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1401, file: !1402, line: 18, baseType: !6, size: 32, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1401, file: !1402, line: 19, baseType: !6, size: 32, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1401, file: !1402, line: 20, baseType: !6, size: 32, offset: 96)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1401, file: !1402, line: 21, baseType: !6, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1401, file: !1402, line: 22, baseType: !299, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !1402, line: 23, baseType: !299, size: 64, offset: 256)
!1411 = !DIGlobalVariableExpression(var: !1412, expr: !DIExpression())
!1412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !1413, isLocal: true, isDefinition: true)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 144, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 18)
!1416 = !DIGlobalVariableExpression(var: !1417, expr: !DIExpression())
!1417 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !1418, isLocal: true, isDefinition: true)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 480, elements: !1419)
!1419 = !{!1420}
!1420 = !DISubrange(count: 60)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 230, type: !1423, isLocal: true, isDefinition: true)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 136, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 17)
!1426 = !DIGlobalVariableExpression(var: !1427, expr: !DIExpression())
!1427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 232, type: !1428, isLocal: true, isDefinition: true)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 312, elements: !1325)
!1429 = !DIGlobalVariableExpression(var: !1430, expr: !DIExpression())
!1430 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !1431, isLocal: true, isDefinition: true)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 688, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 86)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1446, !1447, !1451, !1452, !1453}
!1435 = !DILocalVariable(name: "hash_state", arg: 1, scope: !2, file: !3, line: 94, type: !7)
!1436 = !DILocalVariable(name: "time", arg: 2, scope: !2, file: !3, line: 94, type: !8)
!1437 = !DILocalVariable(name: "addtl", arg: 3, scope: !2, file: !3, line: 94, type: !11)
!1438 = !DILocalVariable(name: "addtl_len", arg: 4, scope: !2, file: !3, line: 95, type: !16)
!1439 = !DILocalVariable(name: "hash_loop_cnt", arg: 5, scope: !2, file: !3, line: 95, type: !8)
!1440 = !DILocalVariable(name: "stuck", arg: 6, scope: !2, file: !3, line: 96, type: !16)
!1441 = !DILocalVariable(name: "hash_state_desc", scope: !2, file: !3, line: 98, type: !50)
!1442 = !DILocalVariable(name: "__desc_desc", scope: !2, file: !3, line: 99, type: !1443, align: 64)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 3008, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 376)
!1446 = !DILocalVariable(name: "desc", scope: !2, file: !3, line: 99, type: !50)
!1447 = !DILocalVariable(name: "intermediary", scope: !2, file: !3, line: 100, type: !1448)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !1449)
!1449 = !{!1450}
!1450 = !DISubrange(count: 32)
!1451 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 101, type: !8)
!1452 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 102, type: !6)
!1453 = !DILabel(scope: !2, name: "err", file: !3, line: 155)
!1454 = !{i32 7, !"Dwarf Version", i32 5}
!1455 = !{i32 2, !"Debug Info Version", i32 3}
!1456 = !{i32 1, !"wchar_size", i32 2}
!1457 = !{i32 8, !"cf-protection-branch", i32 1}
!1458 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1459 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1460 = !{i32 1, !"Code Model", i32 2}
!1461 = !{i32 1, !"override-stack-alignment", i32 8}
!1462 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1463 = distinct !DISubprogram(name: "jent_zalloc", scope: !3, file: !3, line: 57, type: !1464, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!7, !16}
!1466 = !{!1467}
!1467 = !DILocalVariable(name: "len", arg: 1, scope: !1463, file: !3, line: 57, type: !16)
!1468 = !DILocation(line: 57, column: 32, scope: !1463)
!1469 = !DILocation(line: 59, column: 17, scope: !1463)
!1470 = !DILocation(line: 59, column: 9, scope: !1463)
!1471 = !DILocation(line: 59, column: 2, scope: !1463)
!1472 = distinct !DISubprogram(name: "kzalloc", scope: !38, file: !38, line: 719, type: !1473, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!7, !296, !48}
!1475 = !{!1476, !1477}
!1476 = !DILocalVariable(name: "size", arg: 1, scope: !1472, file: !38, line: 719, type: !296)
!1477 = !DILocalVariable(name: "flags", arg: 2, scope: !1472, file: !38, line: 719, type: !48)
!1478 = !DILocation(line: 719, column: 52, scope: !1472)
!1479 = !DILocation(line: 719, column: 64, scope: !1472)
!1480 = !DILocation(line: 721, column: 17, scope: !1472)
!1481 = !DILocation(line: 721, column: 23, scope: !1472)
!1482 = !DILocation(line: 721, column: 29, scope: !1472)
!1483 = !DILocation(line: 721, column: 9, scope: !1472)
!1484 = !DILocation(line: 721, column: 2, scope: !1472)
!1485 = distinct !DISubprogram(name: "jent_zfree", scope: !3, file: !3, line: 62, type: !667, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1486)
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "ptr", arg: 1, scope: !1485, file: !3, line: 62, type: !7)
!1488 = !DILocation(line: 62, column: 23, scope: !1485)
!1489 = !DILocation(line: 64, column: 18, scope: !1485)
!1490 = !DILocation(line: 64, column: 2, scope: !1485)
!1491 = !DILocation(line: 65, column: 1, scope: !1485)
!1492 = !DISubprogram(name: "kfree_sensitive", scope: !38, file: !38, line: 228, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !525}
!1495 = distinct !DISubprogram(name: "jent_get_nstime", scope: !3, file: !3, line: 76, type: !1496, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1499)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!1499 = !{!1500, !1501}
!1500 = !DILocalVariable(name: "out", arg: 1, scope: !1495, file: !3, line: 76, type: !1498)
!1501 = !DILocalVariable(name: "tmp", scope: !1495, file: !3, line: 78, type: !8)
!1502 = !DILocation(line: 76, column: 29, scope: !1495)
!1503 = !DILocation(line: 78, column: 2, scope: !1495)
!1504 = !DILocation(line: 78, column: 8, scope: !1495)
!1505 = !DILocation(line: 80, column: 8, scope: !1495)
!1506 = !DILocation(line: 80, column: 6, scope: !1495)
!1507 = !DILocation(line: 87, column: 6, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 87, column: 6)
!1509 = !DILocation(line: 87, column: 10, scope: !1508)
!1510 = !DILocation(line: 87, column: 6, scope: !1495)
!1511 = !DILocation(line: 88, column: 9, scope: !1508)
!1512 = !DILocation(line: 88, column: 7, scope: !1508)
!1513 = !DILocation(line: 88, column: 3, scope: !1508)
!1514 = !DILocation(line: 90, column: 9, scope: !1495)
!1515 = !DILocation(line: 90, column: 3, scope: !1495)
!1516 = !DILocation(line: 90, column: 7, scope: !1495)
!1517 = !DILocation(line: 91, column: 31, scope: !1495)
!1518 = !DILocation(line: 91, column: 2, scope: !1495)
!1519 = !DILocation(line: 92, column: 1, scope: !1495)
!1520 = distinct !DISubprogram(name: "random_get_entropy", scope: !1521, file: !1521, line: 8, type: !1522, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!1521 = !DIFile(filename: "./arch/x86/include/asm/timex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3df40e7baf3f17ad39a0c876dccc2058")
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!299}
!1524 = !DILocation(line: 13, column: 9, scope: !1520)
!1525 = !DILocation(line: 13, column: 2, scope: !1520)
!1526 = distinct !DISubprogram(name: "ktime_get_ns", scope: !1527, file: !1527, line: 152, type: !1528, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!1527 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!412}
!1530 = !DILocation(line: 154, column: 21, scope: !1526)
!1531 = !DILocation(line: 154, column: 9, scope: !1526)
!1532 = !DILocation(line: 154, column: 2, scope: !1526)
!1533 = distinct !DISubprogram(name: "jent_raw_hires_entropy_store", scope: !1397, file: !1397, line: 26, type: !1534, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!6, !75}
!1536 = !{!1537}
!1537 = !DILocalVariable(name: "value", arg: 1, scope: !1533, file: !1397, line: 26, type: !75)
!1538 = !DILocation(line: 26, column: 54, scope: !1533)
!1539 = !DILocation(line: 26, column: 63, scope: !1533)
!1540 = !DILocation(line: 94, column: 26, scope: !2)
!1541 = !DILocation(line: 94, column: 44, scope: !2)
!1542 = !DILocation(line: 94, column: 54, scope: !2)
!1543 = !DILocation(line: 95, column: 19, scope: !2)
!1544 = !DILocation(line: 95, column: 36, scope: !2)
!1545 = !DILocation(line: 96, column: 19, scope: !2)
!1546 = !DILocation(line: 98, column: 2, scope: !2)
!1547 = !DILocation(line: 98, column: 21, scope: !2)
!1548 = !DILocation(line: 98, column: 60, scope: !2)
!1549 = !DILocation(line: 99, column: 2, scope: !2)
!1550 = !DILocation(line: 100, column: 2, scope: !2)
!1551 = !DILocation(line: 100, column: 5, scope: !2)
!1552 = !DILocation(line: 101, column: 2, scope: !2)
!1553 = !DILocation(line: 101, column: 8, scope: !2)
!1554 = !DILocation(line: 102, column: 2, scope: !2)
!1555 = !DILocation(line: 102, column: 6, scope: !2)
!1556 = !DILocation(line: 104, column: 14, scope: !2)
!1557 = !DILocation(line: 104, column: 31, scope: !2)
!1558 = !DILocation(line: 104, column: 2, scope: !2)
!1559 = !DILocation(line: 104, column: 8, scope: !2)
!1560 = !DILocation(line: 104, column: 12, scope: !2)
!1561 = !DILocation(line: 106, column: 54, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !2, file: !3, line: 106, column: 6)
!1563 = !DILocation(line: 106, column: 60, scope: !1562)
!1564 = !DILocation(line: 106, column: 30, scope: !1562)
!1565 = !DILocation(line: 106, column: 27, scope: !1562)
!1566 = !DILocation(line: 106, column: 6, scope: !2)
!1567 = !DILocation(line: 107, column: 3, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 107, column: 3)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 107, column: 3)
!1570 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 106, column: 66)
!1571 = !DILocation(line: 107, column: 3, scope: !1569)
!1572 = !DILocation(line: 107, column: 3, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 107, column: 3)
!1574 = !DILocation(line: 107, column: 3, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 107, column: 3)
!1576 = !DILocation(line: 108, column: 3, scope: !1570)
!1577 = !DILocation(line: 124, column: 9, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !2, file: !3, line: 124, column: 2)
!1579 = !DILocation(line: 124, column: 7, scope: !1578)
!1580 = !DILocation(line: 124, column: 14, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 124, column: 2)
!1582 = !DILocation(line: 124, column: 18, scope: !1581)
!1583 = !DILocation(line: 124, column: 16, scope: !1581)
!1584 = !DILocation(line: 124, column: 2, scope: !1578)
!1585 = !DILocation(line: 125, column: 27, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 124, column: 38)
!1587 = !DILocation(line: 125, column: 9, scope: !1586)
!1588 = !DILocation(line: 126, column: 29, scope: !1586)
!1589 = !DILocation(line: 126, column: 35, scope: !1586)
!1590 = !DILocation(line: 126, column: 9, scope: !1586)
!1591 = !DILocation(line: 128, column: 28, scope: !1586)
!1592 = !DILocation(line: 128, column: 34, scope: !1586)
!1593 = !DILocation(line: 128, column: 41, scope: !1586)
!1594 = !DILocation(line: 128, column: 52, scope: !1586)
!1595 = !DILocation(line: 128, column: 9, scope: !1586)
!1596 = !DILocation(line: 125, column: 7, scope: !1586)
!1597 = !DILocation(line: 129, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 129, column: 7)
!1599 = !DILocation(line: 129, column: 7, scope: !1586)
!1600 = !DILocation(line: 130, column: 4, scope: !1598)
!1601 = !DILocation(line: 131, column: 2, scope: !1586)
!1602 = !DILocation(line: 124, column: 34, scope: !1581)
!1603 = !DILocation(line: 124, column: 2, scope: !1581)
!1604 = distinct !{!1604, !1584, !1605, !1606, !1607}
!1605 = !DILocation(line: 131, column: 2, scope: !1578)
!1606 = !{!"llvm.loop.mustprogress"}
!1607 = !{!"llvm.loop.unroll.disable"}
!1608 = !DILocation(line: 137, column: 28, scope: !2)
!1609 = !DILocation(line: 137, column: 34, scope: !2)
!1610 = !DILocation(line: 137, column: 8, scope: !2)
!1611 = !DILocation(line: 137, column: 6, scope: !2)
!1612 = !DILocation(line: 138, column: 6, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !2, file: !3, line: 138, column: 6)
!1614 = !DILocation(line: 138, column: 6, scope: !2)
!1615 = !DILocation(line: 139, column: 3, scope: !1613)
!1616 = !DILocation(line: 150, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !2, file: !3, line: 150, column: 6)
!1618 = !DILocation(line: 150, column: 6, scope: !2)
!1619 = !DILocation(line: 151, column: 29, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 150, column: 14)
!1621 = !DILocation(line: 151, column: 9, scope: !1620)
!1622 = !DILocation(line: 151, column: 7, scope: !1620)
!1623 = !DILocation(line: 153, column: 2, scope: !1620)
!1624 = !DILocation(line: 155, column: 1, scope: !2)
!1625 = !DILocation(line: 156, column: 18, scope: !2)
!1626 = !DILocation(line: 156, column: 2, scope: !2)
!1627 = !DILocation(line: 157, column: 19, scope: !2)
!1628 = !DILocation(line: 157, column: 2, scope: !2)
!1629 = !DILocation(line: 159, column: 9, scope: !2)
!1630 = !DILocation(line: 159, column: 2, scope: !2)
!1631 = !DILocation(line: 160, column: 1, scope: !2)
!1632 = distinct !DISubprogram(name: "crypto_shash_digestsize", scope: !52, file: !52, line: 840, type: !1633, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!16, !55}
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "tfm", arg: 1, scope: !1632, file: !52, line: 840, type: !55)
!1637 = !DILocation(line: 840, column: 73, scope: !1632)
!1638 = !DILocation(line: 842, column: 26, scope: !1632)
!1639 = !DILocation(line: 842, column: 9, scope: !1632)
!1640 = !DILocation(line: 842, column: 32, scope: !1632)
!1641 = !DILocation(line: 842, column: 2, scope: !1632)
!1642 = !DISubprogram(name: "___ratelimit", scope: !1402, file: !1402, line: 44, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!6, !1645, !177}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1646 = !DISubprogram(name: "_printk", scope: !1647, file: !1647, line: 153, type: !1648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1647 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!6, !177, null}
!1650 = distinct !DISubprogram(name: "crypto_shash_init", scope: !52, file: !52, line: 994, type: !1245, scopeLine: 995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1651)
!1651 = !{!1652, !1653}
!1652 = !DILocalVariable(name: "desc", arg: 1, scope: !1650, file: !52, line: 994, type: !50)
!1653 = !DILocalVariable(name: "tfm", scope: !1650, file: !52, line: 996, type: !55)
!1654 = !DILocation(line: 994, column: 56, scope: !1650)
!1655 = !DILocation(line: 996, column: 2, scope: !1650)
!1656 = !DILocation(line: 996, column: 23, scope: !1650)
!1657 = !DILocation(line: 996, column: 29, scope: !1650)
!1658 = !DILocation(line: 996, column: 35, scope: !1650)
!1659 = !DILocation(line: 998, column: 29, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1650, file: !52, line: 998, column: 6)
!1661 = !DILocation(line: 998, column: 6, scope: !1660)
!1662 = !DILocation(line: 998, column: 34, scope: !1660)
!1663 = !DILocation(line: 998, column: 6, scope: !1650)
!1664 = !DILocation(line: 999, column: 3, scope: !1660)
!1665 = !DILocation(line: 1001, column: 26, scope: !1650)
!1666 = !DILocation(line: 1001, column: 9, scope: !1650)
!1667 = !DILocation(line: 1001, column: 32, scope: !1650)
!1668 = !DILocation(line: 1001, column: 37, scope: !1650)
!1669 = !DILocation(line: 1001, column: 2, scope: !1650)
!1670 = !DILocation(line: 1002, column: 1, scope: !1650)
!1671 = !DISubprogram(name: "crypto_shash_update", scope: !52, file: !52, line: 1016, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1672 = !DISubprogram(name: "crypto_shash_finup", scope: !52, file: !52, line: 1050, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1673 = distinct !DISubprogram(name: "shash_desc_zero", scope: !52, file: !52, line: 1053, type: !1674, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !50}
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "desc", arg: 1, scope: !1673, file: !52, line: 1053, type: !50)
!1678 = !DILocation(line: 1053, column: 55, scope: !1673)
!1679 = !DILocation(line: 1055, column: 19, scope: !1673)
!1680 = !DILocation(line: 1056, column: 43, scope: !1673)
!1681 = !DILocation(line: 1056, column: 49, scope: !1673)
!1682 = !DILocation(line: 1056, column: 21, scope: !1673)
!1683 = !DILocation(line: 1056, column: 19, scope: !1673)
!1684 = !DILocation(line: 1055, column: 2, scope: !1673)
!1685 = !DILocation(line: 1057, column: 1, scope: !1673)
!1686 = distinct !DISubprogram(name: "memzero_explicit", scope: !1687, file: !1687, line: 276, type: !1688, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1690)
!1687 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !7, !296}
!1690 = !{!1691, !1692}
!1691 = !DILocalVariable(name: "s", arg: 1, scope: !1686, file: !1687, line: 276, type: !7)
!1692 = !DILocalVariable(name: "count", arg: 2, scope: !1686, file: !1687, line: 276, type: !296)
!1693 = !DILocation(line: 276, column: 43, scope: !1686)
!1694 = !DILocation(line: 276, column: 53, scope: !1686)
!1695 = !DILocation(line: 278, column: 9, scope: !1686)
!1696 = !DILocation(line: 278, column: 15, scope: !1686)
!1697 = !DILocation(line: 278, column: 2, scope: !1686)
!1698 = !DILocation(line: 279, column: 2, scope: !1686)
!1699 = !{i64 2149360576}
!1700 = !DILocation(line: 280, column: 1, scope: !1686)
!1701 = distinct !DISubprogram(name: "jent_read_random_block", scope: !3, file: !3, line: 162, type: !1702, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!6, !7, !249, !16}
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710}
!1705 = !DILocalVariable(name: "hash_state", arg: 1, scope: !1701, file: !3, line: 162, type: !7)
!1706 = !DILocalVariable(name: "dst", arg: 2, scope: !1701, file: !3, line: 162, type: !249)
!1707 = !DILocalVariable(name: "dst_len", arg: 3, scope: !1701, file: !3, line: 162, type: !16)
!1708 = !DILocalVariable(name: "hash_state_desc", scope: !1701, file: !3, line: 164, type: !50)
!1709 = !DILocalVariable(name: "jent_block", scope: !1701, file: !3, line: 165, type: !1448)
!1710 = !DILocalVariable(name: "ret", scope: !1701, file: !3, line: 167, type: !6)
!1711 = !DILocation(line: 162, column: 34, scope: !1701)
!1712 = !DILocation(line: 162, column: 52, scope: !1701)
!1713 = !DILocation(line: 162, column: 70, scope: !1701)
!1714 = !DILocation(line: 164, column: 2, scope: !1701)
!1715 = !DILocation(line: 164, column: 21, scope: !1701)
!1716 = !DILocation(line: 164, column: 60, scope: !1701)
!1717 = !DILocation(line: 165, column: 2, scope: !1701)
!1718 = !DILocation(line: 165, column: 5, scope: !1701)
!1719 = !DILocation(line: 167, column: 2, scope: !1701)
!1720 = !DILocation(line: 167, column: 6, scope: !1701)
!1721 = !DILocation(line: 167, column: 31, scope: !1701)
!1722 = !DILocation(line: 167, column: 48, scope: !1701)
!1723 = !DILocation(line: 167, column: 12, scope: !1701)
!1724 = !DILocation(line: 168, column: 23, scope: !1701)
!1725 = !DILocation(line: 168, column: 5, scope: !1701)
!1726 = !DILocation(line: 169, column: 25, scope: !1701)
!1727 = !DILocation(line: 169, column: 42, scope: !1701)
!1728 = !DILocation(line: 169, column: 5, scope: !1701)
!1729 = !DILocation(line: 172, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 172, column: 6)
!1731 = !DILocation(line: 172, column: 11, scope: !1730)
!1732 = !DILocation(line: 172, column: 14, scope: !1730)
!1733 = !DILocation(line: 172, column: 6, scope: !1701)
!1734 = !DILocation(line: 173, column: 10, scope: !1730)
!1735 = !DILocation(line: 173, column: 3, scope: !1730)
!1736 = !DILocation(line: 173, column: 27, scope: !1730)
!1737 = !DILocation(line: 175, column: 19, scope: !1701)
!1738 = !DILocation(line: 175, column: 2, scope: !1701)
!1739 = !DILocation(line: 176, column: 9, scope: !1701)
!1740 = !DILocation(line: 177, column: 1, scope: !1701)
!1741 = !DILocation(line: 176, column: 2, scope: !1701)
!1742 = !DISubprogram(name: "crypto_shash_final", scope: !52, file: !52, line: 1033, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = distinct !DISubprogram(name: "jent_mod_exit", scope: !3, file: !3, line: 352, type: !1167, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!1744 = !DILocation(line: 354, column: 2, scope: !1743)
!1745 = !DILocation(line: 355, column: 2, scope: !1743)
!1746 = !DILocation(line: 356, column: 1, scope: !1743)
!1747 = distinct !DISubprogram(name: "jent_testing_exit", scope: !1397, file: !1397, line: 28, type: !1167, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!1748 = !DILocation(line: 28, column: 46, scope: !1747)
!1749 = !DISubprogram(name: "crypto_unregister_rng", scope: !1750, file: !1750, line: 16, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1750 = !DIFile(filename: "./include/crypto/internal/rng.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "104ee6ff9ed6d2a3e4aa35168b6ee914")
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1753}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1754 = distinct !DISubprogram(name: "__initstub__kmod_jitterentropy_rng__197_358_jent_mod_init6", scope: !3, file: !3, line: 358, type: !934, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!1755 = !DILocation(line: 358, column: 1, scope: !1754)
!1756 = distinct !DISubprogram(name: "jent_mod_init", scope: !3, file: !3, line: 321, type: !934, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1757)
!1757 = !{!1758, !1759, !1760, !1761}
!1758 = !DILocalVariable(name: "__desc_desc", scope: !1756, file: !3, line: 323, type: !1443, align: 64)
!1759 = !DILocalVariable(name: "desc", scope: !1756, file: !3, line: 323, type: !50)
!1760 = !DILocalVariable(name: "tfm", scope: !1756, file: !3, line: 324, type: !55)
!1761 = !DILocalVariable(name: "ret", scope: !1756, file: !3, line: 325, type: !6)
!1762 = !DILocation(line: 323, column: 2, scope: !1756)
!1763 = !DILocation(line: 324, column: 2, scope: !1756)
!1764 = !DILocation(line: 324, column: 23, scope: !1756)
!1765 = !DILocation(line: 325, column: 2, scope: !1756)
!1766 = !DILocation(line: 325, column: 6, scope: !1756)
!1767 = !DILocation(line: 327, column: 2, scope: !1756)
!1768 = !DILocation(line: 329, column: 8, scope: !1756)
!1769 = !DILocation(line: 329, column: 6, scope: !1756)
!1770 = !DILocation(line: 330, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 330, column: 6)
!1772 = !DILocation(line: 330, column: 6, scope: !1771)
!1773 = !DILocation(line: 330, column: 6, scope: !1756)
!1774 = !DILocation(line: 331, column: 3, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 330, column: 19)
!1776 = !DILocation(line: 332, column: 18, scope: !1775)
!1777 = !DILocation(line: 332, column: 10, scope: !1775)
!1778 = !DILocation(line: 332, column: 3, scope: !1775)
!1779 = !DILocation(line: 335, column: 14, scope: !1756)
!1780 = !DILocation(line: 335, column: 2, scope: !1756)
!1781 = !DILocation(line: 335, column: 8, scope: !1756)
!1782 = !DILocation(line: 335, column: 12, scope: !1756)
!1783 = !DILocation(line: 336, column: 20, scope: !1756)
!1784 = !DILocation(line: 336, column: 2, scope: !1756)
!1785 = !DILocation(line: 337, column: 26, scope: !1756)
!1786 = !DILocation(line: 337, column: 8, scope: !1756)
!1787 = !DILocation(line: 337, column: 6, scope: !1756)
!1788 = !DILocation(line: 338, column: 18, scope: !1756)
!1789 = !DILocation(line: 338, column: 2, scope: !1756)
!1790 = !DILocation(line: 339, column: 20, scope: !1756)
!1791 = !DILocation(line: 339, column: 2, scope: !1756)
!1792 = !DILocation(line: 340, column: 6, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 340, column: 6)
!1794 = !DILocation(line: 340, column: 6, scope: !1756)
!1795 = !DILocation(line: 345, column: 3, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 340, column: 11)
!1797 = !DILocation(line: 346, column: 3, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 346, column: 3)
!1799 = !DILocation(line: 346, column: 3, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 346, column: 3)
!1801 = !DILocation(line: 347, column: 3, scope: !1796)
!1802 = !DILocation(line: 349, column: 9, scope: !1756)
!1803 = !DILocation(line: 349, column: 2, scope: !1756)
!1804 = !DILocation(line: 350, column: 1, scope: !1756)
!1805 = distinct !DISubprogram(name: "kmalloc", scope: !38, file: !38, line: 591, type: !1473, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1806)
!1806 = !{!1807, !1808, !1809}
!1807 = !DILocalVariable(name: "size", arg: 1, scope: !1805, file: !38, line: 591, type: !296)
!1808 = !DILocalVariable(name: "flags", arg: 2, scope: !1805, file: !38, line: 591, type: !48)
!1809 = !DILocalVariable(name: "index", scope: !1810, file: !38, line: 594, type: !16)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !38, line: 593, column: 42)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !38, line: 593, column: 6)
!1812 = !DILocation(line: 591, column: 61, scope: !1805)
!1813 = !DILocation(line: 591, column: 73, scope: !1805)
!1814 = !DILocation(line: 593, column: 27, scope: !1811)
!1815 = !DILocation(line: 593, column: 6, scope: !1811)
!1816 = !DILocation(line: 593, column: 33, scope: !1811)
!1817 = !DILocation(line: 593, column: 36, scope: !1811)
!1818 = !DILocation(line: 593, column: 6, scope: !1805)
!1819 = !DILocation(line: 594, column: 3, scope: !1810)
!1820 = !DILocation(line: 594, column: 16, scope: !1810)
!1821 = !DILocation(line: 596, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1810, file: !38, line: 596, column: 7)
!1823 = !DILocation(line: 596, column: 12, scope: !1822)
!1824 = !DILocation(line: 596, column: 7, scope: !1810)
!1825 = !DILocation(line: 597, column: 25, scope: !1822)
!1826 = !DILocation(line: 597, column: 31, scope: !1822)
!1827 = !DILocation(line: 597, column: 11, scope: !1822)
!1828 = !DILocation(line: 597, column: 4, scope: !1822)
!1829 = !DILocation(line: 599, column: 11, scope: !1810)
!1830 = !DILocation(line: 599, column: 9, scope: !1810)
!1831 = !DILocation(line: 601, column: 33, scope: !1810)
!1832 = !DILocation(line: 601, column: 40, scope: !1810)
!1833 = !DILocation(line: 601, column: 20, scope: !1810)
!1834 = !DILocation(line: 601, column: 5, scope: !1810)
!1835 = !DILocation(line: 601, column: 51, scope: !1810)
!1836 = !DILocation(line: 602, column: 5, scope: !1810)
!1837 = !DILocation(line: 602, column: 12, scope: !1810)
!1838 = !DILocation(line: 600, column: 10, scope: !1810)
!1839 = !DILocation(line: 600, column: 3, scope: !1810)
!1840 = !DILocation(line: 603, column: 2, scope: !1811)
!1841 = !DILocation(line: 604, column: 19, scope: !1805)
!1842 = !DILocation(line: 604, column: 25, scope: !1805)
!1843 = !DILocation(line: 604, column: 9, scope: !1805)
!1844 = !DILocation(line: 604, column: 2, scope: !1805)
!1845 = !DILocation(line: 605, column: 1, scope: !1805)
!1846 = !DISubprogram(name: "kmalloc_large", scope: !38, file: !38, line: 531, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1847 = distinct !DISubprogram(name: "__kmalloc_index", scope: !38, file: !38, line: 444, type: !1848, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!16, !296, !603}
!1850 = !{!1851, !1852}
!1851 = !DILocalVariable(name: "size", arg: 1, scope: !1847, file: !38, line: 444, type: !296)
!1852 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1847, file: !38, line: 445, type: !603)
!1853 = !DILocation(line: 444, column: 60, scope: !1847)
!1854 = !DILocation(line: 445, column: 16, scope: !1847)
!1855 = !DILocation(line: 447, column: 7, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 447, column: 6)
!1857 = !DILocation(line: 447, column: 6, scope: !1847)
!1858 = !DILocation(line: 448, column: 3, scope: !1856)
!1859 = !DILocation(line: 450, column: 6, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 450, column: 6)
!1861 = !DILocation(line: 450, column: 11, scope: !1860)
!1862 = !DILocation(line: 450, column: 6, scope: !1847)
!1863 = !DILocation(line: 451, column: 3, scope: !1860)
!1864 = !DILocation(line: 453, column: 32, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 453, column: 6)
!1866 = !DILocation(line: 453, column: 37, scope: !1865)
!1867 = !DILocation(line: 453, column: 42, scope: !1865)
!1868 = !DILocation(line: 453, column: 45, scope: !1865)
!1869 = !DILocation(line: 453, column: 50, scope: !1865)
!1870 = !DILocation(line: 453, column: 6, scope: !1847)
!1871 = !DILocation(line: 454, column: 3, scope: !1865)
!1872 = !DILocation(line: 455, column: 32, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 455, column: 6)
!1874 = !DILocation(line: 455, column: 37, scope: !1873)
!1875 = !DILocation(line: 455, column: 43, scope: !1873)
!1876 = !DILocation(line: 455, column: 46, scope: !1873)
!1877 = !DILocation(line: 455, column: 51, scope: !1873)
!1878 = !DILocation(line: 455, column: 6, scope: !1847)
!1879 = !DILocation(line: 456, column: 3, scope: !1873)
!1880 = !DILocation(line: 457, column: 6, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 457, column: 6)
!1882 = !DILocation(line: 457, column: 11, scope: !1881)
!1883 = !DILocation(line: 457, column: 6, scope: !1847)
!1884 = !DILocation(line: 457, column: 26, scope: !1881)
!1885 = !DILocation(line: 458, column: 6, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 458, column: 6)
!1887 = !DILocation(line: 458, column: 11, scope: !1886)
!1888 = !DILocation(line: 458, column: 6, scope: !1847)
!1889 = !DILocation(line: 458, column: 26, scope: !1886)
!1890 = !DILocation(line: 459, column: 6, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 459, column: 6)
!1892 = !DILocation(line: 459, column: 11, scope: !1891)
!1893 = !DILocation(line: 459, column: 6, scope: !1847)
!1894 = !DILocation(line: 459, column: 26, scope: !1891)
!1895 = !DILocation(line: 460, column: 6, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 460, column: 6)
!1897 = !DILocation(line: 460, column: 11, scope: !1896)
!1898 = !DILocation(line: 460, column: 6, scope: !1847)
!1899 = !DILocation(line: 460, column: 26, scope: !1896)
!1900 = !DILocation(line: 461, column: 6, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 461, column: 6)
!1902 = !DILocation(line: 461, column: 11, scope: !1901)
!1903 = !DILocation(line: 461, column: 6, scope: !1847)
!1904 = !DILocation(line: 461, column: 26, scope: !1901)
!1905 = !DILocation(line: 462, column: 6, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 462, column: 6)
!1907 = !DILocation(line: 462, column: 11, scope: !1906)
!1908 = !DILocation(line: 462, column: 6, scope: !1847)
!1909 = !DILocation(line: 462, column: 26, scope: !1906)
!1910 = !DILocation(line: 463, column: 6, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 463, column: 6)
!1912 = !DILocation(line: 463, column: 11, scope: !1911)
!1913 = !DILocation(line: 463, column: 6, scope: !1847)
!1914 = !DILocation(line: 463, column: 26, scope: !1911)
!1915 = !DILocation(line: 464, column: 6, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 464, column: 6)
!1917 = !DILocation(line: 464, column: 11, scope: !1916)
!1918 = !DILocation(line: 464, column: 6, scope: !1847)
!1919 = !DILocation(line: 464, column: 26, scope: !1916)
!1920 = !DILocation(line: 465, column: 6, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 465, column: 6)
!1922 = !DILocation(line: 465, column: 11, scope: !1921)
!1923 = !DILocation(line: 465, column: 6, scope: !1847)
!1924 = !DILocation(line: 465, column: 26, scope: !1921)
!1925 = !DILocation(line: 466, column: 6, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 466, column: 6)
!1927 = !DILocation(line: 466, column: 11, scope: !1926)
!1928 = !DILocation(line: 466, column: 6, scope: !1847)
!1929 = !DILocation(line: 466, column: 26, scope: !1926)
!1930 = !DILocation(line: 467, column: 6, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 467, column: 6)
!1932 = !DILocation(line: 467, column: 11, scope: !1931)
!1933 = !DILocation(line: 467, column: 6, scope: !1847)
!1934 = !DILocation(line: 467, column: 26, scope: !1931)
!1935 = !DILocation(line: 468, column: 6, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 468, column: 6)
!1937 = !DILocation(line: 468, column: 11, scope: !1936)
!1938 = !DILocation(line: 468, column: 6, scope: !1847)
!1939 = !DILocation(line: 468, column: 26, scope: !1936)
!1940 = !DILocation(line: 469, column: 6, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 469, column: 6)
!1942 = !DILocation(line: 469, column: 11, scope: !1941)
!1943 = !DILocation(line: 469, column: 6, scope: !1847)
!1944 = !DILocation(line: 469, column: 26, scope: !1941)
!1945 = !DILocation(line: 470, column: 6, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 470, column: 6)
!1947 = !DILocation(line: 470, column: 11, scope: !1946)
!1948 = !DILocation(line: 470, column: 6, scope: !1847)
!1949 = !DILocation(line: 470, column: 26, scope: !1946)
!1950 = !DILocation(line: 471, column: 6, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 471, column: 6)
!1952 = !DILocation(line: 471, column: 11, scope: !1951)
!1953 = !DILocation(line: 471, column: 6, scope: !1847)
!1954 = !DILocation(line: 471, column: 26, scope: !1951)
!1955 = !DILocation(line: 472, column: 6, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 472, column: 6)
!1957 = !DILocation(line: 472, column: 11, scope: !1956)
!1958 = !DILocation(line: 472, column: 6, scope: !1847)
!1959 = !DILocation(line: 472, column: 26, scope: !1956)
!1960 = !DILocation(line: 473, column: 6, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 473, column: 6)
!1962 = !DILocation(line: 473, column: 11, scope: !1961)
!1963 = !DILocation(line: 473, column: 6, scope: !1847)
!1964 = !DILocation(line: 473, column: 26, scope: !1961)
!1965 = !DILocation(line: 474, column: 6, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 474, column: 6)
!1967 = !DILocation(line: 474, column: 11, scope: !1966)
!1968 = !DILocation(line: 474, column: 6, scope: !1847)
!1969 = !DILocation(line: 474, column: 27, scope: !1966)
!1970 = !DILocation(line: 475, column: 6, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 475, column: 6)
!1972 = !DILocation(line: 475, column: 11, scope: !1971)
!1973 = !DILocation(line: 475, column: 6, scope: !1847)
!1974 = !DILocation(line: 475, column: 32, scope: !1971)
!1975 = !DILocation(line: 477, column: 50, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1847, file: !38, line: 477, column: 6)
!1977 = !{i8 0, i8 2}
!1978 = !DILocation(line: 477, column: 6, scope: !1847)
!1979 = !DILocation(line: 478, column: 3, scope: !1976)
!1980 = !DILocation(line: 478, column: 3, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !38, line: 478, column: 3)
!1982 = distinct !DILexicalBlock(scope: !1976, file: !38, line: 478, column: 3)
!1983 = !{i32 -2143494006}
!1984 = !DILocation(line: 478, column: 3, scope: !1982)
!1985 = !DILocation(line: 480, column: 3, scope: !1976)
!1986 = !DILocation(line: 480, column: 3, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1976, file: !38, line: 480, column: 3)
!1988 = !DILocation(line: 480, column: 3, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1987, file: !38, line: 480, column: 3)
!1990 = !DILocation(line: 480, column: 3, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !38, line: 480, column: 3)
!1992 = !{i64 2151473493, i64 2151473522, i64 2151473568, i64 2151473626, i64 2151473680, i64 2151473734, i64 2151473789, i64 2151473820}
!1993 = !DILocation(line: 483, column: 2, scope: !1847)
!1994 = !DILocation(line: 484, column: 1, scope: !1847)
!1995 = !DISubprogram(name: "kmalloc_trace", scope: !38, file: !38, line: 525, type: !1996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!7, !1998, !48, !296}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2000, line: 11, flags: DIFlagFwdDecl)
!2000 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2001 = distinct !DISubprogram(name: "kmalloc_type", scope: !38, file: !38, line: 401, type: !2002, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!37, !48, !299}
!2004 = !{!2005, !2006}
!2005 = !DILocalVariable(name: "flags", arg: 1, scope: !2001, file: !38, line: 401, type: !48)
!2006 = !DILocalVariable(name: "caller", arg: 2, scope: !2001, file: !38, line: 401, type: !299)
!2007 = !DILocation(line: 401, column: 67, scope: !2001)
!2008 = !DILocation(line: 401, column: 88, scope: !2001)
!2009 = !DILocation(line: 407, column: 6, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2001, file: !38, line: 407, column: 6)
!2011 = !DILocation(line: 407, column: 6, scope: !2001)
!2012 = !DILocation(line: 413, column: 3, scope: !2010)
!2013 = !DILocation(line: 423, column: 38, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2001, file: !38, line: 423, column: 6)
!2015 = !DILocation(line: 423, column: 44, scope: !2014)
!2016 = !DILocation(line: 423, column: 6, scope: !2001)
!2017 = !DILocation(line: 424, column: 3, scope: !2014)
!2018 = !DILocation(line: 426, column: 3, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2001, file: !38, line: 425, column: 6)
!2020 = !DILocation(line: 429, column: 1, scope: !2001)
!2021 = !DISubprogram(name: "__kmalloc", scope: !38, file: !38, line: 488, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DISubprogram(name: "__compiletime_assert_117", scope: !38, file: !38, line: 478, type: !1167, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2023 = distinct !DISubprogram(name: "rdtsc", scope: !2024, file: !2024, line: 180, type: !2025, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2027)
!2024 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!10}
!2027 = !{!2028, !2029}
!2028 = !DILocalVariable(name: "low", scope: !2023, file: !2024, line: 182, type: !299)
!2029 = !DILocalVariable(name: "high", scope: !2023, file: !2024, line: 182, type: !299)
!2030 = !DILocation(line: 182, column: 2, scope: !2023)
!2031 = !DILocation(line: 184, column: 2, scope: !2023)
!2032 = !{i64 1742176}
!2033 = !DILocation(line: 186, column: 9, scope: !2023)
!2034 = !DILocation(line: 187, column: 1, scope: !2023)
!2035 = !DILocation(line: 186, column: 2, scope: !2023)
!2036 = distinct !DISubprogram(name: "ktime_to_ns", scope: !2037, file: !2037, line: 80, type: !2038, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2042)
!2037 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!422, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2037, line: 29, baseType: !422)
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "kt", arg: 1, scope: !2036, file: !2037, line: 80, type: !2040)
!2044 = !DILocation(line: 80, column: 45, scope: !2036)
!2045 = !DILocation(line: 82, column: 9, scope: !2036)
!2046 = !DILocation(line: 82, column: 2, scope: !2036)
!2047 = !DISubprogram(name: "ktime_get", scope: !1527, file: !1527, line: 67, type: !2048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!2041}
!2050 = distinct !DISubprogram(name: "crypto_shash_alg", scope: !52, file: !52, line: 826, type: !2051, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!1240, !55}
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "tfm", arg: 1, scope: !2050, file: !52, line: 826, type: !55)
!2055 = !DILocation(line: 826, column: 71, scope: !2050)
!2056 = !DILocation(line: 828, column: 45, scope: !2050)
!2057 = !DILocation(line: 828, column: 28, scope: !2050)
!2058 = !DILocation(line: 828, column: 51, scope: !2050)
!2059 = !DILocation(line: 828, column: 9, scope: !2050)
!2060 = !DILocation(line: 828, column: 2, scope: !2050)
!2061 = distinct !DISubprogram(name: "__crypto_shash_alg", scope: !52, file: !52, line: 821, type: !2062, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!1240, !83}
!2064 = !{!2065, !2066}
!2065 = !DILocalVariable(name: "alg", arg: 1, scope: !2061, file: !52, line: 821, type: !83)
!2066 = !DILocalVariable(name: "__mptr", scope: !2067, file: !52, line: 823, type: !7)
!2067 = distinct !DILexicalBlock(scope: !2061, file: !52, line: 823, column: 9)
!2068 = !DILocation(line: 821, column: 71, scope: !2061)
!2069 = !DILocation(line: 823, column: 9, scope: !2067)
!2070 = !DILocation(line: 823, column: 9, scope: !2061)
!2071 = !DILocation(line: 823, column: 2, scope: !2061)
!2072 = distinct !DISubprogram(name: "crypto_shash_tfm", scope: !52, file: !52, line: 775, type: !2073, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!81, !55}
!2075 = !{!2076}
!2076 = !DILocalVariable(name: "tfm", arg: 1, scope: !2072, file: !52, line: 775, type: !55)
!2077 = !DILocation(line: 775, column: 72, scope: !2072)
!2078 = !DILocation(line: 777, column: 10, scope: !2072)
!2079 = !DILocation(line: 777, column: 15, scope: !2072)
!2080 = !DILocation(line: 777, column: 2, scope: !2072)
!2081 = distinct !DISubprogram(name: "crypto_shash_get_flags", scope: !52, file: !52, line: 850, type: !2082, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!74, !55}
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "tfm", arg: 1, scope: !2081, file: !52, line: 850, type: !55)
!2086 = !DILocation(line: 850, column: 63, scope: !2081)
!2087 = !DILocation(line: 852, column: 47, scope: !2081)
!2088 = !DILocation(line: 852, column: 30, scope: !2081)
!2089 = !DILocation(line: 852, column: 9, scope: !2081)
!2090 = !DILocation(line: 852, column: 2, scope: !2081)
!2091 = distinct !DISubprogram(name: "crypto_tfm_get_flags", scope: !61, file: !61, line: 475, type: !2092, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!74, !81}
!2094 = !{!2095}
!2095 = !DILocalVariable(name: "tfm", arg: 1, scope: !2091, file: !61, line: 475, type: !81)
!2096 = !DILocation(line: 475, column: 59, scope: !2091)
!2097 = !DILocation(line: 477, column: 9, scope: !2091)
!2098 = !DILocation(line: 477, column: 14, scope: !2091)
!2099 = !DILocation(line: 477, column: 2, scope: !2091)
!2100 = distinct !DISubprogram(name: "crypto_shash_descsize", scope: !52, file: !52, line: 880, type: !1633, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2101)
!2101 = !{!2102}
!2102 = !DILocalVariable(name: "tfm", arg: 1, scope: !2100, file: !52, line: 880, type: !55)
!2103 = !DILocation(line: 880, column: 71, scope: !2100)
!2104 = !DILocation(line: 882, column: 9, scope: !2100)
!2105 = !DILocation(line: 882, column: 14, scope: !2100)
!2106 = !DILocation(line: 882, column: 2, scope: !2100)
!2107 = !DILocation(line: 262, column: 49, scope: !1382)
!2108 = !DILocation(line: 263, column: 19, scope: !1382)
!2109 = !DILocation(line: 263, column: 37, scope: !1382)
!2110 = !DILocation(line: 264, column: 13, scope: !1382)
!2111 = !DILocation(line: 264, column: 33, scope: !1382)
!2112 = !DILocation(line: 266, column: 2, scope: !1382)
!2113 = !DILocation(line: 266, column: 24, scope: !1382)
!2114 = !DILocation(line: 266, column: 45, scope: !1382)
!2115 = !DILocation(line: 266, column: 30, scope: !1382)
!2116 = !DILocation(line: 267, column: 2, scope: !1382)
!2117 = !DILocation(line: 267, column: 6, scope: !1382)
!2118 = !DILocation(line: 269, column: 13, scope: !1382)
!2119 = !DILocation(line: 269, column: 18, scope: !1382)
!2120 = !DILocation(line: 269, column: 2, scope: !1382)
!2121 = !DILocation(line: 271, column: 26, scope: !1382)
!2122 = !DILocation(line: 271, column: 31, scope: !1382)
!2123 = !DILocation(line: 271, column: 50, scope: !1382)
!2124 = !DILocation(line: 271, column: 57, scope: !1382)
!2125 = !DILocation(line: 271, column: 8, scope: !1382)
!2126 = !DILocation(line: 271, column: 6, scope: !1382)
!2127 = !DILocation(line: 273, column: 6, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 273, column: 6)
!2129 = !DILocation(line: 273, column: 10, scope: !2128)
!2130 = !DILocation(line: 273, column: 6, scope: !1382)
!2131 = !DILocation(line: 284, column: 3, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 284, column: 3)
!2133 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 273, column: 17)
!2134 = !DILocation(line: 284, column: 3, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 284, column: 3)
!2136 = !DILocation(line: 285, column: 7, scope: !2133)
!2137 = !DILocation(line: 286, column: 2, scope: !2133)
!2138 = !DILocation(line: 286, column: 13, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 286, column: 13)
!2140 = !DILocation(line: 286, column: 17, scope: !2139)
!2141 = !DILocation(line: 286, column: 13, scope: !2128)
!2142 = !DILocation(line: 288, column: 3, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 288, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 288, column: 3)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 286, column: 24)
!2146 = !DILocation(line: 288, column: 3, scope: !2144)
!2147 = !DILocation(line: 288, column: 3, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 288, column: 3)
!2149 = !DILocation(line: 288, column: 3, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 288, column: 3)
!2151 = !DILocation(line: 289, column: 7, scope: !2145)
!2152 = !DILocation(line: 290, column: 2, scope: !2145)
!2153 = !DILocation(line: 290, column: 13, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 290, column: 13)
!2155 = !DILocation(line: 290, column: 17, scope: !2154)
!2156 = !DILocation(line: 290, column: 13, scope: !2139)
!2157 = !DILocation(line: 292, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 290, column: 24)
!2159 = !DILocation(line: 293, column: 2, scope: !2158)
!2160 = !DILocation(line: 295, column: 15, scope: !1382)
!2161 = !DILocation(line: 295, column: 20, scope: !1382)
!2162 = !DILocation(line: 295, column: 2, scope: !1382)
!2163 = !DILocation(line: 297, column: 9, scope: !1382)
!2164 = !DILocation(line: 298, column: 1, scope: !1382)
!2165 = !DILocation(line: 297, column: 2, scope: !1382)
!2166 = distinct !DISubprogram(name: "jent_kcapi_reset", scope: !3, file: !3, line: 300, type: !1367, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2167)
!2167 = !{!2168, !2169, !2170}
!2168 = !DILocalVariable(name: "tfm", arg: 1, scope: !2166, file: !3, line: 300, type: !1361)
!2169 = !DILocalVariable(name: "seed", arg: 2, scope: !2166, file: !3, line: 301, type: !1216)
!2170 = !DILocalVariable(name: "slen", arg: 3, scope: !2166, file: !3, line: 301, type: !16)
!2171 = !DILocation(line: 300, column: 48, scope: !2166)
!2172 = !DILocation(line: 301, column: 18, scope: !2166)
!2173 = !DILocation(line: 301, column: 37, scope: !2166)
!2174 = !DILocation(line: 303, column: 2, scope: !2166)
!2175 = distinct !DISubprogram(name: "jent_kcapi_init", scope: !3, file: !3, line: 212, type: !121, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2176)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183}
!2177 = !DILocalVariable(name: "tfm", arg: 1, scope: !2175, file: !3, line: 212, type: !81)
!2178 = !DILocalVariable(name: "rng", scope: !2175, file: !3, line: 214, type: !1390)
!2179 = !DILocalVariable(name: "hash", scope: !2175, file: !3, line: 215, type: !55)
!2180 = !DILocalVariable(name: "sdesc", scope: !2175, file: !3, line: 216, type: !50)
!2181 = !DILocalVariable(name: "size", scope: !2175, file: !3, line: 217, type: !6)
!2182 = !DILocalVariable(name: "ret", scope: !2175, file: !3, line: 217, type: !6)
!2183 = !DILabel(scope: !2175, name: "err", file: !3, line: 257)
!2184 = !DILocation(line: 212, column: 47, scope: !2175)
!2185 = !DILocation(line: 214, column: 2, scope: !2175)
!2186 = !DILocation(line: 214, column: 24, scope: !2175)
!2187 = !DILocation(line: 214, column: 45, scope: !2175)
!2188 = !DILocation(line: 214, column: 30, scope: !2175)
!2189 = !DILocation(line: 215, column: 2, scope: !2175)
!2190 = !DILocation(line: 215, column: 23, scope: !2175)
!2191 = !DILocation(line: 216, column: 2, scope: !2175)
!2192 = !DILocation(line: 216, column: 21, scope: !2175)
!2193 = !DILocation(line: 217, column: 2, scope: !2175)
!2194 = !DILocation(line: 217, column: 6, scope: !2175)
!2195 = !DILocation(line: 217, column: 12, scope: !2175)
!2196 = !DILocation(line: 219, column: 2, scope: !2175)
!2197 = !DILocation(line: 219, column: 2, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 219, column: 2)
!2199 = !DILocation(line: 230, column: 9, scope: !2175)
!2200 = !DILocation(line: 230, column: 7, scope: !2175)
!2201 = !DILocation(line: 231, column: 13, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 231, column: 6)
!2203 = !DILocation(line: 231, column: 6, scope: !2202)
!2204 = !DILocation(line: 231, column: 6, scope: !2175)
!2205 = !DILocation(line: 232, column: 3, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 232, column: 3)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 231, column: 20)
!2208 = !DILocation(line: 232, column: 3, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 232, column: 3)
!2210 = !DILocation(line: 233, column: 18, scope: !2207)
!2211 = !DILocation(line: 233, column: 10, scope: !2207)
!2212 = !DILocation(line: 233, column: 3, scope: !2207)
!2213 = !DILocation(line: 235, column: 13, scope: !2175)
!2214 = !DILocation(line: 235, column: 2, scope: !2175)
!2215 = !DILocation(line: 235, column: 7, scope: !2175)
!2216 = !DILocation(line: 235, column: 11, scope: !2175)
!2217 = !DILocation(line: 237, column: 59, scope: !2175)
!2218 = !DILocation(line: 237, column: 37, scope: !2175)
!2219 = !DILocation(line: 237, column: 35, scope: !2175)
!2220 = !DILocation(line: 237, column: 9, scope: !2175)
!2221 = !DILocation(line: 237, column: 7, scope: !2175)
!2222 = !DILocation(line: 238, column: 18, scope: !2175)
!2223 = !DILocation(line: 238, column: 10, scope: !2175)
!2224 = !DILocation(line: 238, column: 8, scope: !2175)
!2225 = !DILocation(line: 239, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 239, column: 6)
!2227 = !DILocation(line: 239, column: 6, scope: !2175)
!2228 = !DILocation(line: 240, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 239, column: 14)
!2230 = !DILocation(line: 241, column: 3, scope: !2229)
!2231 = !DILocation(line: 244, column: 15, scope: !2175)
!2232 = !DILocation(line: 244, column: 2, scope: !2175)
!2233 = !DILocation(line: 244, column: 9, scope: !2175)
!2234 = !DILocation(line: 244, column: 13, scope: !2175)
!2235 = !DILocation(line: 245, column: 20, scope: !2175)
!2236 = !DILocation(line: 245, column: 2, scope: !2175)
!2237 = !DILocation(line: 246, column: 15, scope: !2175)
!2238 = !DILocation(line: 246, column: 2, scope: !2175)
!2239 = !DILocation(line: 246, column: 7, scope: !2175)
!2240 = !DILocation(line: 246, column: 13, scope: !2175)
!2241 = !DILocation(line: 248, column: 62, scope: !2175)
!2242 = !DILocation(line: 248, column: 27, scope: !2175)
!2243 = !DILocation(line: 248, column: 2, scope: !2175)
!2244 = !DILocation(line: 248, column: 7, scope: !2175)
!2245 = !DILocation(line: 248, column: 25, scope: !2175)
!2246 = !DILocation(line: 249, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 249, column: 6)
!2248 = !DILocation(line: 249, column: 12, scope: !2247)
!2249 = !DILocation(line: 249, column: 6, scope: !2175)
!2250 = !DILocation(line: 250, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 249, column: 31)
!2252 = !DILocation(line: 251, column: 3, scope: !2251)
!2253 = !DILocation(line: 254, column: 2, scope: !2175)
!2254 = !DILocation(line: 254, column: 2, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 254, column: 2)
!2256 = !DILocation(line: 255, column: 2, scope: !2175)
!2257 = !DILocation(line: 257, column: 1, scope: !2175)
!2258 = !DILocation(line: 258, column: 21, scope: !2175)
!2259 = !DILocation(line: 258, column: 2, scope: !2175)
!2260 = !DILocation(line: 259, column: 9, scope: !2175)
!2261 = !DILocation(line: 259, column: 2, scope: !2175)
!2262 = !DILocation(line: 260, column: 1, scope: !2175)
!2263 = distinct !DISubprogram(name: "jent_kcapi_cleanup", scope: !3, file: !3, line: 190, type: !79, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2264)
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "tfm", arg: 1, scope: !2263, file: !3, line: 190, type: !81)
!2266 = !DILocalVariable(name: "rng", scope: !2263, file: !3, line: 192, type: !1390)
!2267 = !DILocation(line: 190, column: 51, scope: !2263)
!2268 = !DILocation(line: 192, column: 2, scope: !2263)
!2269 = !DILocation(line: 192, column: 24, scope: !2263)
!2270 = !DILocation(line: 192, column: 45, scope: !2263)
!2271 = !DILocation(line: 192, column: 30, scope: !2263)
!2272 = !DILocation(line: 194, column: 13, scope: !2263)
!2273 = !DILocation(line: 194, column: 18, scope: !2263)
!2274 = !DILocation(line: 194, column: 2, scope: !2263)
!2275 = !DILocation(line: 196, column: 6, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 196, column: 6)
!2277 = !DILocation(line: 196, column: 11, scope: !2276)
!2278 = !DILocation(line: 196, column: 6, scope: !2263)
!2279 = !DILocation(line: 197, column: 19, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 196, column: 18)
!2281 = !DILocation(line: 197, column: 24, scope: !2280)
!2282 = !DILocation(line: 197, column: 3, scope: !2280)
!2283 = !DILocation(line: 198, column: 9, scope: !2280)
!2284 = !DILocation(line: 198, column: 14, scope: !2280)
!2285 = !DILocation(line: 198, column: 3, scope: !2280)
!2286 = !DILocation(line: 199, column: 2, scope: !2280)
!2287 = !DILocation(line: 200, column: 2, scope: !2263)
!2288 = !DILocation(line: 200, column: 7, scope: !2263)
!2289 = !DILocation(line: 200, column: 13, scope: !2263)
!2290 = !DILocation(line: 202, column: 6, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 202, column: 6)
!2292 = !DILocation(line: 202, column: 11, scope: !2291)
!2293 = !DILocation(line: 202, column: 6, scope: !2263)
!2294 = !DILocation(line: 203, column: 21, scope: !2291)
!2295 = !DILocation(line: 203, column: 26, scope: !2291)
!2296 = !DILocation(line: 203, column: 3, scope: !2291)
!2297 = !DILocation(line: 204, column: 2, scope: !2263)
!2298 = !DILocation(line: 204, column: 7, scope: !2263)
!2299 = !DILocation(line: 204, column: 11, scope: !2263)
!2300 = !DILocation(line: 206, column: 6, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 206, column: 6)
!2302 = !DILocation(line: 206, column: 11, scope: !2301)
!2303 = !DILocation(line: 206, column: 6, scope: !2263)
!2304 = !DILocation(line: 207, column: 31, scope: !2301)
!2305 = !DILocation(line: 207, column: 36, scope: !2301)
!2306 = !DILocation(line: 207, column: 3, scope: !2301)
!2307 = !DILocation(line: 208, column: 2, scope: !2263)
!2308 = !DILocation(line: 208, column: 7, scope: !2263)
!2309 = !DILocation(line: 208, column: 25, scope: !2263)
!2310 = !DILocation(line: 209, column: 15, scope: !2263)
!2311 = !DILocation(line: 209, column: 20, scope: !2263)
!2312 = !DILocation(line: 209, column: 2, scope: !2263)
!2313 = !DILocation(line: 210, column: 1, scope: !2263)
!2314 = distinct !DISubprogram(name: "crypto_rng_ctx", scope: !1750, file: !1750, line: 29, type: !2315, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!7, !1361}
!2317 = !{!2318}
!2318 = !DILocalVariable(name: "tfm", arg: 1, scope: !2314, file: !1750, line: 29, type: !1361)
!2319 = !DILocation(line: 29, column: 55, scope: !2314)
!2320 = !DILocation(line: 31, column: 25, scope: !2314)
!2321 = !DILocation(line: 31, column: 30, scope: !2314)
!2322 = !DILocation(line: 31, column: 9, scope: !2314)
!2323 = !DILocation(line: 31, column: 2, scope: !2314)
!2324 = distinct !DISubprogram(name: "spin_lock", scope: !2325, file: !2325, line: 349, type: !2326, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2329)
!2325 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!2329 = !{!2330}
!2330 = !DILocalVariable(name: "lock", arg: 1, scope: !2324, file: !2325, line: 349, type: !2328)
!2331 = !DILocation(line: 349, column: 51, scope: !2324)
!2332 = !DILocation(line: 351, column: 2, scope: !2324)
!2333 = !DILocation(line: 352, column: 1, scope: !2324)
!2334 = !DISubprogram(name: "jent_read_entropy", scope: !1397, file: !1397, line: 13, type: !2335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!6, !1395, !2337, !16}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!2338 = distinct !DISubprogram(name: "spin_unlock", scope: !2325, file: !2325, line: 389, type: !2326, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2339)
!2339 = !{!2340}
!2340 = !DILocalVariable(name: "lock", arg: 1, scope: !2338, file: !2325, line: 389, type: !2328)
!2341 = !DILocation(line: 389, column: 53, scope: !2338)
!2342 = !DILocation(line: 391, column: 2, scope: !2338)
!2343 = !DILocation(line: 392, column: 1, scope: !2338)
!2344 = distinct !DISubprogram(name: "crypto_tfm_ctx", scope: !109, file: !109, line: 184, type: !2345, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!7, !81}
!2347 = !{!2348}
!2348 = !DILocalVariable(name: "tfm", arg: 1, scope: !2344, file: !109, line: 184, type: !81)
!2349 = !DILocation(line: 184, column: 55, scope: !2344)
!2350 = !DILocation(line: 186, column: 9, scope: !2344)
!2351 = !DILocation(line: 186, column: 14, scope: !2344)
!2352 = !DILocation(line: 186, column: 2, scope: !2344)
!2353 = !DISubprogram(name: "_raw_spin_lock", scope: !2354, file: !2354, line: 22, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2354 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!2358 = !DISubprogram(name: "_raw_spin_unlock", scope: !2354, file: !2354, line: 39, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2359 = distinct !DISubprogram(name: "spinlock_check", scope: !2325, file: !2325, line: 324, type: !2360, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!2357, !2328}
!2362 = !{!2363}
!2363 = !DILocalVariable(name: "lock", arg: 1, scope: !2359, file: !2325, line: 324, type: !2328)
!2364 = !DILocation(line: 324, column: 67, scope: !2359)
!2365 = !DILocation(line: 326, column: 10, scope: !2359)
!2366 = !DILocation(line: 326, column: 16, scope: !2359)
!2367 = !DILocation(line: 326, column: 2, scope: !2359)
!2368 = !DISubprogram(name: "crypto_alloc_shash", scope: !52, file: !52, line: 768, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!55, !177, !74, !74}
!2371 = distinct !DISubprogram(name: "IS_ERR", scope: !2372, file: !2372, line: 59, type: !2373, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2375)
!2372 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!603, !525}
!2375 = !{!2376}
!2376 = !DILocalVariable(name: "ptr", arg: 1, scope: !2371, file: !2372, line: 59, type: !525)
!2377 = !DILocation(line: 59, column: 60, scope: !2371)
!2378 = !DILocation(line: 61, column: 9, scope: !2371)
!2379 = !DILocation(line: 61, column: 2, scope: !2371)
!2380 = distinct !DISubprogram(name: "PTR_ERR", scope: !2372, file: !2372, line: 49, type: !2381, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!285, !525}
!2383 = !{!2384}
!2384 = !DILocalVariable(name: "ptr", arg: 1, scope: !2380, file: !2372, line: 49, type: !525)
!2385 = !DILocation(line: 49, column: 61, scope: !2380)
!2386 = !DILocation(line: 51, column: 16, scope: !2380)
!2387 = !DILocation(line: 51, column: 9, scope: !2380)
!2388 = !DILocation(line: 51, column: 2, scope: !2380)
!2389 = !DISubprogram(name: "jent_entropy_collector_alloc", scope: !1397, file: !1397, line: 16, type: !2390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!1395, !16, !16, !7}
!2392 = !DISubprogram(name: "kfree", scope: !38, file: !38, line: 227, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2393 = distinct !DISubprogram(name: "crypto_free_shash", scope: !52, file: !52, line: 786, type: !1278, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2394)
!2394 = !{!2395}
!2395 = !DILocalVariable(name: "tfm", arg: 1, scope: !2393, file: !52, line: 786, type: !55)
!2396 = !DILocation(line: 786, column: 59, scope: !2393)
!2397 = !DILocation(line: 788, column: 21, scope: !2393)
!2398 = !DILocation(line: 788, column: 43, scope: !2393)
!2399 = !DILocation(line: 788, column: 26, scope: !2393)
!2400 = !DILocation(line: 788, column: 2, scope: !2393)
!2401 = !DILocation(line: 789, column: 1, scope: !2393)
!2402 = !DISubprogram(name: "jent_entropy_collector_free", scope: !1397, file: !1397, line: 19, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !1395}
!2405 = !DISubprogram(name: "crypto_destroy_tfm", scope: !61, file: !61, line: 445, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !7, !81}
!2408 = distinct !DISubprogram(name: "jent_testing_init", scope: !1397, file: !1397, line: 27, type: !1167, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!2409 = !DILocation(line: 27, column: 46, scope: !2408)
!2410 = !DISubprogram(name: "jent_entropy_init", scope: !1397, file: !1397, line: 12, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!6, !7}
!2413 = !DISubprogram(name: "crypto_register_rng", scope: !1750, file: !1750, line: 15, type: !2414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!6, !1753}
