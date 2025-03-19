; ModuleID = 'crypto/ghash-generic.c'
source_filename = "crypto/ghash-generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init..kmod_ghash_generic__200_178_ghash_mod_init\22, \22a\22\09\09"
module asm "__initcall__kmod_ghash_generic__200_178_ghash_mod_init4:\09\09\09"
module asm ".long\09__initstub__kmod_ghash_generic__200_178_ghash_mod_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.0, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.0 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.shash_desc = type { ptr, [0 x ptr] }
%struct.ghash_desc_ctx = type { [16 x i8], i32 }
%struct.ghash_ctx = type { ptr }
%struct.be128 = type { i64, i64 }
%struct.crypto_shash = type { i32, %struct.crypto_tfm }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.anon.4 = type { i64 }
%struct.anon.5 = type { i64 }
%struct.anon.6 = type { i64 }

@ghash_alg = internal global %struct.shash_alg { ptr @ghash_init, ptr @ghash_update, ptr @ghash_final, ptr null, ptr null, ptr null, ptr null, ptr @ghash_setkey, ptr null, ptr null, ptr null, i32 20, %union.anon { %struct.anon { i32 16, i32 0, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 8, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ghash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ghash-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.0 zeroinitializer, ptr null, ptr @ghash_exit_tfm, ptr null, ptr null } } } }, align 8, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_ghash_generic__200_178_ghash_mod_init4201 = internal global ptr @__initstub__kmod_ghash_generic__200_178_ghash_mod_init4, section ".discard.addressable", align 8, !dbg !1112
@__exitcall_ghash_mod_exit = internal global ptr @ghash_mod_exit, section ".exitcall.exit", align 8, !dbg !1114
@__UNIQUE_ID_file202 = internal constant [40 x i8] c"ghash_generic.file=crypto/ghash-generic\00", section ".modinfo", align 1, !dbg !1118
@__UNIQUE_ID_license203 = internal constant [26 x i8] c"ghash_generic.license=GPL\00", section ".modinfo", align 1, !dbg !1123
@__UNIQUE_ID_description204 = internal constant [46 x i8] c"ghash_generic.description=GHASH hash function\00", section ".modinfo", align 1, !dbg !1128
@__UNIQUE_ID_alias_userspace205 = internal constant [26 x i8] c"ghash_generic.alias=ghash\00", section ".modinfo", align 1, !dbg !1133
@__UNIQUE_ID_alias_crypto206 = internal constant [33 x i8] c"ghash_generic.alias=crypto-ghash\00", section ".modinfo", align 1, !dbg !1135
@__UNIQUE_ID_alias_userspace207 = internal constant [34 x i8] c"ghash_generic.alias=ghash-generic\00", section ".modinfo", align 1, !dbg !1140
@__UNIQUE_ID_alias_crypto208 = internal constant [41 x i8] c"ghash_generic.alias=crypto-ghash-generic\00", section ".modinfo", align 1, !dbg !1145
@llvm.compiler.used = appending global [10 x ptr] [ptr @ghash_mod_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_ghash_generic__200_178_ghash_mod_init4201, ptr @__exitcall_ghash_mod_exit, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__UNIQUE_ID_description204, ptr @__UNIQUE_ID_alias_userspace205, ptr @__UNIQUE_ID_alias_crypto206, ptr @__UNIQUE_ID_alias_userspace207, ptr @__UNIQUE_ID_alias_crypto208], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @ghash_mod_exit() #0 section ".exit.text" align 16 !dbg !1369 {
entry:
  call void @crypto_unregister_shash(ptr noundef @ghash_alg) #9, !dbg !1370
  ret void, !dbg !1371
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1372 dso_local void @crypto_unregister_shash(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_ghash_generic__200_178_ghash_mod_init4() #0 section ".init.text" align 16 !dbg !1377 {
entry:
  %call = call i32 @ghash_mod_init() #10, !dbg !1378
  ret i32 %call, !dbg !1378
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ghash_mod_init() #0 section ".init.text" align 16 !dbg !1379 {
entry:
  %call = call i32 @crypto_register_shash(ptr noundef @ghash_alg) #9, !dbg !1380
  ret i32 %call, !dbg !1381
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ghash_init(ptr noundef %desc) #2 align 16 !dbg !1382 {
entry:
  %desc.addr = alloca ptr, align 8
  %dctx = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1384, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 8, ptr %dctx) #11, !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %dctx, metadata !1385, metadata !DIExpression()), !dbg !1397
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !1398
  %call = call ptr @shash_desc_ctx(ptr noundef %0) #9, !dbg !1399
  store ptr %call, ptr %dctx, align 8, !dbg !1397
  %1 = load ptr, ptr %dctx, align 8, !dbg !1400
  call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 20, i1 false), !dbg !1401
  call void @llvm.lifetime.end.p0(i64 8, ptr %dctx) #11, !dbg !1402
  ret i32 0, !dbg !1403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ghash_update(ptr noundef %desc, ptr noundef %src, i32 noundef %srclen) #2 align 16 !dbg !1404 {
entry:
  %desc.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srclen.addr = alloca i32, align 4
  %dctx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %n = alloca i32, align 4
  %__UNIQUE_ID___x198 = alloca i32, align 4
  %__UNIQUE_ID___y199 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pos = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1406, metadata !DIExpression()), !dbg !1431
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1407, metadata !DIExpression()), !dbg !1432
  store i32 %srclen, ptr %srclen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %srclen.addr, metadata !1408, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 8, ptr %dctx) #11, !dbg !1434
  call void @llvm.dbg.declare(metadata ptr %dctx, metadata !1409, metadata !DIExpression()), !dbg !1435
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !1436
  %call = call ptr @shash_desc_ctx(ptr noundef %0) #9, !dbg !1437
  store ptr %call, ptr %dctx, align 8, !dbg !1435
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #11, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1410, metadata !DIExpression()), !dbg !1439
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !1440
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %1, i32 0, i32 0, !dbg !1441
  %2 = load ptr, ptr %tfm, align 8, !dbg !1441
  %call1 = call ptr @crypto_shash_ctx(ptr noundef %2) #9, !dbg !1442
  store ptr %call1, ptr %ctx, align 8, !dbg !1439
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #11, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !1423, metadata !DIExpression()), !dbg !1444
  %3 = load ptr, ptr %dctx, align 8, !dbg !1445
  %buffer = getelementptr inbounds %struct.ghash_desc_ctx, ptr %3, i32 0, i32 0, !dbg !1446
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buffer, i64 0, i64 0, !dbg !1445
  store ptr %arraydecay, ptr %dst, align 8, !dbg !1444
  %4 = load ptr, ptr %dctx, align 8, !dbg !1447
  %bytes = getelementptr inbounds %struct.ghash_desc_ctx, ptr %4, i32 0, i32 1, !dbg !1448
  %5 = load i32, ptr %bytes, align 4, !dbg !1448
  %tobool = icmp ne i32 %5, 0, !dbg !1447
  br i1 %tobool, label %if.then, label %if.end14, !dbg !1449

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #11, !dbg !1450
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1424, metadata !DIExpression()), !dbg !1451
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x198) #11, !dbg !1452
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x198, metadata !1427, metadata !DIExpression()), !dbg !1452
  %6 = load i32, ptr %srclen.addr, align 4, !dbg !1452
  store i32 %6, ptr %__UNIQUE_ID___x198, align 4, !dbg !1452
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y199) #11, !dbg !1452
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y199, metadata !1429, metadata !DIExpression()), !dbg !1452
  %7 = load ptr, ptr %dctx, align 8, !dbg !1452
  %bytes2 = getelementptr inbounds %struct.ghash_desc_ctx, ptr %7, i32 0, i32 1, !dbg !1452
  %8 = load i32, ptr %bytes2, align 4, !dbg !1452
  store i32 %8, ptr %__UNIQUE_ID___y199, align 4, !dbg !1452
  %9 = load i32, ptr %__UNIQUE_ID___x198, align 4, !dbg !1452
  %10 = load i32, ptr %__UNIQUE_ID___y199, align 4, !dbg !1452
  %cmp = icmp ult i32 %9, %10, !dbg !1452
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1452

cond.true:                                        ; preds = %if.then
  %11 = load i32, ptr %__UNIQUE_ID___x198, align 4, !dbg !1452
  br label %cond.end, !dbg !1452

cond.false:                                       ; preds = %if.then
  %12 = load i32, ptr %__UNIQUE_ID___y199, align 4, !dbg !1452
  br label %cond.end, !dbg !1452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !1452
  store i32 %cond, ptr %tmp, align 4, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y199) #11, !dbg !1453
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x198) #11, !dbg !1453
  %13 = load i32, ptr %tmp, align 4, !dbg !1452
  store i32 %13, ptr %n, align 4, !dbg !1451
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #11, !dbg !1454
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !1430, metadata !DIExpression()), !dbg !1455
  %14 = load ptr, ptr %dst, align 8, !dbg !1456
  %15 = load ptr, ptr %dctx, align 8, !dbg !1457
  %bytes3 = getelementptr inbounds %struct.ghash_desc_ctx, ptr %15, i32 0, i32 1, !dbg !1458
  %16 = load i32, ptr %bytes3, align 4, !dbg !1458
  %sub = sub i32 16, %16, !dbg !1459
  %idx.ext = zext i32 %sub to i64, !dbg !1460
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.ext, !dbg !1460
  store ptr %add.ptr, ptr %pos, align 8, !dbg !1455
  %17 = load i32, ptr %n, align 4, !dbg !1461
  %18 = load ptr, ptr %dctx, align 8, !dbg !1462
  %bytes4 = getelementptr inbounds %struct.ghash_desc_ctx, ptr %18, i32 0, i32 1, !dbg !1463
  %19 = load i32, ptr %bytes4, align 4, !dbg !1464
  %sub5 = sub i32 %19, %17, !dbg !1464
  store i32 %sub5, ptr %bytes4, align 4, !dbg !1464
  %20 = load i32, ptr %n, align 4, !dbg !1465
  %21 = load i32, ptr %srclen.addr, align 4, !dbg !1466
  %sub6 = sub i32 %21, %20, !dbg !1466
  store i32 %sub6, ptr %srclen.addr, align 4, !dbg !1466
  br label %while.cond, !dbg !1467

while.cond:                                       ; preds = %while.body, %cond.end
  %22 = load i32, ptr %n, align 4, !dbg !1468
  %dec = add i32 %22, -1, !dbg !1468
  store i32 %dec, ptr %n, align 4, !dbg !1468
  %tobool7 = icmp ne i32 %22, 0, !dbg !1467
  br i1 %tobool7, label %while.body, label %while.end, !dbg !1467

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %src.addr, align 8, !dbg !1469
  %incdec.ptr = getelementptr i8, ptr %23, i32 1, !dbg !1469
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !1469
  %24 = load i8, ptr %23, align 1, !dbg !1470
  %conv = zext i8 %24 to i32, !dbg !1470
  %25 = load ptr, ptr %pos, align 8, !dbg !1471
  %incdec.ptr8 = getelementptr i8, ptr %25, i32 1, !dbg !1471
  store ptr %incdec.ptr8, ptr %pos, align 8, !dbg !1471
  %26 = load i8, ptr %25, align 1, !dbg !1472
  %conv9 = zext i8 %26 to i32, !dbg !1472
  %xor = xor i32 %conv9, %conv, !dbg !1472
  %conv10 = trunc i32 %xor to i8, !dbg !1472
  store i8 %conv10, ptr %25, align 1, !dbg !1472
  br label %while.cond, !dbg !1467, !llvm.loop !1473

while.end:                                        ; preds = %while.cond
  %27 = load ptr, ptr %dctx, align 8, !dbg !1476
  %bytes11 = getelementptr inbounds %struct.ghash_desc_ctx, ptr %27, i32 0, i32 1, !dbg !1478
  %28 = load i32, ptr %bytes11, align 4, !dbg !1478
  %tobool12 = icmp ne i32 %28, 0, !dbg !1476
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !1479

if.then13:                                        ; preds = %while.end
  %29 = load ptr, ptr %dst, align 8, !dbg !1480
  %30 = load ptr, ptr %ctx, align 8, !dbg !1481
  %gf128 = getelementptr inbounds %struct.ghash_ctx, ptr %30, i32 0, i32 0, !dbg !1482
  %31 = load ptr, ptr %gf128, align 8, !dbg !1482
  call void @gf128mul_4k_lle(ptr noundef %29, ptr noundef %31) #9, !dbg !1483
  br label %if.end, !dbg !1483

if.end:                                           ; preds = %if.then13, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #11, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #11, !dbg !1484
  br label %if.end14, !dbg !1485

if.end14:                                         ; preds = %if.end, %entry
  br label %while.cond15, !dbg !1486

while.cond15:                                     ; preds = %while.body18, %if.end14
  %32 = load i32, ptr %srclen.addr, align 4, !dbg !1487
  %cmp16 = icmp uge i32 %32, 16, !dbg !1488
  br i1 %cmp16, label %while.body18, label %while.end22, !dbg !1486

while.body18:                                     ; preds = %while.cond15
  %33 = load ptr, ptr %dst, align 8, !dbg !1489
  %34 = load ptr, ptr %src.addr, align 8, !dbg !1491
  call void @crypto_xor(ptr noundef %33, ptr noundef %34, i32 noundef 16) #9, !dbg !1492
  %35 = load ptr, ptr %dst, align 8, !dbg !1493
  %36 = load ptr, ptr %ctx, align 8, !dbg !1494
  %gf12819 = getelementptr inbounds %struct.ghash_ctx, ptr %36, i32 0, i32 0, !dbg !1495
  %37 = load ptr, ptr %gf12819, align 8, !dbg !1495
  call void @gf128mul_4k_lle(ptr noundef %35, ptr noundef %37) #9, !dbg !1496
  %38 = load ptr, ptr %src.addr, align 8, !dbg !1497
  %add.ptr20 = getelementptr i8, ptr %38, i64 16, !dbg !1497
  store ptr %add.ptr20, ptr %src.addr, align 8, !dbg !1497
  %39 = load i32, ptr %srclen.addr, align 4, !dbg !1498
  %sub21 = sub i32 %39, 16, !dbg !1498
  store i32 %sub21, ptr %srclen.addr, align 4, !dbg !1498
  br label %while.cond15, !dbg !1486, !llvm.loop !1499

while.end22:                                      ; preds = %while.cond15
  %40 = load i32, ptr %srclen.addr, align 4, !dbg !1501
  %tobool23 = icmp ne i32 %40, 0, !dbg !1501
  br i1 %tobool23, label %if.then24, label %if.end38, !dbg !1503

if.then24:                                        ; preds = %while.end22
  %41 = load i32, ptr %srclen.addr, align 4, !dbg !1504
  %sub25 = sub i32 16, %41, !dbg !1506
  %42 = load ptr, ptr %dctx, align 8, !dbg !1507
  %bytes26 = getelementptr inbounds %struct.ghash_desc_ctx, ptr %42, i32 0, i32 1, !dbg !1508
  store i32 %sub25, ptr %bytes26, align 4, !dbg !1509
  br label %while.cond27, !dbg !1510

while.cond27:                                     ; preds = %while.body30, %if.then24
  %43 = load i32, ptr %srclen.addr, align 4, !dbg !1511
  %dec28 = add i32 %43, -1, !dbg !1511
  store i32 %dec28, ptr %srclen.addr, align 4, !dbg !1511
  %tobool29 = icmp ne i32 %43, 0, !dbg !1510
  br i1 %tobool29, label %while.body30, label %while.end37, !dbg !1510

while.body30:                                     ; preds = %while.cond27
  %44 = load ptr, ptr %src.addr, align 8, !dbg !1512
  %incdec.ptr31 = getelementptr i8, ptr %44, i32 1, !dbg !1512
  store ptr %incdec.ptr31, ptr %src.addr, align 8, !dbg !1512
  %45 = load i8, ptr %44, align 1, !dbg !1513
  %conv32 = zext i8 %45 to i32, !dbg !1513
  %46 = load ptr, ptr %dst, align 8, !dbg !1514
  %incdec.ptr33 = getelementptr i8, ptr %46, i32 1, !dbg !1514
  store ptr %incdec.ptr33, ptr %dst, align 8, !dbg !1514
  %47 = load i8, ptr %46, align 1, !dbg !1515
  %conv34 = zext i8 %47 to i32, !dbg !1515
  %xor35 = xor i32 %conv34, %conv32, !dbg !1515
  %conv36 = trunc i32 %xor35 to i8, !dbg !1515
  store i8 %conv36, ptr %46, align 1, !dbg !1515
  br label %while.cond27, !dbg !1510, !llvm.loop !1516

while.end37:                                      ; preds = %while.cond27
  br label %if.end38, !dbg !1517

if.end38:                                         ; preds = %while.end37, %while.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #11, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #11, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 8, ptr %dctx) #11, !dbg !1518
  ret i32 0, !dbg !1519
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ghash_final(ptr noundef %desc, ptr noundef %dst) #2 align 16 !dbg !1520 {
entry:
  %desc.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dctx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %buf = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1522, metadata !DIExpression()), !dbg !1527
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1523, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 8, ptr %dctx) #11, !dbg !1529
  call void @llvm.dbg.declare(metadata ptr %dctx, metadata !1524, metadata !DIExpression()), !dbg !1530
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !1531
  %call = call ptr @shash_desc_ctx(ptr noundef %0) #9, !dbg !1532
  store ptr %call, ptr %dctx, align 8, !dbg !1530
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #11, !dbg !1533
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1525, metadata !DIExpression()), !dbg !1534
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !1535
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %1, i32 0, i32 0, !dbg !1536
  %2 = load ptr, ptr %tfm, align 8, !dbg !1536
  %call1 = call ptr @crypto_shash_ctx(ptr noundef %2) #9, !dbg !1537
  store ptr %call1, ptr %ctx, align 8, !dbg !1534
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #11, !dbg !1538
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1526, metadata !DIExpression()), !dbg !1539
  %3 = load ptr, ptr %dctx, align 8, !dbg !1540
  %buffer = getelementptr inbounds %struct.ghash_desc_ctx, ptr %3, i32 0, i32 0, !dbg !1541
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buffer, i64 0, i64 0, !dbg !1540
  store ptr %arraydecay, ptr %buf, align 8, !dbg !1539
  %4 = load ptr, ptr %ctx, align 8, !dbg !1542
  %5 = load ptr, ptr %dctx, align 8, !dbg !1543
  call void @ghash_flush(ptr noundef %4, ptr noundef %5) #9, !dbg !1544
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1545
  %7 = load ptr, ptr %buf, align 8, !dbg !1546
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %7, i64 16, i1 false), !dbg !1547
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #11, !dbg !1548
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #11, !dbg !1548
  call void @llvm.lifetime.end.p0(i64 8, ptr %dctx) #11, !dbg !1548
  ret i32 0, !dbg !1549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ghash_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 16 !dbg !1550 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %k = alloca %struct.be128, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1552, metadata !DIExpression()), !dbg !1557
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1553, metadata !DIExpression()), !dbg !1558
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !1554, metadata !DIExpression()), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #11, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1555, metadata !DIExpression()), !dbg !1561
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1562
  %call = call ptr @crypto_shash_ctx(ptr noundef %0) #9, !dbg !1563
  store ptr %call, ptr %ctx, align 8, !dbg !1561
  call void @llvm.lifetime.start.p0(i64 16, ptr %k) #11, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1556, metadata !DIExpression()), !dbg !1565
  %1 = load i32, ptr %keylen.addr, align 4, !dbg !1566
  %cmp = icmp ne i32 %1, 16, !dbg !1568
  br i1 %cmp, label %if.then, label %if.end, !dbg !1569

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1570

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx, align 8, !dbg !1571
  %gf128 = getelementptr inbounds %struct.ghash_ctx, ptr %2, i32 0, i32 0, !dbg !1573
  %3 = load ptr, ptr %gf128, align 8, !dbg !1573
  %tobool = icmp ne ptr %3, null, !dbg !1571
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !1574

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %ctx, align 8, !dbg !1575
  %gf1282 = getelementptr inbounds %struct.ghash_ctx, ptr %4, i32 0, i32 0, !dbg !1576
  %5 = load ptr, ptr %gf1282, align 8, !dbg !1576
  call void @gf128mul_free_4k(ptr noundef %5) #9, !dbg !1577
  br label %if.end3, !dbg !1577

if.end3:                                          ; preds = %if.then1, %if.end
  br label %do.body, !dbg !1578

do.body:                                          ; preds = %if.end3
  br label %do.cond, !dbg !1579

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1579

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %key.addr, align 8, !dbg !1581
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %k, ptr align 1 %6, i64 16, i1 false), !dbg !1582
  %call4 = call ptr @gf128mul_init_4k_lle(ptr noundef %k) #9, !dbg !1583
  %7 = load ptr, ptr %ctx, align 8, !dbg !1584
  %gf1285 = getelementptr inbounds %struct.ghash_ctx, ptr %7, i32 0, i32 0, !dbg !1585
  store ptr %call4, ptr %gf1285, align 8, !dbg !1586
  call void @memzero_explicit(ptr noundef %k, i64 noundef 16) #9, !dbg !1587
  %8 = load ptr, ptr %ctx, align 8, !dbg !1588
  %gf1286 = getelementptr inbounds %struct.ghash_ctx, ptr %8, i32 0, i32 0, !dbg !1590
  %9 = load ptr, ptr %gf1286, align 8, !dbg !1590
  %tobool7 = icmp ne ptr %9, null, !dbg !1588
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1591

if.then8:                                         ; preds = %do.end
  store i32 -12, ptr %retval, align 4, !dbg !1592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1592

if.end9:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !1593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1593

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %k) #11, !dbg !1594
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #11, !dbg !1594
  %10 = load i32, ptr %retval, align 4, !dbg !1594
  ret i32 %10, !dbg !1594
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ghash_exit_tfm(ptr noundef %tfm) #2 align 16 !dbg !1595 {
entry:
  %tfm.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1597, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #11, !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1598, metadata !DIExpression()), !dbg !1601
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1602
  %call = call ptr @crypto_tfm_ctx(ptr noundef %0) #9, !dbg !1603
  store ptr %call, ptr %ctx, align 8, !dbg !1601
  %1 = load ptr, ptr %ctx, align 8, !dbg !1604
  %gf128 = getelementptr inbounds %struct.ghash_ctx, ptr %1, i32 0, i32 0, !dbg !1606
  %2 = load ptr, ptr %gf128, align 8, !dbg !1606
  %tobool = icmp ne ptr %2, null, !dbg !1604
  br i1 %tobool, label %if.then, label %if.end, !dbg !1607

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8, !dbg !1608
  %gf1281 = getelementptr inbounds %struct.ghash_ctx, ptr %3, i32 0, i32 0, !dbg !1609
  %4 = load ptr, ptr %gf1281, align 8, !dbg !1609
  call void @gf128mul_free_4k(ptr noundef %4) #9, !dbg !1610
  br label %if.end, !dbg !1610

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #11, !dbg !1611
  ret void, !dbg !1611
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_desc_ctx(ptr noundef %desc) #5 align 16 !dbg !1612 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1616, metadata !DIExpression()), !dbg !1617
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !1618
  %__ctx = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 1, !dbg !1619
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__ctx, i64 0, i64 0, !dbg !1618
  ret ptr %arraydecay, !dbg !1620
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_ctx(ptr noundef %tfm) #5 align 16 !dbg !1621 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1625, metadata !DIExpression()), !dbg !1626
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1627
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !1628
  %call = call ptr @crypto_tfm_ctx(ptr noundef %base) #9, !dbg !1629
  ret ptr %call, !dbg !1630
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1631 dso_local void @gf128mul_4k_lle(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_xor(ptr noundef %dst, ptr noundef %src, i32 noundef %size) #5 align 16 !dbg !1078 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %d = alloca ptr, align 8
  %s = alloca ptr, align 8
  %l = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pptr4 = alloca ptr, align 8
  %tmp5 = alloca i64, align 8
  %__pptr7 = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1085, metadata !DIExpression()), !dbg !1636
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1086, metadata !DIExpression()), !dbg !1637
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1087, metadata !DIExpression()), !dbg !1638
  %0 = load i32, ptr %size.addr, align 4, !dbg !1639
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1640
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !1641

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %size.addr, align 4, !dbg !1642
  %conv = zext i32 %2 to i64, !dbg !1642
  %rem = urem i64 %conv, 8, !dbg !1643
  %cmp = icmp eq i64 %rem, 0, !dbg !1644
  br i1 %cmp, label %if.then, label %if.else, !dbg !1645

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #11, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1088, metadata !DIExpression()), !dbg !1647
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1648
  store ptr %3, ptr %d, align 8, !dbg !1647
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !1649
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1091, metadata !DIExpression()), !dbg !1650
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1651
  store ptr %4, ptr %s, align 8, !dbg !1650
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #11, !dbg !1652
  call void @llvm.dbg.declare(metadata ptr %l, metadata !1092, metadata !DIExpression()), !dbg !1653
  br label %while.cond, !dbg !1654

while.cond:                                       ; preds = %do.end, %if.then
  %5 = load i32, ptr %size.addr, align 4, !dbg !1655
  %cmp2 = icmp ugt i32 %5, 0, !dbg !1656
  br i1 %cmp2, label %while.body, label %while.end, !dbg !1654

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !1657
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !1093, metadata !DIExpression()), !dbg !1657
  %6 = load ptr, ptr %d, align 8, !dbg !1657
  store ptr %6, ptr %__pptr, align 8, !dbg !1657
  %7 = load ptr, ptr %__pptr, align 8, !dbg !1657
  %x = getelementptr inbounds %struct.anon.4, ptr %7, i32 0, i32 0, !dbg !1657
  %8 = load i64, ptr %x, align 1, !dbg !1657
  store i64 %8, ptr %tmp, align 8, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !1658
  %9 = load i64, ptr %tmp, align 8, !dbg !1657
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr4) #11, !dbg !1659
  call void @llvm.dbg.declare(metadata ptr %__pptr4, metadata !1096, metadata !DIExpression()), !dbg !1659
  %10 = load ptr, ptr %s, align 8, !dbg !1659
  %incdec.ptr = getelementptr i64, ptr %10, i32 1, !dbg !1659
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !1659
  store ptr %10, ptr %__pptr4, align 8, !dbg !1659
  %11 = load ptr, ptr %__pptr4, align 8, !dbg !1659
  %x6 = getelementptr inbounds %struct.anon.5, ptr %11, i32 0, i32 0, !dbg !1659
  %12 = load i64, ptr %x6, align 1, !dbg !1659
  store i64 %12, ptr %tmp5, align 8, !dbg !1659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr4) #11, !dbg !1660
  %13 = load i64, ptr %tmp5, align 8, !dbg !1659
  %xor = xor i64 %9, %13, !dbg !1661
  store i64 %xor, ptr %l, align 8, !dbg !1662
  br label %do.body, !dbg !1663

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr7) #11, !dbg !1664
  call void @llvm.dbg.declare(metadata ptr %__pptr7, metadata !1103, metadata !DIExpression()), !dbg !1664
  %14 = load ptr, ptr %d, align 8, !dbg !1664
  %incdec.ptr8 = getelementptr i64, ptr %14, i32 1, !dbg !1664
  store ptr %incdec.ptr8, ptr %d, align 8, !dbg !1664
  store ptr %14, ptr %__pptr7, align 8, !dbg !1664
  %15 = load i64, ptr %l, align 8, !dbg !1664
  %16 = load ptr, ptr %__pptr7, align 8, !dbg !1664
  %x9 = getelementptr inbounds %struct.anon.6, ptr %16, i32 0, i32 0, !dbg !1664
  store i64 %15, ptr %x9, align 1, !dbg !1664
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr7) #11, !dbg !1663
  br label %do.cond, !dbg !1664

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1664

do.end:                                           ; preds = %do.cond
  %17 = load i32, ptr %size.addr, align 4, !dbg !1665
  %conv10 = zext i32 %17 to i64, !dbg !1665
  %sub = sub i64 %conv10, 8, !dbg !1665
  %conv11 = trunc i64 %sub to i32, !dbg !1665
  store i32 %conv11, ptr %size.addr, align 4, !dbg !1665
  br label %while.cond, !dbg !1654, !llvm.loop !1666

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #11, !dbg !1668
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !1668
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #11, !dbg !1668
  br label %if.end, !dbg !1669

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load ptr, ptr %dst.addr, align 8, !dbg !1670
  %19 = load ptr, ptr %dst.addr, align 8, !dbg !1672
  %20 = load ptr, ptr %src.addr, align 8, !dbg !1673
  %21 = load i32, ptr %size.addr, align 4, !dbg !1674
  call void @__crypto_xor(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21) #9, !dbg !1675
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !1676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_ctx(ptr noundef %tfm) #5 align 16 !dbg !1677 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1681, metadata !DIExpression()), !dbg !1682
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1683
  %__crt_ctx = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5, !dbg !1684
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__crt_ctx, i64 0, i64 0, !dbg !1683
  ret ptr %arraydecay, !dbg !1685
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1686 dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ghash_flush(ptr noundef %ctx, ptr noundef %dctx) #2 align 16 !dbg !1689 {
entry:
  %ctx.addr = alloca ptr, align 8
  %dctx.addr = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1693, metadata !DIExpression()), !dbg !1699
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1694, metadata !DIExpression()), !dbg !1700
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #11, !dbg !1701
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !1695, metadata !DIExpression()), !dbg !1702
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1703
  %buffer = getelementptr inbounds %struct.ghash_desc_ctx, ptr %0, i32 0, i32 0, !dbg !1704
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buffer, i64 0, i64 0, !dbg !1703
  store ptr %arraydecay, ptr %dst, align 8, !dbg !1702
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !1705
  %bytes = getelementptr inbounds %struct.ghash_desc_ctx, ptr %1, i32 0, i32 1, !dbg !1706
  %2 = load i32, ptr %bytes, align 4, !dbg !1706
  %tobool = icmp ne i32 %2, 0, !dbg !1705
  br i1 %tobool, label %if.then, label %if.end, !dbg !1707

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !1708
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1696, metadata !DIExpression()), !dbg !1709
  %3 = load ptr, ptr %dst, align 8, !dbg !1710
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !1711
  %bytes1 = getelementptr inbounds %struct.ghash_desc_ctx, ptr %4, i32 0, i32 1, !dbg !1712
  %5 = load i32, ptr %bytes1, align 4, !dbg !1712
  %sub = sub i32 16, %5, !dbg !1713
  %idx.ext = zext i32 %sub to i64, !dbg !1714
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.ext, !dbg !1714
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1709
  br label %while.cond, !dbg !1715

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !1716
  %bytes2 = getelementptr inbounds %struct.ghash_desc_ctx, ptr %6, i32 0, i32 1, !dbg !1717
  %7 = load i32, ptr %bytes2, align 4, !dbg !1718
  %dec = add i32 %7, -1, !dbg !1718
  store i32 %dec, ptr %bytes2, align 4, !dbg !1718
  %tobool3 = icmp ne i32 %7, 0, !dbg !1715
  br i1 %tobool3, label %while.body, label %while.end, !dbg !1715

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %tmp, align 8, !dbg !1719
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !1719
  store ptr %incdec.ptr, ptr %tmp, align 8, !dbg !1719
  %9 = load i8, ptr %8, align 1, !dbg !1720
  %conv = zext i8 %9 to i32, !dbg !1720
  %xor = xor i32 %conv, 0, !dbg !1720
  %conv4 = trunc i32 %xor to i8, !dbg !1720
  store i8 %conv4, ptr %8, align 1, !dbg !1720
  br label %while.cond, !dbg !1715, !llvm.loop !1721

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %dst, align 8, !dbg !1723
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !1724
  %gf128 = getelementptr inbounds %struct.ghash_ctx, ptr %11, i32 0, i32 0, !dbg !1725
  %12 = load ptr, ptr %gf128, align 8, !dbg !1725
  call void @gf128mul_4k_lle(ptr noundef %10, ptr noundef %12) #9, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !1727
  br label %if.end, !dbg !1728

if.end:                                           ; preds = %while.end, %entry
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !1729
  %bytes5 = getelementptr inbounds %struct.ghash_desc_ctx, ptr %13, i32 0, i32 1, !dbg !1730
  store i32 0, ptr %bytes5, align 4, !dbg !1731
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #11, !dbg !1732
  ret void, !dbg !1732
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gf128mul_free_4k(ptr noundef %t) #5 align 16 !dbg !1733 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1737, metadata !DIExpression()), !dbg !1738
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1739
  call void @kfree_sensitive(ptr noundef %0) #9, !dbg !1740
  ret void, !dbg !1741
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1742 dso_local ptr @gf128mul_init_4k_lle(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #5 align 16 !dbg !1747 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1752, metadata !DIExpression()), !dbg !1754
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1753, metadata !DIExpression()), !dbg !1755
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1756
  %1 = load i64, ptr %count.addr, align 8, !dbg !1757
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !1758
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1759
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #11, !dbg !1759, !srcloc !1760
  ret void, !dbg !1761
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1762 dso_local void @kfree_sensitive(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1766 dso_local i32 @crypto_register_shash(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!llvm.ident = !{!1368}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ghash_alg", scope: !2, file: !3, line: 150, type: !1150, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.ghash-generic.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/ghash-generic\22 -D KBUILD_BASENAME=\22ghash_generic\22 -D KBUILD_MODNAME=\22ghash_generic\22 -D __KBUILD_MODNAME=kmod_ghash_generic -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/ghash-generic.ll crypto/ghash-generic.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !1111, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/ghash-generic.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d554fa20aa07d8c599183bf6d67591b2")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!19 = !{!20, !21, !1066, !1049, !1074, !1098, !1105}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !23)
!23 = !{!24, !25, !32, !37, !719, !745, !746, !747, !748, !752, !755, !756, !757, !810, !811, !812, !813, !814, !815, !816, !817, !820, !824, !844, !862, !863, !864, !865, !874, !898, !899, !902, !905, !906, !907, !908, !909, !910, !911, !916, !917, !1024, !1032, !1033, !1034, !1036, !1040, !1041, !1045, !1046, !1047, !1048, !1050, !1051, !1052, !1059, !1060, !1061, !1065}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !22, file: !6, line: 403, baseType: !5, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !22, file: !6, line: 406, baseType: !26, size: 128, offset: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !27, line: 190, size: 128, elements: !28)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !{!29, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !27, line: 191, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !26, file: !27, line: 191, baseType: !30, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !6, line: 409, baseType: !33, size: 448, offset: 192)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 448, elements: !35)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36}
!36 = !DISubrange(count: 56)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !22, file: !6, line: 417, baseType: !38, size: 768, offset: 640)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !39)
!39 = !{!40, !702, !703, !704, !707}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !38, file: !6, line: 46, baseType: !41, size: 512)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !42, line: 64, size: 512, elements: !43)
!42 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!43 = !{!44, !47, !48, !50, !140, !572, !687, !697, !698, !699, !700, !701}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !42, line: 65, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !41, file: !42, line: 66, baseType: !26, size: 128, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !42, line: 67, baseType: !49, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !41, file: !42, line: 68, baseType: !51, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !42, line: 168, size: 768, elements: !53)
!53 = !{!54, !55, !99, !100}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !52, file: !42, line: 169, baseType: !26, size: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !52, file: !42, line: 170, baseType: !56, size: 32, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !57, line: 29, baseType: !58)
!57 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !57, line: 17, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !57, line: 18, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !57, line: 18, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !61, file: !57, line: 19, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !65, line: 14, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !64, file: !65, line: 15, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !69, line: 44, baseType: !70)
!69 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !69, line: 14, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !69, line: 15, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !69, line: 15, size: 32, elements: !74)
!74 = !{!75, !81, !91}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !69, line: 16, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !27, line: 174, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 172, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !77, file: !27, line: 173, baseType: !80, size: 32)
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !69, line: 24, baseType: !82, size: 16)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !73, file: !69, line: 24, size: 16, elements: !83)
!83 = !{!84, !90}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !82, file: !69, line: 25, baseType: !85, size: 8)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !86, line: 17, baseType: !87)
!86 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !88, line: 21, baseType: !89)
!88 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !82, file: !69, line: 26, baseType: !85, size: 8, offset: 8)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !69, line: 28, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !73, file: !69, line: 28, size: 32, elements: !93)
!93 = !{!94, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !92, file: !69, line: 29, baseType: !95, size: 16)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !86, line: 19, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !88, line: 24, baseType: !97)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !92, file: !69, line: 30, baseType: !95, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !52, file: !42, line: 171, baseType: !41, size: 512, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !52, file: !42, line: 172, baseType: !101, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !42, line: 133, size: 192, elements: !104)
!104 = !{!105, !112, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !103, file: !42, line: 134, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!80, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !42, line: 135, baseType: !113, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!45, !110}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !103, file: !42, line: 136, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!80, !110, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !42, line: 125, size: 20736, elements: !124)
!124 = !{!125, !130, !134, !135, !139}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !123, file: !42, line: 126, baseType: !126, size: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 192, elements: !128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!128 = !{!129}
!129 = !DISubrange(count: 3)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !123, file: !42, line: 127, baseType: !131, size: 4096, offset: 192)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 4096, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !123, file: !42, line: 128, baseType: !80, size: 32, offset: 4288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !123, file: !42, line: 129, baseType: !136, size: 16384, offset: 4320)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16384, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 2048)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !123, file: !42, line: 130, baseType: !80, size: 32, offset: 20704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !41, file: !42, line: 69, baseType: !141, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !42, line: 116, size: 384, elements: !144)
!144 = !{!145, !149, !178, !518, !549, !553}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !143, file: !42, line: 117, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !49}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !143, file: !42, line: 118, baseType: !150, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !153, line: 254, size: 128, elements: !154)
!153 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!154 = !{!155, !170}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !152, file: !153, line: 255, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !49, !164, !127}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !27, line: 66, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !161, line: 73, baseType: !162)
!161 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !161, line: 15, baseType: !163)
!163 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !153, line: 30, size: 128, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !153, line: 31, baseType: !45, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !165, file: !153, line: 32, baseType: !169, size: 16, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !27, line: 24, baseType: !97)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !152, file: !153, line: 256, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!159, !49, !164, !45, !174}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 61, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !161, line: 72, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !161, line: 16, baseType: !177)
!177 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !143, file: !42, line: 119, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !153, line: 84, size: 320, elements: !183)
!183 = !{!184, !185, !189, !514, !516}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !153, line: 85, baseType: !45, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !182, file: !153, line: 86, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!169, !49, !164, !80}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !182, file: !153, line: 88, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!169, !49, !193, !80}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !153, line: 175, size: 512, elements: !195)
!195 = !{!196, !197, !198, !199, !206, !216, !217}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !194, file: !153, line: 176, baseType: !165, size: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !194, file: !153, line: 177, baseType: !174, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !194, file: !153, line: 178, baseType: !20, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !194, file: !153, line: 179, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !205, line: 32, flags: DIFlagFwdDecl)
!205 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!206 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !194, file: !153, line: 180, baseType: !207, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!159, !210, !49, !193, !127, !213, !174}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !212, line: 537, flags: DIFlagFwdDecl)
!212 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !27, line: 52, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !161, line: 88, baseType: !215)
!215 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !194, file: !153, line: 182, baseType: !207, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !194, file: !153, line: 184, baseType: !218, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!80, !210, !49, !193, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !205, line: 625, size: 1344, elements: !223)
!223 = !{!224, !241, !463, !469, !476, !477, !482, !485, !497, !498, !501, !505, !506, !507, !508, !509, !512}
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !205, line: 628, baseType: !225, size: 128)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !222, file: !205, line: 628, size: 128, elements: !226)
!226 = !{!227, !232}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !205, line: 629, baseType: !228, size: 128)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !205, line: 629, size: 128, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !228, file: !205, line: 631, baseType: !177, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !228, file: !205, line: 632, baseType: !177, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !225, file: !205, line: 635, baseType: !233, size: 128, align: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !27, line: 232, size: 128, align: 64, elements: !234)
!234 = !{!235, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !27, line: 233, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !233, file: !27, line: 234, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !236}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !222, file: !205, line: 639, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !205, line: 733, size: 10240, elements: !244)
!244 = !{!245, !459}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !205, line: 734, baseType: !246, size: 10240)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !243, file: !205, line: 734, size: 10240, elements: !247)
!247 = !{!248, !252, !266, !270, !271, !272, !273, !274, !275, !283, !284, !285, !294, !295, !304, !305, !306, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !353, !367, !370, !425, !426, !427, !430, !433, !434, !437, !438, !439, !446, !447}
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !246, file: !205, line: 739, baseType: !249, size: 512, align: 512)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !205, line: 739, size: 512, align: 512, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !249, file: !205, line: 747, baseType: !76, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !246, file: !205, line: 750, baseType: !253, size: 128, offset: 512)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !254, line: 218, size: 128, elements: !255)
!254 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!255 = !{!256, !264, !265}
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !254, line: 219, baseType: !257, size: 32)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !254, line: 219, size: 32, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !257, file: !254, line: 220, baseType: !56, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !257, file: !254, line: 221, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !254, line: 197, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 197, elements: !263)
!263 = !{}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !253, file: !254, line: 223, baseType: !7, size: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !253, file: !254, line: 224, baseType: !20, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !246, file: !205, line: 752, baseType: !267, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!177, !210, !177, !177, !177, !177}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !246, file: !205, line: 756, baseType: !177, size: 64, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !246, file: !205, line: 757, baseType: !177, size: 64, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !246, file: !205, line: 760, baseType: !177, size: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !246, file: !205, line: 761, baseType: !177, size: 64, offset: 896)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !246, file: !205, line: 763, baseType: !177, size: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !246, file: !205, line: 764, baseType: !276, size: 64, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !212, line: 299, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !212, line: 299, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !278, file: !212, line: 299, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !282, line: 18, baseType: !177)
!282 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!283 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !246, file: !205, line: 773, baseType: !76, size: 32, offset: 1088)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !246, file: !205, line: 785, baseType: !76, size: 32, offset: 1120)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !246, file: !205, line: 795, baseType: !286, size: 64, offset: 1152)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !205, line: 726, size: 128, elements: !288)
!288 = !{!289, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !287, file: !205, line: 727, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !86, line: 23, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !88, line: 31, baseType: !292)
!292 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !287, file: !205, line: 728, baseType: !80, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !246, file: !205, line: 801, baseType: !177, size: 64, offset: 1216)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !246, file: !205, line: 804, baseType: !296, size: 64, offset: 1280)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !297, line: 13, baseType: !298)
!297 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !27, line: 181, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 179, size: 64, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !299, file: !27, line: 180, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !86, line: 22, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !88, line: 30, baseType: !215)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !246, file: !205, line: 806, baseType: !80, size: 32, offset: 1344)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !246, file: !205, line: 808, baseType: !56, size: 32, offset: 1376)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !246, file: !205, line: 823, baseType: !307, size: 320, offset: 1408)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !308, line: 48, size: 320, elements: !309)
!308 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!309 = !{!310, !311, !312, !317, !319}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !307, file: !308, line: 49, baseType: !296, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !307, file: !308, line: 55, baseType: !296, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !307, file: !308, line: 57, baseType: !313, size: 32, offset: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !314, line: 15, size: 32, elements: !315)
!314 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !313, file: !314, line: 20, baseType: !76, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !307, file: !308, line: 59, baseType: !318, size: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !65, line: 23, baseType: !64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !307, file: !308, line: 60, baseType: !26, size: 128, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !246, file: !205, line: 825, baseType: !26, size: 128, offset: 1728)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !246, file: !205, line: 845, baseType: !80, size: 32, offset: 1856)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !246, file: !205, line: 849, baseType: !177, size: 64, offset: 1920)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !246, file: !205, line: 850, baseType: !177, size: 64, offset: 1984)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !246, file: !205, line: 852, baseType: !177, size: 64, offset: 2048)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !246, file: !205, line: 853, baseType: !177, size: 64, offset: 2112)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !246, file: !205, line: 854, baseType: !298, size: 64, offset: 2176)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !246, file: !205, line: 855, baseType: !177, size: 64, offset: 2240)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !246, file: !205, line: 856, baseType: !177, size: 64, offset: 2304)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !246, file: !205, line: 857, baseType: !177, size: 64, offset: 2368)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !246, file: !205, line: 858, baseType: !177, size: 64, offset: 2432)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !246, file: !205, line: 865, baseType: !332, size: 32, offset: 2496)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !333, line: 69, baseType: !334)
!333 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !333, line: 64, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !334, file: !333, line: 65, baseType: !7, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !246, file: !205, line: 867, baseType: !56, size: 32, offset: 2528)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !246, file: !205, line: 869, baseType: !177, size: 64, offset: 2560)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !246, file: !205, line: 869, baseType: !177, size: 64, offset: 2624)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !246, file: !205, line: 869, baseType: !177, size: 64, offset: 2688)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !246, file: !205, line: 869, baseType: !177, size: 64, offset: 2752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !246, file: !205, line: 870, baseType: !177, size: 64, offset: 2816)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !246, file: !205, line: 870, baseType: !177, size: 64, offset: 2880)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !246, file: !205, line: 870, baseType: !177, size: 64, offset: 2944)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !246, file: !205, line: 871, baseType: !177, size: 64, offset: 3008)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !246, file: !205, line: 871, baseType: !177, size: 64, offset: 3072)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !246, file: !205, line: 871, baseType: !177, size: 64, offset: 3136)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !246, file: !205, line: 871, baseType: !177, size: 64, offset: 3200)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !246, file: !205, line: 873, baseType: !350, size: 3328, offset: 3264)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 3328, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 52)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !246, file: !205, line: 875, baseType: !354, size: 1280, offset: 6592)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1280, elements: !365)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !356, line: 22, size: 320, elements: !357)
!356 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!357 = !{!358, !359, !360, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !355, file: !356, line: 23, baseType: !318, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !355, file: !356, line: 24, baseType: !302, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !355, file: !356, line: 26, baseType: !26, size: 128, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !355, file: !356, line: 28, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !86, line: 20, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !88, line: 26, baseType: !80)
!365 = !{!366}
!366 = !DISubrange(count: 4)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !246, file: !205, line: 877, baseType: !368, size: 64, offset: 7872)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !205, line: 877, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !246, file: !205, line: 880, baseType: !371, size: 1088, offset: 7936)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !372, line: 72, baseType: !373)
!372 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 23, size: 1088, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !382, !383, !391, !392, !419, !420, !421}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !373, file: !372, line: 28, baseType: !290, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !373, file: !372, line: 38, baseType: !298, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !373, file: !372, line: 40, baseType: !177, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !373, file: !372, line: 43, baseType: !307, size: 320, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !373, file: !372, line: 44, baseType: !380, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !372, line: 44, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !372, line: 48, baseType: !177, size: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !373, file: !372, line: 59, baseType: !384, size: 256, offset: 640)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !385, line: 66, size: 256, elements: !386)
!385 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!386 = !{!387, !388, !389, !390}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !384, file: !385, line: 67, baseType: !296, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !384, file: !385, line: 68, baseType: !318, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !384, file: !385, line: 70, baseType: !313, size: 32, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !384, file: !385, line: 72, baseType: !26, size: 128, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !373, file: !372, line: 60, baseType: !20, size: 64, offset: 896)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !373, file: !372, line: 61, baseType: !393, size: 64, offset: 960)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !396, line: 13, size: 1216, elements: !397)
!396 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!397 = !{!398, !399, !400, !401, !402, !403, !404, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !395, file: !396, line: 14, baseType: !20, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !395, file: !396, line: 15, baseType: !177, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !395, file: !396, line: 17, baseType: !177, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !395, file: !396, line: 17, baseType: !177, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !395, file: !396, line: 18, baseType: !177, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !395, file: !396, line: 18, baseType: !177, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !395, file: !396, line: 19, baseType: !405, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !395, file: !396, line: 21, baseType: !163, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !395, file: !396, line: 23, baseType: !163, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !395, file: !396, line: 24, baseType: !163, size: 64, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !395, file: !396, line: 25, baseType: !163, size: 64, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !395, file: !396, line: 26, baseType: !163, size: 64, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !395, file: !396, line: 27, baseType: !163, size: 64, offset: 768)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !395, file: !396, line: 28, baseType: !163, size: 64, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !395, file: !396, line: 29, baseType: !163, size: 64, offset: 896)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !395, file: !396, line: 30, baseType: !163, size: 64, offset: 960)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !395, file: !396, line: 31, baseType: !163, size: 64, offset: 1024)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !395, file: !396, line: 32, baseType: !163, size: 64, offset: 1088)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !395, file: !396, line: 33, baseType: !163, size: 64, offset: 1152)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !373, file: !372, line: 63, baseType: !76, size: 32, offset: 1024)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !373, file: !372, line: 69, baseType: !95, size: 16, offset: 1056)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !373, file: !372, line: 70, baseType: !422, size: 16, offset: 1072)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !86, line: 18, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !88, line: 23, baseType: !424)
!424 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !205, line: 882, baseType: !177, size: 64, offset: 9024)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !246, file: !205, line: 885, baseType: !56, size: 32, offset: 9088)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !246, file: !205, line: 886, baseType: !428, size: 64, offset: 9152)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !205, line: 732, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !246, file: !205, line: 901, baseType: !431, size: 64, offset: 9216)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !205, line: 901, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !246, file: !205, line: 904, baseType: !210, size: 64, offset: 9280)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !246, file: !205, line: 906, baseType: !435, size: 64, offset: 9344)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !205, line: 906, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !246, file: !205, line: 930, baseType: !76, size: 32, offset: 9408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !246, file: !205, line: 933, baseType: !76, size: 32, offset: 9440)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !246, file: !205, line: 935, baseType: !440, size: 64, offset: 9472)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !441, line: 103, size: 64, elements: !442)
!441 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !440, file: !441, line: 104, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !441, line: 101, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !246, file: !205, line: 940, baseType: !296, size: 64, offset: 9536)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !246, file: !205, line: 942, baseType: !448, size: 256, offset: 9600)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !449, line: 98, size: 256, elements: !450)
!449 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!450 = !{!451, !452, !453}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !448, file: !449, line: 99, baseType: !296, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !448, file: !449, line: 100, baseType: !26, size: 128, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !448, file: !449, line: 101, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !449, line: 21, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !243, file: !205, line: 986, baseType: !460, offset: 10240)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: -1)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !222, file: !205, line: 640, baseType: !464, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !212, line: 297, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !212, line: 297, size: 64, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !465, file: !212, line: 297, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !282, line: 19, baseType: !177)
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !205, line: 646, baseType: !470, size: 64, offset: 256)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !222, file: !205, line: 646, size: 64, elements: !471)
!471 = !{!472, !475}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !470, file: !205, line: 647, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !205, line: 542, baseType: !177)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !470, file: !205, line: 648, baseType: !474, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !222, file: !205, line: 666, baseType: !80, size: 32, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !222, file: !205, line: 667, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !205, line: 579, size: 320, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !479, file: !205, line: 580, baseType: !307, size: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !222, file: !205, line: 670, baseType: !483, size: 8, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !484)
!484 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !222, file: !205, line: 681, baseType: !486, size: 256, offset: 512)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !205, line: 678, size: 256, elements: !487)
!487 = !{!488, !496}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !486, file: !205, line: 679, baseType: !489, size: 192, align: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !490, line: 5, size: 192, align: 64, elements: !491)
!490 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!491 = !{!492, !493, !495}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !489, file: !490, line: 6, baseType: !177, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !489, file: !490, line: 7, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !489, file: !490, line: 8, baseType: !494, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !486, file: !205, line: 680, baseType: !177, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !222, file: !205, line: 689, baseType: !26, size: 128, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !222, file: !205, line: 691, baseType: !499, size: 64, offset: 896)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !205, line: 691, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !222, file: !205, line: 694, baseType: !502, size: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !205, line: 694, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !222, file: !205, line: 697, baseType: !177, size: 64, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !222, file: !205, line: 699, baseType: !210, size: 64, offset: 1088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !222, file: !205, line: 700, baseType: !20, size: 64, offset: 1152)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !222, file: !205, line: 711, baseType: !296, size: 64, offset: 1216)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !222, file: !205, line: 717, baseType: !510, size: 64, offset: 1280)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !205, line: 717, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !222, file: !205, line: 722, baseType: !513, offset: 1344)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !205, line: 570, elements: !263)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !182, file: !153, line: 90, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !182, file: !153, line: 91, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !143, file: !42, line: 120, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!522, !110}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !525)
!525 = !{!526, !527, !531, !535, !541, !545}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !524, file: !14, line: 40, baseType: !13, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !524, file: !14, line: 41, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!483}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !524, file: !14, line: 42, baseType: !532, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!20}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !524, file: !14, line: 43, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!405, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !524, file: !14, line: 44, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!405}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !524, file: !14, line: 45, baseType: !546, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !20}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !143, file: !42, line: 121, baseType: !550, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!405, !110}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !143, file: !42, line: 122, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !110, !557, !565}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !559, line: 23, baseType: !560)
!559 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 21, size: 32, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !560, file: !559, line: 22, baseType: !563, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !27, line: 37, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !161, line: 49, baseType: !7)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !559, line: 28, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 26, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !567, file: !559, line: 27, baseType: !570, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !27, line: 38, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !161, line: 50, baseType: !7)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !41, file: !42, line: 70, baseType: !573, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !575, line: 190, size: 1152, elements: !576)
!575 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !679, !680, !681, !682, !683, !686}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !574, file: !575, line: 191, baseType: !76, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !574, file: !575, line: 192, baseType: !76, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !574, file: !575, line: 202, baseType: !573, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !574, file: !575, line: 203, baseType: !45, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !574, file: !575, line: 205, baseType: !489, size: 192, align: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !574, file: !575, line: 207, baseType: !405, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !574, file: !575, line: 208, baseType: !7, size: 32, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !575, line: 209, baseType: !585, size: 256, offset: 512)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !575, line: 209, size: 256, elements: !586)
!586 = !{!587, !599, !603}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !585, file: !575, line: 210, baseType: !588, size: 256)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !575, line: 153, size: 256, elements: !589)
!589 = !{!590, !591, !595, !598}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !588, file: !575, line: 154, baseType: !177, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !588, file: !575, line: 156, baseType: !592, size: 64, offset: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !490, line: 12, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !592, file: !490, line: 13, baseType: !494, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !588, file: !575, line: 162, baseType: !596, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !575, line: 162, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !588, file: !575, line: 167, baseType: !177, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !585, file: !575, line: 211, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !575, line: 170, size: 64, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !600, file: !575, line: 171, baseType: !573, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !585, file: !575, line: 212, baseType: !604, size: 256)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !575, line: 174, size: 256, elements: !605)
!605 = !{!606, !674, !677, !678}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !604, file: !575, line: 175, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !575, line: 271, size: 768, elements: !610)
!610 = !{!611, !634, !638, !642, !647, !651, !655, !659, !660, !661, !662, !670}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !609, file: !575, line: 276, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!80, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !575, line: 251, size: 1216, elements: !617)
!617 = !{!618, !619, !620, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !616, file: !575, line: 253, baseType: !573, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !616, file: !575, line: 254, baseType: !210, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !616, file: !575, line: 255, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !623, line: 54, flags: DIFlagFwdDecl)
!623 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !616, file: !575, line: 256, baseType: !20, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !616, file: !575, line: 259, baseType: !384, size: 256, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !616, file: !575, line: 260, baseType: !384, size: 256, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !616, file: !575, line: 261, baseType: !80, size: 32, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !616, file: !575, line: 262, baseType: !26, size: 128, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !616, file: !575, line: 263, baseType: !127, size: 64, offset: 960)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !616, file: !575, line: 265, baseType: !174, size: 64, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !616, file: !575, line: 266, baseType: !483, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !616, file: !575, line: 267, baseType: !483, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !616, file: !575, line: 268, baseType: !502, size: 64, offset: 1152)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !609, file: !575, line: 277, baseType: !635, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !615}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !609, file: !575, line: 290, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!80, !621, !20}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !609, file: !575, line: 292, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!20, !621, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !609, file: !575, line: 293, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!20, !621, !20, !646}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !609, file: !575, line: 294, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !621, !20}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !609, file: !575, line: 296, baseType: !656, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!159, !615, !127, !174, !213}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !609, file: !575, line: 306, baseType: !174, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !609, file: !575, line: 313, baseType: !483, size: 8, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !609, file: !575, line: 314, baseType: !656, size: 64, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !609, file: !575, line: 317, baseType: !663, size: 64, offset: 640)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!666, !615, !668}
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !667, line: 59, baseType: !7)
!667 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !575, line: 31, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !609, file: !575, line: 320, baseType: !671, size: 64, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!80, !615, !221}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !604, file: !575, line: 176, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !575, line: 35, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !604, file: !575, line: 177, baseType: !213, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !604, file: !575, line: 178, baseType: !573, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !574, file: !575, line: 215, baseType: !20, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !574, file: !575, line: 221, baseType: !290, size: 64, offset: 832)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !575, line: 223, baseType: !97, size: 16, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !574, file: !575, line: 224, baseType: !169, size: 16, offset: 912)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !574, file: !575, line: 225, baseType: !684, size: 64, offset: 960)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !575, line: 36, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !574, file: !575, line: 227, baseType: !233, size: 128, align: 64, offset: 1024)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !41, file: !42, line: 71, baseType: !688, size: 32, offset: 448)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !689, line: 19, size: 32, elements: !690)
!689 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !688, file: !689, line: 20, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !693, line: 113, baseType: !694)
!693 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !693, line: 111, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !694, file: !693, line: 112, baseType: !76, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !41, file: !42, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !41, file: !42, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !41, file: !42, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !41, file: !42, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !41, file: !42, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !38, file: !6, line: 47, baseType: !21, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !38, file: !6, line: 48, baseType: !49, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !38, file: !6, line: 49, baseType: !705, size: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !38, file: !6, line: 50, baseType: !708, size: 64, offset: 704)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !710, line: 26, size: 256, elements: !711)
!710 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !709, file: !710, line: 27, baseType: !7, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !709, file: !710, line: 28, baseType: !714, size: 192, offset: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !715, line: 43, size: 192, elements: !716)
!715 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !714, file: !715, line: 44, baseType: !318, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !714, file: !715, line: 45, baseType: !26, size: 128, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !22, file: !6, line: 418, baseType: !720, size: 64, offset: 1408)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !722)
!722 = !{!723, !724, !729, !733, !737, !741}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !721, file: !6, line: 54, baseType: !165, size: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !721, file: !6, line: 55, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!159, !720, !728, !127}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !721, file: !6, line: 57, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!159, !720, !728, !45, !174}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !721, file: !6, line: 59, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !21, !45}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !721, file: !6, line: 60, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!80, !21}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !721, file: !6, line: 61, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !21}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !22, file: !6, line: 419, baseType: !45, size: 64, offset: 1472)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !22, file: !6, line: 420, baseType: !45, size: 64, offset: 1536)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !22, file: !6, line: 421, baseType: !49, size: 64, offset: 1600)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !22, file: !6, line: 424, baseType: !749, size: 64, offset: 1664)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !22, file: !6, line: 425, baseType: !753, size: 64, offset: 1728)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !22, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !22, file: !6, line: 435, baseType: !384, size: 256, offset: 1856)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !22, file: !6, line: 437, baseType: !758, size: 64, offset: 2112)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !760, line: 69, size: 320, elements: !761)
!760 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!761 = !{!762, !763, !764, !781, !783, !787, !788}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !759, file: !760, line: 70, baseType: !45, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !759, file: !760, line: 71, baseType: !21, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !759, file: !760, line: 72, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !760, line: 47, size: 256, elements: !768)
!768 = !{!769, !770, !776, !780}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !760, line: 49, baseType: !7, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !767, file: !760, line: 51, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!80, !45, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !767, file: !760, line: 53, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!80, !127, !774}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !767, file: !760, line: 55, baseType: !546, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !759, file: !760, line: 73, baseType: !782, size: 16, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !759, file: !760, line: 74, baseType: !784, size: 8, offset: 208)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !86, line: 16, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !88, line: 20, baseType: !786)
!786 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !760, line: 75, baseType: !85, size: 8, offset: 216)
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !760, line: 76, baseType: !789, size: 64, offset: 256)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !760, line: 76, size: 64, elements: !790)
!790 = !{!791, !792, !799}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !789, file: !760, line: 77, baseType: !20, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !789, file: !760, line: 78, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !760, line: 86, size: 128, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !795, file: !760, line: 87, baseType: !7, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !795, file: !760, line: 88, baseType: !127, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !789, file: !760, line: 79, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !760, line: 92, size: 256, elements: !803)
!803 = !{!804, !805, !806, !808, !809}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !802, file: !760, line: 94, baseType: !7, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !802, file: !760, line: 95, baseType: !7, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !802, file: !760, line: 96, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !802, file: !760, line: 97, baseType: !765, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !802, file: !760, line: 98, baseType: !20, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !22, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !22, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !22, file: !6, line: 442, baseType: !749, size: 64, offset: 2240)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !22, file: !6, line: 443, baseType: !753, size: 64, offset: 2304)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !22, file: !6, line: 444, baseType: !483, size: 8, offset: 2368)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !22, file: !6, line: 451, baseType: !483, size: 8, offset: 2376)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !22, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !22, file: !6, line: 455, baseType: !818, size: 64, offset: 2432)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !22, file: !6, line: 458, baseType: !821, size: 64, offset: 2496)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!80}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !22, file: !6, line: 460, baseType: !825, size: 4032, align: 512, offset: 2560)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 4032, elements: !842)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !827)
!827 = !{!828, !829, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !826, file: !6, line: 363, baseType: !20, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !826, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !826, file: !6, line: 367, baseType: !831, size: 448, offset: 128)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !831, file: !6, line: 320, baseType: !21, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !831, file: !6, line: 321, baseType: !835, size: 384, offset: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !836, line: 40, size: 384, elements: !837)
!836 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !835, file: !836, line: 41, baseType: !839, size: 384, align: 64)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 384, align: 64, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 2)
!842 = !{!843}
!843 = !DISubrange(count: 7)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !22, file: !6, line: 463, baseType: !845, size: 192, offset: 6592)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !846, line: 8, size: 192, elements: !847)
!846 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!847 = !{!848, !849, !851}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !845, file: !846, line: 10, baseType: !7, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !845, file: !846, line: 11, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !845, file: !846, line: 12, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !854, line: 59, size: 48, elements: !855)
!854 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!855 = !{!856, !857, !858, !859, !860, !861}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !853, file: !854, line: 60, baseType: !422, size: 16)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !853, file: !854, line: 61, baseType: !422, size: 16, offset: 16)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !853, file: !854, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !853, file: !854, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !853, file: !854, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !853, file: !854, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !22, file: !6, line: 465, baseType: !177, size: 64, offset: 6784)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !22, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !22, file: !6, line: 470, baseType: !26, size: 128, offset: 6912)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !22, file: !6, line: 471, baseType: !866, size: 64, offset: 7040)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !868, line: 33, size: 96, elements: !869)
!868 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!869 = !{!870, !871, !872, !873}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !867, file: !868, line: 37, baseType: !80, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !867, file: !868, line: 43, baseType: !80, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !867, file: !868, line: 45, baseType: !97, size: 16, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !868, line: 47, baseType: !97, size: 16, offset: 80)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !22, file: !6, line: 476, baseType: !875, size: 64, offset: 7104)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !877)
!877 = !{!878, !895, !896, !897}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !876, file: !6, line: 379, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !881, line: 204, baseType: !882)
!881 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !881, line: 197, size: 192, elements: !883)
!883 = !{!884, !887, !888, !889, !891, !893}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !882, file: !881, line: 198, baseType: !885, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !881, line: 21, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !88, line: 27, baseType: !7)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !882, file: !881, line: 199, baseType: !89, size: 8, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !882, file: !881, line: 200, baseType: !89, size: 8, offset: 40)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !882, file: !881, line: 201, baseType: !890, size: 16, offset: 48)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !881, line: 17, baseType: !96)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !882, file: !881, line: 202, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !881, line: 16, baseType: !291)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !882, file: !881, line: 203, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !881, line: 22, baseType: !291)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !876, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !876, file: !6, line: 381, baseType: !127, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !876, file: !6, line: 382, baseType: !127, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !22, file: !6, line: 477, baseType: !876, size: 256, offset: 7168)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !22, file: !6, line: 480, baseType: !900, size: 64, offset: 7424)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !22, file: !6, line: 483, baseType: !903, size: 64, offset: 7488)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !22, file: !6, line: 488, baseType: !127, size: 64, offset: 7552)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !22, file: !6, line: 492, baseType: !20, size: 64, offset: 7616)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !22, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !22, file: !6, line: 495, baseType: !20, size: 64, offset: 7744)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !22, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !22, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !22, file: !6, line: 500, baseType: !912, size: 64, offset: 7872)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !914, line: 45, baseType: !915)
!914 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !22, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !22, file: !6, line: 504, baseType: !918, size: 64, offset: 8000)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !921, line: 96, size: 192, elements: !922)
!921 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!922 = !{!923, !924, !985, !988}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !920, file: !921, line: 97, baseType: !7, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !920, file: !921, line: 98, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !921, line: 24, size: 3072, elements: !927)
!927 = !{!928, !930, !931, !932, !933, !947, !948, !949, !950, !969, !970, !971, !982, !983, !984}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !926, file: !921, line: 26, baseType: !929, size: 128)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !840)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !926, file: !921, line: 27, baseType: !929, size: 128, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !926, file: !921, line: 28, baseType: !80, size: 32, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !926, file: !921, line: 31, baseType: !56, size: 32, align: 512, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !926, file: !921, line: 32, baseType: !934, size: 960, offset: 576)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !935, line: 206, size: 960, elements: !936)
!935 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!936 = !{!937, !938, !941, !943, !944, !946}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !934, file: !935, line: 207, baseType: !236, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !934, file: !935, line: 208, baseType: !939, size: 256, offset: 64)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 256, elements: !365)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !934, file: !935, line: 209, baseType: !942, size: 256, offset: 320)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !365)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !934, file: !935, line: 213, baseType: !163, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !934, file: !935, line: 215, baseType: !945, size: 256, offset: 640)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !365)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !934, file: !935, line: 216, baseType: !85, size: 8, offset: 896)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !926, file: !921, line: 33, baseType: !177, size: 64, offset: 1536)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !926, file: !921, line: 34, baseType: !177, size: 64, offset: 1600)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !926, file: !921, line: 35, baseType: !483, size: 8, offset: 1664)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !926, file: !921, line: 36, baseType: !951, size: 320, offset: 1728)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !952, line: 11, size: 320, elements: !953)
!952 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!953 = !{!954, !961, !962, !967}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !951, file: !952, line: 16, baseType: !955, size: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !27, line: 198, size: 128, elements: !956)
!956 = !{!957, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !955, file: !27, line: 199, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !955, file: !27, line: 199, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !951, file: !952, line: 17, baseType: !177, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !951, file: !952, line: 18, baseType: !963, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !952, line: 19, baseType: !968, size: 32, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !86, line: 21, baseType: !886)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !926, file: !921, line: 37, baseType: !448, size: 256, offset: 2048)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !926, file: !921, line: 38, baseType: !233, size: 128, align: 64, offset: 2304)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !926, file: !921, line: 39, baseType: !972, size: 64, offset: 2432)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !921, line: 49, size: 768, elements: !974)
!974 = !{!975, !976, !977, !978, !979, !980, !981}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !973, file: !921, line: 50, baseType: !56, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !973, file: !921, line: 51, baseType: !942, size: 256, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !973, file: !921, line: 53, baseType: !942, size: 256, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !973, file: !921, line: 54, baseType: !177, size: 64, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !973, file: !921, line: 55, baseType: !972, size: 64, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !973, file: !921, line: 56, baseType: !80, size: 32, offset: 704)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !973, file: !921, line: 57, baseType: !80, size: 32, offset: 736)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !926, file: !921, line: 40, baseType: !177, size: 64, offset: 2496)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !926, file: !921, line: 42, baseType: !80, size: 32, offset: 2560)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !926, file: !921, line: 43, baseType: !919, size: 64, offset: 2624)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !920, file: !921, line: 99, baseType: !986, offset: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !987, line: 211, elements: !263)
!987 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !920, file: !921, line: 100, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !921, line: 63, size: 3008, elements: !991)
!991 = !{!992, !993, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1023}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !990, file: !921, line: 64, baseType: !972, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !990, file: !921, line: 65, baseType: !994, size: 192, offset: 64)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 192, elements: !128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !990, file: !921, line: 67, baseType: !80, size: 32, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !990, file: !921, line: 68, baseType: !384, size: 256, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !990, file: !921, line: 69, baseType: !56, size: 32, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !990, file: !921, line: 70, baseType: !384, size: 256, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !990, file: !921, line: 71, baseType: !177, size: 64, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !990, file: !921, line: 72, baseType: !177, size: 64, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !990, file: !921, line: 73, baseType: !177, size: 64, offset: 1024)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !990, file: !921, line: 74, baseType: !177, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !990, file: !921, line: 75, baseType: !177, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !990, file: !921, line: 76, baseType: !177, size: 64, offset: 1216)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !990, file: !921, line: 77, baseType: !177, size: 64, offset: 1280)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !990, file: !921, line: 78, baseType: !177, size: 64, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !990, file: !921, line: 79, baseType: !483, size: 8, offset: 1408)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !990, file: !921, line: 80, baseType: !177, size: 64, offset: 1472)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !990, file: !921, line: 81, baseType: !384, size: 256, offset: 1536)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !990, file: !921, line: 82, baseType: !709, size: 256, offset: 1792)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !990, file: !921, line: 84, baseType: !76, size: 32, offset: 2048)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !990, file: !921, line: 87, baseType: !177, size: 64, offset: 2112)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !990, file: !921, line: 88, baseType: !177, size: 64, offset: 2176)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !990, file: !921, line: 89, baseType: !1015, size: 704, offset: 2240)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !449, line: 111, size: 704, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1022}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1015, file: !449, line: 112, baseType: !448, size: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1015, file: !449, line: 113, baseType: !951, size: 320, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1015, file: !449, line: 116, baseType: !1020, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !449, line: 18, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1015, file: !449, line: 117, baseType: !80, size: 32, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !990, file: !921, line: 90, baseType: !919, size: 64, offset: 2944)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !22, file: !6, line: 515, baseType: !1025, size: 64, offset: 8064)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1027, line: 117, size: 128, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1028 = !{!1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1026, file: !1027, line: 118, baseType: !363, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1026, file: !1027, line: 119, baseType: !363, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1026, file: !1027, line: 120, baseType: !163, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !22, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !22, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !22, file: !6, line: 520, baseType: !1035, size: 64, offset: 8192)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !22, file: !6, line: 523, baseType: !1037, size: 64, offset: 8256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !22, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !22, file: !6, line: 525, baseType: !1042, size: 64, offset: 8384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !22, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !22, file: !6, line: 533, baseType: !20, size: 64, offset: 8512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !22, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !22, file: !6, line: 535, baseType: !1049, size: 64, offset: 8640)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !22, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !22, file: !6, line: 539, baseType: !80, size: 32, offset: 8736)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !22, file: !6, line: 540, baseType: !1053, size: 64, offset: 8768)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1055, line: 32, size: 64, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1054, file: !1055, line: 33, baseType: !363, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1054, file: !1055, line: 34, baseType: !363, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !22, file: !6, line: 563, baseType: !26, size: 128, offset: 8832)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !22, file: !6, line: 565, baseType: !26, size: 128, offset: 8960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !22, file: !6, line: 568, baseType: !1062, size: 64, offset: 9088)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !22, file: !6, line: 570, baseType: !76, size: 32, offset: 9152)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "be128", file: !1068, line: 54, baseType: !1069)
!1068 = !DIFile(filename: "./include/crypto/b128ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "739149518c36fa39a58d9aab36e127ad")
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1068, line: 52, size: 128, elements: !1070)
!1070 = !{!1071, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1069, file: !1068, line: 53, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !667, line: 41, baseType: !291)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1069, file: !1068, line: 53, baseType: !1072, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !1077, line: 26, size: 64, elements: !1109)
!1077 = !DIFile(filename: "./include/crypto/utils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f96ae936e2fe1a16bfcf6d1636fd3f13")
!1078 = distinct !DISubprogram(name: "crypto_xor", scope: !1077, file: !1077, line: 16, type: !1079, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1081, !1082, !7}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1084 = !{!1085, !1086, !1087, !1088, !1091, !1092, !1093, !1096, !1103}
!1085 = !DILocalVariable(name: "dst", arg: 1, scope: !1078, file: !1077, line: 16, type: !1081)
!1086 = !DILocalVariable(name: "src", arg: 2, scope: !1078, file: !1077, line: 16, type: !1082)
!1087 = !DILocalVariable(name: "size", arg: 3, scope: !1078, file: !1077, line: 16, type: !7)
!1088 = !DILocalVariable(name: "d", scope: !1089, file: !1077, line: 21, type: !1049)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !1077, line: 20, column: 43)
!1090 = distinct !DILexicalBlock(scope: !1078, file: !1077, line: 18, column: 6)
!1091 = !DILocalVariable(name: "s", scope: !1089, file: !1077, line: 22, type: !1049)
!1092 = !DILocalVariable(name: "l", scope: !1089, file: !1077, line: 23, type: !177)
!1093 = !DILocalVariable(name: "__pptr", scope: !1094, file: !1077, line: 26, type: !1074)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !1077, line: 26, column: 8)
!1095 = distinct !DILexicalBlock(scope: !1089, file: !1077, line: 25, column: 20)
!1096 = !DILocalVariable(name: "__pptr", scope: !1097, file: !1077, line: 26, type: !1098)
!1097 = distinct !DILexicalBlock(scope: !1095, file: !1077, line: 26, column: 27)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !1077, line: 26, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1100, file: !1077, line: 26, baseType: !177, size: 64)
!1103 = !DILocalVariable(name: "__pptr", scope: !1104, file: !1077, line: 27, type: !1105)
!1104 = distinct !DILexicalBlock(scope: !1095, file: !1077, line: 27, column: 4)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !1077, line: 27, size: 64, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1106, file: !1077, line: 27, baseType: !177, size: 64)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1076, file: !1077, line: 26, baseType: !177, size: 64)
!1111 = !{!1112, !1114, !1118, !1123, !1128, !1133, !1135, !1140, !1145, !0}
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_ghash_generic__200_178_ghash_mod_init4201", scope: !2, file: !3, line: 178, type: !20, isLocal: true, isDefinition: true)
!1114 = !DIGlobalVariableExpression(var: !1115, expr: !DIExpression())
!1115 = distinct !DIGlobalVariable(name: "__exitcall_ghash_mod_exit", scope: !2, file: !3, line: 179, type: !1116, isLocal: true, isDefinition: true)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1117, line: 120, baseType: !1062)
!1117 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file202", scope: !2, file: !3, line: 181, type: !1120, isLocal: true, isDefinition: true, align: 8)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 320, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 40)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license203", scope: !2, file: !3, line: 181, type: !1125, isLocal: true, isDefinition: true, align: 8)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 208, elements: !1126)
!1126 = !{!1127}
!1127 = !DISubrange(count: 26)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description204", scope: !2, file: !3, line: 182, type: !1130, isLocal: true, isDefinition: true, align: 8)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 368, elements: !1131)
!1131 = !{!1132}
!1132 = !DISubrange(count: 46)
!1133 = !DIGlobalVariableExpression(var: !1134, expr: !DIExpression())
!1134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace205", scope: !2, file: !3, line: 183, type: !1125, isLocal: true, isDefinition: true, align: 8)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression())
!1136 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto206", scope: !2, file: !3, line: 183, type: !1137, isLocal: true, isDefinition: true, align: 8)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 264, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 33)
!1140 = !DIGlobalVariableExpression(var: !1141, expr: !DIExpression())
!1141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace207", scope: !2, file: !3, line: 184, type: !1142, isLocal: true, isDefinition: true, align: 8)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 272, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 34)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression())
!1146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto208", scope: !2, file: !3, line: 184, type: !1147, isLocal: true, isDefinition: true, align: 8)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 328, elements: !1148)
!1148 = !{!1149}
!1149 = !DISubrange(count: 41)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_alg", file: !1151, line: 225, size: 3904, elements: !1152)
!1151 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!1152 = !{!1153, !1307, !1311, !1315, !1319, !1320, !1324, !1328, !1332, !1336, !1340, !1344, !1345}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1150, file: !1151, line: 226, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!80, !1157}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_desc", file: !1151, line: 175, size: 64, elements: !1159)
!1159 = !{!1160, !1306}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !1158, file: !1151, line: 176, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !1151, line: 268, size: 320, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !1162, file: !1151, line: 269, baseType: !7, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1162, file: !1151, line: 270, baseType: !1166, size: 256, offset: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !1167, line: 422, size: 256, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!1168 = !{!1169, !1170, !1171, !1172, !1177, !1305}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1166, file: !1167, line: 423, baseType: !692, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !1166, file: !1167, line: 425, baseType: !968, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1166, file: !1167, line: 427, baseType: !80, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1166, file: !1167, line: 429, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !1166, file: !1167, line: 431, baseType: !1178, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !1167, line: 343, size: 3072, align: 64, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1193, !1194, !1273, !1298, !1299, !1300, !1304}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !1179, file: !1167, line: 344, baseType: !26, size: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !1179, file: !1167, line: 345, baseType: !26, size: 128, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !1179, file: !1167, line: 347, baseType: !968, size: 32, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !1179, file: !1167, line: 348, baseType: !7, size: 32, offset: 288)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !1179, file: !1167, line: 349, baseType: !7, size: 32, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !1179, file: !1167, line: 350, baseType: !7, size: 32, offset: 352)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !1179, file: !1167, line: 352, baseType: !80, size: 32, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !1179, file: !1167, line: 353, baseType: !692, size: 32, offset: 416)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !1179, file: !1167, line: 355, baseType: !1190, size: 1024, offset: 448)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1024, elements: !1191)
!1191 = !{!1192}
!1192 = !DISubrange(count: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !1179, file: !1167, line: 356, baseType: !1190, size: 1024, offset: 1472)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !1179, file: !1167, line: 358, baseType: !1195, size: 64, offset: 2496)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !623, line: 57, size: 512, elements: !1198)
!1198 = !{!1199, !1203, !1207, !1211, !1215, !1221, !1269, !1270, !1271, !1272}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !1197, file: !623, line: 58, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!7, !1178, !968, !968}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !1197, file: !623, line: 59, baseType: !1204, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!7, !1178}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !1197, file: !623, line: 60, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!80, !1176}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1197, file: !623, line: 61, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !621, !1178}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !1197, file: !623, line: 62, baseType: !1216, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!80, !1219, !1178}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !623, line: 55, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1197, file: !623, line: 63, baseType: !1222, size: 64, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !623, line: 74, size: 3520, elements: !1227)
!1227 = !{!1228, !1229, !1247, !1266, !1267}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !1226, file: !623, line: 75, baseType: !1179, size: 3072, align: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !1226, file: !623, line: 77, baseType: !1230, size: 64, offset: 3072)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !623, line: 91, size: 1344, elements: !1232)
!1232 = !{!1233, !1234, !1238, !1239, !1246}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1231, file: !623, line: 92, baseType: !26, size: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !1231, file: !623, line: 93, baseType: !1235, size: 64, offset: 128)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !27, line: 194, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1235, file: !27, line: 195, baseType: !958, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1231, file: !623, line: 94, baseType: !21, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1231, file: !623, line: 96, baseType: !1240, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!80, !1230, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !623, line: 52, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1231, file: !623, line: 98, baseType: !1190, size: 1024, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !623, line: 79, baseType: !1248, size: 128, offset: 3136)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !623, line: 79, size: 128, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1248, file: !623, line: 81, baseType: !955, size: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !1248, file: !623, line: 83, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !623, line: 101, size: 384, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1262, !1263, !1264, !1265}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1253, file: !623, line: 102, baseType: !26, size: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !1253, file: !623, line: 103, baseType: !1178, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !623, line: 104, baseType: !1258, size: 64, offset: 192)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !623, line: 104, size: 64, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !1258, file: !623, line: 106, baseType: !1225, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1258, file: !623, line: 108, baseType: !1252, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !1253, file: !623, line: 110, baseType: !1195, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1253, file: !623, line: 111, baseType: !968, size: 32, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1253, file: !623, line: 112, baseType: !483, size: 8, offset: 352)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1253, file: !623, line: 113, baseType: !483, size: 8, offset: 360)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !1226, file: !623, line: 86, baseType: !448, size: 256, offset: 3264)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !1226, file: !623, line: 88, baseType: !1268, align: 64, offset: 3520)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !461)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1197, file: !623, line: 68, baseType: !7, size: 32, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !1197, file: !623, line: 69, baseType: !7, size: 32, offset: 416)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !1197, file: !623, line: 70, baseType: !7, size: 32, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !1197, file: !623, line: 71, baseType: !7, size: 32, offset: 480)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !1179, file: !1167, line: 363, baseType: !1274, size: 256, offset: 2560)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1167, line: 360, size: 256, elements: !1275)
!1275 = !{!1276, !1290}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1274, file: !1167, line: 361, baseType: !1277, size: 256)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !1167, line: 235, size: 256, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1285, !1289}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !1277, file: !1167, line: 236, baseType: !7, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !1277, file: !1167, line: 237, baseType: !7, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !1277, file: !1167, line: 238, baseType: !1282, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!80, !1176, !1082, !7}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !1277, file: !1167, line: 240, baseType: !1286, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !1176, !1081, !1082}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !1277, file: !1167, line: 241, baseType: !1286, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1274, file: !1167, line: 362, baseType: !1291, size: 128)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !1167, line: 255, size: 128, elements: !1292)
!1292 = !{!1293, !1297}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !1291, file: !1167, line: 256, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!80, !1176, !1082, !7, !1081, !807}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !1291, file: !1167, line: 258, baseType: !1294, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !1179, file: !1167, line: 365, baseType: !1208, size: 64, offset: 2816)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !1179, file: !1167, line: 366, baseType: !1173, size: 64, offset: 2880)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !1179, file: !1167, line: 367, baseType: !1301, size: 64, offset: 2944)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !1178}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !1179, file: !1167, line: 369, baseType: !21, size: 64, offset: 3008)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !1166, file: !1167, line: 433, baseType: !1268, align: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !1158, file: !1151, line: 177, baseType: !1268, align: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1150, file: !1151, line: 227, baseType: !1308, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!80, !1157, !1082, !7}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1150, file: !1151, line: 229, baseType: !1312, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!80, !1157, !1081}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !1150, file: !1151, line: 230, baseType: !1316, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!80, !1157, !1082, !7, !1081}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !1150, file: !1151, line: 232, baseType: !1316, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !1150, file: !1151, line: 234, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!80, !1157, !20}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !1150, file: !1151, line: 235, baseType: !1325, size: 64, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!80, !1157, !405}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !1150, file: !1151, line: 236, baseType: !1329, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!80, !1161, !1082, !7}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !1150, file: !1151, line: 238, baseType: !1333, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!80, !1161}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !1150, file: !1151, line: 239, baseType: !1337, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !1161}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !1150, file: !1151, line: 240, baseType: !1341, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!80, !1161, !1161}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !1150, file: !1151, line: 242, baseType: !7, size: 32, offset: 704)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1151, line: 244, baseType: !1346, size: 3136, offset: 768)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1151, line: 244, size: 3136, elements: !1347)
!1347 = !{!1348, !1354}
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1151, line: 245, baseType: !1349, size: 3136)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1346, file: !1151, line: 245, size: 3136, elements: !1350)
!1350 = !{!1351, !1352, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !1349, file: !1151, line: 245, baseType: !7, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !1349, file: !1151, line: 245, baseType: !7, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1349, file: !1151, line: 245, baseType: !1179, size: 3072, align: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !1346, file: !1151, line: 246, baseType: !1355, size: 3136)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_alg_common", file: !1151, line: 70, size: 3136, elements: !1356)
!1356 = !{!1357, !1358, !1359}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !1355, file: !1151, line: 70, baseType: !7, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !1355, file: !1151, line: 70, baseType: !7, size: 32, offset: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1355, file: !1151, line: 70, baseType: !1179, size: 3072, align: 64, offset: 64)
!1360 = !{i32 7, !"Dwarf Version", i32 5}
!1361 = !{i32 2, !"Debug Info Version", i32 3}
!1362 = !{i32 1, !"wchar_size", i32 2}
!1363 = !{i32 8, !"cf-protection-branch", i32 1}
!1364 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1365 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1366 = !{i32 1, !"Code Model", i32 2}
!1367 = !{i32 1, !"override-stack-alignment", i32 8}
!1368 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1369 = distinct !DISubprogram(name: "ghash_mod_exit", scope: !3, file: !3, line: 173, type: !1063, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1370 = !DILocation(line: 175, column: 2, scope: !1369)
!1371 = !DILocation(line: 176, column: 1, scope: !1369)
!1372 = !DISubprogram(name: "crypto_unregister_shash", scope: !1373, file: !1373, line: 110, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = !DIFile(filename: "./include/crypto/internal/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed36183aa18097edaf56e7e16397323")
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1377 = distinct !DISubprogram(name: "__initstub__kmod_ghash_generic__200_178_ghash_mod_init4", scope: !3, file: !3, line: 178, type: !822, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1378 = !DILocation(line: 178, column: 1, scope: !1377)
!1379 = distinct !DISubprogram(name: "ghash_mod_init", scope: !3, file: !3, line: 168, type: !822, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1380 = !DILocation(line: 170, column: 9, scope: !1379)
!1381 = !DILocation(line: 170, column: 2, scope: !1379)
!1382 = distinct !DISubprogram(name: "ghash_init", scope: !3, file: !3, line: 46, type: !1155, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1383)
!1383 = !{!1384, !1385}
!1384 = !DILocalVariable(name: "desc", arg: 1, scope: !1382, file: !3, line: 46, type: !1157)
!1385 = !DILocalVariable(name: "dctx", scope: !1382, file: !3, line: 48, type: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ghash_desc_ctx", file: !1388, line: 19, size: 160, elements: !1389)
!1388 = !DIFile(filename: "./include/crypto/ghash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "433148f28b32a6e3d44f157a13db6d30")
!1389 = !{!1390, !1394}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1387, file: !1388, line: 20, baseType: !1391, size: 128)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 16)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1387, file: !1388, line: 21, baseType: !968, size: 32, offset: 128)
!1395 = !DILocation(line: 46, column: 42, scope: !1382)
!1396 = !DILocation(line: 48, column: 2, scope: !1382)
!1397 = !DILocation(line: 48, column: 25, scope: !1382)
!1398 = !DILocation(line: 48, column: 47, scope: !1382)
!1399 = !DILocation(line: 48, column: 32, scope: !1382)
!1400 = !DILocation(line: 50, column: 9, scope: !1382)
!1401 = !DILocation(line: 50, column: 2, scope: !1382)
!1402 = !DILocation(line: 53, column: 1, scope: !1382)
!1403 = !DILocation(line: 52, column: 2, scope: !1382)
!1404 = distinct !DISubprogram(name: "ghash_update", scope: !3, file: !3, line: 78, type: !1309, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1423, !1424, !1427, !1429, !1430}
!1406 = !DILocalVariable(name: "desc", arg: 1, scope: !1404, file: !3, line: 78, type: !1157)
!1407 = !DILocalVariable(name: "src", arg: 2, scope: !1404, file: !3, line: 79, type: !1082)
!1408 = !DILocalVariable(name: "srclen", arg: 3, scope: !1404, file: !3, line: 79, type: !7)
!1409 = !DILocalVariable(name: "dctx", scope: !1404, file: !3, line: 81, type: !1386)
!1410 = !DILocalVariable(name: "ctx", scope: !1404, file: !3, line: 82, type: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ghash_ctx", file: !1388, line: 15, size: 64, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gf128", scope: !1412, file: !1388, line: 16, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gf128mul_4k", file: !1417, line: 222, size: 32768, elements: !1418)
!1417 = !DIFile(filename: "./include/crypto/gf128mul.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbe146c8ba0c303f0d146b8c9a1a7461")
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !1416, file: !1417, line: 223, baseType: !1420, size: 32768)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 32768, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 256)
!1423 = !DILocalVariable(name: "dst", scope: !1404, file: !3, line: 83, type: !1081)
!1424 = !DILocalVariable(name: "n", scope: !1425, file: !3, line: 86, type: !80)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 85, column: 19)
!1426 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 85, column: 6)
!1427 = !DILocalVariable(name: "__UNIQUE_ID___x198", scope: !1428, file: !3, line: 86, type: !7)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 86, column: 11)
!1429 = !DILocalVariable(name: "__UNIQUE_ID___y199", scope: !1428, file: !3, line: 86, type: !968)
!1430 = !DILocalVariable(name: "pos", scope: !1425, file: !3, line: 87, type: !1081)
!1431 = !DILocation(line: 78, column: 44, scope: !1404)
!1432 = !DILocation(line: 79, column: 15, scope: !1404)
!1433 = !DILocation(line: 79, column: 33, scope: !1404)
!1434 = !DILocation(line: 81, column: 2, scope: !1404)
!1435 = !DILocation(line: 81, column: 25, scope: !1404)
!1436 = !DILocation(line: 81, column: 47, scope: !1404)
!1437 = !DILocation(line: 81, column: 32, scope: !1404)
!1438 = !DILocation(line: 82, column: 2, scope: !1404)
!1439 = !DILocation(line: 82, column: 20, scope: !1404)
!1440 = !DILocation(line: 82, column: 43, scope: !1404)
!1441 = !DILocation(line: 82, column: 49, scope: !1404)
!1442 = !DILocation(line: 82, column: 26, scope: !1404)
!1443 = !DILocation(line: 83, column: 2, scope: !1404)
!1444 = !DILocation(line: 83, column: 6, scope: !1404)
!1445 = !DILocation(line: 83, column: 12, scope: !1404)
!1446 = !DILocation(line: 83, column: 18, scope: !1404)
!1447 = !DILocation(line: 85, column: 6, scope: !1426)
!1448 = !DILocation(line: 85, column: 12, scope: !1426)
!1449 = !DILocation(line: 85, column: 6, scope: !1404)
!1450 = !DILocation(line: 86, column: 3, scope: !1425)
!1451 = !DILocation(line: 86, column: 7, scope: !1425)
!1452 = !DILocation(line: 86, column: 11, scope: !1428)
!1453 = !DILocation(line: 86, column: 11, scope: !1425)
!1454 = !DILocation(line: 87, column: 3, scope: !1425)
!1455 = !DILocation(line: 87, column: 7, scope: !1425)
!1456 = !DILocation(line: 87, column: 13, scope: !1425)
!1457 = !DILocation(line: 87, column: 39, scope: !1425)
!1458 = !DILocation(line: 87, column: 45, scope: !1425)
!1459 = !DILocation(line: 87, column: 37, scope: !1425)
!1460 = !DILocation(line: 87, column: 17, scope: !1425)
!1461 = !DILocation(line: 89, column: 18, scope: !1425)
!1462 = !DILocation(line: 89, column: 3, scope: !1425)
!1463 = !DILocation(line: 89, column: 9, scope: !1425)
!1464 = !DILocation(line: 89, column: 15, scope: !1425)
!1465 = !DILocation(line: 90, column: 13, scope: !1425)
!1466 = !DILocation(line: 90, column: 10, scope: !1425)
!1467 = !DILocation(line: 92, column: 3, scope: !1425)
!1468 = !DILocation(line: 92, column: 11, scope: !1425)
!1469 = !DILocation(line: 93, column: 18, scope: !1425)
!1470 = !DILocation(line: 93, column: 14, scope: !1425)
!1471 = !DILocation(line: 93, column: 8, scope: !1425)
!1472 = !DILocation(line: 93, column: 11, scope: !1425)
!1473 = distinct !{!1473, !1467, !1469, !1474, !1475}
!1474 = !{!"llvm.loop.mustprogress"}
!1475 = !{!"llvm.loop.unroll.disable"}
!1476 = !DILocation(line: 95, column: 8, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 95, column: 7)
!1478 = !DILocation(line: 95, column: 14, scope: !1477)
!1479 = !DILocation(line: 95, column: 7, scope: !1425)
!1480 = !DILocation(line: 96, column: 29, scope: !1477)
!1481 = !DILocation(line: 96, column: 34, scope: !1477)
!1482 = !DILocation(line: 96, column: 39, scope: !1477)
!1483 = !DILocation(line: 96, column: 4, scope: !1477)
!1484 = !DILocation(line: 97, column: 2, scope: !1426)
!1485 = !DILocation(line: 97, column: 2, scope: !1425)
!1486 = !DILocation(line: 99, column: 2, scope: !1404)
!1487 = !DILocation(line: 99, column: 9, scope: !1404)
!1488 = !DILocation(line: 99, column: 16, scope: !1404)
!1489 = !DILocation(line: 100, column: 14, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 99, column: 37)
!1491 = !DILocation(line: 100, column: 19, scope: !1490)
!1492 = !DILocation(line: 100, column: 3, scope: !1490)
!1493 = !DILocation(line: 101, column: 28, scope: !1490)
!1494 = !DILocation(line: 101, column: 33, scope: !1490)
!1495 = !DILocation(line: 101, column: 38, scope: !1490)
!1496 = !DILocation(line: 101, column: 3, scope: !1490)
!1497 = !DILocation(line: 102, column: 7, scope: !1490)
!1498 = !DILocation(line: 103, column: 10, scope: !1490)
!1499 = distinct !{!1499, !1486, !1500, !1474, !1475}
!1500 = !DILocation(line: 104, column: 2, scope: !1404)
!1501 = !DILocation(line: 106, column: 6, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 106, column: 6)
!1503 = !DILocation(line: 106, column: 6, scope: !1404)
!1504 = !DILocation(line: 107, column: 36, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 106, column: 14)
!1506 = !DILocation(line: 107, column: 34, scope: !1505)
!1507 = !DILocation(line: 107, column: 3, scope: !1505)
!1508 = !DILocation(line: 107, column: 9, scope: !1505)
!1509 = !DILocation(line: 107, column: 15, scope: !1505)
!1510 = !DILocation(line: 108, column: 3, scope: !1505)
!1511 = !DILocation(line: 108, column: 16, scope: !1505)
!1512 = !DILocation(line: 109, column: 18, scope: !1505)
!1513 = !DILocation(line: 109, column: 14, scope: !1505)
!1514 = !DILocation(line: 109, column: 8, scope: !1505)
!1515 = !DILocation(line: 109, column: 11, scope: !1505)
!1516 = distinct !{!1516, !1510, !1512, !1474, !1475}
!1517 = !DILocation(line: 110, column: 2, scope: !1505)
!1518 = !DILocation(line: 113, column: 1, scope: !1404)
!1519 = !DILocation(line: 112, column: 2, scope: !1404)
!1520 = distinct !DISubprogram(name: "ghash_final", scope: !3, file: !3, line: 131, type: !1313, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1521)
!1521 = !{!1522, !1523, !1524, !1525, !1526}
!1522 = !DILocalVariable(name: "desc", arg: 1, scope: !1520, file: !3, line: 131, type: !1157)
!1523 = !DILocalVariable(name: "dst", arg: 2, scope: !1520, file: !3, line: 131, type: !1081)
!1524 = !DILocalVariable(name: "dctx", scope: !1520, file: !3, line: 133, type: !1386)
!1525 = !DILocalVariable(name: "ctx", scope: !1520, file: !3, line: 134, type: !1411)
!1526 = !DILocalVariable(name: "buf", scope: !1520, file: !3, line: 135, type: !1081)
!1527 = !DILocation(line: 131, column: 43, scope: !1520)
!1528 = !DILocation(line: 131, column: 53, scope: !1520)
!1529 = !DILocation(line: 133, column: 2, scope: !1520)
!1530 = !DILocation(line: 133, column: 25, scope: !1520)
!1531 = !DILocation(line: 133, column: 47, scope: !1520)
!1532 = !DILocation(line: 133, column: 32, scope: !1520)
!1533 = !DILocation(line: 134, column: 2, scope: !1520)
!1534 = !DILocation(line: 134, column: 20, scope: !1520)
!1535 = !DILocation(line: 134, column: 43, scope: !1520)
!1536 = !DILocation(line: 134, column: 49, scope: !1520)
!1537 = !DILocation(line: 134, column: 26, scope: !1520)
!1538 = !DILocation(line: 135, column: 2, scope: !1520)
!1539 = !DILocation(line: 135, column: 6, scope: !1520)
!1540 = !DILocation(line: 135, column: 12, scope: !1520)
!1541 = !DILocation(line: 135, column: 18, scope: !1520)
!1542 = !DILocation(line: 137, column: 14, scope: !1520)
!1543 = !DILocation(line: 137, column: 19, scope: !1520)
!1544 = !DILocation(line: 137, column: 2, scope: !1520)
!1545 = !DILocation(line: 138, column: 9, scope: !1520)
!1546 = !DILocation(line: 138, column: 14, scope: !1520)
!1547 = !DILocation(line: 138, column: 2, scope: !1520)
!1548 = !DILocation(line: 141, column: 1, scope: !1520)
!1549 = !DILocation(line: 140, column: 2, scope: !1520)
!1550 = distinct !DISubprogram(name: "ghash_setkey", scope: !3, file: !3, line: 55, type: !1330, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556}
!1552 = !DILocalVariable(name: "tfm", arg: 1, scope: !1550, file: !3, line: 55, type: !1161)
!1553 = !DILocalVariable(name: "key", arg: 2, scope: !1550, file: !3, line: 56, type: !1082)
!1554 = !DILocalVariable(name: "keylen", arg: 3, scope: !1550, file: !3, line: 56, type: !7)
!1555 = !DILocalVariable(name: "ctx", scope: !1550, file: !3, line: 58, type: !1411)
!1556 = !DILocalVariable(name: "k", scope: !1550, file: !3, line: 59, type: !1067)
!1557 = !DILocation(line: 55, column: 46, scope: !1550)
!1558 = !DILocation(line: 56, column: 14, scope: !1550)
!1559 = !DILocation(line: 56, column: 32, scope: !1550)
!1560 = !DILocation(line: 58, column: 2, scope: !1550)
!1561 = !DILocation(line: 58, column: 20, scope: !1550)
!1562 = !DILocation(line: 58, column: 43, scope: !1550)
!1563 = !DILocation(line: 58, column: 26, scope: !1550)
!1564 = !DILocation(line: 59, column: 2, scope: !1550)
!1565 = !DILocation(line: 59, column: 8, scope: !1550)
!1566 = !DILocation(line: 61, column: 6, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 61, column: 6)
!1568 = !DILocation(line: 61, column: 13, scope: !1567)
!1569 = !DILocation(line: 61, column: 6, scope: !1550)
!1570 = !DILocation(line: 62, column: 3, scope: !1567)
!1571 = !DILocation(line: 64, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 64, column: 6)
!1573 = !DILocation(line: 64, column: 11, scope: !1572)
!1574 = !DILocation(line: 64, column: 6, scope: !1550)
!1575 = !DILocation(line: 65, column: 20, scope: !1572)
!1576 = !DILocation(line: 65, column: 25, scope: !1572)
!1577 = !DILocation(line: 65, column: 3, scope: !1572)
!1578 = !DILocation(line: 67, column: 2, scope: !1550)
!1579 = !DILocation(line: 67, column: 2, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 67, column: 2)
!1581 = !DILocation(line: 68, column: 13, scope: !1550)
!1582 = !DILocation(line: 68, column: 2, scope: !1550)
!1583 = !DILocation(line: 69, column: 15, scope: !1550)
!1584 = !DILocation(line: 69, column: 2, scope: !1550)
!1585 = !DILocation(line: 69, column: 7, scope: !1550)
!1586 = !DILocation(line: 69, column: 13, scope: !1550)
!1587 = !DILocation(line: 70, column: 2, scope: !1550)
!1588 = !DILocation(line: 72, column: 7, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 72, column: 6)
!1590 = !DILocation(line: 72, column: 12, scope: !1589)
!1591 = !DILocation(line: 72, column: 6, scope: !1550)
!1592 = !DILocation(line: 73, column: 3, scope: !1589)
!1593 = !DILocation(line: 75, column: 2, scope: !1550)
!1594 = !DILocation(line: 76, column: 1, scope: !1550)
!1595 = distinct !DISubprogram(name: "ghash_exit_tfm", scope: !3, file: !3, line: 143, type: !1174, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1596)
!1596 = !{!1597, !1598}
!1597 = !DILocalVariable(name: "tfm", arg: 1, scope: !1595, file: !3, line: 143, type: !1176)
!1598 = !DILocalVariable(name: "ctx", scope: !1595, file: !3, line: 145, type: !1411)
!1599 = !DILocation(line: 143, column: 47, scope: !1595)
!1600 = !DILocation(line: 145, column: 2, scope: !1595)
!1601 = !DILocation(line: 145, column: 20, scope: !1595)
!1602 = !DILocation(line: 145, column: 41, scope: !1595)
!1603 = !DILocation(line: 145, column: 26, scope: !1595)
!1604 = !DILocation(line: 146, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 146, column: 6)
!1606 = !DILocation(line: 146, column: 11, scope: !1605)
!1607 = !DILocation(line: 146, column: 6, scope: !1595)
!1608 = !DILocation(line: 147, column: 20, scope: !1605)
!1609 = !DILocation(line: 147, column: 25, scope: !1605)
!1610 = !DILocation(line: 147, column: 3, scope: !1605)
!1611 = !DILocation(line: 148, column: 1, scope: !1595)
!1612 = distinct !DISubprogram(name: "shash_desc_ctx", scope: !1151, file: !1151, line: 885, type: !1613, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!20, !1157}
!1615 = !{!1616}
!1616 = !DILocalVariable(name: "desc", arg: 1, scope: !1612, file: !1151, line: 885, type: !1157)
!1617 = !DILocation(line: 885, column: 55, scope: !1612)
!1618 = !DILocation(line: 887, column: 9, scope: !1612)
!1619 = !DILocation(line: 887, column: 15, scope: !1612)
!1620 = !DILocation(line: 887, column: 2, scope: !1612)
!1621 = distinct !DISubprogram(name: "crypto_shash_ctx", scope: !1373, file: !1373, line: 238, type: !1622, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!20, !1161}
!1624 = !{!1625}
!1625 = !DILocalVariable(name: "tfm", arg: 1, scope: !1621, file: !1373, line: 238, type: !1161)
!1626 = !DILocation(line: 238, column: 59, scope: !1621)
!1627 = !DILocation(line: 240, column: 25, scope: !1621)
!1628 = !DILocation(line: 240, column: 30, scope: !1621)
!1629 = !DILocation(line: 240, column: 9, scope: !1621)
!1630 = !DILocation(line: 240, column: 2, scope: !1621)
!1631 = !DISubprogram(name: "gf128mul_4k_lle", scope: !1417, file: !1417, line: 228, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !1066, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1636 = !DILocation(line: 16, column: 35, scope: !1078)
!1637 = !DILocation(line: 16, column: 50, scope: !1078)
!1638 = !DILocation(line: 16, column: 68, scope: !1078)
!1639 = !DILocation(line: 19, column: 27, scope: !1090)
!1640 = !DILocation(line: 19, column: 6, scope: !1090)
!1641 = !DILocation(line: 19, column: 33, scope: !1090)
!1642 = !DILocation(line: 20, column: 7, scope: !1090)
!1643 = !DILocation(line: 20, column: 12, scope: !1090)
!1644 = !DILocation(line: 20, column: 37, scope: !1090)
!1645 = !DILocation(line: 18, column: 6, scope: !1078)
!1646 = !DILocation(line: 21, column: 3, scope: !1089)
!1647 = !DILocation(line: 21, column: 18, scope: !1089)
!1648 = !DILocation(line: 21, column: 39, scope: !1089)
!1649 = !DILocation(line: 22, column: 3, scope: !1089)
!1650 = !DILocation(line: 22, column: 18, scope: !1089)
!1651 = !DILocation(line: 22, column: 39, scope: !1089)
!1652 = !DILocation(line: 23, column: 3, scope: !1089)
!1653 = !DILocation(line: 23, column: 17, scope: !1089)
!1654 = !DILocation(line: 25, column: 3, scope: !1089)
!1655 = !DILocation(line: 25, column: 10, scope: !1089)
!1656 = !DILocation(line: 25, column: 15, scope: !1089)
!1657 = !DILocation(line: 26, column: 8, scope: !1094)
!1658 = !DILocation(line: 26, column: 8, scope: !1095)
!1659 = !DILocation(line: 26, column: 27, scope: !1097)
!1660 = !DILocation(line: 26, column: 27, scope: !1095)
!1661 = !DILocation(line: 26, column: 25, scope: !1095)
!1662 = !DILocation(line: 26, column: 6, scope: !1095)
!1663 = !DILocation(line: 27, column: 4, scope: !1095)
!1664 = !DILocation(line: 27, column: 4, scope: !1104)
!1665 = !DILocation(line: 28, column: 9, scope: !1095)
!1666 = distinct !{!1666, !1654, !1667, !1474, !1475}
!1667 = !DILocation(line: 29, column: 3, scope: !1089)
!1668 = !DILocation(line: 30, column: 2, scope: !1090)
!1669 = !DILocation(line: 30, column: 2, scope: !1089)
!1670 = !DILocation(line: 31, column: 16, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1090, file: !1077, line: 30, column: 9)
!1672 = !DILocation(line: 31, column: 21, scope: !1671)
!1673 = !DILocation(line: 31, column: 26, scope: !1671)
!1674 = !DILocation(line: 31, column: 31, scope: !1671)
!1675 = !DILocation(line: 31, column: 3, scope: !1671)
!1676 = !DILocation(line: 33, column: 1, scope: !1078)
!1677 = distinct !DISubprogram(name: "crypto_tfm_ctx", scope: !623, file: !623, line: 184, type: !1678, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1680)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!20, !1176}
!1680 = !{!1681}
!1681 = !DILocalVariable(name: "tfm", arg: 1, scope: !1677, file: !623, line: 184, type: !1176)
!1682 = !DILocation(line: 184, column: 55, scope: !1677)
!1683 = !DILocation(line: 186, column: 9, scope: !1677)
!1684 = !DILocation(line: 186, column: 14, scope: !1677)
!1685 = !DILocation(line: 186, column: 2, scope: !1677)
!1686 = !DISubprogram(name: "__crypto_xor", scope: !1077, file: !1077, line: 14, type: !1687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !1081, !1082, !1082, !7}
!1689 = distinct !DISubprogram(name: "ghash_flush", scope: !3, file: !3, line: 115, type: !1690, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !1411, !1386}
!1692 = !{!1693, !1694, !1695, !1696}
!1693 = !DILocalVariable(name: "ctx", arg: 1, scope: !1689, file: !3, line: 115, type: !1411)
!1694 = !DILocalVariable(name: "dctx", arg: 2, scope: !1689, file: !3, line: 115, type: !1386)
!1695 = !DILocalVariable(name: "dst", scope: !1689, file: !3, line: 117, type: !1081)
!1696 = !DILocalVariable(name: "tmp", scope: !1697, file: !3, line: 120, type: !1081)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 119, column: 19)
!1698 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 119, column: 6)
!1699 = !DILocation(line: 115, column: 43, scope: !1689)
!1700 = !DILocation(line: 115, column: 71, scope: !1689)
!1701 = !DILocation(line: 117, column: 2, scope: !1689)
!1702 = !DILocation(line: 117, column: 6, scope: !1689)
!1703 = !DILocation(line: 117, column: 12, scope: !1689)
!1704 = !DILocation(line: 117, column: 18, scope: !1689)
!1705 = !DILocation(line: 119, column: 6, scope: !1698)
!1706 = !DILocation(line: 119, column: 12, scope: !1698)
!1707 = !DILocation(line: 119, column: 6, scope: !1689)
!1708 = !DILocation(line: 120, column: 3, scope: !1697)
!1709 = !DILocation(line: 120, column: 7, scope: !1697)
!1710 = !DILocation(line: 120, column: 13, scope: !1697)
!1711 = !DILocation(line: 120, column: 39, scope: !1697)
!1712 = !DILocation(line: 120, column: 45, scope: !1697)
!1713 = !DILocation(line: 120, column: 37, scope: !1697)
!1714 = !DILocation(line: 120, column: 17, scope: !1697)
!1715 = !DILocation(line: 122, column: 3, scope: !1697)
!1716 = !DILocation(line: 122, column: 10, scope: !1697)
!1717 = !DILocation(line: 122, column: 16, scope: !1697)
!1718 = !DILocation(line: 122, column: 21, scope: !1697)
!1719 = !DILocation(line: 123, column: 8, scope: !1697)
!1720 = !DILocation(line: 123, column: 11, scope: !1697)
!1721 = distinct !{!1721, !1715, !1722, !1474, !1475}
!1722 = !DILocation(line: 123, column: 14, scope: !1697)
!1723 = !DILocation(line: 125, column: 28, scope: !1697)
!1724 = !DILocation(line: 125, column: 33, scope: !1697)
!1725 = !DILocation(line: 125, column: 38, scope: !1697)
!1726 = !DILocation(line: 125, column: 3, scope: !1697)
!1727 = !DILocation(line: 126, column: 2, scope: !1698)
!1728 = !DILocation(line: 126, column: 2, scope: !1697)
!1729 = !DILocation(line: 128, column: 2, scope: !1689)
!1730 = !DILocation(line: 128, column: 8, scope: !1689)
!1731 = !DILocation(line: 128, column: 14, scope: !1689)
!1732 = !DILocation(line: 129, column: 1, scope: !1689)
!1733 = distinct !DISubprogram(name: "gf128mul_free_4k", scope: !1417, file: !1417, line: 231, type: !1734, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1415}
!1736 = !{!1737}
!1737 = !DILocalVariable(name: "t", arg: 1, scope: !1733, file: !1417, line: 231, type: !1415)
!1738 = !DILocation(line: 231, column: 57, scope: !1733)
!1739 = !DILocation(line: 233, column: 18, scope: !1733)
!1740 = !DILocation(line: 233, column: 2, scope: !1733)
!1741 = !DILocation(line: 234, column: 1, scope: !1733)
!1742 = !DISubprogram(name: "gf128mul_init_4k_lle", scope: !1417, file: !1417, line: 226, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1415, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1747 = distinct !DISubprogram(name: "memzero_explicit", scope: !1748, file: !1748, line: 276, type: !1749, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1751)
!1748 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !20, !174}
!1751 = !{!1752, !1753}
!1752 = !DILocalVariable(name: "s", arg: 1, scope: !1747, file: !1748, line: 276, type: !20)
!1753 = !DILocalVariable(name: "count", arg: 2, scope: !1747, file: !1748, line: 276, type: !174)
!1754 = !DILocation(line: 276, column: 43, scope: !1747)
!1755 = !DILocation(line: 276, column: 53, scope: !1747)
!1756 = !DILocation(line: 278, column: 9, scope: !1747)
!1757 = !DILocation(line: 278, column: 15, scope: !1747)
!1758 = !DILocation(line: 278, column: 2, scope: !1747)
!1759 = !DILocation(line: 279, column: 2, scope: !1747)
!1760 = !{i64 2148826428}
!1761 = !DILocation(line: 280, column: 1, scope: !1747)
!1762 = !DISubprogram(name: "kfree_sensitive", scope: !1763, file: !1763, line: 228, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1763 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !405}
!1766 = !DISubprogram(name: "crypto_register_shash", scope: !1373, file: !1373, line: 109, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!80, !1376}
