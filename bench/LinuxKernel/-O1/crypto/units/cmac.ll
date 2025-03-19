; ModuleID = 'crypto/cmac.c'
source_filename = "crypto/cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init..kmod_cmac__197_327_crypto_cmac_module_init\22, \22a\22\09\09"
module asm "__initcall__kmod_cmac__197_327_crypto_cmac_module_init4:\09\09\09"
module asm ".long\09__initstub__kmod_cmac__197_327_crypto_cmac_module_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.1, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.shash_instance = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { [104 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.4, %struct.work_struct, [0 x ptr] }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, %struct.crypto_alg }
%struct.crypto_cipher_spawn = type { %struct.crypto_spawn }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.7, ptr, i32, i8, i8 }
%union.anon.7 = type { ptr }
%struct.shash_desc = type { ptr, [0 x ptr] }
%struct.cmac_desc_ctx = type { i32, [0 x i8] }
%struct.cmac_tfm_ctx = type { ptr, [0 x i8] }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.crypto_shash = type { i32, %struct.crypto_tfm }
%struct.anon.8 = type { i64 }
%struct.anon.9 = type { i64 }
%struct.anon.10 = type { i64 }
%struct.crypto_cipher = type { %struct.crypto_tfm }

@crypto_cmac_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @cmac_create, [128 x i8] c"cmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 8, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_cmac__197_327_crypto_cmac_module_init4198 = internal global ptr @__initstub__kmod_cmac__197_327_crypto_cmac_module_init4, section ".discard.addressable", align 8, !dbg !1356
@__exitcall_crypto_cmac_module_exit = internal global ptr @crypto_cmac_module_exit, section ".exitcall.exit", align 8, !dbg !1358
@__UNIQUE_ID_file199 = internal constant [22 x i8] c"cmac.file=crypto/cmac\00", section ".modinfo", align 1, !dbg !1362
@__UNIQUE_ID_license200 = internal constant [17 x i8] c"cmac.license=GPL\00", section ".modinfo", align 1, !dbg !1367
@__UNIQUE_ID_description201 = internal constant [43 x i8] c"cmac.description=CMAC keyed hash algorithm\00", section ".modinfo", align 1, !dbg !1372
@__UNIQUE_ID_alias_userspace202 = internal constant [16 x i8] c"cmac.alias=cmac\00", section ".modinfo", align 1, !dbg !1377
@__UNIQUE_ID_alias_crypto203 = internal constant [23 x i8] c"cmac.alias=crypto-cmac\00", section ".modinfo", align 1, !dbg !1382
@__UNIQUE_ID_import_ns204 = internal constant [31 x i8] c"cmac.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1, !dbg !1387
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1392
@llvm.compiler.used = appending global [9 x ptr] [ptr @crypto_cmac_module_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_cmac__197_327_crypto_cmac_module_init4198, ptr @__exitcall_crypto_cmac_module_exit, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__UNIQUE_ID_description201, ptr @__UNIQUE_ID_alias_userspace202, ptr @__UNIQUE_ID_alias_crypto203, ptr @__UNIQUE_ID_import_ns204], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @crypto_cmac_module_exit() #0 section ".exit.text" align 16 !dbg !1406 {
entry:
  call void @crypto_unregister_template(ptr noundef @crypto_cmac_tmpl) #16, !dbg !1407
  ret void, !dbg !1408
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1409 dso_local void @crypto_unregister_template(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_cmac__197_327_crypto_cmac_module_init4() #0 section ".init.text" align 16 !dbg !1412 {
entry:
  %call = call i32 @crypto_cmac_module_init() #17, !dbg !1413
  ret i32 %call, !dbg !1413
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @crypto_cmac_module_init() #0 section ".init.text" align 16 !dbg !1414 {
entry:
  %call = call i32 @crypto_register_template(ptr noundef @crypto_cmac_tmpl) #16, !dbg !1415
  ret i32 %call, !dbg !1416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmac_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 16 !dbg !1417 {
entry:
  %retval = alloca i32, align 4
  %tmpl.addr = alloca ptr, align 8
  %tb.addr = alloca ptr, align 8
  %inst = alloca ptr, align 8
  %spawn = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %mask = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tmpl, ptr %tmpl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmpl.addr, metadata !1419, metadata !DIExpression()), !dbg !1434
  store ptr %tb, ptr %tb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tb.addr, metadata !1420, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.start.p0(i64 8, ptr %inst) #18, !dbg !1436
  call void @llvm.dbg.declare(metadata ptr %inst, metadata !1421, metadata !DIExpression()), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 8, ptr %spawn) #18, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %spawn, metadata !1422, metadata !DIExpression()), !dbg !1439
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #18, !dbg !1440
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !1427, metadata !DIExpression()), !dbg !1441
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #18, !dbg !1442
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !1428, metadata !DIExpression()), !dbg !1443
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #18, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1429, metadata !DIExpression()), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1430, metadata !DIExpression()), !dbg !1447
  %0 = load ptr, ptr %tb.addr, align 8, !dbg !1448
  %call = call i32 @crypto_check_attr_type(ptr noundef %0, i32 noundef 14, ptr noundef %mask) #16, !dbg !1449
  store i32 %call, ptr %err, align 4, !dbg !1450
  %1 = load i32, ptr %err, align 4, !dbg !1451
  %tobool = icmp ne i32 %1, 0, !dbg !1451
  br i1 %tobool, label %if.then, label %if.end, !dbg !1453

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !1454
  store i32 %2, ptr %retval, align 4, !dbg !1455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1455

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 600, i32 noundef 3264) #19, !dbg !1456
  store ptr %call1, ptr %inst, align 8, !dbg !1457
  %3 = load ptr, ptr %inst, align 8, !dbg !1458
  %tobool2 = icmp ne ptr %3, null, !dbg !1458
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1460

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !1461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1461

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %inst, align 8, !dbg !1462
  %call5 = call ptr @shash_instance_ctx(ptr noundef %4) #16, !dbg !1463
  store ptr %call5, ptr %spawn, align 8, !dbg !1464
  %5 = load ptr, ptr %spawn, align 8, !dbg !1465
  %6 = load ptr, ptr %inst, align 8, !dbg !1466
  %call6 = call ptr @shash_crypto_instance(ptr noundef %6) #16, !dbg !1467
  %7 = load ptr, ptr %tb.addr, align 8, !dbg !1468
  %arrayidx = getelementptr ptr, ptr %7, i64 1, !dbg !1468
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !1468
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %8) #16, !dbg !1469
  %9 = load i32, ptr %mask, align 4, !dbg !1470
  %call8 = call i32 @crypto_grab_cipher(ptr noundef %5, ptr noundef %call6, ptr noundef %call7, i32 noundef 0, i32 noundef %9) #16, !dbg !1471
  store i32 %call8, ptr %err, align 4, !dbg !1472
  %10 = load i32, ptr %err, align 4, !dbg !1473
  %tobool9 = icmp ne i32 %10, 0, !dbg !1473
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1475

if.then10:                                        ; preds = %if.end4
  br label %err_free_inst, !dbg !1476

if.end11:                                         ; preds = %if.end4
  %11 = load ptr, ptr %spawn, align 8, !dbg !1477
  %call12 = call ptr @crypto_spawn_cipher_alg(ptr noundef %11) #16, !dbg !1478
  store ptr %call12, ptr %alg, align 8, !dbg !1479
  %12 = load ptr, ptr %alg, align 8, !dbg !1480
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 3, !dbg !1481
  %13 = load i32, ptr %cra_blocksize, align 4, !dbg !1481
  switch i32 %13, label %sw.default [
    i32 16, label %sw.bb
    i32 8, label %sw.bb
  ], !dbg !1482

sw.bb:                                            ; preds = %if.end11, %if.end11
  br label %sw.epilog, !dbg !1483

sw.default:                                       ; preds = %if.end11
  store i32 -22, ptr %err, align 4, !dbg !1485
  br label %err_free_inst, !dbg !1486

sw.epilog:                                        ; preds = %sw.bb
  %14 = load ptr, ptr %inst, align 8, !dbg !1487
  %call13 = call ptr @shash_crypto_instance(ptr noundef %14) #16, !dbg !1488
  %15 = load ptr, ptr %tmpl.addr, align 8, !dbg !1489
  %name = getelementptr inbounds %struct.crypto_template, ptr %15, i32 0, i32 4, !dbg !1490
  %arraydecay = getelementptr inbounds [128 x i8], ptr %name, i64 0, i64 0, !dbg !1489
  %16 = load ptr, ptr %alg, align 8, !dbg !1491
  %call14 = call i32 @crypto_inst_setname(ptr noundef %call13, ptr noundef %arraydecay, ptr noundef %16) #16, !dbg !1492
  store i32 %call14, ptr %err, align 4, !dbg !1493
  %17 = load i32, ptr %err, align 4, !dbg !1494
  %tobool15 = icmp ne i32 %17, 0, !dbg !1494
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1496

if.then16:                                        ; preds = %sw.epilog
  br label %err_free_inst, !dbg !1497

if.end17:                                         ; preds = %sw.epilog
  %18 = load ptr, ptr %alg, align 8, !dbg !1498
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %18, i32 0, i32 5, !dbg !1499
  %19 = load i32, ptr %cra_alignmask, align 4, !dbg !1499
  %conv = zext i32 %19 to i64, !dbg !1498
  store i64 %conv, ptr %alignmask, align 8, !dbg !1500
  %20 = load i64, ptr %alignmask, align 8, !dbg !1501
  %conv18 = trunc i64 %20 to i32, !dbg !1501
  %21 = load ptr, ptr %inst, align 8, !dbg !1502
  %22 = getelementptr inbounds %struct.shash_instance, ptr %21, i32 0, i32 1, !dbg !1503
  %23 = getelementptr inbounds %struct.shash_alg, ptr %22, i32 0, i32 12, !dbg !1504
  %base = getelementptr inbounds %struct.anon.6, ptr %23, i32 0, i32 2, !dbg !1504
  %cra_alignmask19 = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 5, !dbg !1505
  store i32 %conv18, ptr %cra_alignmask19, align 4, !dbg !1506
  %24 = load ptr, ptr %alg, align 8, !dbg !1507
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 6, !dbg !1508
  %25 = load i32, ptr %cra_priority, align 8, !dbg !1508
  %26 = load ptr, ptr %inst, align 8, !dbg !1509
  %27 = getelementptr inbounds %struct.shash_instance, ptr %26, i32 0, i32 1, !dbg !1510
  %28 = getelementptr inbounds %struct.shash_alg, ptr %27, i32 0, i32 12, !dbg !1511
  %base20 = getelementptr inbounds %struct.anon.6, ptr %28, i32 0, i32 2, !dbg !1511
  %cra_priority21 = getelementptr inbounds %struct.crypto_alg, ptr %base20, i32 0, i32 6, !dbg !1512
  store i32 %25, ptr %cra_priority21, align 8, !dbg !1513
  %29 = load ptr, ptr %alg, align 8, !dbg !1514
  %cra_blocksize22 = getelementptr inbounds %struct.crypto_alg, ptr %29, i32 0, i32 3, !dbg !1515
  %30 = load i32, ptr %cra_blocksize22, align 4, !dbg !1515
  %31 = load ptr, ptr %inst, align 8, !dbg !1516
  %32 = getelementptr inbounds %struct.shash_instance, ptr %31, i32 0, i32 1, !dbg !1517
  %33 = getelementptr inbounds %struct.shash_alg, ptr %32, i32 0, i32 12, !dbg !1518
  %base23 = getelementptr inbounds %struct.anon.6, ptr %33, i32 0, i32 2, !dbg !1518
  %cra_blocksize24 = getelementptr inbounds %struct.crypto_alg, ptr %base23, i32 0, i32 3, !dbg !1519
  store i32 %30, ptr %cra_blocksize24, align 4, !dbg !1520
  %34 = load ptr, ptr %alg, align 8, !dbg !1521
  %cra_blocksize25 = getelementptr inbounds %struct.crypto_alg, ptr %34, i32 0, i32 3, !dbg !1522
  %35 = load i32, ptr %cra_blocksize25, align 4, !dbg !1522
  %36 = load ptr, ptr %inst, align 8, !dbg !1523
  %37 = getelementptr inbounds %struct.shash_instance, ptr %36, i32 0, i32 1, !dbg !1524
  %38 = getelementptr inbounds %struct.shash_alg, ptr %37, i32 0, i32 12, !dbg !1525
  %digestsize = getelementptr inbounds %struct.anon.6, ptr %38, i32 0, i32 0, !dbg !1525
  store i32 %35, ptr %digestsize, align 8, !dbg !1526
  %call26 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !1527
  %conv27 = zext i32 %call26 to i64, !dbg !1527
  %sub = sub i64 %conv27, 1, !dbg !1527
  %add = add i64 4, %sub, !dbg !1527
  %call28 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !1527
  %conv29 = zext i32 %call28 to i64, !dbg !1527
  %sub30 = sub i64 %conv29, 1, !dbg !1527
  %not = xor i64 %sub30, -1, !dbg !1527
  %and = and i64 %add, %not, !dbg !1527
  %39 = load i64, ptr %alignmask, align 8, !dbg !1528
  %call31 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !1529
  %sub32 = sub i32 %call31, 1, !dbg !1530
  %not33 = xor i32 %sub32, -1, !dbg !1531
  %conv34 = zext i32 %not33 to i64, !dbg !1531
  %and35 = and i64 %39, %conv34, !dbg !1532
  %add36 = add i64 %and, %and35, !dbg !1533
  %40 = load ptr, ptr %alg, align 8, !dbg !1534
  %cra_blocksize37 = getelementptr inbounds %struct.crypto_alg, ptr %40, i32 0, i32 3, !dbg !1535
  %41 = load i32, ptr %cra_blocksize37, align 4, !dbg !1535
  %mul = mul i32 %41, 2, !dbg !1536
  %conv38 = zext i32 %mul to i64, !dbg !1534
  %add39 = add i64 %add36, %conv38, !dbg !1537
  %conv40 = trunc i64 %add39 to i32, !dbg !1527
  %42 = load ptr, ptr %inst, align 8, !dbg !1538
  %43 = getelementptr inbounds %struct.shash_instance, ptr %42, i32 0, i32 1, !dbg !1539
  %descsize = getelementptr inbounds %struct.shash_alg, ptr %43, i32 0, i32 11, !dbg !1540
  store i32 %conv40, ptr %descsize, align 8, !dbg !1541
  %call41 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !1542
  %conv42 = zext i32 %call41 to i64, !dbg !1542
  %sub43 = sub i64 %conv42, 1, !dbg !1542
  %add44 = add i64 8, %sub43, !dbg !1542
  %call45 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !1542
  %conv46 = zext i32 %call45 to i64, !dbg !1542
  %sub47 = sub i64 %conv46, 1, !dbg !1542
  %not48 = xor i64 %sub47, -1, !dbg !1542
  %and49 = and i64 %add44, %not48, !dbg !1542
  %44 = load i64, ptr %alignmask, align 8, !dbg !1543
  %or = or i64 %44, 7, !dbg !1544
  %call50 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !1545
  %sub51 = sub i32 %call50, 1, !dbg !1546
  %not52 = xor i32 %sub51, -1, !dbg !1547
  %conv53 = zext i32 %not52 to i64, !dbg !1547
  %and54 = and i64 %or, %conv53, !dbg !1548
  %add55 = add i64 %and49, %and54, !dbg !1549
  %45 = load ptr, ptr %alg, align 8, !dbg !1550
  %cra_blocksize56 = getelementptr inbounds %struct.crypto_alg, ptr %45, i32 0, i32 3, !dbg !1551
  %46 = load i32, ptr %cra_blocksize56, align 4, !dbg !1551
  %mul57 = mul i32 %46, 2, !dbg !1552
  %conv58 = zext i32 %mul57 to i64, !dbg !1550
  %add59 = add i64 %add55, %conv58, !dbg !1553
  %conv60 = trunc i64 %add59 to i32, !dbg !1542
  %47 = load ptr, ptr %inst, align 8, !dbg !1554
  %48 = getelementptr inbounds %struct.shash_instance, ptr %47, i32 0, i32 1, !dbg !1555
  %49 = getelementptr inbounds %struct.shash_alg, ptr %48, i32 0, i32 12, !dbg !1556
  %base61 = getelementptr inbounds %struct.anon.6, ptr %49, i32 0, i32 2, !dbg !1556
  %cra_ctxsize = getelementptr inbounds %struct.crypto_alg, ptr %base61, i32 0, i32 4, !dbg !1557
  store i32 %conv60, ptr %cra_ctxsize, align 8, !dbg !1558
  %50 = load ptr, ptr %inst, align 8, !dbg !1559
  %51 = getelementptr inbounds %struct.shash_instance, ptr %50, i32 0, i32 1, !dbg !1560
  %init = getelementptr inbounds %struct.shash_alg, ptr %51, i32 0, i32 0, !dbg !1561
  store ptr @crypto_cmac_digest_init, ptr %init, align 8, !dbg !1562
  %52 = load ptr, ptr %inst, align 8, !dbg !1563
  %53 = getelementptr inbounds %struct.shash_instance, ptr %52, i32 0, i32 1, !dbg !1564
  %update = getelementptr inbounds %struct.shash_alg, ptr %53, i32 0, i32 1, !dbg !1565
  store ptr @crypto_cmac_digest_update, ptr %update, align 8, !dbg !1566
  %54 = load ptr, ptr %inst, align 8, !dbg !1567
  %55 = getelementptr inbounds %struct.shash_instance, ptr %54, i32 0, i32 1, !dbg !1568
  %final = getelementptr inbounds %struct.shash_alg, ptr %55, i32 0, i32 2, !dbg !1569
  store ptr @crypto_cmac_digest_final, ptr %final, align 8, !dbg !1570
  %56 = load ptr, ptr %inst, align 8, !dbg !1571
  %57 = getelementptr inbounds %struct.shash_instance, ptr %56, i32 0, i32 1, !dbg !1572
  %setkey = getelementptr inbounds %struct.shash_alg, ptr %57, i32 0, i32 7, !dbg !1573
  store ptr @crypto_cmac_digest_setkey, ptr %setkey, align 8, !dbg !1574
  %58 = load ptr, ptr %inst, align 8, !dbg !1575
  %59 = getelementptr inbounds %struct.shash_instance, ptr %58, i32 0, i32 1, !dbg !1576
  %init_tfm = getelementptr inbounds %struct.shash_alg, ptr %59, i32 0, i32 8, !dbg !1577
  store ptr @cmac_init_tfm, ptr %init_tfm, align 8, !dbg !1578
  %60 = load ptr, ptr %inst, align 8, !dbg !1579
  %61 = getelementptr inbounds %struct.shash_instance, ptr %60, i32 0, i32 1, !dbg !1580
  %clone_tfm = getelementptr inbounds %struct.shash_alg, ptr %61, i32 0, i32 10, !dbg !1581
  store ptr @cmac_clone_tfm, ptr %clone_tfm, align 8, !dbg !1582
  %62 = load ptr, ptr %inst, align 8, !dbg !1583
  %63 = getelementptr inbounds %struct.shash_instance, ptr %62, i32 0, i32 1, !dbg !1584
  %exit_tfm = getelementptr inbounds %struct.shash_alg, ptr %63, i32 0, i32 9, !dbg !1585
  store ptr @cmac_exit_tfm, ptr %exit_tfm, align 8, !dbg !1586
  %64 = load ptr, ptr %inst, align 8, !dbg !1587
  %free = getelementptr inbounds %struct.shash_instance, ptr %64, i32 0, i32 0, !dbg !1588
  store ptr @shash_free_singlespawn_instance, ptr %free, align 8, !dbg !1589
  %65 = load ptr, ptr %tmpl.addr, align 8, !dbg !1590
  %66 = load ptr, ptr %inst, align 8, !dbg !1591
  %call62 = call i32 @shash_register_instance(ptr noundef %65, ptr noundef %66) #16, !dbg !1592
  store i32 %call62, ptr %err, align 4, !dbg !1593
  %67 = load i32, ptr %err, align 4, !dbg !1594
  %tobool63 = icmp ne i32 %67, 0, !dbg !1594
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !1595

if.then64:                                        ; preds = %if.end17
  br label %err_free_inst, !dbg !1596

err_free_inst:                                    ; preds = %if.then64, %if.then16, %sw.default, %if.then10
  call void @llvm.dbg.label(metadata !1431), !dbg !1597
  %68 = load ptr, ptr %inst, align 8, !dbg !1598
  call void @shash_free_singlespawn_instance(ptr noundef %68) #16, !dbg !1599
  br label %if.end65, !dbg !1600

if.end65:                                         ; preds = %err_free_inst, %if.end17
  %69 = load i32, ptr %err, align 4, !dbg !1601
  store i32 %69, ptr %retval, align 4, !dbg !1602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1602

cleanup:                                          ; preds = %if.end65, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !1603
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #18, !dbg !1603
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #18, !dbg !1603
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #18, !dbg !1603
  call void @llvm.lifetime.end.p0(i64 8, ptr %spawn) #18, !dbg !1603
  call void @llvm.lifetime.end.p0(i64 8, ptr %inst) #18, !dbg !1603
  %70 = load i32, ptr %retval, align 4, !dbg !1603
  ret i32 %70, !dbg !1603
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1604 dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1608 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1612, metadata !DIExpression()), !dbg !1614
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1613, metadata !DIExpression()), !dbg !1615
  %0 = load i64, ptr %size.addr, align 8, !dbg !1616
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1617
  %or = or i32 %1, 256, !dbg !1618
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !1619
  ret ptr %call, !dbg !1620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_instance_ctx(ptr noundef %inst) #6 align 16 !dbg !1621 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !1625, metadata !DIExpression()), !dbg !1626
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !1627
  %call = call ptr @shash_crypto_instance(ptr noundef %0) #16, !dbg !1628
  %call1 = call ptr @crypto_instance_ctx(ptr noundef %call) #16, !dbg !1629
  ret ptr %call1, !dbg !1630
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_grab_cipher(ptr noundef %spawn, ptr noundef %inst, ptr noundef %name, i32 noundef %type, i32 noundef %mask) #6 align 16 !dbg !1631 {
entry:
  %spawn.addr = alloca ptr, align 8
  %inst.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %spawn, ptr %spawn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %spawn.addr, metadata !1635, metadata !DIExpression()), !dbg !1640
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !1636, metadata !DIExpression()), !dbg !1641
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1637, metadata !DIExpression()), !dbg !1642
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1638, metadata !DIExpression()), !dbg !1643
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1639, metadata !DIExpression()), !dbg !1644
  %0 = load i32, ptr %type.addr, align 4, !dbg !1645
  %and = and i32 %0, -16, !dbg !1645
  store i32 %and, ptr %type.addr, align 4, !dbg !1645
  %1 = load i32, ptr %type.addr, align 4, !dbg !1646
  %or = or i32 %1, 1, !dbg !1646
  store i32 %or, ptr %type.addr, align 4, !dbg !1646
  %2 = load i32, ptr %mask.addr, align 4, !dbg !1647
  %or1 = or i32 %2, 15, !dbg !1647
  store i32 %or1, ptr %mask.addr, align 4, !dbg !1647
  %3 = load ptr, ptr %spawn.addr, align 8, !dbg !1648
  %base = getelementptr inbounds %struct.crypto_cipher_spawn, ptr %3, i32 0, i32 0, !dbg !1649
  %4 = load ptr, ptr %inst.addr, align 8, !dbg !1650
  %5 = load ptr, ptr %name.addr, align 8, !dbg !1651
  %6 = load i32, ptr %type.addr, align 4, !dbg !1652
  %7 = load i32, ptr %mask.addr, align 4, !dbg !1653
  %call = call i32 @crypto_grab_spawn(ptr noundef %base, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #16, !dbg !1654
  ret i32 %call, !dbg !1655
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_crypto_instance(ptr noundef %inst) #6 align 16 !dbg !1656 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !1660, metadata !DIExpression()), !dbg !1661
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !1662
  %1 = getelementptr inbounds %struct.shash_instance, ptr %0, i32 0, i32 1, !dbg !1663
  %base = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 1, !dbg !1664
  ret ptr %base, !dbg !1665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1666 dso_local ptr @crypto_attr_alg_name(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_spawn_cipher_alg(ptr noundef %spawn) #6 align 16 !dbg !1669 {
entry:
  %spawn.addr = alloca ptr, align 8
  store ptr %spawn, ptr %spawn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %spawn.addr, metadata !1673, metadata !DIExpression()), !dbg !1674
  %0 = load ptr, ptr %spawn.addr, align 8, !dbg !1675
  %base = getelementptr inbounds %struct.crypto_cipher_spawn, ptr %0, i32 0, i32 0, !dbg !1676
  %alg = getelementptr inbounds %struct.crypto_spawn, ptr %base, i32 0, i32 1, !dbg !1677
  %1 = load ptr, ptr %alg, align 8, !dbg !1677
  ret ptr %1, !dbg !1678
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1679 dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_ctx_alignment() #6 align 16 !dbg !1682 {
entry:
  %tfm = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #18, !dbg !1687
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !1686, metadata !DIExpression()), !dbg !1688
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #18, !dbg !1689
  ret i32 8, !dbg !1690
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_cmac_digest_init(ptr noundef %pdesc) #2 align 16 !dbg !1691 {
entry:
  %pdesc.addr = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %bs = alloca i32, align 4
  %prev = alloca ptr, align 8
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !1693, metadata !DIExpression()), !dbg !1704
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #18, !dbg !1705
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !1694, metadata !DIExpression()), !dbg !1706
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !1707
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !1708
  %1 = load ptr, ptr %tfm, align 8, !dbg !1708
  %call = call i32 @crypto_shash_alignmask(ptr noundef %1) #16, !dbg !1709
  %conv = zext i32 %call to i64, !dbg !1709
  store i64 %conv, ptr %alignmask, align 8, !dbg !1706
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1695, metadata !DIExpression()), !dbg !1711
  %2 = load ptr, ptr %pdesc.addr, align 8, !dbg !1712
  %call1 = call ptr @shash_desc_ctx(ptr noundef %2) #16, !dbg !1713
  store ptr %call1, ptr %ctx, align 8, !dbg !1711
  call void @llvm.lifetime.start.p0(i64 4, ptr %bs) #18, !dbg !1714
  call void @llvm.dbg.declare(metadata ptr %bs, metadata !1702, metadata !DIExpression()), !dbg !1715
  %3 = load ptr, ptr %pdesc.addr, align 8, !dbg !1716
  %tfm2 = getelementptr inbounds %struct.shash_desc, ptr %3, i32 0, i32 0, !dbg !1717
  %4 = load ptr, ptr %tfm2, align 8, !dbg !1717
  %call3 = call i32 @crypto_shash_blocksize(ptr noundef %4) #16, !dbg !1718
  store i32 %call3, ptr %bs, align 4, !dbg !1715
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #18, !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !1703, metadata !DIExpression()), !dbg !1720
  %5 = load ptr, ptr %ctx, align 8, !dbg !1721
  %ctx4 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %5, i32 0, i32 1, !dbg !1721
  %arraydecay = getelementptr inbounds [0 x i8], ptr %ctx4, i64 0, i64 0, !dbg !1721
  %6 = ptrtoint ptr %arraydecay to i64, !dbg !1721
  %7 = load i64, ptr %alignmask, align 8, !dbg !1721
  %add = add i64 %7, 1, !dbg !1721
  %sub = sub i64 %add, 1, !dbg !1721
  %add5 = add i64 %6, %sub, !dbg !1721
  %8 = load i64, ptr %alignmask, align 8, !dbg !1721
  %add6 = add i64 %8, 1, !dbg !1721
  %sub7 = sub i64 %add6, 1, !dbg !1721
  %not = xor i64 %sub7, -1, !dbg !1721
  %and = and i64 %add5, %not, !dbg !1721
  %9 = inttoptr i64 %and to ptr, !dbg !1721
  %10 = load i32, ptr %bs, align 4, !dbg !1722
  %idx.ext = sext i32 %10 to i64, !dbg !1723
  %add.ptr = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !1723
  store ptr %add.ptr, ptr %prev, align 8, !dbg !1720
  %11 = load ptr, ptr %ctx, align 8, !dbg !1724
  %len = getelementptr inbounds %struct.cmac_desc_ctx, ptr %11, i32 0, i32 0, !dbg !1725
  store i32 0, ptr %len, align 4, !dbg !1726
  %12 = load ptr, ptr %prev, align 8, !dbg !1727
  %13 = load i32, ptr %bs, align 4, !dbg !1728
  %conv8 = sext i32 %13 to i64, !dbg !1728
  call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 %conv8, i1 false), !dbg !1729
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #18, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 4, ptr %bs) #18, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #18, !dbg !1730
  ret i32 0, !dbg !1731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_cmac_digest_update(ptr noundef %pdesc, ptr noundef %p, i32 noundef %len) #2 align 16 !dbg !1732 {
entry:
  %retval = alloca i32, align 4
  %pdesc.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %parent = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %tctx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %tfm3 = alloca ptr, align 8
  %bs = alloca i32, align 4
  %odds = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !1734, metadata !DIExpression()), !dbg !1750
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1735, metadata !DIExpression()), !dbg !1751
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1736, metadata !DIExpression()), !dbg !1752
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !1753
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1737, metadata !DIExpression()), !dbg !1754
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !1755
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !1756
  %1 = load ptr, ptr %tfm, align 8, !dbg !1756
  store ptr %1, ptr %parent, align 8, !dbg !1754
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #18, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !1738, metadata !DIExpression()), !dbg !1758
  %2 = load ptr, ptr %parent, align 8, !dbg !1759
  %call = call i32 @crypto_shash_alignmask(ptr noundef %2) #16, !dbg !1760
  %conv = zext i32 %call to i64, !dbg !1760
  store i64 %conv, ptr %alignmask, align 8, !dbg !1758
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #18, !dbg !1761
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !1739, metadata !DIExpression()), !dbg !1762
  %3 = load ptr, ptr %parent, align 8, !dbg !1763
  %call1 = call ptr @crypto_shash_ctx(ptr noundef %3) #16, !dbg !1764
  store ptr %call1, ptr %tctx, align 8, !dbg !1762
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1745, metadata !DIExpression()), !dbg !1766
  %4 = load ptr, ptr %pdesc.addr, align 8, !dbg !1767
  %call2 = call ptr @shash_desc_ctx(ptr noundef %4) #16, !dbg !1768
  store ptr %call2, ptr %ctx, align 8, !dbg !1766
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm3) #18, !dbg !1769
  call void @llvm.dbg.declare(metadata ptr %tfm3, metadata !1746, metadata !DIExpression()), !dbg !1770
  %5 = load ptr, ptr %tctx, align 8, !dbg !1771
  %child = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %5, i32 0, i32 0, !dbg !1772
  %6 = load ptr, ptr %child, align 8, !dbg !1772
  store ptr %6, ptr %tfm3, align 8, !dbg !1770
  call void @llvm.lifetime.start.p0(i64 4, ptr %bs) #18, !dbg !1773
  call void @llvm.dbg.declare(metadata ptr %bs, metadata !1747, metadata !DIExpression()), !dbg !1774
  %7 = load ptr, ptr %parent, align 8, !dbg !1775
  %call4 = call i32 @crypto_shash_blocksize(ptr noundef %7) #16, !dbg !1776
  store i32 %call4, ptr %bs, align 4, !dbg !1774
  call void @llvm.lifetime.start.p0(i64 8, ptr %odds) #18, !dbg !1777
  call void @llvm.dbg.declare(metadata ptr %odds, metadata !1748, metadata !DIExpression()), !dbg !1778
  %8 = load ptr, ptr %ctx, align 8, !dbg !1779
  %ctx5 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %8, i32 0, i32 1, !dbg !1779
  %arraydecay = getelementptr inbounds [0 x i8], ptr %ctx5, i64 0, i64 0, !dbg !1779
  %9 = ptrtoint ptr %arraydecay to i64, !dbg !1779
  %10 = load i64, ptr %alignmask, align 8, !dbg !1779
  %add = add i64 %10, 1, !dbg !1779
  %sub = sub i64 %add, 1, !dbg !1779
  %add6 = add i64 %9, %sub, !dbg !1779
  %11 = load i64, ptr %alignmask, align 8, !dbg !1779
  %add7 = add i64 %11, 1, !dbg !1779
  %sub8 = sub i64 %add7, 1, !dbg !1779
  %not = xor i64 %sub8, -1, !dbg !1779
  %and = and i64 %add6, %not, !dbg !1779
  %12 = inttoptr i64 %and to ptr, !dbg !1779
  store ptr %12, ptr %odds, align 8, !dbg !1778
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #18, !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !1749, metadata !DIExpression()), !dbg !1781
  %13 = load ptr, ptr %odds, align 8, !dbg !1782
  %14 = load i32, ptr %bs, align 4, !dbg !1783
  %idx.ext = sext i32 %14 to i64, !dbg !1784
  %add.ptr = getelementptr i8, ptr %13, i64 %idx.ext, !dbg !1784
  store ptr %add.ptr, ptr %prev, align 8, !dbg !1781
  %15 = load ptr, ptr %ctx, align 8, !dbg !1785
  %len9 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %15, i32 0, i32 0, !dbg !1787
  %16 = load i32, ptr %len9, align 4, !dbg !1787
  %17 = load i32, ptr %len.addr, align 4, !dbg !1788
  %add10 = add i32 %16, %17, !dbg !1789
  %18 = load i32, ptr %bs, align 4, !dbg !1790
  %cmp = icmp ule i32 %add10, %18, !dbg !1791
  br i1 %cmp, label %if.then, label %if.end, !dbg !1792

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %odds, align 8, !dbg !1793
  %20 = load ptr, ptr %ctx, align 8, !dbg !1795
  %len12 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %20, i32 0, i32 0, !dbg !1796
  %21 = load i32, ptr %len12, align 4, !dbg !1796
  %idx.ext13 = zext i32 %21 to i64, !dbg !1797
  %add.ptr14 = getelementptr i8, ptr %19, i64 %idx.ext13, !dbg !1797
  %22 = load ptr, ptr %p.addr, align 8, !dbg !1798
  %23 = load i32, ptr %len.addr, align 4, !dbg !1799
  %conv15 = zext i32 %23 to i64, !dbg !1799
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr14, ptr align 1 %22, i64 %conv15, i1 false), !dbg !1800
  %24 = load i32, ptr %len.addr, align 4, !dbg !1801
  %25 = load ptr, ptr %ctx, align 8, !dbg !1802
  %len16 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %25, i32 0, i32 0, !dbg !1803
  %26 = load i32, ptr %len16, align 4, !dbg !1804
  %add17 = add i32 %26, %24, !dbg !1804
  store i32 %add17, ptr %len16, align 4, !dbg !1804
  store i32 0, ptr %retval, align 4, !dbg !1805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1805

if.end:                                           ; preds = %entry
  %27 = load ptr, ptr %odds, align 8, !dbg !1806
  %28 = load ptr, ptr %ctx, align 8, !dbg !1807
  %len18 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %28, i32 0, i32 0, !dbg !1808
  %29 = load i32, ptr %len18, align 4, !dbg !1808
  %idx.ext19 = zext i32 %29 to i64, !dbg !1809
  %add.ptr20 = getelementptr i8, ptr %27, i64 %idx.ext19, !dbg !1809
  %30 = load ptr, ptr %p.addr, align 8, !dbg !1810
  %31 = load i32, ptr %bs, align 4, !dbg !1811
  %32 = load ptr, ptr %ctx, align 8, !dbg !1812
  %len21 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %32, i32 0, i32 0, !dbg !1813
  %33 = load i32, ptr %len21, align 4, !dbg !1813
  %sub22 = sub i32 %31, %33, !dbg !1814
  %conv23 = zext i32 %sub22 to i64, !dbg !1811
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr20, ptr align 1 %30, i64 %conv23, i1 false), !dbg !1815
  %34 = load i32, ptr %bs, align 4, !dbg !1816
  %35 = load ptr, ptr %ctx, align 8, !dbg !1817
  %len24 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %35, i32 0, i32 0, !dbg !1818
  %36 = load i32, ptr %len24, align 4, !dbg !1818
  %sub25 = sub i32 %34, %36, !dbg !1819
  %37 = load i32, ptr %len.addr, align 4, !dbg !1820
  %sub26 = sub i32 %37, %sub25, !dbg !1820
  store i32 %sub26, ptr %len.addr, align 4, !dbg !1820
  %38 = load i32, ptr %bs, align 4, !dbg !1821
  %39 = load ptr, ptr %ctx, align 8, !dbg !1822
  %len27 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %39, i32 0, i32 0, !dbg !1823
  %40 = load i32, ptr %len27, align 4, !dbg !1823
  %sub28 = sub i32 %38, %40, !dbg !1824
  %41 = load ptr, ptr %p.addr, align 8, !dbg !1825
  %idx.ext29 = zext i32 %sub28 to i64, !dbg !1825
  %add.ptr30 = getelementptr i8, ptr %41, i64 %idx.ext29, !dbg !1825
  store ptr %add.ptr30, ptr %p.addr, align 8, !dbg !1825
  %42 = load ptr, ptr %prev, align 8, !dbg !1826
  %43 = load ptr, ptr %odds, align 8, !dbg !1827
  %44 = load i32, ptr %bs, align 4, !dbg !1828
  call void @crypto_xor(ptr noundef %42, ptr noundef %43, i32 noundef %44) #16, !dbg !1829
  %45 = load ptr, ptr %tfm3, align 8, !dbg !1830
  %46 = load ptr, ptr %prev, align 8, !dbg !1831
  %47 = load ptr, ptr %prev, align 8, !dbg !1832
  call void @crypto_cipher_encrypt_one(ptr noundef %45, ptr noundef %46, ptr noundef %47) #16, !dbg !1833
  %48 = load ptr, ptr %ctx, align 8, !dbg !1834
  %len31 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %48, i32 0, i32 0, !dbg !1835
  store i32 0, ptr %len31, align 4, !dbg !1836
  br label %while.cond, !dbg !1837

while.cond:                                       ; preds = %while.body, %if.end
  %49 = load i32, ptr %len.addr, align 4, !dbg !1838
  %50 = load i32, ptr %bs, align 4, !dbg !1839
  %cmp32 = icmp ugt i32 %49, %50, !dbg !1840
  br i1 %cmp32, label %while.body, label %while.end, !dbg !1837

while.body:                                       ; preds = %while.cond
  %51 = load ptr, ptr %prev, align 8, !dbg !1841
  %52 = load ptr, ptr %p.addr, align 8, !dbg !1843
  %53 = load i32, ptr %bs, align 4, !dbg !1844
  call void @crypto_xor(ptr noundef %51, ptr noundef %52, i32 noundef %53) #16, !dbg !1845
  %54 = load ptr, ptr %tfm3, align 8, !dbg !1846
  %55 = load ptr, ptr %prev, align 8, !dbg !1847
  %56 = load ptr, ptr %prev, align 8, !dbg !1848
  call void @crypto_cipher_encrypt_one(ptr noundef %54, ptr noundef %55, ptr noundef %56) #16, !dbg !1849
  %57 = load i32, ptr %bs, align 4, !dbg !1850
  %58 = load ptr, ptr %p.addr, align 8, !dbg !1851
  %idx.ext34 = sext i32 %57 to i64, !dbg !1851
  %add.ptr35 = getelementptr i8, ptr %58, i64 %idx.ext34, !dbg !1851
  store ptr %add.ptr35, ptr %p.addr, align 8, !dbg !1851
  %59 = load i32, ptr %bs, align 4, !dbg !1852
  %60 = load i32, ptr %len.addr, align 4, !dbg !1853
  %sub36 = sub i32 %60, %59, !dbg !1853
  store i32 %sub36, ptr %len.addr, align 4, !dbg !1853
  br label %while.cond, !dbg !1837, !llvm.loop !1854

while.end:                                        ; preds = %while.cond
  %61 = load i32, ptr %len.addr, align 4, !dbg !1858
  %tobool = icmp ne i32 %61, 0, !dbg !1858
  br i1 %tobool, label %if.then37, label %if.end40, !dbg !1860

if.then37:                                        ; preds = %while.end
  %62 = load ptr, ptr %odds, align 8, !dbg !1861
  %63 = load ptr, ptr %p.addr, align 8, !dbg !1863
  %64 = load i32, ptr %len.addr, align 4, !dbg !1864
  %conv38 = zext i32 %64 to i64, !dbg !1864
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %63, i64 %conv38, i1 false), !dbg !1865
  %65 = load i32, ptr %len.addr, align 4, !dbg !1866
  %66 = load ptr, ptr %ctx, align 8, !dbg !1867
  %len39 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %66, i32 0, i32 0, !dbg !1868
  store i32 %65, ptr %len39, align 4, !dbg !1869
  br label %if.end40, !dbg !1870

if.end40:                                         ; preds = %if.then37, %while.end
  store i32 0, ptr %retval, align 4, !dbg !1871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1871

cleanup:                                          ; preds = %if.end40, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #18, !dbg !1872
  call void @llvm.lifetime.end.p0(i64 8, ptr %odds) #18, !dbg !1872
  call void @llvm.lifetime.end.p0(i64 4, ptr %bs) #18, !dbg !1872
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm3) #18, !dbg !1872
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !1872
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #18, !dbg !1872
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #18, !dbg !1872
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !1872
  %67 = load i32, ptr %retval, align 4, !dbg !1872
  ret i32 %67, !dbg !1872
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_cmac_digest_final(ptr noundef %pdesc, ptr noundef %out) #2 align 16 !dbg !1873 {
entry:
  %pdesc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %tctx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %tfm3 = alloca ptr, align 8
  %bs = alloca i32, align 4
  %consts = alloca ptr, align 8
  %odds = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %offset = alloca i32, align 4
  %rlen = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !1875, metadata !DIExpression()), !dbg !1891
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1876, metadata !DIExpression()), !dbg !1892
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1877, metadata !DIExpression()), !dbg !1894
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !1895
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !1896
  %1 = load ptr, ptr %tfm, align 8, !dbg !1896
  store ptr %1, ptr %parent, align 8, !dbg !1894
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #18, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !1878, metadata !DIExpression()), !dbg !1898
  %2 = load ptr, ptr %parent, align 8, !dbg !1899
  %call = call i32 @crypto_shash_alignmask(ptr noundef %2) #16, !dbg !1900
  %conv = zext i32 %call to i64, !dbg !1900
  store i64 %conv, ptr %alignmask, align 8, !dbg !1898
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #18, !dbg !1901
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !1879, metadata !DIExpression()), !dbg !1902
  %3 = load ptr, ptr %parent, align 8, !dbg !1903
  %call1 = call ptr @crypto_shash_ctx(ptr noundef %3) #16, !dbg !1904
  store ptr %call1, ptr %tctx, align 8, !dbg !1902
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1880, metadata !DIExpression()), !dbg !1906
  %4 = load ptr, ptr %pdesc.addr, align 8, !dbg !1907
  %call2 = call ptr @shash_desc_ctx(ptr noundef %4) #16, !dbg !1908
  store ptr %call2, ptr %ctx, align 8, !dbg !1906
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm3) #18, !dbg !1909
  call void @llvm.dbg.declare(metadata ptr %tfm3, metadata !1881, metadata !DIExpression()), !dbg !1910
  %5 = load ptr, ptr %tctx, align 8, !dbg !1911
  %child = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %5, i32 0, i32 0, !dbg !1912
  %6 = load ptr, ptr %child, align 8, !dbg !1912
  store ptr %6, ptr %tfm3, align 8, !dbg !1910
  call void @llvm.lifetime.start.p0(i64 4, ptr %bs) #18, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %bs, metadata !1882, metadata !DIExpression()), !dbg !1914
  %7 = load ptr, ptr %parent, align 8, !dbg !1915
  %call4 = call i32 @crypto_shash_blocksize(ptr noundef %7) #16, !dbg !1916
  store i32 %call4, ptr %bs, align 4, !dbg !1914
  call void @llvm.lifetime.start.p0(i64 8, ptr %consts) #18, !dbg !1917
  call void @llvm.dbg.declare(metadata ptr %consts, metadata !1883, metadata !DIExpression()), !dbg !1918
  %8 = load ptr, ptr %tctx, align 8, !dbg !1919
  %ctx5 = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %8, i32 0, i32 1, !dbg !1919
  %arraydecay = getelementptr inbounds [0 x i8], ptr %ctx5, i64 0, i64 0, !dbg !1919
  %9 = ptrtoint ptr %arraydecay to i64, !dbg !1919
  %10 = load i64, ptr %alignmask, align 8, !dbg !1919
  %or = or i64 %10, 7, !dbg !1919
  %add = add i64 %or, 1, !dbg !1919
  %sub = sub i64 %add, 1, !dbg !1919
  %add6 = add i64 %9, %sub, !dbg !1919
  %11 = load i64, ptr %alignmask, align 8, !dbg !1919
  %or7 = or i64 %11, 7, !dbg !1919
  %add8 = add i64 %or7, 1, !dbg !1919
  %sub9 = sub i64 %add8, 1, !dbg !1919
  %not = xor i64 %sub9, -1, !dbg !1919
  %and = and i64 %add6, %not, !dbg !1919
  %12 = inttoptr i64 %and to ptr, !dbg !1919
  store ptr %12, ptr %consts, align 8, !dbg !1918
  call void @llvm.lifetime.start.p0(i64 8, ptr %odds) #18, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %odds, metadata !1884, metadata !DIExpression()), !dbg !1921
  %13 = load ptr, ptr %ctx, align 8, !dbg !1922
  %ctx10 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %13, i32 0, i32 1, !dbg !1922
  %arraydecay11 = getelementptr inbounds [0 x i8], ptr %ctx10, i64 0, i64 0, !dbg !1922
  %14 = ptrtoint ptr %arraydecay11 to i64, !dbg !1922
  %15 = load i64, ptr %alignmask, align 8, !dbg !1922
  %add12 = add i64 %15, 1, !dbg !1922
  %sub13 = sub i64 %add12, 1, !dbg !1922
  %add14 = add i64 %14, %sub13, !dbg !1922
  %16 = load i64, ptr %alignmask, align 8, !dbg !1922
  %add15 = add i64 %16, 1, !dbg !1922
  %sub16 = sub i64 %add15, 1, !dbg !1922
  %not17 = xor i64 %sub16, -1, !dbg !1922
  %and18 = and i64 %add14, %not17, !dbg !1922
  %17 = inttoptr i64 %and18 to ptr, !dbg !1922
  store ptr %17, ptr %odds, align 8, !dbg !1921
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #18, !dbg !1923
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !1885, metadata !DIExpression()), !dbg !1924
  %18 = load ptr, ptr %odds, align 8, !dbg !1925
  %19 = load i32, ptr %bs, align 4, !dbg !1926
  %idx.ext = sext i32 %19 to i64, !dbg !1927
  %add.ptr = getelementptr i8, ptr %18, i64 %idx.ext, !dbg !1927
  store ptr %add.ptr, ptr %prev, align 8, !dbg !1924
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #18, !dbg !1928
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1886, metadata !DIExpression()), !dbg !1929
  store i32 0, ptr %offset, align 4, !dbg !1929
  %20 = load ptr, ptr %ctx, align 8, !dbg !1930
  %len = getelementptr inbounds %struct.cmac_desc_ctx, ptr %20, i32 0, i32 0, !dbg !1931
  %21 = load i32, ptr %len, align 4, !dbg !1931
  %22 = load i32, ptr %bs, align 4, !dbg !1932
  %cmp = icmp ne i32 %21, %22, !dbg !1933
  br i1 %cmp, label %if.then, label %if.end29, !dbg !1934

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %rlen) #18, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %rlen, metadata !1887, metadata !DIExpression()), !dbg !1936
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !1937
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1890, metadata !DIExpression()), !dbg !1938
  %23 = load ptr, ptr %odds, align 8, !dbg !1939
  %24 = load ptr, ptr %ctx, align 8, !dbg !1940
  %len20 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %24, i32 0, i32 0, !dbg !1941
  %25 = load i32, ptr %len20, align 4, !dbg !1941
  %idx.ext21 = zext i32 %25 to i64, !dbg !1942
  %add.ptr22 = getelementptr i8, ptr %23, i64 %idx.ext21, !dbg !1942
  store ptr %add.ptr22, ptr %p, align 8, !dbg !1938
  %26 = load ptr, ptr %p, align 8, !dbg !1943
  store i8 -128, ptr %26, align 1, !dbg !1944
  %27 = load ptr, ptr %p, align 8, !dbg !1945
  %incdec.ptr = getelementptr i8, ptr %27, i32 1, !dbg !1945
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1945
  %28 = load i32, ptr %bs, align 4, !dbg !1946
  %29 = load ptr, ptr %ctx, align 8, !dbg !1947
  %len23 = getelementptr inbounds %struct.cmac_desc_ctx, ptr %29, i32 0, i32 0, !dbg !1948
  %30 = load i32, ptr %len23, align 4, !dbg !1948
  %sub24 = sub i32 %28, %30, !dbg !1949
  %sub25 = sub i32 %sub24, 1, !dbg !1950
  store i32 %sub25, ptr %rlen, align 4, !dbg !1951
  %31 = load i32, ptr %rlen, align 4, !dbg !1952
  %tobool = icmp ne i32 %31, 0, !dbg !1952
  br i1 %tobool, label %if.then26, label %if.end, !dbg !1954

if.then26:                                        ; preds = %if.then
  %32 = load ptr, ptr %p, align 8, !dbg !1955
  %33 = load i32, ptr %rlen, align 4, !dbg !1956
  %conv27 = zext i32 %33 to i64, !dbg !1956
  call void @llvm.memset.p0.i64(ptr align 1 %32, i8 0, i64 %conv27, i1 false), !dbg !1957
  br label %if.end, !dbg !1957

if.end:                                           ; preds = %if.then26, %if.then
  %34 = load i32, ptr %bs, align 4, !dbg !1958
  %35 = load i32, ptr %offset, align 4, !dbg !1959
  %add28 = add i32 %35, %34, !dbg !1959
  store i32 %add28, ptr %offset, align 4, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !1960
  call void @llvm.lifetime.end.p0(i64 4, ptr %rlen) #18, !dbg !1960
  br label %if.end29, !dbg !1961

if.end29:                                         ; preds = %if.end, %entry
  %36 = load ptr, ptr %prev, align 8, !dbg !1962
  %37 = load ptr, ptr %odds, align 8, !dbg !1963
  %38 = load i32, ptr %bs, align 4, !dbg !1964
  call void @crypto_xor(ptr noundef %36, ptr noundef %37, i32 noundef %38) #16, !dbg !1965
  %39 = load ptr, ptr %prev, align 8, !dbg !1966
  %40 = load ptr, ptr %consts, align 8, !dbg !1967
  %41 = load i32, ptr %offset, align 4, !dbg !1968
  %idx.ext30 = zext i32 %41 to i64, !dbg !1969
  %add.ptr31 = getelementptr i8, ptr %40, i64 %idx.ext30, !dbg !1969
  %42 = load i32, ptr %bs, align 4, !dbg !1970
  call void @crypto_xor(ptr noundef %39, ptr noundef %add.ptr31, i32 noundef %42) #16, !dbg !1971
  %43 = load ptr, ptr %tfm3, align 8, !dbg !1972
  %44 = load ptr, ptr %out.addr, align 8, !dbg !1973
  %45 = load ptr, ptr %prev, align 8, !dbg !1974
  call void @crypto_cipher_encrypt_one(ptr noundef %43, ptr noundef %44, ptr noundef %45) #16, !dbg !1975
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 8, ptr %odds) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 8, ptr %consts) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 4, ptr %bs) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm3) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #18, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !1976
  ret i32 0, !dbg !1977
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_cmac_digest_setkey(ptr noundef %parent, ptr noundef %inkey, i32 noundef %keylen) #2 align 16 !dbg !1978 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %inkey.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  %alignmask = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %bs = alloca i32, align 4
  %consts = alloca ptr, align 8
  %_const = alloca [2 x i64], align 16
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %msb_mask = alloca i8, align 1
  %gfmask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1980, metadata !DIExpression()), !dbg !1994
  store ptr %inkey, ptr %inkey.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inkey.addr, metadata !1981, metadata !DIExpression()), !dbg !1995
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !1982, metadata !DIExpression()), !dbg !1996
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #18, !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !1983, metadata !DIExpression()), !dbg !1998
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !1999
  %call = call i32 @crypto_shash_alignmask(ptr noundef %0) #16, !dbg !2000
  %conv = zext i32 %call to i64, !dbg !2000
  store i64 %conv, ptr %alignmask, align 8, !dbg !1998
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !2001
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1984, metadata !DIExpression()), !dbg !2002
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !2003
  %call1 = call ptr @crypto_shash_ctx(ptr noundef %1) #16, !dbg !2004
  store ptr %call1, ptr %ctx, align 8, !dbg !2002
  call void @llvm.lifetime.start.p0(i64 4, ptr %bs) #18, !dbg !2005
  call void @llvm.dbg.declare(metadata ptr %bs, metadata !1985, metadata !DIExpression()), !dbg !2006
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !2007
  %call2 = call i32 @crypto_shash_blocksize(ptr noundef %2) #16, !dbg !2008
  store i32 %call2, ptr %bs, align 4, !dbg !2006
  call void @llvm.lifetime.start.p0(i64 8, ptr %consts) #18, !dbg !2009
  call void @llvm.dbg.declare(metadata ptr %consts, metadata !1986, metadata !DIExpression()), !dbg !2010
  %3 = load ptr, ptr %ctx, align 8, !dbg !2011
  %ctx3 = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %3, i32 0, i32 1, !dbg !2011
  %arraydecay = getelementptr inbounds [0 x i8], ptr %ctx3, i64 0, i64 0, !dbg !2011
  %4 = ptrtoint ptr %arraydecay to i64, !dbg !2011
  %5 = load i64, ptr %alignmask, align 8, !dbg !2011
  %or = or i64 %5, 7, !dbg !2011
  %add = add i64 %or, 1, !dbg !2011
  %sub = sub i64 %add, 1, !dbg !2011
  %add4 = add i64 %4, %sub, !dbg !2011
  %6 = load i64, ptr %alignmask, align 8, !dbg !2011
  %or5 = or i64 %6, 7, !dbg !2011
  %add6 = add i64 %or5, 1, !dbg !2011
  %sub7 = sub i64 %add6, 1, !dbg !2011
  %not = xor i64 %sub7, -1, !dbg !2011
  %and = and i64 %add4, %not, !dbg !2011
  %7 = inttoptr i64 %and to ptr, !dbg !2011
  store ptr %7, ptr %consts, align 8, !dbg !2010
  call void @llvm.lifetime.start.p0(i64 16, ptr %_const) #18, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %_const, metadata !1988, metadata !DIExpression()), !dbg !2013
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1990, metadata !DIExpression()), !dbg !2015
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1991, metadata !DIExpression()), !dbg !2016
  store i32 0, ptr %err, align 4, !dbg !2016
  call void @llvm.lifetime.start.p0(i64 1, ptr %msb_mask) #18, !dbg !2017
  call void @llvm.dbg.declare(metadata ptr %msb_mask, metadata !1992, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 1, ptr %gfmask) #18, !dbg !2017
  call void @llvm.dbg.declare(metadata ptr %gfmask, metadata !1993, metadata !DIExpression()), !dbg !2019
  %8 = load ptr, ptr %ctx, align 8, !dbg !2020
  %child = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %8, i32 0, i32 0, !dbg !2021
  %9 = load ptr, ptr %child, align 8, !dbg !2021
  %10 = load ptr, ptr %inkey.addr, align 8, !dbg !2022
  %11 = load i32, ptr %keylen.addr, align 4, !dbg !2023
  %call8 = call i32 @crypto_cipher_setkey(ptr noundef %9, ptr noundef %10, i32 noundef %11) #16, !dbg !2024
  store i32 %call8, ptr %err, align 4, !dbg !2025
  %12 = load i32, ptr %err, align 4, !dbg !2026
  %tobool = icmp ne i32 %12, 0, !dbg !2026
  br i1 %tobool, label %if.then, label %if.end, !dbg !2028

if.then:                                          ; preds = %entry
  %13 = load i32, ptr %err, align 4, !dbg !2029
  store i32 %13, ptr %retval, align 4, !dbg !2030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2030

if.end:                                           ; preds = %entry
  %14 = load ptr, ptr %consts, align 8, !dbg !2031
  %15 = load i32, ptr %bs, align 4, !dbg !2032
  %conv9 = zext i32 %15 to i64, !dbg !2032
  call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %conv9, i1 false), !dbg !2033
  %16 = load ptr, ptr %ctx, align 8, !dbg !2034
  %child10 = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %16, i32 0, i32 0, !dbg !2035
  %17 = load ptr, ptr %child10, align 8, !dbg !2035
  %18 = load ptr, ptr %consts, align 8, !dbg !2036
  %19 = load ptr, ptr %consts, align 8, !dbg !2037
  call void @crypto_cipher_encrypt_one(ptr noundef %17, ptr noundef %18, ptr noundef %19) #16, !dbg !2038
  %20 = load i32, ptr %bs, align 4, !dbg !2039
  switch i32 %20, label %sw.epilog [
    i32 16, label %sw.bb
    i32 8, label %sw.bb36
  ], !dbg !2040

sw.bb:                                            ; preds = %if.end
  store i8 -121, ptr %gfmask, align 1, !dbg !2041
  %21 = load ptr, ptr %consts, align 8, !dbg !2043
  %arrayidx = getelementptr i64, ptr %21, i64 1, !dbg !2043
  %22 = load i64, ptr %arrayidx, align 8, !dbg !2043
  %23 = call i64 @llvm.bswap.i64(i64 %22), !dbg !2043
  %arrayidx11 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2044
  store i64 %23, ptr %arrayidx11, align 16, !dbg !2045
  %24 = load ptr, ptr %consts, align 8, !dbg !2046
  %arrayidx12 = getelementptr i64, ptr %24, i64 0, !dbg !2046
  %25 = load i64, ptr %arrayidx12, align 8, !dbg !2046
  %26 = call i64 @llvm.bswap.i64(i64 %25), !dbg !2046
  %arrayidx13 = getelementptr [2 x i64], ptr %_const, i64 0, i64 1, !dbg !2047
  store i64 %26, ptr %arrayidx13, align 8, !dbg !2048
  store i32 0, ptr %i, align 4, !dbg !2049
  br label %for.cond, !dbg !2051

for.cond:                                         ; preds = %for.inc, %sw.bb
  %27 = load i32, ptr %i, align 4, !dbg !2052
  %cmp = icmp slt i32 %27, 4, !dbg !2054
  br i1 %cmp, label %for.body, label %for.end, !dbg !2055

for.body:                                         ; preds = %for.cond
  %arrayidx15 = getelementptr [2 x i64], ptr %_const, i64 0, i64 1, !dbg !2056
  %28 = load i64, ptr %arrayidx15, align 8, !dbg !2056
  %shr = ashr i64 %28, 63, !dbg !2058
  %29 = load i8, ptr %gfmask, align 1, !dbg !2059
  %conv16 = zext i8 %29 to i64, !dbg !2059
  %and17 = and i64 %shr, %conv16, !dbg !2060
  %conv18 = trunc i64 %and17 to i8, !dbg !2061
  store i8 %conv18, ptr %msb_mask, align 1, !dbg !2062
  %arrayidx19 = getelementptr [2 x i64], ptr %_const, i64 0, i64 1, !dbg !2063
  %30 = load i64, ptr %arrayidx19, align 8, !dbg !2063
  %shl = shl i64 %30, 1, !dbg !2064
  %arrayidx20 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2065
  %31 = load i64, ptr %arrayidx20, align 16, !dbg !2065
  %shr21 = lshr i64 %31, 63, !dbg !2066
  %or22 = or i64 %shl, %shr21, !dbg !2067
  %arrayidx23 = getelementptr [2 x i64], ptr %_const, i64 0, i64 1, !dbg !2068
  store i64 %or22, ptr %arrayidx23, align 8, !dbg !2069
  %arrayidx24 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2070
  %32 = load i64, ptr %arrayidx24, align 16, !dbg !2070
  %shl25 = shl i64 %32, 1, !dbg !2071
  %33 = load i8, ptr %msb_mask, align 1, !dbg !2072
  %conv26 = zext i8 %33 to i64, !dbg !2072
  %xor = xor i64 %shl25, %conv26, !dbg !2073
  %arrayidx27 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2074
  store i64 %xor, ptr %arrayidx27, align 16, !dbg !2075
  %arrayidx28 = getelementptr [2 x i64], ptr %_const, i64 0, i64 1, !dbg !2076
  %34 = load i64, ptr %arrayidx28, align 8, !dbg !2076
  %35 = call i64 @llvm.bswap.i64(i64 %34), !dbg !2076
  %36 = load ptr, ptr %consts, align 8, !dbg !2077
  %37 = load i32, ptr %i, align 4, !dbg !2078
  %add29 = add i32 %37, 0, !dbg !2079
  %idxprom = sext i32 %add29 to i64, !dbg !2077
  %arrayidx30 = getelementptr i64, ptr %36, i64 %idxprom, !dbg !2077
  store i64 %35, ptr %arrayidx30, align 8, !dbg !2080
  %arrayidx31 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2081
  %38 = load i64, ptr %arrayidx31, align 16, !dbg !2081
  %39 = call i64 @llvm.bswap.i64(i64 %38), !dbg !2081
  %40 = load ptr, ptr %consts, align 8, !dbg !2082
  %41 = load i32, ptr %i, align 4, !dbg !2083
  %add32 = add i32 %41, 1, !dbg !2084
  %idxprom33 = sext i32 %add32 to i64, !dbg !2082
  %arrayidx34 = getelementptr i64, ptr %40, i64 %idxprom33, !dbg !2082
  store i64 %39, ptr %arrayidx34, align 8, !dbg !2085
  br label %for.inc, !dbg !2086

for.inc:                                          ; preds = %for.body
  %42 = load i32, ptr %i, align 4, !dbg !2087
  %add35 = add i32 %42, 2, !dbg !2087
  store i32 %add35, ptr %i, align 4, !dbg !2087
  br label %for.cond, !dbg !2088, !llvm.loop !2089

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !2091

sw.bb36:                                          ; preds = %if.end
  store i8 27, ptr %gfmask, align 1, !dbg !2092
  %43 = load ptr, ptr %consts, align 8, !dbg !2093
  %arrayidx37 = getelementptr i64, ptr %43, i64 0, !dbg !2093
  %44 = load i64, ptr %arrayidx37, align 8, !dbg !2093
  %45 = call i64 @llvm.bswap.i64(i64 %44), !dbg !2093
  %arrayidx38 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2094
  store i64 %45, ptr %arrayidx38, align 16, !dbg !2095
  store i32 0, ptr %i, align 4, !dbg !2096
  br label %for.cond39, !dbg !2098

for.cond39:                                       ; preds = %for.inc56, %sw.bb36
  %46 = load i32, ptr %i, align 4, !dbg !2099
  %cmp40 = icmp slt i32 %46, 2, !dbg !2101
  br i1 %cmp40, label %for.body42, label %for.end57, !dbg !2102

for.body42:                                       ; preds = %for.cond39
  %arrayidx43 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2103
  %47 = load i64, ptr %arrayidx43, align 16, !dbg !2103
  %shr44 = ashr i64 %47, 63, !dbg !2105
  %48 = load i8, ptr %gfmask, align 1, !dbg !2106
  %conv45 = zext i8 %48 to i64, !dbg !2106
  %and46 = and i64 %shr44, %conv45, !dbg !2107
  %conv47 = trunc i64 %and46 to i8, !dbg !2108
  store i8 %conv47, ptr %msb_mask, align 1, !dbg !2109
  %arrayidx48 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2110
  %49 = load i64, ptr %arrayidx48, align 16, !dbg !2110
  %shl49 = shl i64 %49, 1, !dbg !2111
  %50 = load i8, ptr %msb_mask, align 1, !dbg !2112
  %conv50 = zext i8 %50 to i64, !dbg !2112
  %xor51 = xor i64 %shl49, %conv50, !dbg !2113
  %arrayidx52 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2114
  store i64 %xor51, ptr %arrayidx52, align 16, !dbg !2115
  %arrayidx53 = getelementptr [2 x i64], ptr %_const, i64 0, i64 0, !dbg !2116
  %51 = load i64, ptr %arrayidx53, align 16, !dbg !2116
  %52 = call i64 @llvm.bswap.i64(i64 %51), !dbg !2116
  %53 = load ptr, ptr %consts, align 8, !dbg !2117
  %54 = load i32, ptr %i, align 4, !dbg !2118
  %idxprom54 = sext i32 %54 to i64, !dbg !2117
  %arrayidx55 = getelementptr i64, ptr %53, i64 %idxprom54, !dbg !2117
  store i64 %52, ptr %arrayidx55, align 8, !dbg !2119
  br label %for.inc56, !dbg !2120

for.inc56:                                        ; preds = %for.body42
  %55 = load i32, ptr %i, align 4, !dbg !2121
  %inc = add i32 %55, 1, !dbg !2121
  store i32 %inc, ptr %i, align 4, !dbg !2121
  br label %for.cond39, !dbg !2122, !llvm.loop !2123

for.end57:                                        ; preds = %for.cond39
  br label %sw.epilog, !dbg !2125

sw.epilog:                                        ; preds = %if.end, %for.end57, %for.end
  store i32 0, ptr %retval, align 4, !dbg !2126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2126

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %gfmask) #18, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 1, ptr %msb_mask) #18, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 16, ptr %_const) #18, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %consts) #18, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %bs) #18, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #18, !dbg !2127
  %56 = load i32, ptr %retval, align 4, !dbg !2127
  ret i32 %56, !dbg !2127
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmac_init_tfm(ptr noundef %tfm) #2 align 16 !dbg !2128 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %inst = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %spawn = alloca ptr, align 8
  %cipher = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2130, metadata !DIExpression()), !dbg !2135
  call void @llvm.lifetime.start.p0(i64 8, ptr %inst) #18, !dbg !2136
  call void @llvm.dbg.declare(metadata ptr %inst, metadata !2131, metadata !DIExpression()), !dbg !2137
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2138
  %call = call ptr @shash_alg_instance(ptr noundef %0) #16, !dbg !2139
  store ptr %call, ptr %inst, align 8, !dbg !2137
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2132, metadata !DIExpression()), !dbg !2141
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !2142
  %call1 = call ptr @crypto_shash_ctx(ptr noundef %1) #16, !dbg !2143
  store ptr %call1, ptr %ctx, align 8, !dbg !2141
  call void @llvm.lifetime.start.p0(i64 8, ptr %spawn) #18, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %spawn, metadata !2133, metadata !DIExpression()), !dbg !2145
  call void @llvm.lifetime.start.p0(i64 8, ptr %cipher) #18, !dbg !2146
  call void @llvm.dbg.declare(metadata ptr %cipher, metadata !2134, metadata !DIExpression()), !dbg !2147
  %2 = load ptr, ptr %inst, align 8, !dbg !2148
  %call2 = call ptr @shash_instance_ctx(ptr noundef %2) #16, !dbg !2149
  store ptr %call2, ptr %spawn, align 8, !dbg !2150
  %3 = load ptr, ptr %spawn, align 8, !dbg !2151
  %call3 = call ptr @crypto_spawn_cipher(ptr noundef %3) #16, !dbg !2152
  store ptr %call3, ptr %cipher, align 8, !dbg !2153
  %4 = load ptr, ptr %cipher, align 8, !dbg !2154
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !2156
  br i1 %call4, label %if.then, label %if.end, !dbg !2157

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cipher, align 8, !dbg !2158
  %call5 = call i64 @PTR_ERR(ptr noundef %5) #16, !dbg !2159
  %conv = trunc i64 %call5 to i32, !dbg !2159
  store i32 %conv, ptr %retval, align 4, !dbg !2160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2160

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %cipher, align 8, !dbg !2161
  %7 = load ptr, ptr %ctx, align 8, !dbg !2162
  %child = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %7, i32 0, i32 0, !dbg !2163
  store ptr %6, ptr %child, align 8, !dbg !2164
  store i32 0, ptr %retval, align 4, !dbg !2165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2165

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cipher) #18, !dbg !2166
  call void @llvm.lifetime.end.p0(i64 8, ptr %spawn) #18, !dbg !2166
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !2166
  call void @llvm.lifetime.end.p0(i64 8, ptr %inst) #18, !dbg !2166
  %8 = load i32, ptr %retval, align 4, !dbg !2166
  ret i32 %8, !dbg !2166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmac_clone_tfm(ptr noundef %tfm, ptr noundef %otfm) #2 align 16 !dbg !2167 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %otfm.addr = alloca ptr, align 8
  %octx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cipher = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2169, metadata !DIExpression()), !dbg !2174
  store ptr %otfm, ptr %otfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %otfm.addr, metadata !2170, metadata !DIExpression()), !dbg !2175
  call void @llvm.lifetime.start.p0(i64 8, ptr %octx) #18, !dbg !2176
  call void @llvm.dbg.declare(metadata ptr %octx, metadata !2171, metadata !DIExpression()), !dbg !2177
  %0 = load ptr, ptr %otfm.addr, align 8, !dbg !2178
  %call = call ptr @crypto_shash_ctx(ptr noundef %0) #16, !dbg !2179
  store ptr %call, ptr %octx, align 8, !dbg !2177
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !2180
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2172, metadata !DIExpression()), !dbg !2181
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !2182
  %call1 = call ptr @crypto_shash_ctx(ptr noundef %1) #16, !dbg !2183
  store ptr %call1, ptr %ctx, align 8, !dbg !2181
  call void @llvm.lifetime.start.p0(i64 8, ptr %cipher) #18, !dbg !2184
  call void @llvm.dbg.declare(metadata ptr %cipher, metadata !2173, metadata !DIExpression()), !dbg !2185
  %2 = load ptr, ptr %octx, align 8, !dbg !2186
  %child = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %2, i32 0, i32 0, !dbg !2187
  %3 = load ptr, ptr %child, align 8, !dbg !2187
  %call2 = call ptr @crypto_clone_cipher(ptr noundef %3) #16, !dbg !2188
  store ptr %call2, ptr %cipher, align 8, !dbg !2189
  %4 = load ptr, ptr %cipher, align 8, !dbg !2190
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !2192
  br i1 %call3, label %if.then, label %if.end, !dbg !2193

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cipher, align 8, !dbg !2194
  %call4 = call i64 @PTR_ERR(ptr noundef %5) #16, !dbg !2195
  %conv = trunc i64 %call4 to i32, !dbg !2195
  store i32 %conv, ptr %retval, align 4, !dbg !2196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2196

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %cipher, align 8, !dbg !2197
  %7 = load ptr, ptr %ctx, align 8, !dbg !2198
  %child5 = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %7, i32 0, i32 0, !dbg !2199
  store ptr %6, ptr %child5, align 8, !dbg !2200
  store i32 0, ptr %retval, align 4, !dbg !2201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2201

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cipher) #18, !dbg !2202
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !2202
  call void @llvm.lifetime.end.p0(i64 8, ptr %octx) #18, !dbg !2202
  %8 = load i32, ptr %retval, align 4, !dbg !2202
  ret i32 %8, !dbg !2202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cmac_exit_tfm(ptr noundef %tfm) #2 align 16 !dbg !2203 {
entry:
  %tfm.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !2208
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2206, metadata !DIExpression()), !dbg !2209
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2210
  %call = call ptr @crypto_shash_ctx(ptr noundef %0) #16, !dbg !2211
  store ptr %call, ptr %ctx, align 8, !dbg !2209
  %1 = load ptr, ptr %ctx, align 8, !dbg !2212
  %child = getelementptr inbounds %struct.cmac_tfm_ctx, ptr %1, i32 0, i32 0, !dbg !2213
  %2 = load ptr, ptr %child, align 8, !dbg !2213
  call void @crypto_free_cipher(ptr noundef %2) #16, !dbg !2214
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !2215
  ret void, !dbg !2215
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2216 dso_local void @shash_free_singlespawn_instance(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2217 dso_local i32 @shash_register_instance(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2220 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2222, metadata !DIExpression()), !dbg !2227
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2223, metadata !DIExpression()), !dbg !2228
  %0 = load i64, ptr %size.addr, align 8, !dbg !2229
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2230
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2231

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2232
  %tobool = icmp ne i64 %2, 0, !dbg !2232
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2233

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2224, metadata !DIExpression()), !dbg !2235
  %3 = load i64, ptr %size.addr, align 8, !dbg !2236
  %cmp = icmp ugt i64 %3, 8192, !dbg !2238
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2239

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2240
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2241
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !2242
  store ptr %call, ptr %retval, align 8, !dbg !2243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2243

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2244
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2244
  store i32 %call2, ptr %index, align 4, !dbg !2245
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2246
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2247
  %9 = ptrtoint ptr %8 to i64, !dbg !2247
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2248
  %idxprom = zext i32 %call3 to i64, !dbg !2249
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2249
  %10 = load i32, ptr %index, align 4, !dbg !2250
  %idxprom4 = zext i32 %10 to i64, !dbg !2249
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2249
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2249
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2251
  %13 = load i64, ptr %size.addr, align 8, !dbg !2252
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !2253
  store ptr %call6, ptr %retval, align 8, !dbg !2254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2254

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !2255
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2256
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2257
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !2258
  store ptr %call8, ptr %retval, align 8, !dbg !2259
  br label %return, !dbg !2259

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2260
  ret ptr %16, !dbg !2260
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2261 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !2262 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2266, metadata !DIExpression()), !dbg !2268
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2267, metadata !DIExpression()), !dbg !2269
  %0 = load i64, ptr %size.addr, align 8, !dbg !2270
  %tobool = icmp ne i64 %0, 0, !dbg !2270
  br i1 %tobool, label %if.end, label %if.then, !dbg !2272

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2273
  br label %return, !dbg !2273

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2274
  %cmp = icmp ule i64 %1, 8, !dbg !2276
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2277

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2278
  br label %return, !dbg !2278

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2279
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2281
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2282

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2283
  %cmp4 = icmp ule i64 %3, 96, !dbg !2284
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2285

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2286
  br label %return, !dbg !2286

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2287
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2289
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2290

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2291
  %cmp9 = icmp ule i64 %5, 192, !dbg !2292
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2293

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2294
  br label %return, !dbg !2294

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2295
  %cmp12 = icmp ule i64 %6, 8, !dbg !2297
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2298

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2299
  br label %return, !dbg !2299

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2300
  %cmp15 = icmp ule i64 %7, 16, !dbg !2302
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2303

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2304
  br label %return, !dbg !2304

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2305
  %cmp18 = icmp ule i64 %8, 32, !dbg !2307
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2308

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2309
  br label %return, !dbg !2309

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2310
  %cmp21 = icmp ule i64 %9, 64, !dbg !2312
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2313

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2314
  br label %return, !dbg !2314

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2315
  %cmp24 = icmp ule i64 %10, 128, !dbg !2317
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2318

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2319
  br label %return, !dbg !2319

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2320
  %cmp27 = icmp ule i64 %11, 256, !dbg !2322
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2323

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2324
  br label %return, !dbg !2324

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2325
  %cmp30 = icmp ule i64 %12, 512, !dbg !2327
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2328

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2329
  br label %return, !dbg !2329

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2330
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2332
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2333

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2334
  br label %return, !dbg !2334

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2335
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2337
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2338

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2339
  br label %return, !dbg !2339

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2340
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2342
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2343

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2344
  br label %return, !dbg !2344

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2345
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2347
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2348

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2349
  br label %return, !dbg !2349

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2350
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2352
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2353

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2354
  br label %return, !dbg !2354

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2355
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2357
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2358

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2359
  br label %return, !dbg !2359

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2360
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2362
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2363

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2364
  br label %return, !dbg !2364

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2365
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2367
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2368

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2369
  br label %return, !dbg !2369

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2370
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2372
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2373

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2374
  br label %return, !dbg !2374

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2375
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2377
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2378

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2379
  br label %return, !dbg !2379

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2380
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2382
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2383

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2384
  br label %return, !dbg !2384

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2385
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2387
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2388

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2389
  br label %return, !dbg !2389

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2390, !range !2392, !noundef !278
  %tobool69 = trunc i8 %25 to i1, !dbg !2390
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2393

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2394

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !2395, !srcloc !2398
  unreachable, !dbg !2395

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2399

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2400

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2401

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2403

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2401

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #18, !dbg !2405, !srcloc !2407
  br label %do.end75, !dbg !2405

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2401

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2408
  br label %return, !dbg !2408

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2409
  ret i32 %26, !dbg !2409
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2410 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !2416 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2420, metadata !DIExpression()), !dbg !2422
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2421, metadata !DIExpression()), !dbg !2423
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2424
  %and = and i32 %0, 17, !dbg !2424
  %cmp = icmp eq i32 %and, 0, !dbg !2424
  %lnot = xor i1 %cmp, true, !dbg !2424
  %lnot1 = xor i1 %lnot, true, !dbg !2424
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2424
  %conv = sext i32 %lnot.ext to i64, !dbg !2424
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2424
  %tobool = icmp ne i64 %expval, 0, !dbg !2424
  br i1 %tobool, label %if.then, label %if.end, !dbg !2426

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2427
  br label %return, !dbg !2427

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2428
  %and2 = and i32 %1, 1, !dbg !2430
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2430
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2431

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2432
  br label %return, !dbg !2432

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2433
  br label %return, !dbg !2433

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2435
  ret i32 %2, !dbg !2435
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2436 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2437 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_instance_ctx(ptr noundef %inst) #6 align 16 !dbg !2438 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !2442, metadata !DIExpression()), !dbg !2443
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !2444
  %__ctx = getelementptr inbounds %struct.crypto_instance, ptr %0, i32 0, i32 4, !dbg !2445
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__ctx, i64 0, i64 0, !dbg !2444
  ret ptr %arraydecay, !dbg !2446
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2447 dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_alignmask(ptr noundef %tfm) #6 align 16 !dbg !2450 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2454, metadata !DIExpression()), !dbg !2455
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2456
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !2457
  %call1 = call i32 @crypto_tfm_alg_alignmask(ptr noundef %call) #16, !dbg !2458
  ret i32 %call1, !dbg !2459
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_desc_ctx(ptr noundef %desc) #6 align 16 !dbg !2460 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2464, metadata !DIExpression()), !dbg !2465
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2466
  %__ctx = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 1, !dbg !2467
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__ctx, i64 0, i64 0, !dbg !2466
  ret ptr %arraydecay, !dbg !2468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_blocksize(ptr noundef %tfm) #6 align 16 !dbg !2469 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2471, metadata !DIExpression()), !dbg !2472
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2473
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !2474
  %call1 = call i32 @crypto_tfm_alg_blocksize(ptr noundef %call) #16, !dbg !2475
  ret i32 %call1, !dbg !2476
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_alg_alignmask(ptr noundef %tfm) #6 align 16 !dbg !2477 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2481, metadata !DIExpression()), !dbg !2482
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2483
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !2484
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !2484
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5, !dbg !2485
  %2 = load i32, ptr %cra_alignmask, align 4, !dbg !2485
  ret i32 %2, !dbg !2486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_tfm(ptr noundef %tfm) #6 align 16 !dbg !2487 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2493
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !2494
  ret ptr %base, !dbg !2495
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_alg_blocksize(ptr noundef %tfm) #6 align 16 !dbg !2496 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2498, metadata !DIExpression()), !dbg !2499
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2500
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !2501
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !2501
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3, !dbg !2502
  %2 = load i32, ptr %cra_blocksize, align 4, !dbg !2502
  ret i32 %2, !dbg !2503
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_ctx(ptr noundef %tfm) #6 align 16 !dbg !2504 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2508, metadata !DIExpression()), !dbg !2509
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2510
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !2511
  %call = call ptr @crypto_tfm_ctx(ptr noundef %base) #16, !dbg !2512
  ret ptr %call, !dbg !2513
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_xor(ptr noundef %dst, ptr noundef %src, i32 noundef %size) #6 align 16 !dbg !1086 {
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
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1093, metadata !DIExpression()), !dbg !2514
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1094, metadata !DIExpression()), !dbg !2515
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1095, metadata !DIExpression()), !dbg !2516
  %0 = load i32, ptr %size.addr, align 4, !dbg !2517
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2518
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !2519

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %size.addr, align 4, !dbg !2520
  %conv = zext i32 %2 to i64, !dbg !2520
  %rem = urem i64 %conv, 8, !dbg !2521
  %cmp = icmp eq i64 %rem, 0, !dbg !2522
  br i1 %cmp, label %if.then, label %if.else, !dbg !2523

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #18, !dbg !2524
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1096, metadata !DIExpression()), !dbg !2525
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !2526
  store ptr %3, ptr %d, align 8, !dbg !2525
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #18, !dbg !2527
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1099, metadata !DIExpression()), !dbg !2528
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2529
  store ptr %4, ptr %s, align 8, !dbg !2528
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #18, !dbg !2530
  call void @llvm.dbg.declare(metadata ptr %l, metadata !1100, metadata !DIExpression()), !dbg !2531
  br label %while.cond, !dbg !2532

while.cond:                                       ; preds = %do.end, %if.then
  %5 = load i32, ptr %size.addr, align 4, !dbg !2533
  %cmp2 = icmp ugt i32 %5, 0, !dbg !2534
  br i1 %cmp2, label %while.body, label %while.end, !dbg !2532

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #18, !dbg !2535
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !1101, metadata !DIExpression()), !dbg !2535
  %6 = load ptr, ptr %d, align 8, !dbg !2535
  store ptr %6, ptr %__pptr, align 8, !dbg !2535
  %7 = load ptr, ptr %__pptr, align 8, !dbg !2535
  %x = getelementptr inbounds %struct.anon.8, ptr %7, i32 0, i32 0, !dbg !2535
  %8 = load i64, ptr %x, align 1, !dbg !2535
  store i64 %8, ptr %tmp, align 8, !dbg !2535
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #18, !dbg !2536
  %9 = load i64, ptr %tmp, align 8, !dbg !2535
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr4) #18, !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %__pptr4, metadata !1104, metadata !DIExpression()), !dbg !2537
  %10 = load ptr, ptr %s, align 8, !dbg !2537
  %incdec.ptr = getelementptr i64, ptr %10, i32 1, !dbg !2537
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !2537
  store ptr %10, ptr %__pptr4, align 8, !dbg !2537
  %11 = load ptr, ptr %__pptr4, align 8, !dbg !2537
  %x6 = getelementptr inbounds %struct.anon.9, ptr %11, i32 0, i32 0, !dbg !2537
  %12 = load i64, ptr %x6, align 1, !dbg !2537
  store i64 %12, ptr %tmp5, align 8, !dbg !2537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr4) #18, !dbg !2538
  %13 = load i64, ptr %tmp5, align 8, !dbg !2537
  %xor = xor i64 %9, %13, !dbg !2539
  store i64 %xor, ptr %l, align 8, !dbg !2540
  br label %do.body, !dbg !2541

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr7) #18, !dbg !2542
  call void @llvm.dbg.declare(metadata ptr %__pptr7, metadata !1111, metadata !DIExpression()), !dbg !2542
  %14 = load ptr, ptr %d, align 8, !dbg !2542
  %incdec.ptr8 = getelementptr i64, ptr %14, i32 1, !dbg !2542
  store ptr %incdec.ptr8, ptr %d, align 8, !dbg !2542
  store ptr %14, ptr %__pptr7, align 8, !dbg !2542
  %15 = load i64, ptr %l, align 8, !dbg !2542
  %16 = load ptr, ptr %__pptr7, align 8, !dbg !2542
  %x9 = getelementptr inbounds %struct.anon.10, ptr %16, i32 0, i32 0, !dbg !2542
  store i64 %15, ptr %x9, align 1, !dbg !2542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr7) #18, !dbg !2541
  br label %do.cond, !dbg !2542

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2542

do.end:                                           ; preds = %do.cond
  %17 = load i32, ptr %size.addr, align 4, !dbg !2543
  %conv10 = zext i32 %17 to i64, !dbg !2543
  %sub = sub i64 %conv10, 8, !dbg !2543
  %conv11 = trunc i64 %sub to i32, !dbg !2543
  store i32 %conv11, ptr %size.addr, align 4, !dbg !2543
  br label %while.cond, !dbg !2532, !llvm.loop !2544

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #18, !dbg !2546
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #18, !dbg !2546
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #18, !dbg !2546
  br label %if.end, !dbg !2547

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load ptr, ptr %dst.addr, align 8, !dbg !2548
  %19 = load ptr, ptr %dst.addr, align 8, !dbg !2550
  %20 = load ptr, ptr %src.addr, align 8, !dbg !2551
  %21 = load i32, ptr %size.addr, align 4, !dbg !2552
  call void @__crypto_xor(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21) #16, !dbg !2553
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !2554
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2555 dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_ctx(ptr noundef %tfm) #6 align 16 !dbg !2558 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2564
  %__crt_ctx = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5, !dbg !2565
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__crt_ctx, i64 0, i64 0, !dbg !2564
  ret ptr %arraydecay, !dbg !2566
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2567 dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2570 dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_alg_instance(ptr noundef %shash) #6 align 16 !dbg !2573 {
entry:
  %shash.addr = alloca ptr, align 8
  store ptr %shash, ptr %shash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shash.addr, metadata !2577, metadata !DIExpression()), !dbg !2578
  %0 = load ptr, ptr %shash.addr, align 8, !dbg !2579
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !2580
  %call = call ptr @crypto_tfm_alg_instance(ptr noundef %base) #16, !dbg !2581
  %call1 = call ptr @shash_instance(ptr noundef %call) #16, !dbg !2582
  ret ptr %call1, !dbg !2583
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_spawn_cipher(ptr noundef %spawn) #6 align 16 !dbg !2584 {
entry:
  %spawn.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %mask = alloca i32, align 4
  store ptr %spawn, ptr %spawn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %spawn.addr, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #18, !dbg !2592
  call void @llvm.dbg.declare(metadata ptr %type, metadata !2589, metadata !DIExpression()), !dbg !2593
  store i32 1, ptr %type, align 4, !dbg !2593
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #18, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2590, metadata !DIExpression()), !dbg !2595
  store i32 15, ptr %mask, align 4, !dbg !2595
  %0 = load ptr, ptr %spawn.addr, align 8, !dbg !2596
  %base = getelementptr inbounds %struct.crypto_cipher_spawn, ptr %0, i32 0, i32 0, !dbg !2597
  %1 = load i32, ptr %type, align 4, !dbg !2598
  %2 = load i32, ptr %mask, align 4, !dbg !2599
  %call = call ptr @crypto_spawn_tfm(ptr noundef %base, i32 noundef %1, i32 noundef %2) #16, !dbg !2600
  %call1 = call ptr @__crypto_cipher_cast(ptr noundef %call) #16, !dbg !2601
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #18, !dbg !2602
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #18, !dbg !2602
  ret ptr %call1, !dbg !2603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !2604 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2611
  %1 = ptrtoint ptr %0 to i64, !dbg !2611
  %2 = inttoptr i64 %1 to ptr, !dbg !2611
  %3 = ptrtoint ptr %2 to i64, !dbg !2611
  %cmp = icmp uge i64 %3, -4095, !dbg !2611
  %lnot = xor i1 %cmp, true, !dbg !2611
  %lnot1 = xor i1 %lnot, true, !dbg !2611
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2611
  %conv = sext i32 %lnot.ext to i64, !dbg !2611
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2611
  %tobool = icmp ne i64 %expval, 0, !dbg !2611
  ret i1 %tobool, !dbg !2612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !2613 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2619
  %1 = ptrtoint ptr %0 to i64, !dbg !2620
  ret i64 %1, !dbg !2621
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_instance(ptr noundef %inst) #6 align 16 !dbg !2622 {
entry:
  %inst.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2630
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2627, metadata !DIExpression()), !dbg !2630
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !2630
  store ptr %0, ptr %__mptr, align 8, !dbg !2630
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2630
  %add.ptr = getelementptr i8, ptr %1, i64 -112, !dbg !2630
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2631
  %2 = load ptr, ptr %tmp, align 8, !dbg !2630
  ret ptr %2, !dbg !2632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_alg_instance(ptr noundef %tfm) #6 align 16 !dbg !2633 {
entry:
  %tfm.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2638, metadata !DIExpression()), !dbg !2641
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2641
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !2641
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !2641
  store ptr %1, ptr %__mptr, align 8, !dbg !2641
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2641
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2641
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2641
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2642
  %3 = load ptr, ptr %tmp, align 8, !dbg !2641
  ret ptr %3, !dbg !2643
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_cipher_cast(ptr noundef %tfm) #6 align 16 !dbg !2644 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2648, metadata !DIExpression()), !dbg !2649
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2650
  ret ptr %0, !dbg !2651
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2652 dso_local ptr @crypto_spawn_tfm(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2655 dso_local ptr @crypto_clone_cipher(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_cipher(ptr noundef %tfm) #6 align 16 !dbg !2658 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2662, metadata !DIExpression()), !dbg !2663
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2664
  %call = call ptr @crypto_cipher_tfm(ptr noundef %0) #16, !dbg !2665
  call void @crypto_free_tfm(ptr noundef %call) #16, !dbg !2666
  ret void, !dbg !2667
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_tfm(ptr noundef %tfm) #6 align 16 !dbg !2668 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2670, metadata !DIExpression()), !dbg !2671
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2672
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !2673
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %1) #16, !dbg !2674
  ret void, !dbg !2675
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_cipher_tfm(ptr noundef %tfm) #6 align 16 !dbg !2676 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !2682
  %base = getelementptr inbounds %struct.crypto_cipher, ptr %0, i32 0, i32 0, !dbg !2683
  ret ptr %base, !dbg !2684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2685 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2688 dso_local i32 @crypto_register_template(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!llvm.ident = !{!1405}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crypto_cmac_tmpl", scope: !2, file: !3, line: 311, type: !1242, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.cmac.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/cmac\22 -D KBUILD_BASENAME=\22cmac\22 -D KBUILD_MODNAME=\22cmac\22 -D __KBUILD_MODNAME=kmod_cmac -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/cmac.ll crypto/cmac.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !1355, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/cmac.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a54129a80b4deb0553e886090d8b952")
!4 = !{!5, !13, !19, !24}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 10, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "false", value: 0)
!23 = !DIEnumerator(name: "true", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !25, line: 364, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!26 = !{!27, !28, !29, !30, !31, !32, !33}
!27 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!29 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!30 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!31 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!32 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!33 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!34 = !{!35, !36, !1081, !192, !1064, !1082, !1106, !1113, !1089, !306, !1119, !317, !1120, !1203, !1350, !178}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !38)
!38 = !{!39, !40, !47, !52, !734, !760, !761, !762, !763, !767, !770, !771, !772, !825, !826, !827, !828, !829, !830, !831, !832, !835, !839, !859, !877, !878, !879, !880, !889, !913, !914, !917, !920, !921, !922, !923, !924, !925, !926, !931, !932, !1039, !1047, !1048, !1049, !1051, !1055, !1056, !1060, !1061, !1062, !1063, !1065, !1066, !1067, !1074, !1075, !1076, !1080}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !37, file: !6, line: 403, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !37, file: !6, line: 406, baseType: !41, size: 128, offset: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !42, line: 190, size: 128, elements: !43)
!42 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!43 = !{!44, !46}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !42, line: 191, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !41, file: !42, line: 191, baseType: !45, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !6, line: 409, baseType: !48, size: 448, offset: 192)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 448, elements: !50)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !{!51}
!51 = !DISubrange(count: 56)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !37, file: !6, line: 417, baseType: !53, size: 768, offset: 640)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !54)
!54 = !{!55, !717, !718, !719, !722}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !53, file: !6, line: 46, baseType: !56, size: 512)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !57, line: 64, size: 512, elements: !58)
!57 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!58 = !{!59, !62, !63, !65, !155, !587, !702, !712, !713, !714, !715, !716}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !57, line: 65, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !56, file: !57, line: 66, baseType: !41, size: 128, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !56, file: !57, line: 67, baseType: !64, size: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !56, file: !57, line: 68, baseType: !66, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !57, line: 168, size: 768, elements: !68)
!68 = !{!69, !70, !114, !115}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !67, file: !57, line: 169, baseType: !41, size: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !67, file: !57, line: 170, baseType: !71, size: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !96, !106}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !42, line: 174, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 172, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !92, file: !42, line: 173, baseType: !95, size: 32)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !97, size: 16)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !98)
!98 = !{!99, !105}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !97, file: !84, line: 25, baseType: !100, size: 8)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !101, line: 17, baseType: !102)
!101 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !103, line: 21, baseType: !104)
!103 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !97, file: !84, line: 26, baseType: !100, size: 8, offset: 8)
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !107, size: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !108)
!108 = !{!109, !113}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !107, file: !84, line: 29, baseType: !110, size: 16)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !101, line: 19, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !103, line: 24, baseType: !112)
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !107, file: !84, line: 30, baseType: !110, size: 16, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !67, file: !57, line: 171, baseType: !56, size: 512, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !67, file: !57, line: 172, baseType: !116, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !57, line: 133, size: 192, elements: !119)
!119 = !{!120, !127, !132}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !118, file: !57, line: 134, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!95, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !57, line: 135, baseType: !128, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!60, !125}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !118, file: !57, line: 136, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!95, !125, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !57, line: 125, size: 20736, elements: !139)
!139 = !{!140, !145, !149, !150, !154}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !138, file: !57, line: 126, baseType: !141, size: 192)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 192, elements: !143)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!143 = !{!144}
!144 = !DISubrange(count: 3)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !138, file: !57, line: 127, baseType: !146, size: 4096, offset: 192)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 4096, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !138, file: !57, line: 128, baseType: !95, size: 32, offset: 4288)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !138, file: !57, line: 129, baseType: !151, size: 16384, offset: 4320)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 16384, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 2048)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !138, file: !57, line: 130, baseType: !95, size: 32, offset: 20704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !56, file: !57, line: 69, baseType: !156, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !57, line: 116, size: 384, elements: !159)
!159 = !{!160, !164, !193, !533, !564, !568}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !158, file: !57, line: 117, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !64}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !158, file: !57, line: 118, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !168, line: 254, size: 128, elements: !169)
!168 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!169 = !{!170, !185}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !167, file: !168, line: 255, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!174, !64, !179, !142}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !42, line: 66, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !176, line: 73, baseType: !177)
!176 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !176, line: 15, baseType: !178)
!178 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !168, line: 30, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !168, line: 31, baseType: !60, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !180, file: !168, line: 32, baseType: !184, size: 16, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !42, line: 24, baseType: !112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !167, file: !168, line: 256, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!174, !64, !179, !60, !189}
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 61, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !176, line: 72, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !176, line: 16, baseType: !192)
!192 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !158, file: !57, line: 119, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !168, line: 84, size: 320, elements: !198)
!198 = !{!199, !200, !204, !529, !531}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !168, line: 85, baseType: !60, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !197, file: !168, line: 86, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!184, !64, !179, !95}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !197, file: !168, line: 88, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!184, !64, !208, !95}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !168, line: 175, size: 512, elements: !210)
!210 = !{!211, !212, !213, !214, !221, !231, !232}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !209, file: !168, line: 176, baseType: !180, size: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !209, file: !168, line: 177, baseType: !189, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !209, file: !168, line: 178, baseType: !35, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !209, file: !168, line: 179, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !220, line: 32, flags: DIFlagFwdDecl)
!220 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !209, file: !168, line: 180, baseType: !222, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!174, !225, !64, !208, !142, !228, !189}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !227, line: 537, flags: DIFlagFwdDecl)
!227 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !42, line: 52, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !176, line: 88, baseType: !230)
!230 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !209, file: !168, line: 182, baseType: !222, size: 64, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !209, file: !168, line: 184, baseType: !233, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!95, !225, !64, !208, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !220, line: 625, size: 1344, elements: !238)
!238 = !{!239, !256, !478, !484, !491, !492, !497, !500, !512, !513, !516, !520, !521, !522, !523, !524, !527}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !220, line: 628, baseType: !240, size: 128)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !220, line: 628, size: 128, elements: !241)
!241 = !{!242, !247}
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !220, line: 629, baseType: !243, size: 128)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !220, line: 629, size: 128, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !243, file: !220, line: 631, baseType: !192, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !243, file: !220, line: 632, baseType: !192, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !240, file: !220, line: 635, baseType: !248, size: 128, align: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !42, line: 232, size: 128, align: 64, elements: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !42, line: 233, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !248, file: !42, line: 234, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !251}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !237, file: !220, line: 639, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !220, line: 733, size: 10240, elements: !259)
!259 = !{!260, !474}
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !220, line: 734, baseType: !261, size: 10240)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !220, line: 734, size: 10240, elements: !262)
!262 = !{!263, !267, !281, !285, !286, !287, !288, !289, !290, !298, !299, !300, !309, !310, !319, !320, !321, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !368, !382, !385, !440, !441, !442, !445, !448, !449, !452, !453, !454, !461, !462}
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !220, line: 739, baseType: !264, size: 512, align: 512)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !220, line: 739, size: 512, align: 512, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !264, file: !220, line: 747, baseType: !91, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !261, file: !220, line: 750, baseType: !268, size: 128, offset: 512)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !269, line: 218, size: 128, elements: !270)
!269 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!270 = !{!271, !279, !280}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !269, line: 219, baseType: !272, size: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !269, line: 219, size: 32, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !272, file: !269, line: 220, baseType: !71, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !272, file: !269, line: 221, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !269, line: 197, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 197, elements: !278)
!278 = !{}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !268, file: !269, line: 223, baseType: !7, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !268, file: !269, line: 224, baseType: !35, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !261, file: !220, line: 752, baseType: !282, size: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!192, !225, !192, !192, !192, !192}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !261, file: !220, line: 756, baseType: !192, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !261, file: !220, line: 757, baseType: !192, size: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !261, file: !220, line: 760, baseType: !192, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !261, file: !220, line: 761, baseType: !192, size: 64, offset: 896)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !261, file: !220, line: 763, baseType: !192, size: 64, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !261, file: !220, line: 764, baseType: !291, size: 64, offset: 1024)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !227, line: 299, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 299, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !293, file: !227, line: 299, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !297, line: 18, baseType: !192)
!297 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !261, file: !220, line: 773, baseType: !91, size: 32, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !261, file: !220, line: 785, baseType: !91, size: 32, offset: 1120)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !261, file: !220, line: 795, baseType: !301, size: 64, offset: 1152)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !220, line: 726, size: 128, elements: !303)
!303 = !{!304, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !302, file: !220, line: 727, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !101, line: 23, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !103, line: 31, baseType: !307)
!307 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !302, file: !220, line: 728, baseType: !95, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !261, file: !220, line: 801, baseType: !192, size: 64, offset: 1216)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !261, file: !220, line: 804, baseType: !311, size: 64, offset: 1280)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !312, line: 13, baseType: !313)
!312 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !42, line: 181, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 179, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !314, file: !42, line: 180, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !101, line: 22, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !103, line: 30, baseType: !230)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !261, file: !220, line: 806, baseType: !95, size: 32, offset: 1344)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !261, file: !220, line: 808, baseType: !71, size: 32, offset: 1376)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !261, file: !220, line: 823, baseType: !322, size: 320, offset: 1408)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !323, line: 48, size: 320, elements: !324)
!323 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!324 = !{!325, !326, !327, !332, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !322, file: !323, line: 49, baseType: !311, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !322, file: !323, line: 55, baseType: !311, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !322, file: !323, line: 57, baseType: !328, size: 32, offset: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !329, line: 15, size: 32, elements: !330)
!329 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !328, file: !329, line: 20, baseType: !91, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !322, file: !323, line: 59, baseType: !333, size: 32, offset: 160)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !322, file: !323, line: 60, baseType: !41, size: 128, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !261, file: !220, line: 825, baseType: !41, size: 128, offset: 1728)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !261, file: !220, line: 845, baseType: !95, size: 32, offset: 1856)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !261, file: !220, line: 849, baseType: !192, size: 64, offset: 1920)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !261, file: !220, line: 850, baseType: !192, size: 64, offset: 1984)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !261, file: !220, line: 852, baseType: !192, size: 64, offset: 2048)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !261, file: !220, line: 853, baseType: !192, size: 64, offset: 2112)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !261, file: !220, line: 854, baseType: !313, size: 64, offset: 2176)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !261, file: !220, line: 855, baseType: !192, size: 64, offset: 2240)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !261, file: !220, line: 856, baseType: !192, size: 64, offset: 2304)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !261, file: !220, line: 857, baseType: !192, size: 64, offset: 2368)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !261, file: !220, line: 858, baseType: !192, size: 64, offset: 2432)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !261, file: !220, line: 865, baseType: !347, size: 32, offset: 2496)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !348, line: 69, baseType: !349)
!348 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !348, line: 64, size: 32, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !349, file: !348, line: 65, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !261, file: !220, line: 867, baseType: !71, size: 32, offset: 2528)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !261, file: !220, line: 869, baseType: !192, size: 64, offset: 2560)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !261, file: !220, line: 869, baseType: !192, size: 64, offset: 2624)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !261, file: !220, line: 869, baseType: !192, size: 64, offset: 2688)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !261, file: !220, line: 869, baseType: !192, size: 64, offset: 2752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !261, file: !220, line: 870, baseType: !192, size: 64, offset: 2816)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !261, file: !220, line: 870, baseType: !192, size: 64, offset: 2880)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !261, file: !220, line: 870, baseType: !192, size: 64, offset: 2944)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !261, file: !220, line: 871, baseType: !192, size: 64, offset: 3008)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !261, file: !220, line: 871, baseType: !192, size: 64, offset: 3072)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !261, file: !220, line: 871, baseType: !192, size: 64, offset: 3136)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !261, file: !220, line: 871, baseType: !192, size: 64, offset: 3200)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !261, file: !220, line: 873, baseType: !365, size: 3328, offset: 3264)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 3328, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 52)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !261, file: !220, line: 875, baseType: !369, size: 1280, offset: 6592)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 1280, elements: !380)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !371, line: 22, size: 320, elements: !372)
!371 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!372 = !{!373, !374, !375, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !370, file: !371, line: 23, baseType: !333, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !370, file: !371, line: 24, baseType: !317, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !370, file: !371, line: 26, baseType: !41, size: 128, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !370, file: !371, line: 28, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !101, line: 20, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !103, line: 26, baseType: !95)
!380 = !{!381}
!381 = !DISubrange(count: 4)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !261, file: !220, line: 877, baseType: !383, size: 64, offset: 7872)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !220, line: 877, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !261, file: !220, line: 880, baseType: !386, size: 1088, offset: 7936)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !387, line: 72, baseType: !388)
!387 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 23, size: 1088, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !397, !398, !406, !407, !434, !435, !436}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !388, file: !387, line: 28, baseType: !305, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !388, file: !387, line: 38, baseType: !313, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !388, file: !387, line: 40, baseType: !192, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !388, file: !387, line: 43, baseType: !322, size: 320, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !388, file: !387, line: 44, baseType: !395, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !387, line: 44, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !387, line: 48, baseType: !192, size: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !387, line: 59, baseType: !399, size: 256, offset: 640)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !400, line: 66, size: 256, elements: !401)
!400 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!401 = !{!402, !403, !404, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !399, file: !400, line: 67, baseType: !311, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !399, file: !400, line: 68, baseType: !333, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !399, file: !400, line: 70, baseType: !328, size: 32, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !399, file: !400, line: 72, baseType: !41, size: 128, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !388, file: !387, line: 60, baseType: !35, size: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !388, file: !387, line: 61, baseType: !408, size: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !411, line: 13, size: 1216, elements: !412)
!411 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!412 = !{!413, !414, !415, !416, !417, !418, !419, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !410, file: !411, line: 14, baseType: !35, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !410, file: !411, line: 15, baseType: !192, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !410, file: !411, line: 17, baseType: !192, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !410, file: !411, line: 17, baseType: !192, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !410, file: !411, line: 18, baseType: !192, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !410, file: !411, line: 18, baseType: !192, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !410, file: !411, line: 19, baseType: !420, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !410, file: !411, line: 21, baseType: !178, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !410, file: !411, line: 23, baseType: !178, size: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !410, file: !411, line: 24, baseType: !178, size: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !410, file: !411, line: 25, baseType: !178, size: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !410, file: !411, line: 26, baseType: !178, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !410, file: !411, line: 27, baseType: !178, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !410, file: !411, line: 28, baseType: !178, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !410, file: !411, line: 29, baseType: !178, size: 64, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !410, file: !411, line: 30, baseType: !178, size: 64, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !410, file: !411, line: 31, baseType: !178, size: 64, offset: 1024)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !410, file: !411, line: 32, baseType: !178, size: 64, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !410, file: !411, line: 33, baseType: !178, size: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !388, file: !387, line: 63, baseType: !91, size: 32, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !388, file: !387, line: 69, baseType: !110, size: 16, offset: 1056)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !388, file: !387, line: 70, baseType: !437, size: 16, offset: 1072)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !101, line: 18, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !103, line: 23, baseType: !439)
!439 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !220, line: 882, baseType: !192, size: 64, offset: 9024)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !261, file: !220, line: 885, baseType: !71, size: 32, offset: 9088)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !261, file: !220, line: 886, baseType: !443, size: 64, offset: 9152)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !220, line: 732, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !261, file: !220, line: 901, baseType: !446, size: 64, offset: 9216)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !220, line: 901, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !261, file: !220, line: 904, baseType: !225, size: 64, offset: 9280)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !261, file: !220, line: 906, baseType: !450, size: 64, offset: 9344)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !220, line: 906, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !261, file: !220, line: 930, baseType: !91, size: 32, offset: 9408)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !261, file: !220, line: 933, baseType: !91, size: 32, offset: 9440)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !261, file: !220, line: 935, baseType: !455, size: 64, offset: 9472)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !456, line: 103, size: 64, elements: !457)
!456 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !455, file: !456, line: 104, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !456, line: 101, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !261, file: !220, line: 940, baseType: !311, size: 64, offset: 9536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !261, file: !220, line: 942, baseType: !463, size: 256, offset: 9600)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !464, line: 98, size: 256, elements: !465)
!464 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !463, file: !464, line: 99, baseType: !311, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !463, file: !464, line: 100, baseType: !41, size: 128, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !463, file: !464, line: 101, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !464, line: 21, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !258, file: !220, line: 986, baseType: !475, offset: 10240)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: -1)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !237, file: !220, line: 640, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !227, line: 297, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !227, line: 297, size: 64, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !480, file: !227, line: 297, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !297, line: 19, baseType: !192)
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !220, line: 646, baseType: !485, size: 64, offset: 256)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !220, line: 646, size: 64, elements: !486)
!486 = !{!487, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !485, file: !220, line: 647, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !220, line: 542, baseType: !192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !485, file: !220, line: 648, baseType: !489, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !237, file: !220, line: 666, baseType: !95, size: 32, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !237, file: !220, line: 667, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !220, line: 579, size: 320, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !494, file: !220, line: 580, baseType: !322, size: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !237, file: !220, line: 670, baseType: !498, size: 8, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !42, line: 35, baseType: !499)
!499 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !237, file: !220, line: 681, baseType: !501, size: 256, offset: 512)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !220, line: 678, size: 256, elements: !502)
!502 = !{!503, !511}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !501, file: !220, line: 679, baseType: !504, size: 192, align: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !505, line: 5, size: 192, align: 64, elements: !506)
!505 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!506 = !{!507, !508, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !504, file: !505, line: 6, baseType: !192, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !504, file: !505, line: 7, baseType: !509, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !504, file: !505, line: 8, baseType: !509, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !501, file: !220, line: 680, baseType: !192, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !237, file: !220, line: 689, baseType: !41, size: 128, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !237, file: !220, line: 691, baseType: !514, size: 64, offset: 896)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !220, line: 691, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !237, file: !220, line: 694, baseType: !517, size: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !220, line: 694, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !237, file: !220, line: 697, baseType: !192, size: 64, offset: 1024)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !237, file: !220, line: 699, baseType: !225, size: 64, offset: 1088)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !237, file: !220, line: 700, baseType: !35, size: 64, offset: 1152)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !237, file: !220, line: 711, baseType: !311, size: 64, offset: 1216)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !237, file: !220, line: 717, baseType: !525, size: 64, offset: 1280)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !220, line: 717, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !237, file: !220, line: 722, baseType: !528, offset: 1344)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !220, line: 570, elements: !278)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !197, file: !168, line: 90, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !197, file: !168, line: 91, baseType: !532, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !158, file: !57, line: 120, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !125}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !540)
!540 = !{!541, !542, !546, !550, !556, !560}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !539, file: !14, line: 40, baseType: !13, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !539, file: !14, line: 41, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!498}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !539, file: !14, line: 42, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!35}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !539, file: !14, line: 43, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!420, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !539, file: !14, line: 44, baseType: !557, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!420}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !539, file: !14, line: 45, baseType: !561, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !35}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !158, file: !57, line: 121, baseType: !565, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!420, !125}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !158, file: !57, line: 122, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !125, !572, !580}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !574, line: 23, baseType: !575)
!574 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 21, size: 32, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !575, file: !574, line: 22, baseType: !578, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !42, line: 37, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !176, line: 49, baseType: !7)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !574, line: 28, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 26, size: 32, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !582, file: !574, line: 27, baseType: !585, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !42, line: 38, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !176, line: 50, baseType: !7)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !56, file: !57, line: 70, baseType: !588, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !590, line: 190, size: 1152, elements: !591)
!590 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !694, !695, !696, !697, !698, !701}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !589, file: !590, line: 191, baseType: !91, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !589, file: !590, line: 192, baseType: !91, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !589, file: !590, line: 202, baseType: !588, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !590, line: 203, baseType: !60, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !589, file: !590, line: 205, baseType: !504, size: 192, align: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !589, file: !590, line: 207, baseType: !420, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !589, file: !590, line: 208, baseType: !7, size: 32, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !590, line: 209, baseType: !600, size: 256, offset: 512)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !589, file: !590, line: 209, size: 256, elements: !601)
!601 = !{!602, !614, !618}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !600, file: !590, line: 210, baseType: !603, size: 256)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !590, line: 153, size: 256, elements: !604)
!604 = !{!605, !606, !610, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !603, file: !590, line: 154, baseType: !192, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !603, file: !590, line: 156, baseType: !607, size: 64, offset: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !505, line: 12, size: 64, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !607, file: !505, line: 13, baseType: !509, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !603, file: !590, line: 162, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !590, line: 162, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !603, file: !590, line: 167, baseType: !192, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !600, file: !590, line: 211, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !590, line: 170, size: 64, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !615, file: !590, line: 171, baseType: !588, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !600, file: !590, line: 212, baseType: !619, size: 256)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !590, line: 174, size: 256, elements: !620)
!620 = !{!621, !689, !692, !693}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !619, file: !590, line: 175, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !590, line: 271, size: 768, elements: !625)
!625 = !{!626, !649, !653, !657, !662, !666, !670, !674, !675, !676, !677, !685}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !624, file: !590, line: 276, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!95, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !590, line: 251, size: 1216, elements: !632)
!632 = !{!633, !634, !635, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !631, file: !590, line: 253, baseType: !588, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !631, file: !590, line: 254, baseType: !225, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !631, file: !590, line: 255, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !638, line: 54, flags: DIFlagFwdDecl)
!638 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!639 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !631, file: !590, line: 256, baseType: !35, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !631, file: !590, line: 259, baseType: !399, size: 256, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !631, file: !590, line: 260, baseType: !399, size: 256, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !631, file: !590, line: 261, baseType: !95, size: 32, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !631, file: !590, line: 262, baseType: !41, size: 128, offset: 832)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !631, file: !590, line: 263, baseType: !142, size: 64, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !631, file: !590, line: 265, baseType: !189, size: 64, offset: 1024)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !631, file: !590, line: 266, baseType: !498, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !631, file: !590, line: 267, baseType: !498, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !631, file: !590, line: 268, baseType: !517, size: 64, offset: 1152)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !624, file: !590, line: 277, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !630}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !624, file: !590, line: 290, baseType: !654, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!95, !636, !35}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !624, file: !590, line: 292, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!35, !636, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !624, file: !590, line: 293, baseType: !663, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!35, !636, !35, !661}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !624, file: !590, line: 294, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !636, !35}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !624, file: !590, line: 296, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!174, !630, !142, !189, !228}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !624, file: !590, line: 306, baseType: !189, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !624, file: !590, line: 313, baseType: !498, size: 8, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !624, file: !590, line: 314, baseType: !671, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !624, file: !590, line: 317, baseType: !678, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!681, !630, !683}
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !682, line: 59, baseType: !7)
!682 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !590, line: 31, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !624, file: !590, line: 320, baseType: !686, size: 64, offset: 704)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!95, !630, !236}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !619, file: !590, line: 176, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !590, line: 35, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !590, line: 177, baseType: !228, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !619, file: !590, line: 178, baseType: !588, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !589, file: !590, line: 215, baseType: !35, size: 64, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !589, file: !590, line: 221, baseType: !305, size: 64, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !590, line: 223, baseType: !112, size: 16, offset: 896)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !589, file: !590, line: 224, baseType: !184, size: 16, offset: 912)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !589, file: !590, line: 225, baseType: !699, size: 64, offset: 960)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !590, line: 36, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !589, file: !590, line: 227, baseType: !248, size: 128, align: 64, offset: 1024)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !56, file: !57, line: 71, baseType: !703, size: 32, offset: 448)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !704, line: 19, size: 32, elements: !705)
!704 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !703, file: !704, line: 20, baseType: !707, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !708, line: 113, baseType: !709)
!708 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !708, line: 111, size: 32, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !709, file: !708, line: 112, baseType: !91, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !56, file: !57, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !56, file: !57, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !56, file: !57, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !56, file: !57, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !56, file: !57, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !53, file: !6, line: 47, baseType: !36, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !53, file: !6, line: 48, baseType: !64, size: 64, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !53, file: !6, line: 49, baseType: !720, size: 64, offset: 640)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !53, file: !6, line: 50, baseType: !723, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !725, line: 26, size: 256, elements: !726)
!725 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !724, file: !725, line: 27, baseType: !7, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !724, file: !725, line: 28, baseType: !729, size: 192, offset: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !730, line: 43, size: 192, elements: !731)
!730 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !730, line: 44, baseType: !333, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !729, file: !730, line: 45, baseType: !41, size: 128, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !37, file: !6, line: 418, baseType: !735, size: 64, offset: 1408)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !737)
!737 = !{!738, !739, !744, !748, !752, !756}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !736, file: !6, line: 54, baseType: !180, size: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !736, file: !6, line: 55, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!174, !735, !743, !142}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !736, file: !6, line: 57, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!174, !735, !743, !60, !189}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !736, file: !6, line: 59, baseType: !749, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !36, !60}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !736, file: !6, line: 60, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!95, !36}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !736, file: !6, line: 61, baseType: !757, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !36}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !37, file: !6, line: 419, baseType: !60, size: 64, offset: 1472)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !37, file: !6, line: 420, baseType: !60, size: 64, offset: 1536)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !37, file: !6, line: 421, baseType: !64, size: 64, offset: 1600)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !37, file: !6, line: 424, baseType: !764, size: 64, offset: 1664)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !37, file: !6, line: 425, baseType: !768, size: 64, offset: 1728)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !37, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !37, file: !6, line: 435, baseType: !399, size: 256, offset: 1856)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !37, file: !6, line: 437, baseType: !773, size: 64, offset: 2112)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !775, line: 69, size: 320, elements: !776)
!775 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!776 = !{!777, !778, !779, !796, !798, !802, !803}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !774, file: !775, line: 70, baseType: !60, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !774, file: !775, line: 71, baseType: !36, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !774, file: !775, line: 72, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !775, line: 47, size: 256, elements: !783)
!783 = !{!784, !785, !791, !795}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !775, line: 49, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !782, file: !775, line: 51, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!95, !60, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !782, file: !775, line: 53, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!95, !142, !789}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !782, file: !775, line: 55, baseType: !561, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !774, file: !775, line: 73, baseType: !797, size: 16, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !774, file: !775, line: 74, baseType: !799, size: 8, offset: 208)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !101, line: 16, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !103, line: 20, baseType: !801)
!801 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !775, line: 75, baseType: !100, size: 8, offset: 216)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !775, line: 76, baseType: !804, size: 64, offset: 256)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !775, line: 76, size: 64, elements: !805)
!805 = !{!806, !807, !814}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !804, file: !775, line: 77, baseType: !35, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !804, file: !775, line: 78, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !775, line: 86, size: 128, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !810, file: !775, line: 87, baseType: !7, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !810, file: !775, line: 88, baseType: !142, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !804, file: !775, line: 79, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !775, line: 92, size: 256, elements: !818)
!818 = !{!819, !820, !821, !823, !824}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !817, file: !775, line: 94, baseType: !7, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !817, file: !775, line: 95, baseType: !7, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !817, file: !775, line: 96, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !817, file: !775, line: 97, baseType: !780, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !817, file: !775, line: 98, baseType: !35, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !37, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !37, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !37, file: !6, line: 442, baseType: !764, size: 64, offset: 2240)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !37, file: !6, line: 443, baseType: !768, size: 64, offset: 2304)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !37, file: !6, line: 444, baseType: !498, size: 8, offset: 2368)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !37, file: !6, line: 451, baseType: !498, size: 8, offset: 2376)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !37, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !37, file: !6, line: 455, baseType: !833, size: 64, offset: 2432)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !37, file: !6, line: 458, baseType: !836, size: 64, offset: 2496)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!95}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !37, file: !6, line: 460, baseType: !840, size: 4032, align: 512, offset: 2560)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 4032, elements: !857)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !842)
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !841, file: !6, line: 363, baseType: !35, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !841, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !841, file: !6, line: 367, baseType: !846, size: 448, offset: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !846, file: !6, line: 320, baseType: !36, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !846, file: !6, line: 321, baseType: !850, size: 384, offset: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !851, line: 40, size: 384, elements: !852)
!851 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !850, file: !851, line: 41, baseType: !854, size: 384, align: 64)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 384, align: 64, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 2)
!857 = !{!858}
!858 = !DISubrange(count: 7)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !37, file: !6, line: 463, baseType: !860, size: 192, offset: 6592)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !861, line: 8, size: 192, elements: !862)
!861 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!862 = !{!863, !864, !866}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !860, file: !861, line: 10, baseType: !7, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !860, file: !861, line: 11, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !860, file: !861, line: 12, baseType: !867, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !869, line: 59, size: 48, elements: !870)
!869 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!870 = !{!871, !872, !873, !874, !875, !876}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !868, file: !869, line: 60, baseType: !437, size: 16)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !868, file: !869, line: 61, baseType: !437, size: 16, offset: 16)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !868, file: !869, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !868, file: !869, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !868, file: !869, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !868, file: !869, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !37, file: !6, line: 465, baseType: !192, size: 64, offset: 6784)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !37, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !37, file: !6, line: 470, baseType: !41, size: 128, offset: 6912)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !37, file: !6, line: 471, baseType: !881, size: 64, offset: 7040)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !883, line: 33, size: 96, elements: !884)
!883 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!884 = !{!885, !886, !887, !888}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !882, file: !883, line: 37, baseType: !95, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !882, file: !883, line: 43, baseType: !95, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !882, file: !883, line: 45, baseType: !112, size: 16, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !883, line: 47, baseType: !112, size: 16, offset: 80)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !37, file: !6, line: 476, baseType: !890, size: 64, offset: 7104)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !892)
!892 = !{!893, !910, !911, !912}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !891, file: !6, line: 379, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !896, line: 204, baseType: !897)
!896 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !896, line: 197, size: 192, elements: !898)
!898 = !{!899, !902, !903, !904, !906, !908}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !897, file: !896, line: 198, baseType: !900, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !896, line: 21, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !103, line: 27, baseType: !7)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !897, file: !896, line: 199, baseType: !104, size: 8, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !897, file: !896, line: 200, baseType: !104, size: 8, offset: 40)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !897, file: !896, line: 201, baseType: !905, size: 16, offset: 48)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !896, line: 17, baseType: !111)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !897, file: !896, line: 202, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !896, line: 16, baseType: !306)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !897, file: !896, line: 203, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !896, line: 22, baseType: !306)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !891, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !891, file: !6, line: 381, baseType: !142, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !891, file: !6, line: 382, baseType: !142, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !37, file: !6, line: 477, baseType: !891, size: 256, offset: 7168)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !37, file: !6, line: 480, baseType: !915, size: 64, offset: 7424)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !37, file: !6, line: 483, baseType: !918, size: 64, offset: 7488)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !37, file: !6, line: 488, baseType: !142, size: 64, offset: 7552)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !37, file: !6, line: 492, baseType: !35, size: 64, offset: 7616)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !37, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !37, file: !6, line: 495, baseType: !35, size: 64, offset: 7744)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !37, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !37, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !37, file: !6, line: 500, baseType: !927, size: 64, offset: 7872)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !929, line: 45, baseType: !930)
!929 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !37, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !37, file: !6, line: 504, baseType: !933, size: 64, offset: 8000)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !936, line: 96, size: 192, elements: !937)
!936 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!937 = !{!938, !939, !1000, !1003}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !935, file: !936, line: 97, baseType: !7, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !935, file: !936, line: 98, baseType: !940, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !936, line: 24, size: 3072, elements: !942)
!942 = !{!943, !945, !946, !947, !948, !962, !963, !964, !965, !984, !985, !986, !997, !998, !999}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !941, file: !936, line: 26, baseType: !944, size: 128)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 128, elements: !855)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !941, file: !936, line: 27, baseType: !944, size: 128, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !941, file: !936, line: 28, baseType: !95, size: 32, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !941, file: !936, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !941, file: !936, line: 32, baseType: !949, size: 960, offset: 576)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !950, line: 206, size: 960, elements: !951)
!950 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!951 = !{!952, !953, !956, !958, !959, !961}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !949, file: !950, line: 207, baseType: !251, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !949, file: !950, line: 208, baseType: !954, size: 256, offset: 64)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 256, elements: !380)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !949, file: !950, line: 209, baseType: !957, size: 256, offset: 320)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !380)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !949, file: !950, line: 213, baseType: !178, size: 64, offset: 576)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !949, file: !950, line: 215, baseType: !960, size: 256, offset: 640)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !380)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !950, line: 216, baseType: !100, size: 8, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !941, file: !936, line: 33, baseType: !192, size: 64, offset: 1536)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !941, file: !936, line: 34, baseType: !192, size: 64, offset: 1600)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !941, file: !936, line: 35, baseType: !498, size: 8, offset: 1664)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !941, file: !936, line: 36, baseType: !966, size: 320, offset: 1728)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !967, line: 11, size: 320, elements: !968)
!967 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!968 = !{!969, !976, !977, !982}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !966, file: !967, line: 16, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !42, line: 198, size: 128, elements: !971)
!971 = !{!972, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !970, file: !42, line: 199, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !970, file: !42, line: 199, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !966, file: !967, line: 17, baseType: !192, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !966, file: !967, line: 18, baseType: !978, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 19, baseType: !983, size: 32, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !101, line: 21, baseType: !901)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !941, file: !936, line: 37, baseType: !463, size: 256, offset: 2048)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !941, file: !936, line: 38, baseType: !248, size: 128, align: 64, offset: 2304)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !941, file: !936, line: 39, baseType: !987, size: 64, offset: 2432)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !936, line: 49, size: 768, elements: !989)
!989 = !{!990, !991, !992, !993, !994, !995, !996}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !988, file: !936, line: 50, baseType: !71, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !988, file: !936, line: 51, baseType: !957, size: 256, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !988, file: !936, line: 53, baseType: !957, size: 256, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !988, file: !936, line: 54, baseType: !192, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !988, file: !936, line: 55, baseType: !987, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !988, file: !936, line: 56, baseType: !95, size: 32, offset: 704)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !988, file: !936, line: 57, baseType: !95, size: 32, offset: 736)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !941, file: !936, line: 40, baseType: !192, size: 64, offset: 2496)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !941, file: !936, line: 42, baseType: !95, size: 32, offset: 2560)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !941, file: !936, line: 43, baseType: !934, size: 64, offset: 2624)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !935, file: !936, line: 99, baseType: !1001, offset: 128)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1002, line: 211, elements: !278)
!1002 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !935, file: !936, line: 100, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !936, line: 63, size: 3008, elements: !1006)
!1006 = !{!1007, !1008, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1038}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1005, file: !936, line: 64, baseType: !987, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1005, file: !936, line: 65, baseType: !1009, size: 192, offset: 64)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 192, elements: !143)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1005, file: !936, line: 67, baseType: !95, size: 32, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1005, file: !936, line: 68, baseType: !399, size: 256, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1005, file: !936, line: 69, baseType: !71, size: 32, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1005, file: !936, line: 70, baseType: !399, size: 256, offset: 640)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1005, file: !936, line: 71, baseType: !192, size: 64, offset: 896)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1005, file: !936, line: 72, baseType: !192, size: 64, offset: 960)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1005, file: !936, line: 73, baseType: !192, size: 64, offset: 1024)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1005, file: !936, line: 74, baseType: !192, size: 64, offset: 1088)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1005, file: !936, line: 75, baseType: !192, size: 64, offset: 1152)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1005, file: !936, line: 76, baseType: !192, size: 64, offset: 1216)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1005, file: !936, line: 77, baseType: !192, size: 64, offset: 1280)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1005, file: !936, line: 78, baseType: !192, size: 64, offset: 1344)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1005, file: !936, line: 79, baseType: !498, size: 8, offset: 1408)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1005, file: !936, line: 80, baseType: !192, size: 64, offset: 1472)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1005, file: !936, line: 81, baseType: !399, size: 256, offset: 1536)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1005, file: !936, line: 82, baseType: !724, size: 256, offset: 1792)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1005, file: !936, line: 84, baseType: !91, size: 32, offset: 2048)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1005, file: !936, line: 87, baseType: !192, size: 64, offset: 2112)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1005, file: !936, line: 88, baseType: !192, size: 64, offset: 2176)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1005, file: !936, line: 89, baseType: !1030, size: 704, offset: 2240)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !464, line: 111, size: 704, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1037}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1030, file: !464, line: 112, baseType: !463, size: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1030, file: !464, line: 113, baseType: !966, size: 320, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1030, file: !464, line: 116, baseType: !1035, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !464, line: 18, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1030, file: !464, line: 117, baseType: !95, size: 32, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1005, file: !936, line: 90, baseType: !934, size: 64, offset: 2944)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !37, file: !6, line: 515, baseType: !1040, size: 64, offset: 8064)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1042, line: 117, size: 128, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1043 = !{!1044, !1045, !1046}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1041, file: !1042, line: 118, baseType: !378, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1041, file: !1042, line: 119, baseType: !378, size: 32, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1041, file: !1042, line: 120, baseType: !178, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !37, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !37, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !37, file: !6, line: 520, baseType: !1050, size: 64, offset: 8192)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !37, file: !6, line: 523, baseType: !1052, size: 64, offset: 8256)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !37, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !37, file: !6, line: 525, baseType: !1057, size: 64, offset: 8384)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !37, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !37, file: !6, line: 533, baseType: !35, size: 64, offset: 8512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !37, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !37, file: !6, line: 535, baseType: !1064, size: 64, offset: 8640)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !37, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !37, file: !6, line: 539, baseType: !95, size: 32, offset: 8736)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !37, file: !6, line: 540, baseType: !1068, size: 64, offset: 8768)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1070, line: 32, size: 64, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1069, file: !1070, line: 33, baseType: !378, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1069, file: !1070, line: 34, baseType: !378, size: 32, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !37, file: !6, line: 563, baseType: !41, size: 128, offset: 8832)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !37, file: !6, line: 565, baseType: !41, size: 128, offset: 8960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !37, file: !6, line: 568, baseType: !1077, size: 64, offset: 9088)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !37, file: !6, line: 570, baseType: !91, size: 32, offset: 9152)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !42, line: 154, baseType: !7)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1086, file: !1085, line: 26, size: 64, elements: !1117)
!1085 = !DIFile(filename: "./include/crypto/utils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f96ae936e2fe1a16bfcf6d1636fd3f13")
!1086 = distinct !DISubprogram(name: "crypto_xor", scope: !1085, file: !1085, line: 16, type: !1087, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1092)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1089, !1090, !7}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!1092 = !{!1093, !1094, !1095, !1096, !1099, !1100, !1101, !1104, !1111}
!1093 = !DILocalVariable(name: "dst", arg: 1, scope: !1086, file: !1085, line: 16, type: !1089)
!1094 = !DILocalVariable(name: "src", arg: 2, scope: !1086, file: !1085, line: 16, type: !1090)
!1095 = !DILocalVariable(name: "size", arg: 3, scope: !1086, file: !1085, line: 16, type: !7)
!1096 = !DILocalVariable(name: "d", scope: !1097, file: !1085, line: 21, type: !1064)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !1085, line: 20, column: 43)
!1098 = distinct !DILexicalBlock(scope: !1086, file: !1085, line: 18, column: 6)
!1099 = !DILocalVariable(name: "s", scope: !1097, file: !1085, line: 22, type: !1064)
!1100 = !DILocalVariable(name: "l", scope: !1097, file: !1085, line: 23, type: !192)
!1101 = !DILocalVariable(name: "__pptr", scope: !1102, file: !1085, line: 26, type: !1082)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !1085, line: 26, column: 8)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !1085, line: 25, column: 20)
!1104 = !DILocalVariable(name: "__pptr", scope: !1105, file: !1085, line: 26, type: !1106)
!1105 = distinct !DILexicalBlock(scope: !1103, file: !1085, line: 26, column: 27)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1086, file: !1085, line: 26, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1108, file: !1085, line: 26, baseType: !192, size: 64)
!1111 = !DILocalVariable(name: "__pptr", scope: !1112, file: !1085, line: 27, type: !1113)
!1112 = distinct !DILexicalBlock(scope: !1103, file: !1085, line: 27, column: 4)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1086, file: !1085, line: 27, size: 64, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1114, file: !1085, line: 27, baseType: !192, size: 64)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1084, file: !1085, line: 26, baseType: !192, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !682, line: 41, baseType: !306)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_instance", file: !1122, line: 43, size: 4416, elements: !1123)
!1122 = !DIFile(filename: "./include/crypto/internal/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed36183aa18097edaf56e7e16397323")
!1123 = !{!1124, !1128}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1121, file: !1122, line: 44, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1120}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1121, file: !1122, line: 45, baseType: !1129, size: 4352, offset: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1121, file: !1122, line: 45, size: 4352, elements: !1130)
!1130 = !{!1131, !1279}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1129, file: !1122, line: 49, baseType: !1132, size: 4352)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !1122, line: 46, size: 4352, elements: !1133)
!1133 = !{!1134, !1138}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1132, file: !1122, line: 47, baseType: !1135, size: 832)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 832, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 104)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1132, file: !1122, line: 48, baseType: !1139, size: 3520, offset: 832)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !638, line: 74, size: 3520, elements: !1140)
!1140 = !{!1141, !1240, !1258, !1277, !1278}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !1139, file: !638, line: 75, baseType: !1142, size: 3072, align: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !1143, line: 343, size: 3072, align: 64, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1157, !1158, !1208, !1233, !1234, !1235, !1239}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !1142, file: !1143, line: 344, baseType: !41, size: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !1142, file: !1143, line: 345, baseType: !41, size: 128, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !1142, file: !1143, line: 347, baseType: !983, size: 32, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !1142, file: !1143, line: 348, baseType: !7, size: 32, offset: 288)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !1142, file: !1143, line: 349, baseType: !7, size: 32, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !1142, file: !1143, line: 350, baseType: !7, size: 32, offset: 352)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !1142, file: !1143, line: 352, baseType: !95, size: 32, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !1142, file: !1143, line: 353, baseType: !707, size: 32, offset: 416)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !1142, file: !1143, line: 355, baseType: !1154, size: 1024, offset: 448)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1024, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !1142, file: !1143, line: 356, baseType: !1154, size: 1024, offset: 1472)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !1142, file: !1143, line: 358, baseType: !1159, size: 64, offset: 2496)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !638, line: 57, size: 512, elements: !1162)
!1162 = !{!1163, !1168, !1172, !1189, !1193, !1199, !1204, !1205, !1206, !1207}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !1161, file: !638, line: 58, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!7, !1167, !983, !983}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !1161, file: !638, line: 59, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!7, !1167}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !1161, file: !638, line: 60, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!95, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !1143, line: 422, size: 256, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1186, !1187}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1177, file: !1143, line: 423, baseType: !707, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !1177, file: !1143, line: 425, baseType: !983, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1177, file: !1143, line: 427, baseType: !95, size: 32, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1177, file: !1143, line: 429, baseType: !1183, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !1176}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !1177, file: !1143, line: 431, baseType: !1167, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !1177, file: !1143, line: 433, baseType: !1188, align: 64, offset: 256)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, elements: !476)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1161, file: !638, line: 61, baseType: !1190, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !636, !1167}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !1161, file: !638, line: 62, baseType: !1194, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!95, !1197, !1167}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !638, line: 55, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1161, file: !638, line: 63, baseType: !1200, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1161, file: !638, line: 68, baseType: !7, size: 32, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !1161, file: !638, line: 69, baseType: !7, size: 32, offset: 416)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !1161, file: !638, line: 70, baseType: !7, size: 32, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !1161, file: !638, line: 71, baseType: !7, size: 32, offset: 480)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !1142, file: !1143, line: 363, baseType: !1209, size: 256, offset: 2560)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1142, file: !1143, line: 360, size: 256, elements: !1210)
!1210 = !{!1211, !1225}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1209, file: !1143, line: 361, baseType: !1212, size: 256)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !1143, line: 235, size: 256, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1220, !1224}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !1212, file: !1143, line: 236, baseType: !7, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !1212, file: !1143, line: 237, baseType: !7, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !1212, file: !1143, line: 238, baseType: !1217, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!95, !1176, !1090, !7}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !1212, file: !1143, line: 240, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !1176, !1089, !1090}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !1212, file: !1143, line: 241, baseType: !1221, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1209, file: !1143, line: 362, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !1143, line: 255, size: 128, elements: !1227)
!1227 = !{!1228, !1232}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !1226, file: !1143, line: 256, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!95, !1176, !1090, !7, !1089, !822}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !1226, file: !1143, line: 258, baseType: !1229, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !1142, file: !1143, line: 365, baseType: !1173, size: 64, offset: 2816)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !1142, file: !1143, line: 366, baseType: !1183, size: 64, offset: 2880)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !1142, file: !1143, line: 367, baseType: !1236, size: 64, offset: 2944)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !1167}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !1142, file: !1143, line: 369, baseType: !36, size: 64, offset: 3008)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !1139, file: !638, line: 77, baseType: !1241, size: 64, offset: 3072)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !638, line: 91, size: 1344, elements: !1243)
!1243 = !{!1244, !1245, !1249, !1250, !1257}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1242, file: !638, line: 92, baseType: !41, size: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !1242, file: !638, line: 93, baseType: !1246, size: 64, offset: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !42, line: 194, size: 64, elements: !1247)
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1246, file: !42, line: 195, baseType: !973, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1242, file: !638, line: 94, baseType: !36, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1242, file: !638, line: 96, baseType: !1251, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!95, !1241, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !638, line: 52, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1242, file: !638, line: 98, baseType: !1154, size: 1024, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !638, line: 79, baseType: !1259, size: 128, offset: 3136)
!1259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !638, line: 79, size: 128, elements: !1260)
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1259, file: !638, line: 81, baseType: !970, size: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !1259, file: !638, line: 83, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !638, line: 101, size: 384, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1273, !1274, !1275, !1276}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1264, file: !638, line: 102, baseType: !41, size: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !1264, file: !638, line: 103, baseType: !1167, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !638, line: 104, baseType: !1269, size: 64, offset: 192)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !638, line: 104, size: 64, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !1269, file: !638, line: 106, baseType: !1203, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1269, file: !638, line: 108, baseType: !1263, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !1264, file: !638, line: 110, baseType: !1159, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1264, file: !638, line: 111, baseType: !983, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1264, file: !638, line: 112, baseType: !498, size: 8, offset: 352)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1264, file: !638, line: 113, baseType: !498, size: 8, offset: 360)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !1139, file: !638, line: 86, baseType: !463, size: 256, offset: 3264)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !1139, file: !638, line: 88, baseType: !1188, align: 64, offset: 3520)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !1129, file: !1122, line: 50, baseType: !1280, size: 3904)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_alg", file: !1281, line: 225, size: 3904, elements: !1282)
!1281 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!1282 = !{!1283, !1297, !1301, !1305, !1309, !1310, !1314, !1318, !1322, !1326, !1330, !1334, !1335}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1280, file: !1281, line: 226, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!95, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_desc", file: !1281, line: 175, size: 64, elements: !1289)
!1289 = !{!1290, !1296}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !1288, file: !1281, line: 176, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !1281, line: 268, size: 320, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !1292, file: !1281, line: 269, baseType: !7, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1292, file: !1281, line: 270, baseType: !1177, size: 256, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !1288, file: !1281, line: 177, baseType: !1188, align: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1280, file: !1281, line: 227, baseType: !1298, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!95, !1287, !1090, !7}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1280, file: !1281, line: 229, baseType: !1302, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!95, !1287, !1089}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !1280, file: !1281, line: 230, baseType: !1306, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!95, !1287, !1090, !7, !1089}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !1280, file: !1281, line: 232, baseType: !1306, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !1280, file: !1281, line: 234, baseType: !1311, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!95, !1287, !35}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !1280, file: !1281, line: 235, baseType: !1315, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!95, !1287, !420}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !1280, file: !1281, line: 236, baseType: !1319, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!95, !1291, !1090, !7}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !1280, file: !1281, line: 238, baseType: !1323, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!95, !1291}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !1280, file: !1281, line: 239, baseType: !1327, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1291}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !1280, file: !1281, line: 240, baseType: !1331, size: 64, offset: 640)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!95, !1291, !1291}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !1280, file: !1281, line: 242, baseType: !7, size: 32, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !1281, line: 244, baseType: !1336, size: 3136, offset: 768)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !1281, line: 244, size: 3136, elements: !1337)
!1337 = !{!1338, !1344}
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !1281, line: 245, baseType: !1339, size: 3136)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !1281, line: 245, size: 3136, elements: !1340)
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !1339, file: !1281, line: 245, baseType: !7, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !1339, file: !1281, line: 245, baseType: !7, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1339, file: !1281, line: 245, baseType: !1142, size: 3072, align: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !1336, file: !1281, line: 246, baseType: !1345, size: 3136)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_alg_common", file: !1281, line: 70, size: 3136, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !1345, file: !1281, line: 70, baseType: !7, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !1345, file: !1281, line: 70, baseType: !7, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1345, file: !1281, line: 70, baseType: !1142, size: 3072, align: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_cipher", file: !1352, line: 16, size: 256, elements: !1353)
!1352 = !DIFile(filename: "./include/crypto/internal/cipher.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45286dda92be266e5a66439c18874b78")
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1351, file: !1352, line: 17, baseType: !1177, size: 256)
!1355 = !{!1356, !1358, !1362, !1367, !1372, !1377, !1382, !1387, !0, !1392}
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_cmac__197_327_crypto_cmac_module_init4198", scope: !2, file: !3, line: 327, type: !35, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(name: "__exitcall_crypto_cmac_module_exit", scope: !2, file: !3, line: 328, type: !1360, isLocal: true, isDefinition: true)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1361, line: 120, baseType: !1077)
!1361 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file199", scope: !2, file: !3, line: 330, type: !1364, isLocal: true, isDefinition: true, align: 8)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 176, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 22)
!1367 = !DIGlobalVariableExpression(var: !1368, expr: !DIExpression())
!1368 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license200", scope: !2, file: !3, line: 330, type: !1369, isLocal: true, isDefinition: true, align: 8)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 136, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 17)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description201", scope: !2, file: !3, line: 331, type: !1374, isLocal: true, isDefinition: true, align: 8)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 344, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 43)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace202", scope: !2, file: !3, line: 332, type: !1379, isLocal: true, isDefinition: true, align: 8)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 16)
!1382 = !DIGlobalVariableExpression(var: !1383, expr: !DIExpression())
!1383 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto203", scope: !2, file: !3, line: 332, type: !1384, isLocal: true, isDefinition: true, align: 8)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 184, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 23)
!1387 = !DIGlobalVariableExpression(var: !1388, expr: !DIExpression())
!1388 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_import_ns204", scope: !2, file: !3, line: 333, type: !1389, isLocal: true, isDefinition: true, align: 8)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 248, elements: !1390)
!1390 = !{!1391}
!1391 = !DISubrange(count: 31)
!1392 = !DIGlobalVariableExpression(var: !1393, expr: !DIExpression())
!1393 = distinct !DIGlobalVariable(scope: null, file: !25, line: 480, type: !1394, isLocal: true, isDefinition: true)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 168, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 21)
!1397 = !{i32 7, !"Dwarf Version", i32 5}
!1398 = !{i32 2, !"Debug Info Version", i32 3}
!1399 = !{i32 1, !"wchar_size", i32 2}
!1400 = !{i32 8, !"cf-protection-branch", i32 1}
!1401 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1402 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1403 = !{i32 1, !"Code Model", i32 2}
!1404 = !{i32 1, !"override-stack-alignment", i32 8}
!1405 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1406 = distinct !DISubprogram(name: "crypto_cmac_module_exit", scope: !3, file: !3, line: 322, type: !1078, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1407 = !DILocation(line: 324, column: 2, scope: !1406)
!1408 = !DILocation(line: 325, column: 1, scope: !1406)
!1409 = !DISubprogram(name: "crypto_unregister_template", scope: !638, file: !638, line: 150, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1241}
!1412 = distinct !DISubprogram(name: "__initstub__kmod_cmac__197_327_crypto_cmac_module_init4", scope: !3, file: !3, line: 327, type: !837, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1413 = !DILocation(line: 327, column: 1, scope: !1412)
!1414 = distinct !DISubprogram(name: "crypto_cmac_module_init", scope: !3, file: !3, line: 317, type: !837, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1415 = !DILocation(line: 319, column: 9, scope: !1414)
!1416 = !DILocation(line: 319, column: 2, scope: !1414)
!1417 = distinct !DISubprogram(name: "cmac_create", scope: !3, file: !3, line: 239, type: !1252, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1427, !1428, !1429, !1430, !1431}
!1419 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1417, file: !3, line: 239, type: !1241)
!1420 = !DILocalVariable(name: "tb", arg: 2, scope: !1417, file: !3, line: 239, type: !1254)
!1421 = !DILocalVariable(name: "inst", scope: !1417, file: !3, line: 241, type: !1120)
!1422 = !DILocalVariable(name: "spawn", scope: !1417, file: !3, line: 242, type: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_cipher_spawn", file: !1352, line: 181, size: 384, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1424, file: !1352, line: 182, baseType: !1264, size: 384)
!1427 = !DILocalVariable(name: "alg", scope: !1417, file: !3, line: 243, type: !1167)
!1428 = !DILocalVariable(name: "alignmask", scope: !1417, file: !3, line: 244, type: !192)
!1429 = !DILocalVariable(name: "mask", scope: !1417, file: !3, line: 245, type: !983)
!1430 = !DILocalVariable(name: "err", scope: !1417, file: !3, line: 246, type: !95)
!1431 = !DILabel(scope: !1432, name: "err_free_inst", file: !3, line: 305)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 304, column: 11)
!1433 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 304, column: 6)
!1434 = !DILocation(line: 239, column: 48, scope: !1417)
!1435 = !DILocation(line: 239, column: 70, scope: !1417)
!1436 = !DILocation(line: 241, column: 2, scope: !1417)
!1437 = !DILocation(line: 241, column: 25, scope: !1417)
!1438 = !DILocation(line: 242, column: 2, scope: !1417)
!1439 = !DILocation(line: 242, column: 30, scope: !1417)
!1440 = !DILocation(line: 243, column: 2, scope: !1417)
!1441 = !DILocation(line: 243, column: 21, scope: !1417)
!1442 = !DILocation(line: 244, column: 2, scope: !1417)
!1443 = !DILocation(line: 244, column: 16, scope: !1417)
!1444 = !DILocation(line: 245, column: 2, scope: !1417)
!1445 = !DILocation(line: 245, column: 6, scope: !1417)
!1446 = !DILocation(line: 246, column: 2, scope: !1417)
!1447 = !DILocation(line: 246, column: 6, scope: !1417)
!1448 = !DILocation(line: 248, column: 31, scope: !1417)
!1449 = !DILocation(line: 248, column: 8, scope: !1417)
!1450 = !DILocation(line: 248, column: 6, scope: !1417)
!1451 = !DILocation(line: 249, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 249, column: 6)
!1453 = !DILocation(line: 249, column: 6, scope: !1417)
!1454 = !DILocation(line: 250, column: 10, scope: !1452)
!1455 = !DILocation(line: 250, column: 3, scope: !1452)
!1456 = !DILocation(line: 252, column: 9, scope: !1417)
!1457 = !DILocation(line: 252, column: 7, scope: !1417)
!1458 = !DILocation(line: 253, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 253, column: 6)
!1460 = !DILocation(line: 253, column: 6, scope: !1417)
!1461 = !DILocation(line: 254, column: 3, scope: !1459)
!1462 = !DILocation(line: 255, column: 29, scope: !1417)
!1463 = !DILocation(line: 255, column: 10, scope: !1417)
!1464 = !DILocation(line: 255, column: 8, scope: !1417)
!1465 = !DILocation(line: 257, column: 27, scope: !1417)
!1466 = !DILocation(line: 257, column: 56, scope: !1417)
!1467 = !DILocation(line: 257, column: 34, scope: !1417)
!1468 = !DILocation(line: 258, column: 27, scope: !1417)
!1469 = !DILocation(line: 258, column: 6, scope: !1417)
!1470 = !DILocation(line: 258, column: 38, scope: !1417)
!1471 = !DILocation(line: 257, column: 8, scope: !1417)
!1472 = !DILocation(line: 257, column: 6, scope: !1417)
!1473 = !DILocation(line: 259, column: 6, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 259, column: 6)
!1475 = !DILocation(line: 259, column: 6, scope: !1417)
!1476 = !DILocation(line: 260, column: 3, scope: !1474)
!1477 = !DILocation(line: 261, column: 32, scope: !1417)
!1478 = !DILocation(line: 261, column: 8, scope: !1417)
!1479 = !DILocation(line: 261, column: 6, scope: !1417)
!1480 = !DILocation(line: 263, column: 10, scope: !1417)
!1481 = !DILocation(line: 263, column: 15, scope: !1417)
!1482 = !DILocation(line: 263, column: 2, scope: !1417)
!1483 = !DILocation(line: 266, column: 3, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 263, column: 30)
!1485 = !DILocation(line: 268, column: 7, scope: !1484)
!1486 = !DILocation(line: 269, column: 3, scope: !1484)
!1487 = !DILocation(line: 272, column: 50, scope: !1417)
!1488 = !DILocation(line: 272, column: 28, scope: !1417)
!1489 = !DILocation(line: 272, column: 57, scope: !1417)
!1490 = !DILocation(line: 272, column: 63, scope: !1417)
!1491 = !DILocation(line: 272, column: 69, scope: !1417)
!1492 = !DILocation(line: 272, column: 8, scope: !1417)
!1493 = !DILocation(line: 272, column: 6, scope: !1417)
!1494 = !DILocation(line: 273, column: 6, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 273, column: 6)
!1496 = !DILocation(line: 273, column: 6, scope: !1417)
!1497 = !DILocation(line: 274, column: 3, scope: !1495)
!1498 = !DILocation(line: 276, column: 14, scope: !1417)
!1499 = !DILocation(line: 276, column: 19, scope: !1417)
!1500 = !DILocation(line: 276, column: 12, scope: !1417)
!1501 = !DILocation(line: 277, column: 33, scope: !1417)
!1502 = !DILocation(line: 277, column: 2, scope: !1417)
!1503 = !DILocation(line: 277, column: 8, scope: !1417)
!1504 = !DILocation(line: 277, column: 12, scope: !1417)
!1505 = !DILocation(line: 277, column: 17, scope: !1417)
!1506 = !DILocation(line: 277, column: 31, scope: !1417)
!1507 = !DILocation(line: 278, column: 32, scope: !1417)
!1508 = !DILocation(line: 278, column: 37, scope: !1417)
!1509 = !DILocation(line: 278, column: 2, scope: !1417)
!1510 = !DILocation(line: 278, column: 8, scope: !1417)
!1511 = !DILocation(line: 278, column: 12, scope: !1417)
!1512 = !DILocation(line: 278, column: 17, scope: !1417)
!1513 = !DILocation(line: 278, column: 30, scope: !1417)
!1514 = !DILocation(line: 279, column: 33, scope: !1417)
!1515 = !DILocation(line: 279, column: 38, scope: !1417)
!1516 = !DILocation(line: 279, column: 2, scope: !1417)
!1517 = !DILocation(line: 279, column: 8, scope: !1417)
!1518 = !DILocation(line: 279, column: 12, scope: !1417)
!1519 = !DILocation(line: 279, column: 17, scope: !1417)
!1520 = !DILocation(line: 279, column: 31, scope: !1417)
!1521 = !DILocation(line: 281, column: 25, scope: !1417)
!1522 = !DILocation(line: 281, column: 30, scope: !1417)
!1523 = !DILocation(line: 281, column: 2, scope: !1417)
!1524 = !DILocation(line: 281, column: 8, scope: !1417)
!1525 = !DILocation(line: 281, column: 12, scope: !1417)
!1526 = !DILocation(line: 281, column: 23, scope: !1417)
!1527 = !DILocation(line: 283, column: 3, scope: !1417)
!1528 = !DILocation(line: 284, column: 6, scope: !1417)
!1529 = !DILocation(line: 284, column: 20, scope: !1417)
!1530 = !DILocation(line: 284, column: 47, scope: !1417)
!1531 = !DILocation(line: 284, column: 18, scope: !1417)
!1532 = !DILocation(line: 284, column: 16, scope: !1417)
!1533 = !DILocation(line: 284, column: 3, scope: !1417)
!1534 = !DILocation(line: 285, column: 5, scope: !1417)
!1535 = !DILocation(line: 285, column: 10, scope: !1417)
!1536 = !DILocation(line: 285, column: 24, scope: !1417)
!1537 = !DILocation(line: 285, column: 3, scope: !1417)
!1538 = !DILocation(line: 282, column: 2, scope: !1417)
!1539 = !DILocation(line: 282, column: 8, scope: !1417)
!1540 = !DILocation(line: 282, column: 12, scope: !1417)
!1541 = !DILocation(line: 282, column: 21, scope: !1417)
!1542 = !DILocation(line: 288, column: 3, scope: !1417)
!1543 = !DILocation(line: 289, column: 7, scope: !1417)
!1544 = !DILocation(line: 289, column: 17, scope: !1417)
!1545 = !DILocation(line: 290, column: 8, scope: !1417)
!1546 = !DILocation(line: 290, column: 35, scope: !1417)
!1547 = !DILocation(line: 290, column: 6, scope: !1417)
!1548 = !DILocation(line: 289, column: 46, scope: !1417)
!1549 = !DILocation(line: 289, column: 3, scope: !1417)
!1550 = !DILocation(line: 291, column: 5, scope: !1417)
!1551 = !DILocation(line: 291, column: 10, scope: !1417)
!1552 = !DILocation(line: 291, column: 24, scope: !1417)
!1553 = !DILocation(line: 291, column: 3, scope: !1417)
!1554 = !DILocation(line: 287, column: 2, scope: !1417)
!1555 = !DILocation(line: 287, column: 8, scope: !1417)
!1556 = !DILocation(line: 287, column: 12, scope: !1417)
!1557 = !DILocation(line: 287, column: 17, scope: !1417)
!1558 = !DILocation(line: 287, column: 29, scope: !1417)
!1559 = !DILocation(line: 293, column: 2, scope: !1417)
!1560 = !DILocation(line: 293, column: 8, scope: !1417)
!1561 = !DILocation(line: 293, column: 12, scope: !1417)
!1562 = !DILocation(line: 293, column: 17, scope: !1417)
!1563 = !DILocation(line: 294, column: 2, scope: !1417)
!1564 = !DILocation(line: 294, column: 8, scope: !1417)
!1565 = !DILocation(line: 294, column: 12, scope: !1417)
!1566 = !DILocation(line: 294, column: 19, scope: !1417)
!1567 = !DILocation(line: 295, column: 2, scope: !1417)
!1568 = !DILocation(line: 295, column: 8, scope: !1417)
!1569 = !DILocation(line: 295, column: 12, scope: !1417)
!1570 = !DILocation(line: 295, column: 18, scope: !1417)
!1571 = !DILocation(line: 296, column: 2, scope: !1417)
!1572 = !DILocation(line: 296, column: 8, scope: !1417)
!1573 = !DILocation(line: 296, column: 12, scope: !1417)
!1574 = !DILocation(line: 296, column: 19, scope: !1417)
!1575 = !DILocation(line: 297, column: 2, scope: !1417)
!1576 = !DILocation(line: 297, column: 8, scope: !1417)
!1577 = !DILocation(line: 297, column: 12, scope: !1417)
!1578 = !DILocation(line: 297, column: 21, scope: !1417)
!1579 = !DILocation(line: 298, column: 2, scope: !1417)
!1580 = !DILocation(line: 298, column: 8, scope: !1417)
!1581 = !DILocation(line: 298, column: 12, scope: !1417)
!1582 = !DILocation(line: 298, column: 22, scope: !1417)
!1583 = !DILocation(line: 299, column: 2, scope: !1417)
!1584 = !DILocation(line: 299, column: 8, scope: !1417)
!1585 = !DILocation(line: 299, column: 12, scope: !1417)
!1586 = !DILocation(line: 299, column: 21, scope: !1417)
!1587 = !DILocation(line: 301, column: 2, scope: !1417)
!1588 = !DILocation(line: 301, column: 8, scope: !1417)
!1589 = !DILocation(line: 301, column: 13, scope: !1417)
!1590 = !DILocation(line: 303, column: 32, scope: !1417)
!1591 = !DILocation(line: 303, column: 38, scope: !1417)
!1592 = !DILocation(line: 303, column: 8, scope: !1417)
!1593 = !DILocation(line: 303, column: 6, scope: !1417)
!1594 = !DILocation(line: 304, column: 6, scope: !1433)
!1595 = !DILocation(line: 304, column: 6, scope: !1417)
!1596 = !DILocation(line: 304, column: 11, scope: !1433)
!1597 = !DILocation(line: 305, column: 1, scope: !1432)
!1598 = !DILocation(line: 306, column: 35, scope: !1432)
!1599 = !DILocation(line: 306, column: 3, scope: !1432)
!1600 = !DILocation(line: 307, column: 2, scope: !1432)
!1601 = !DILocation(line: 308, column: 9, scope: !1417)
!1602 = !DILocation(line: 308, column: 2, scope: !1417)
!1603 = !DILocation(line: 309, column: 1, scope: !1417)
!1604 = !DISubprogram(name: "crypto_check_attr_type", scope: !638, file: !638, line: 166, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!95, !1254, !983, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!1608 = distinct !DISubprogram(name: "kzalloc", scope: !25, file: !25, line: 719, type: !1609, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!35, !189, !1081}
!1611 = !{!1612, !1613}
!1612 = !DILocalVariable(name: "size", arg: 1, scope: !1608, file: !25, line: 719, type: !189)
!1613 = !DILocalVariable(name: "flags", arg: 2, scope: !1608, file: !25, line: 719, type: !1081)
!1614 = !DILocation(line: 719, column: 52, scope: !1608)
!1615 = !DILocation(line: 719, column: 64, scope: !1608)
!1616 = !DILocation(line: 721, column: 17, scope: !1608)
!1617 = !DILocation(line: 721, column: 23, scope: !1608)
!1618 = !DILocation(line: 721, column: 29, scope: !1608)
!1619 = !DILocation(line: 721, column: 9, scope: !1608)
!1620 = !DILocation(line: 721, column: 2, scope: !1608)
!1621 = distinct !DISubprogram(name: "shash_instance_ctx", scope: !1122, file: !1122, line: 261, type: !1622, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!35, !1120}
!1624 = !{!1625}
!1625 = !DILocalVariable(name: "inst", arg: 1, scope: !1621, file: !1122, line: 261, type: !1120)
!1626 = !DILocation(line: 261, column: 63, scope: !1621)
!1627 = !DILocation(line: 263, column: 51, scope: !1621)
!1628 = !DILocation(line: 263, column: 29, scope: !1621)
!1629 = !DILocation(line: 263, column: 9, scope: !1621)
!1630 = !DILocation(line: 263, column: 2, scope: !1621)
!1631 = distinct !DISubprogram(name: "crypto_grab_cipher", scope: !1352, file: !1352, line: 185, type: !1632, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!95, !1423, !1203, !60, !983, !983}
!1634 = !{!1635, !1636, !1637, !1638, !1639}
!1635 = !DILocalVariable(name: "spawn", arg: 1, scope: !1631, file: !1352, line: 185, type: !1423)
!1636 = !DILocalVariable(name: "inst", arg: 2, scope: !1631, file: !1352, line: 186, type: !1203)
!1637 = !DILocalVariable(name: "name", arg: 3, scope: !1631, file: !1352, line: 187, type: !60)
!1638 = !DILocalVariable(name: "type", arg: 4, scope: !1631, file: !1352, line: 187, type: !983)
!1639 = !DILocalVariable(name: "mask", arg: 5, scope: !1631, file: !1352, line: 187, type: !983)
!1640 = !DILocation(line: 185, column: 66, scope: !1631)
!1641 = !DILocation(line: 186, column: 34, scope: !1631)
!1642 = !DILocation(line: 187, column: 22, scope: !1631)
!1643 = !DILocation(line: 187, column: 32, scope: !1631)
!1644 = !DILocation(line: 187, column: 42, scope: !1631)
!1645 = !DILocation(line: 189, column: 7, scope: !1631)
!1646 = !DILocation(line: 190, column: 7, scope: !1631)
!1647 = !DILocation(line: 191, column: 7, scope: !1631)
!1648 = !DILocation(line: 192, column: 28, scope: !1631)
!1649 = !DILocation(line: 192, column: 35, scope: !1631)
!1650 = !DILocation(line: 192, column: 41, scope: !1631)
!1651 = !DILocation(line: 192, column: 47, scope: !1631)
!1652 = !DILocation(line: 192, column: 53, scope: !1631)
!1653 = !DILocation(line: 192, column: 59, scope: !1631)
!1654 = !DILocation(line: 192, column: 9, scope: !1631)
!1655 = !DILocation(line: 192, column: 2, scope: !1631)
!1656 = distinct !DISubprogram(name: "shash_crypto_instance", scope: !1122, file: !1122, line: 243, type: !1657, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1203, !1120}
!1659 = !{!1660}
!1660 = !DILocalVariable(name: "inst", arg: 1, scope: !1656, file: !1122, line: 244, type: !1120)
!1661 = !DILocation(line: 244, column: 25, scope: !1656)
!1662 = !DILocation(line: 246, column: 10, scope: !1656)
!1663 = !DILocation(line: 246, column: 16, scope: !1656)
!1664 = !DILocation(line: 246, column: 18, scope: !1656)
!1665 = !DILocation(line: 246, column: 2, scope: !1656)
!1666 = !DISubprogram(name: "crypto_attr_alg_name", scope: !638, file: !638, line: 167, type: !1667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!60, !1255}
!1669 = distinct !DISubprogram(name: "crypto_spawn_cipher_alg", scope: !1352, file: !1352, line: 200, type: !1670, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1672)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1167, !1423}
!1672 = !{!1673}
!1673 = !DILocalVariable(name: "spawn", arg: 1, scope: !1669, file: !1352, line: 201, type: !1423)
!1674 = !DILocation(line: 201, column: 36, scope: !1669)
!1675 = !DILocation(line: 203, column: 9, scope: !1669)
!1676 = !DILocation(line: 203, column: 16, scope: !1669)
!1677 = !DILocation(line: 203, column: 21, scope: !1669)
!1678 = !DILocation(line: 203, column: 2, scope: !1669)
!1679 = !DISubprogram(name: "crypto_inst_setname", scope: !638, file: !638, line: 168, type: !1680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!95, !1203, !60, !1167}
!1682 = distinct !DISubprogram(name: "crypto_tfm_ctx_alignment", scope: !1143, file: !1143, line: 490, type: !1683, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!7}
!1685 = !{!1686}
!1686 = !DILocalVariable(name: "tfm", scope: !1682, file: !1143, line: 492, type: !1176)
!1687 = !DILocation(line: 492, column: 2, scope: !1682)
!1688 = !DILocation(line: 492, column: 21, scope: !1682)
!1689 = !DILocation(line: 494, column: 1, scope: !1682)
!1690 = !DILocation(line: 493, column: 2, scope: !1682)
!1691 = distinct !DISubprogram(name: "crypto_cmac_digest_init", scope: !3, file: !3, line: 105, type: !1285, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1692)
!1692 = !{!1693, !1694, !1695, !1702, !1703}
!1693 = !DILocalVariable(name: "pdesc", arg: 1, scope: !1691, file: !3, line: 105, type: !1287)
!1694 = !DILocalVariable(name: "alignmask", scope: !1691, file: !3, line: 107, type: !192)
!1695 = !DILocalVariable(name: "ctx", scope: !1691, file: !3, line: 108, type: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmac_desc_ctx", file: !3, line: 45, size: 32, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1697, file: !3, line: 46, baseType: !7, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1697, file: !3, line: 47, baseType: !1701, offset: 32)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, elements: !476)
!1702 = !DILocalVariable(name: "bs", scope: !1691, file: !3, line: 109, type: !95)
!1703 = !DILocalVariable(name: "prev", scope: !1691, file: !3, line: 110, type: !1089)
!1704 = !DILocation(line: 105, column: 55, scope: !1691)
!1705 = !DILocation(line: 107, column: 2, scope: !1691)
!1706 = !DILocation(line: 107, column: 16, scope: !1691)
!1707 = !DILocation(line: 107, column: 51, scope: !1691)
!1708 = !DILocation(line: 107, column: 58, scope: !1691)
!1709 = !DILocation(line: 107, column: 28, scope: !1691)
!1710 = !DILocation(line: 108, column: 2, scope: !1691)
!1711 = !DILocation(line: 108, column: 24, scope: !1691)
!1712 = !DILocation(line: 108, column: 45, scope: !1691)
!1713 = !DILocation(line: 108, column: 30, scope: !1691)
!1714 = !DILocation(line: 109, column: 2, scope: !1691)
!1715 = !DILocation(line: 109, column: 6, scope: !1691)
!1716 = !DILocation(line: 109, column: 34, scope: !1691)
!1717 = !DILocation(line: 109, column: 41, scope: !1691)
!1718 = !DILocation(line: 109, column: 11, scope: !1691)
!1719 = !DILocation(line: 110, column: 2, scope: !1691)
!1720 = !DILocation(line: 110, column: 6, scope: !1691)
!1721 = !DILocation(line: 110, column: 13, scope: !1691)
!1722 = !DILocation(line: 110, column: 58, scope: !1691)
!1723 = !DILocation(line: 110, column: 56, scope: !1691)
!1724 = !DILocation(line: 112, column: 2, scope: !1691)
!1725 = !DILocation(line: 112, column: 7, scope: !1691)
!1726 = !DILocation(line: 112, column: 11, scope: !1691)
!1727 = !DILocation(line: 113, column: 9, scope: !1691)
!1728 = !DILocation(line: 113, column: 18, scope: !1691)
!1729 = !DILocation(line: 113, column: 2, scope: !1691)
!1730 = !DILocation(line: 116, column: 1, scope: !1691)
!1731 = !DILocation(line: 115, column: 2, scope: !1691)
!1732 = distinct !DISubprogram(name: "crypto_cmac_digest_update", scope: !3, file: !3, line: 118, type: !1299, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1745, !1746, !1747, !1748, !1749}
!1734 = !DILocalVariable(name: "pdesc", arg: 1, scope: !1732, file: !3, line: 118, type: !1287)
!1735 = !DILocalVariable(name: "p", arg: 2, scope: !1732, file: !3, line: 118, type: !1090)
!1736 = !DILocalVariable(name: "len", arg: 3, scope: !1732, file: !3, line: 119, type: !7)
!1737 = !DILocalVariable(name: "parent", scope: !1732, file: !3, line: 121, type: !1291)
!1738 = !DILocalVariable(name: "alignmask", scope: !1732, file: !3, line: 122, type: !192)
!1739 = !DILocalVariable(name: "tctx", scope: !1732, file: !3, line: 123, type: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmac_tfm_ctx", file: !3, line: 29, size: 64, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1741, file: !3, line: 30, baseType: !1350, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1741, file: !3, line: 31, baseType: !1701, offset: 64)
!1745 = !DILocalVariable(name: "ctx", scope: !1732, file: !3, line: 124, type: !1696)
!1746 = !DILocalVariable(name: "tfm", scope: !1732, file: !3, line: 125, type: !1350)
!1747 = !DILocalVariable(name: "bs", scope: !1732, file: !3, line: 126, type: !95)
!1748 = !DILocalVariable(name: "odds", scope: !1732, file: !3, line: 127, type: !1089)
!1749 = !DILocalVariable(name: "prev", scope: !1732, file: !3, line: 128, type: !1089)
!1750 = !DILocation(line: 118, column: 57, scope: !1732)
!1751 = !DILocation(line: 118, column: 74, scope: !1732)
!1752 = !DILocation(line: 119, column: 23, scope: !1732)
!1753 = !DILocation(line: 121, column: 2, scope: !1732)
!1754 = !DILocation(line: 121, column: 23, scope: !1732)
!1755 = !DILocation(line: 121, column: 32, scope: !1732)
!1756 = !DILocation(line: 121, column: 39, scope: !1732)
!1757 = !DILocation(line: 122, column: 2, scope: !1732)
!1758 = !DILocation(line: 122, column: 16, scope: !1732)
!1759 = !DILocation(line: 122, column: 51, scope: !1732)
!1760 = !DILocation(line: 122, column: 28, scope: !1732)
!1761 = !DILocation(line: 123, column: 2, scope: !1732)
!1762 = !DILocation(line: 123, column: 23, scope: !1732)
!1763 = !DILocation(line: 123, column: 47, scope: !1732)
!1764 = !DILocation(line: 123, column: 30, scope: !1732)
!1765 = !DILocation(line: 124, column: 2, scope: !1732)
!1766 = !DILocation(line: 124, column: 24, scope: !1732)
!1767 = !DILocation(line: 124, column: 45, scope: !1732)
!1768 = !DILocation(line: 124, column: 30, scope: !1732)
!1769 = !DILocation(line: 125, column: 2, scope: !1732)
!1770 = !DILocation(line: 125, column: 24, scope: !1732)
!1771 = !DILocation(line: 125, column: 30, scope: !1732)
!1772 = !DILocation(line: 125, column: 36, scope: !1732)
!1773 = !DILocation(line: 126, column: 2, scope: !1732)
!1774 = !DILocation(line: 126, column: 6, scope: !1732)
!1775 = !DILocation(line: 126, column: 34, scope: !1732)
!1776 = !DILocation(line: 126, column: 11, scope: !1732)
!1777 = !DILocation(line: 127, column: 2, scope: !1732)
!1778 = !DILocation(line: 127, column: 6, scope: !1732)
!1779 = !DILocation(line: 127, column: 13, scope: !1732)
!1780 = !DILocation(line: 128, column: 2, scope: !1732)
!1781 = !DILocation(line: 128, column: 6, scope: !1732)
!1782 = !DILocation(line: 128, column: 13, scope: !1732)
!1783 = !DILocation(line: 128, column: 20, scope: !1732)
!1784 = !DILocation(line: 128, column: 18, scope: !1732)
!1785 = !DILocation(line: 131, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 131, column: 6)
!1787 = !DILocation(line: 131, column: 12, scope: !1786)
!1788 = !DILocation(line: 131, column: 18, scope: !1786)
!1789 = !DILocation(line: 131, column: 16, scope: !1786)
!1790 = !DILocation(line: 131, column: 26, scope: !1786)
!1791 = !DILocation(line: 131, column: 23, scope: !1786)
!1792 = !DILocation(line: 131, column: 6, scope: !1732)
!1793 = !DILocation(line: 132, column: 10, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 131, column: 30)
!1795 = !DILocation(line: 132, column: 17, scope: !1794)
!1796 = !DILocation(line: 132, column: 22, scope: !1794)
!1797 = !DILocation(line: 132, column: 15, scope: !1794)
!1798 = !DILocation(line: 132, column: 27, scope: !1794)
!1799 = !DILocation(line: 132, column: 30, scope: !1794)
!1800 = !DILocation(line: 132, column: 3, scope: !1794)
!1801 = !DILocation(line: 133, column: 15, scope: !1794)
!1802 = !DILocation(line: 133, column: 3, scope: !1794)
!1803 = !DILocation(line: 133, column: 8, scope: !1794)
!1804 = !DILocation(line: 133, column: 12, scope: !1794)
!1805 = !DILocation(line: 134, column: 3, scope: !1794)
!1806 = !DILocation(line: 138, column: 9, scope: !1732)
!1807 = !DILocation(line: 138, column: 16, scope: !1732)
!1808 = !DILocation(line: 138, column: 21, scope: !1732)
!1809 = !DILocation(line: 138, column: 14, scope: !1732)
!1810 = !DILocation(line: 138, column: 26, scope: !1732)
!1811 = !DILocation(line: 138, column: 29, scope: !1732)
!1812 = !DILocation(line: 138, column: 34, scope: !1732)
!1813 = !DILocation(line: 138, column: 39, scope: !1732)
!1814 = !DILocation(line: 138, column: 32, scope: !1732)
!1815 = !DILocation(line: 138, column: 2, scope: !1732)
!1816 = !DILocation(line: 139, column: 9, scope: !1732)
!1817 = !DILocation(line: 139, column: 14, scope: !1732)
!1818 = !DILocation(line: 139, column: 19, scope: !1732)
!1819 = !DILocation(line: 139, column: 12, scope: !1732)
!1820 = !DILocation(line: 139, column: 6, scope: !1732)
!1821 = !DILocation(line: 140, column: 7, scope: !1732)
!1822 = !DILocation(line: 140, column: 12, scope: !1732)
!1823 = !DILocation(line: 140, column: 17, scope: !1732)
!1824 = !DILocation(line: 140, column: 10, scope: !1732)
!1825 = !DILocation(line: 140, column: 4, scope: !1732)
!1826 = !DILocation(line: 142, column: 13, scope: !1732)
!1827 = !DILocation(line: 142, column: 19, scope: !1732)
!1828 = !DILocation(line: 142, column: 25, scope: !1732)
!1829 = !DILocation(line: 142, column: 2, scope: !1732)
!1830 = !DILocation(line: 143, column: 28, scope: !1732)
!1831 = !DILocation(line: 143, column: 33, scope: !1732)
!1832 = !DILocation(line: 143, column: 39, scope: !1732)
!1833 = !DILocation(line: 143, column: 2, scope: !1732)
!1834 = !DILocation(line: 146, column: 2, scope: !1732)
!1835 = !DILocation(line: 146, column: 7, scope: !1732)
!1836 = !DILocation(line: 146, column: 11, scope: !1732)
!1837 = !DILocation(line: 149, column: 2, scope: !1732)
!1838 = !DILocation(line: 149, column: 9, scope: !1732)
!1839 = !DILocation(line: 149, column: 15, scope: !1732)
!1840 = !DILocation(line: 149, column: 13, scope: !1732)
!1841 = !DILocation(line: 150, column: 14, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 149, column: 19)
!1843 = !DILocation(line: 150, column: 20, scope: !1842)
!1844 = !DILocation(line: 150, column: 23, scope: !1842)
!1845 = !DILocation(line: 150, column: 3, scope: !1842)
!1846 = !DILocation(line: 151, column: 29, scope: !1842)
!1847 = !DILocation(line: 151, column: 34, scope: !1842)
!1848 = !DILocation(line: 151, column: 40, scope: !1842)
!1849 = !DILocation(line: 151, column: 3, scope: !1842)
!1850 = !DILocation(line: 152, column: 8, scope: !1842)
!1851 = !DILocation(line: 152, column: 5, scope: !1842)
!1852 = !DILocation(line: 153, column: 10, scope: !1842)
!1853 = !DILocation(line: 153, column: 7, scope: !1842)
!1854 = distinct !{!1854, !1837, !1855, !1856, !1857}
!1855 = !DILocation(line: 154, column: 2, scope: !1732)
!1856 = !{!"llvm.loop.mustprogress"}
!1857 = !{!"llvm.loop.unroll.disable"}
!1858 = !DILocation(line: 157, column: 6, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 157, column: 6)
!1860 = !DILocation(line: 157, column: 6, scope: !1732)
!1861 = !DILocation(line: 158, column: 10, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 157, column: 11)
!1863 = !DILocation(line: 158, column: 16, scope: !1862)
!1864 = !DILocation(line: 158, column: 19, scope: !1862)
!1865 = !DILocation(line: 158, column: 3, scope: !1862)
!1866 = !DILocation(line: 159, column: 14, scope: !1862)
!1867 = !DILocation(line: 159, column: 3, scope: !1862)
!1868 = !DILocation(line: 159, column: 8, scope: !1862)
!1869 = !DILocation(line: 159, column: 12, scope: !1862)
!1870 = !DILocation(line: 160, column: 2, scope: !1862)
!1871 = !DILocation(line: 162, column: 2, scope: !1732)
!1872 = !DILocation(line: 163, column: 1, scope: !1732)
!1873 = distinct !DISubprogram(name: "crypto_cmac_digest_final", scope: !3, file: !3, line: 165, type: !1303, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1890}
!1875 = !DILocalVariable(name: "pdesc", arg: 1, scope: !1873, file: !3, line: 165, type: !1287)
!1876 = !DILocalVariable(name: "out", arg: 2, scope: !1873, file: !3, line: 165, type: !1089)
!1877 = !DILocalVariable(name: "parent", scope: !1873, file: !3, line: 167, type: !1291)
!1878 = !DILocalVariable(name: "alignmask", scope: !1873, file: !3, line: 168, type: !192)
!1879 = !DILocalVariable(name: "tctx", scope: !1873, file: !3, line: 169, type: !1740)
!1880 = !DILocalVariable(name: "ctx", scope: !1873, file: !3, line: 170, type: !1696)
!1881 = !DILocalVariable(name: "tfm", scope: !1873, file: !3, line: 171, type: !1350)
!1882 = !DILocalVariable(name: "bs", scope: !1873, file: !3, line: 172, type: !95)
!1883 = !DILocalVariable(name: "consts", scope: !1873, file: !3, line: 173, type: !1089)
!1884 = !DILocalVariable(name: "odds", scope: !1873, file: !3, line: 175, type: !1089)
!1885 = !DILocalVariable(name: "prev", scope: !1873, file: !3, line: 176, type: !1089)
!1886 = !DILocalVariable(name: "offset", scope: !1873, file: !3, line: 177, type: !7)
!1887 = !DILocalVariable(name: "rlen", scope: !1888, file: !3, line: 180, type: !7)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 179, column: 22)
!1889 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 179, column: 6)
!1890 = !DILocalVariable(name: "p", scope: !1888, file: !3, line: 181, type: !1089)
!1891 = !DILocation(line: 165, column: 56, scope: !1873)
!1892 = !DILocation(line: 165, column: 67, scope: !1873)
!1893 = !DILocation(line: 167, column: 2, scope: !1873)
!1894 = !DILocation(line: 167, column: 23, scope: !1873)
!1895 = !DILocation(line: 167, column: 32, scope: !1873)
!1896 = !DILocation(line: 167, column: 39, scope: !1873)
!1897 = !DILocation(line: 168, column: 2, scope: !1873)
!1898 = !DILocation(line: 168, column: 16, scope: !1873)
!1899 = !DILocation(line: 168, column: 51, scope: !1873)
!1900 = !DILocation(line: 168, column: 28, scope: !1873)
!1901 = !DILocation(line: 169, column: 2, scope: !1873)
!1902 = !DILocation(line: 169, column: 23, scope: !1873)
!1903 = !DILocation(line: 169, column: 47, scope: !1873)
!1904 = !DILocation(line: 169, column: 30, scope: !1873)
!1905 = !DILocation(line: 170, column: 2, scope: !1873)
!1906 = !DILocation(line: 170, column: 24, scope: !1873)
!1907 = !DILocation(line: 170, column: 45, scope: !1873)
!1908 = !DILocation(line: 170, column: 30, scope: !1873)
!1909 = !DILocation(line: 171, column: 2, scope: !1873)
!1910 = !DILocation(line: 171, column: 24, scope: !1873)
!1911 = !DILocation(line: 171, column: 30, scope: !1873)
!1912 = !DILocation(line: 171, column: 36, scope: !1873)
!1913 = !DILocation(line: 172, column: 2, scope: !1873)
!1914 = !DILocation(line: 172, column: 6, scope: !1873)
!1915 = !DILocation(line: 172, column: 34, scope: !1873)
!1916 = !DILocation(line: 172, column: 11, scope: !1873)
!1917 = !DILocation(line: 173, column: 2, scope: !1873)
!1918 = !DILocation(line: 173, column: 6, scope: !1873)
!1919 = !DILocation(line: 173, column: 15, scope: !1873)
!1920 = !DILocation(line: 175, column: 2, scope: !1873)
!1921 = !DILocation(line: 175, column: 6, scope: !1873)
!1922 = !DILocation(line: 175, column: 13, scope: !1873)
!1923 = !DILocation(line: 176, column: 2, scope: !1873)
!1924 = !DILocation(line: 176, column: 6, scope: !1873)
!1925 = !DILocation(line: 176, column: 13, scope: !1873)
!1926 = !DILocation(line: 176, column: 20, scope: !1873)
!1927 = !DILocation(line: 176, column: 18, scope: !1873)
!1928 = !DILocation(line: 177, column: 2, scope: !1873)
!1929 = !DILocation(line: 177, column: 15, scope: !1873)
!1930 = !DILocation(line: 179, column: 6, scope: !1889)
!1931 = !DILocation(line: 179, column: 11, scope: !1889)
!1932 = !DILocation(line: 179, column: 18, scope: !1889)
!1933 = !DILocation(line: 179, column: 15, scope: !1889)
!1934 = !DILocation(line: 179, column: 6, scope: !1873)
!1935 = !DILocation(line: 180, column: 3, scope: !1888)
!1936 = !DILocation(line: 180, column: 16, scope: !1888)
!1937 = !DILocation(line: 181, column: 3, scope: !1888)
!1938 = !DILocation(line: 181, column: 7, scope: !1888)
!1939 = !DILocation(line: 181, column: 11, scope: !1888)
!1940 = !DILocation(line: 181, column: 18, scope: !1888)
!1941 = !DILocation(line: 181, column: 23, scope: !1888)
!1942 = !DILocation(line: 181, column: 16, scope: !1888)
!1943 = !DILocation(line: 183, column: 4, scope: !1888)
!1944 = !DILocation(line: 183, column: 6, scope: !1888)
!1945 = !DILocation(line: 184, column: 4, scope: !1888)
!1946 = !DILocation(line: 186, column: 10, scope: !1888)
!1947 = !DILocation(line: 186, column: 15, scope: !1888)
!1948 = !DILocation(line: 186, column: 20, scope: !1888)
!1949 = !DILocation(line: 186, column: 13, scope: !1888)
!1950 = !DILocation(line: 186, column: 24, scope: !1888)
!1951 = !DILocation(line: 186, column: 8, scope: !1888)
!1952 = !DILocation(line: 187, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 187, column: 7)
!1954 = !DILocation(line: 187, column: 7, scope: !1888)
!1955 = !DILocation(line: 188, column: 11, scope: !1953)
!1956 = !DILocation(line: 188, column: 17, scope: !1953)
!1957 = !DILocation(line: 188, column: 4, scope: !1953)
!1958 = !DILocation(line: 190, column: 13, scope: !1888)
!1959 = !DILocation(line: 190, column: 10, scope: !1888)
!1960 = !DILocation(line: 191, column: 2, scope: !1889)
!1961 = !DILocation(line: 191, column: 2, scope: !1888)
!1962 = !DILocation(line: 193, column: 13, scope: !1873)
!1963 = !DILocation(line: 193, column: 19, scope: !1873)
!1964 = !DILocation(line: 193, column: 25, scope: !1873)
!1965 = !DILocation(line: 193, column: 2, scope: !1873)
!1966 = !DILocation(line: 194, column: 13, scope: !1873)
!1967 = !DILocation(line: 194, column: 19, scope: !1873)
!1968 = !DILocation(line: 194, column: 28, scope: !1873)
!1969 = !DILocation(line: 194, column: 26, scope: !1873)
!1970 = !DILocation(line: 194, column: 36, scope: !1873)
!1971 = !DILocation(line: 194, column: 2, scope: !1873)
!1972 = !DILocation(line: 196, column: 28, scope: !1873)
!1973 = !DILocation(line: 196, column: 33, scope: !1873)
!1974 = !DILocation(line: 196, column: 38, scope: !1873)
!1975 = !DILocation(line: 196, column: 2, scope: !1873)
!1976 = !DILocation(line: 199, column: 1, scope: !1873)
!1977 = !DILocation(line: 198, column: 2, scope: !1873)
!1978 = distinct !DISubprogram(name: "crypto_cmac_digest_setkey", scope: !3, file: !3, line: 50, type: !1320, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1979)
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1985, !1986, !1988, !1990, !1991, !1992, !1993}
!1980 = !DILocalVariable(name: "parent", arg: 1, scope: !1978, file: !3, line: 50, type: !1291)
!1981 = !DILocalVariable(name: "inkey", arg: 2, scope: !1978, file: !3, line: 51, type: !1090)
!1982 = !DILocalVariable(name: "keylen", arg: 3, scope: !1978, file: !3, line: 51, type: !7)
!1983 = !DILocalVariable(name: "alignmask", scope: !1978, file: !3, line: 53, type: !192)
!1984 = !DILocalVariable(name: "ctx", scope: !1978, file: !3, line: 54, type: !1740)
!1985 = !DILocalVariable(name: "bs", scope: !1978, file: !3, line: 55, type: !7)
!1986 = !DILocalVariable(name: "consts", scope: !1978, file: !3, line: 56, type: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1988 = !DILocalVariable(name: "_const", scope: !1978, file: !3, line: 58, type: !1989)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 128, elements: !855)
!1990 = !DILocalVariable(name: "i", scope: !1978, file: !3, line: 59, type: !95)
!1991 = !DILocalVariable(name: "err", scope: !1978, file: !3, line: 59, type: !95)
!1992 = !DILocalVariable(name: "msb_mask", scope: !1978, file: !3, line: 60, type: !100)
!1993 = !DILocalVariable(name: "gfmask", scope: !1978, file: !3, line: 60, type: !100)
!1994 = !DILocation(line: 50, column: 59, scope: !1978)
!1995 = !DILocation(line: 51, column: 20, scope: !1978)
!1996 = !DILocation(line: 51, column: 40, scope: !1978)
!1997 = !DILocation(line: 53, column: 2, scope: !1978)
!1998 = !DILocation(line: 53, column: 16, scope: !1978)
!1999 = !DILocation(line: 53, column: 51, scope: !1978)
!2000 = !DILocation(line: 53, column: 28, scope: !1978)
!2001 = !DILocation(line: 54, column: 2, scope: !1978)
!2002 = !DILocation(line: 54, column: 23, scope: !1978)
!2003 = !DILocation(line: 54, column: 46, scope: !1978)
!2004 = !DILocation(line: 54, column: 29, scope: !1978)
!2005 = !DILocation(line: 55, column: 2, scope: !1978)
!2006 = !DILocation(line: 55, column: 15, scope: !1978)
!2007 = !DILocation(line: 55, column: 43, scope: !1978)
!2008 = !DILocation(line: 55, column: 20, scope: !1978)
!2009 = !DILocation(line: 56, column: 2, scope: !1978)
!2010 = !DILocation(line: 56, column: 10, scope: !1978)
!2011 = !DILocation(line: 56, column: 19, scope: !1978)
!2012 = !DILocation(line: 58, column: 2, scope: !1978)
!2013 = !DILocation(line: 58, column: 6, scope: !1978)
!2014 = !DILocation(line: 59, column: 2, scope: !1978)
!2015 = !DILocation(line: 59, column: 6, scope: !1978)
!2016 = !DILocation(line: 59, column: 9, scope: !1978)
!2017 = !DILocation(line: 60, column: 2, scope: !1978)
!2018 = !DILocation(line: 60, column: 5, scope: !1978)
!2019 = !DILocation(line: 60, column: 15, scope: !1978)
!2020 = !DILocation(line: 62, column: 29, scope: !1978)
!2021 = !DILocation(line: 62, column: 34, scope: !1978)
!2022 = !DILocation(line: 62, column: 41, scope: !1978)
!2023 = !DILocation(line: 62, column: 48, scope: !1978)
!2024 = !DILocation(line: 62, column: 8, scope: !1978)
!2025 = !DILocation(line: 62, column: 6, scope: !1978)
!2026 = !DILocation(line: 63, column: 6, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 63, column: 6)
!2028 = !DILocation(line: 63, column: 6, scope: !1978)
!2029 = !DILocation(line: 64, column: 10, scope: !2027)
!2030 = !DILocation(line: 64, column: 3, scope: !2027)
!2031 = !DILocation(line: 67, column: 9, scope: !1978)
!2032 = !DILocation(line: 67, column: 20, scope: !1978)
!2033 = !DILocation(line: 67, column: 2, scope: !1978)
!2034 = !DILocation(line: 68, column: 28, scope: !1978)
!2035 = !DILocation(line: 68, column: 33, scope: !1978)
!2036 = !DILocation(line: 68, column: 46, scope: !1978)
!2037 = !DILocation(line: 68, column: 60, scope: !1978)
!2038 = !DILocation(line: 68, column: 2, scope: !1978)
!2039 = !DILocation(line: 70, column: 10, scope: !1978)
!2040 = !DILocation(line: 70, column: 2, scope: !1978)
!2041 = !DILocation(line: 72, column: 10, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 70, column: 14)
!2043 = !DILocation(line: 73, column: 15, scope: !2042)
!2044 = !DILocation(line: 73, column: 3, scope: !2042)
!2045 = !DILocation(line: 73, column: 13, scope: !2042)
!2046 = !DILocation(line: 74, column: 15, scope: !2042)
!2047 = !DILocation(line: 74, column: 3, scope: !2042)
!2048 = !DILocation(line: 74, column: 13, scope: !2042)
!2049 = !DILocation(line: 77, column: 10, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 77, column: 3)
!2051 = !DILocation(line: 77, column: 8, scope: !2050)
!2052 = !DILocation(line: 77, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 77, column: 3)
!2054 = !DILocation(line: 77, column: 17, scope: !2053)
!2055 = !DILocation(line: 77, column: 3, scope: !2050)
!2056 = !DILocation(line: 78, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 77, column: 30)
!2058 = !DILocation(line: 78, column: 31, scope: !2057)
!2059 = !DILocation(line: 78, column: 40, scope: !2057)
!2060 = !DILocation(line: 78, column: 38, scope: !2057)
!2061 = !DILocation(line: 78, column: 15, scope: !2057)
!2062 = !DILocation(line: 78, column: 13, scope: !2057)
!2063 = !DILocation(line: 79, column: 17, scope: !2057)
!2064 = !DILocation(line: 79, column: 27, scope: !2057)
!2065 = !DILocation(line: 79, column: 36, scope: !2057)
!2066 = !DILocation(line: 79, column: 46, scope: !2057)
!2067 = !DILocation(line: 79, column: 33, scope: !2057)
!2068 = !DILocation(line: 79, column: 4, scope: !2057)
!2069 = !DILocation(line: 79, column: 14, scope: !2057)
!2070 = !DILocation(line: 80, column: 17, scope: !2057)
!2071 = !DILocation(line: 80, column: 27, scope: !2057)
!2072 = !DILocation(line: 80, column: 35, scope: !2057)
!2073 = !DILocation(line: 80, column: 33, scope: !2057)
!2074 = !DILocation(line: 80, column: 4, scope: !2057)
!2075 = !DILocation(line: 80, column: 14, scope: !2057)
!2076 = !DILocation(line: 82, column: 20, scope: !2057)
!2077 = !DILocation(line: 82, column: 4, scope: !2057)
!2078 = !DILocation(line: 82, column: 11, scope: !2057)
!2079 = !DILocation(line: 82, column: 13, scope: !2057)
!2080 = !DILocation(line: 82, column: 18, scope: !2057)
!2081 = !DILocation(line: 83, column: 20, scope: !2057)
!2082 = !DILocation(line: 83, column: 4, scope: !2057)
!2083 = !DILocation(line: 83, column: 11, scope: !2057)
!2084 = !DILocation(line: 83, column: 13, scope: !2057)
!2085 = !DILocation(line: 83, column: 18, scope: !2057)
!2086 = !DILocation(line: 84, column: 3, scope: !2057)
!2087 = !DILocation(line: 77, column: 24, scope: !2053)
!2088 = !DILocation(line: 77, column: 3, scope: !2053)
!2089 = distinct !{!2089, !2055, !2090, !1856, !1857}
!2090 = !DILocation(line: 84, column: 3, scope: !2050)
!2091 = !DILocation(line: 86, column: 3, scope: !2042)
!2092 = !DILocation(line: 88, column: 10, scope: !2042)
!2093 = !DILocation(line: 89, column: 15, scope: !2042)
!2094 = !DILocation(line: 89, column: 3, scope: !2042)
!2095 = !DILocation(line: 89, column: 13, scope: !2042)
!2096 = !DILocation(line: 92, column: 10, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 92, column: 3)
!2098 = !DILocation(line: 92, column: 8, scope: !2097)
!2099 = !DILocation(line: 92, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 92, column: 3)
!2101 = !DILocation(line: 92, column: 17, scope: !2100)
!2102 = !DILocation(line: 92, column: 3, scope: !2097)
!2103 = !DILocation(line: 93, column: 21, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 92, column: 27)
!2105 = !DILocation(line: 93, column: 31, scope: !2104)
!2106 = !DILocation(line: 93, column: 40, scope: !2104)
!2107 = !DILocation(line: 93, column: 38, scope: !2104)
!2108 = !DILocation(line: 93, column: 15, scope: !2104)
!2109 = !DILocation(line: 93, column: 13, scope: !2104)
!2110 = !DILocation(line: 94, column: 17, scope: !2104)
!2111 = !DILocation(line: 94, column: 27, scope: !2104)
!2112 = !DILocation(line: 94, column: 35, scope: !2104)
!2113 = !DILocation(line: 94, column: 33, scope: !2104)
!2114 = !DILocation(line: 94, column: 4, scope: !2104)
!2115 = !DILocation(line: 94, column: 14, scope: !2104)
!2116 = !DILocation(line: 96, column: 16, scope: !2104)
!2117 = !DILocation(line: 96, column: 4, scope: !2104)
!2118 = !DILocation(line: 96, column: 11, scope: !2104)
!2119 = !DILocation(line: 96, column: 14, scope: !2104)
!2120 = !DILocation(line: 97, column: 3, scope: !2104)
!2121 = !DILocation(line: 92, column: 23, scope: !2100)
!2122 = !DILocation(line: 92, column: 3, scope: !2100)
!2123 = distinct !{!2123, !2102, !2124, !1856, !1857}
!2124 = !DILocation(line: 97, column: 3, scope: !2097)
!2125 = !DILocation(line: 99, column: 3, scope: !2042)
!2126 = !DILocation(line: 102, column: 2, scope: !1978)
!2127 = !DILocation(line: 103, column: 1, scope: !1978)
!2128 = distinct !DISubprogram(name: "cmac_init_tfm", scope: !3, file: !3, line: 201, type: !1324, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2129)
!2129 = !{!2130, !2131, !2132, !2133, !2134}
!2130 = !DILocalVariable(name: "tfm", arg: 1, scope: !2128, file: !3, line: 201, type: !1291)
!2131 = !DILocalVariable(name: "inst", scope: !2128, file: !3, line: 203, type: !1120)
!2132 = !DILocalVariable(name: "ctx", scope: !2128, file: !3, line: 204, type: !1740)
!2133 = !DILocalVariable(name: "spawn", scope: !2128, file: !3, line: 205, type: !1423)
!2134 = !DILocalVariable(name: "cipher", scope: !2128, file: !3, line: 206, type: !1350)
!2135 = !DILocation(line: 201, column: 47, scope: !2128)
!2136 = !DILocation(line: 203, column: 2, scope: !2128)
!2137 = !DILocation(line: 203, column: 25, scope: !2128)
!2138 = !DILocation(line: 203, column: 51, scope: !2128)
!2139 = !DILocation(line: 203, column: 32, scope: !2128)
!2140 = !DILocation(line: 204, column: 2, scope: !2128)
!2141 = !DILocation(line: 204, column: 23, scope: !2128)
!2142 = !DILocation(line: 204, column: 46, scope: !2128)
!2143 = !DILocation(line: 204, column: 29, scope: !2128)
!2144 = !DILocation(line: 205, column: 2, scope: !2128)
!2145 = !DILocation(line: 205, column: 30, scope: !2128)
!2146 = !DILocation(line: 206, column: 2, scope: !2128)
!2147 = !DILocation(line: 206, column: 24, scope: !2128)
!2148 = !DILocation(line: 208, column: 29, scope: !2128)
!2149 = !DILocation(line: 208, column: 10, scope: !2128)
!2150 = !DILocation(line: 208, column: 8, scope: !2128)
!2151 = !DILocation(line: 209, column: 31, scope: !2128)
!2152 = !DILocation(line: 209, column: 11, scope: !2128)
!2153 = !DILocation(line: 209, column: 9, scope: !2128)
!2154 = !DILocation(line: 210, column: 13, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 210, column: 6)
!2156 = !DILocation(line: 210, column: 6, scope: !2155)
!2157 = !DILocation(line: 210, column: 6, scope: !2128)
!2158 = !DILocation(line: 211, column: 18, scope: !2155)
!2159 = !DILocation(line: 211, column: 10, scope: !2155)
!2160 = !DILocation(line: 211, column: 3, scope: !2155)
!2161 = !DILocation(line: 213, column: 15, scope: !2128)
!2162 = !DILocation(line: 213, column: 2, scope: !2128)
!2163 = !DILocation(line: 213, column: 7, scope: !2128)
!2164 = !DILocation(line: 213, column: 13, scope: !2128)
!2165 = !DILocation(line: 215, column: 2, scope: !2128)
!2166 = !DILocation(line: 216, column: 1, scope: !2128)
!2167 = distinct !DISubprogram(name: "cmac_clone_tfm", scope: !3, file: !3, line: 218, type: !1332, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2168)
!2168 = !{!2169, !2170, !2171, !2172, !2173}
!2169 = !DILocalVariable(name: "tfm", arg: 1, scope: !2167, file: !3, line: 218, type: !1291)
!2170 = !DILocalVariable(name: "otfm", arg: 2, scope: !2167, file: !3, line: 218, type: !1291)
!2171 = !DILocalVariable(name: "octx", scope: !2167, file: !3, line: 220, type: !1740)
!2172 = !DILocalVariable(name: "ctx", scope: !2167, file: !3, line: 221, type: !1740)
!2173 = !DILocalVariable(name: "cipher", scope: !2167, file: !3, line: 222, type: !1350)
!2174 = !DILocation(line: 218, column: 48, scope: !2167)
!2175 = !DILocation(line: 218, column: 74, scope: !2167)
!2176 = !DILocation(line: 220, column: 2, scope: !2167)
!2177 = !DILocation(line: 220, column: 23, scope: !2167)
!2178 = !DILocation(line: 220, column: 47, scope: !2167)
!2179 = !DILocation(line: 220, column: 30, scope: !2167)
!2180 = !DILocation(line: 221, column: 2, scope: !2167)
!2181 = !DILocation(line: 221, column: 23, scope: !2167)
!2182 = !DILocation(line: 221, column: 46, scope: !2167)
!2183 = !DILocation(line: 221, column: 29, scope: !2167)
!2184 = !DILocation(line: 222, column: 2, scope: !2167)
!2185 = !DILocation(line: 222, column: 24, scope: !2167)
!2186 = !DILocation(line: 224, column: 31, scope: !2167)
!2187 = !DILocation(line: 224, column: 37, scope: !2167)
!2188 = !DILocation(line: 224, column: 11, scope: !2167)
!2189 = !DILocation(line: 224, column: 9, scope: !2167)
!2190 = !DILocation(line: 225, column: 13, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 225, column: 6)
!2192 = !DILocation(line: 225, column: 6, scope: !2191)
!2193 = !DILocation(line: 225, column: 6, scope: !2167)
!2194 = !DILocation(line: 226, column: 18, scope: !2191)
!2195 = !DILocation(line: 226, column: 10, scope: !2191)
!2196 = !DILocation(line: 226, column: 3, scope: !2191)
!2197 = !DILocation(line: 228, column: 15, scope: !2167)
!2198 = !DILocation(line: 228, column: 2, scope: !2167)
!2199 = !DILocation(line: 228, column: 7, scope: !2167)
!2200 = !DILocation(line: 228, column: 13, scope: !2167)
!2201 = !DILocation(line: 230, column: 2, scope: !2167)
!2202 = !DILocation(line: 231, column: 1, scope: !2167)
!2203 = distinct !DISubprogram(name: "cmac_exit_tfm", scope: !3, file: !3, line: 233, type: !1328, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2204)
!2204 = !{!2205, !2206}
!2205 = !DILocalVariable(name: "tfm", arg: 1, scope: !2203, file: !3, line: 233, type: !1291)
!2206 = !DILocalVariable(name: "ctx", scope: !2203, file: !3, line: 235, type: !1740)
!2207 = !DILocation(line: 233, column: 48, scope: !2203)
!2208 = !DILocation(line: 235, column: 2, scope: !2203)
!2209 = !DILocation(line: 235, column: 23, scope: !2203)
!2210 = !DILocation(line: 235, column: 46, scope: !2203)
!2211 = !DILocation(line: 235, column: 29, scope: !2203)
!2212 = !DILocation(line: 236, column: 21, scope: !2203)
!2213 = !DILocation(line: 236, column: 26, scope: !2203)
!2214 = !DILocation(line: 236, column: 2, scope: !2203)
!2215 = !DILocation(line: 237, column: 1, scope: !2203)
!2216 = !DISubprogram(name: "shash_free_singlespawn_instance", scope: !1122, file: !1122, line: 115, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2217 = !DISubprogram(name: "shash_register_instance", scope: !1122, file: !1122, line: 113, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!95, !1241, !1120}
!2220 = distinct !DISubprogram(name: "kmalloc", scope: !25, file: !25, line: 591, type: !1609, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2221 = !{!2222, !2223, !2224}
!2222 = !DILocalVariable(name: "size", arg: 1, scope: !2220, file: !25, line: 591, type: !189)
!2223 = !DILocalVariable(name: "flags", arg: 2, scope: !2220, file: !25, line: 591, type: !1081)
!2224 = !DILocalVariable(name: "index", scope: !2225, file: !25, line: 594, type: !7)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !25, line: 593, column: 42)
!2226 = distinct !DILexicalBlock(scope: !2220, file: !25, line: 593, column: 6)
!2227 = !DILocation(line: 591, column: 61, scope: !2220)
!2228 = !DILocation(line: 591, column: 73, scope: !2220)
!2229 = !DILocation(line: 593, column: 27, scope: !2226)
!2230 = !DILocation(line: 593, column: 6, scope: !2226)
!2231 = !DILocation(line: 593, column: 33, scope: !2226)
!2232 = !DILocation(line: 593, column: 36, scope: !2226)
!2233 = !DILocation(line: 593, column: 6, scope: !2220)
!2234 = !DILocation(line: 594, column: 3, scope: !2225)
!2235 = !DILocation(line: 594, column: 16, scope: !2225)
!2236 = !DILocation(line: 596, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2225, file: !25, line: 596, column: 7)
!2238 = !DILocation(line: 596, column: 12, scope: !2237)
!2239 = !DILocation(line: 596, column: 7, scope: !2225)
!2240 = !DILocation(line: 597, column: 25, scope: !2237)
!2241 = !DILocation(line: 597, column: 31, scope: !2237)
!2242 = !DILocation(line: 597, column: 11, scope: !2237)
!2243 = !DILocation(line: 597, column: 4, scope: !2237)
!2244 = !DILocation(line: 599, column: 11, scope: !2225)
!2245 = !DILocation(line: 599, column: 9, scope: !2225)
!2246 = !DILocation(line: 601, column: 33, scope: !2225)
!2247 = !DILocation(line: 601, column: 40, scope: !2225)
!2248 = !DILocation(line: 601, column: 20, scope: !2225)
!2249 = !DILocation(line: 601, column: 5, scope: !2225)
!2250 = !DILocation(line: 601, column: 51, scope: !2225)
!2251 = !DILocation(line: 602, column: 5, scope: !2225)
!2252 = !DILocation(line: 602, column: 12, scope: !2225)
!2253 = !DILocation(line: 600, column: 10, scope: !2225)
!2254 = !DILocation(line: 600, column: 3, scope: !2225)
!2255 = !DILocation(line: 603, column: 2, scope: !2226)
!2256 = !DILocation(line: 604, column: 19, scope: !2220)
!2257 = !DILocation(line: 604, column: 25, scope: !2220)
!2258 = !DILocation(line: 604, column: 9, scope: !2220)
!2259 = !DILocation(line: 604, column: 2, scope: !2220)
!2260 = !DILocation(line: 605, column: 1, scope: !2220)
!2261 = !DISubprogram(name: "kmalloc_large", scope: !25, file: !25, line: 531, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2262 = distinct !DISubprogram(name: "__kmalloc_index", scope: !25, file: !25, line: 444, type: !2263, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!7, !189, !498}
!2265 = !{!2266, !2267}
!2266 = !DILocalVariable(name: "size", arg: 1, scope: !2262, file: !25, line: 444, type: !189)
!2267 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2262, file: !25, line: 445, type: !498)
!2268 = !DILocation(line: 444, column: 60, scope: !2262)
!2269 = !DILocation(line: 445, column: 16, scope: !2262)
!2270 = !DILocation(line: 447, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 447, column: 6)
!2272 = !DILocation(line: 447, column: 6, scope: !2262)
!2273 = !DILocation(line: 448, column: 3, scope: !2271)
!2274 = !DILocation(line: 450, column: 6, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 450, column: 6)
!2276 = !DILocation(line: 450, column: 11, scope: !2275)
!2277 = !DILocation(line: 450, column: 6, scope: !2262)
!2278 = !DILocation(line: 451, column: 3, scope: !2275)
!2279 = !DILocation(line: 453, column: 32, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 453, column: 6)
!2281 = !DILocation(line: 453, column: 37, scope: !2280)
!2282 = !DILocation(line: 453, column: 42, scope: !2280)
!2283 = !DILocation(line: 453, column: 45, scope: !2280)
!2284 = !DILocation(line: 453, column: 50, scope: !2280)
!2285 = !DILocation(line: 453, column: 6, scope: !2262)
!2286 = !DILocation(line: 454, column: 3, scope: !2280)
!2287 = !DILocation(line: 455, column: 32, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 455, column: 6)
!2289 = !DILocation(line: 455, column: 37, scope: !2288)
!2290 = !DILocation(line: 455, column: 43, scope: !2288)
!2291 = !DILocation(line: 455, column: 46, scope: !2288)
!2292 = !DILocation(line: 455, column: 51, scope: !2288)
!2293 = !DILocation(line: 455, column: 6, scope: !2262)
!2294 = !DILocation(line: 456, column: 3, scope: !2288)
!2295 = !DILocation(line: 457, column: 6, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 457, column: 6)
!2297 = !DILocation(line: 457, column: 11, scope: !2296)
!2298 = !DILocation(line: 457, column: 6, scope: !2262)
!2299 = !DILocation(line: 457, column: 26, scope: !2296)
!2300 = !DILocation(line: 458, column: 6, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 458, column: 6)
!2302 = !DILocation(line: 458, column: 11, scope: !2301)
!2303 = !DILocation(line: 458, column: 6, scope: !2262)
!2304 = !DILocation(line: 458, column: 26, scope: !2301)
!2305 = !DILocation(line: 459, column: 6, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 459, column: 6)
!2307 = !DILocation(line: 459, column: 11, scope: !2306)
!2308 = !DILocation(line: 459, column: 6, scope: !2262)
!2309 = !DILocation(line: 459, column: 26, scope: !2306)
!2310 = !DILocation(line: 460, column: 6, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 460, column: 6)
!2312 = !DILocation(line: 460, column: 11, scope: !2311)
!2313 = !DILocation(line: 460, column: 6, scope: !2262)
!2314 = !DILocation(line: 460, column: 26, scope: !2311)
!2315 = !DILocation(line: 461, column: 6, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 461, column: 6)
!2317 = !DILocation(line: 461, column: 11, scope: !2316)
!2318 = !DILocation(line: 461, column: 6, scope: !2262)
!2319 = !DILocation(line: 461, column: 26, scope: !2316)
!2320 = !DILocation(line: 462, column: 6, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 462, column: 6)
!2322 = !DILocation(line: 462, column: 11, scope: !2321)
!2323 = !DILocation(line: 462, column: 6, scope: !2262)
!2324 = !DILocation(line: 462, column: 26, scope: !2321)
!2325 = !DILocation(line: 463, column: 6, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 463, column: 6)
!2327 = !DILocation(line: 463, column: 11, scope: !2326)
!2328 = !DILocation(line: 463, column: 6, scope: !2262)
!2329 = !DILocation(line: 463, column: 26, scope: !2326)
!2330 = !DILocation(line: 464, column: 6, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 464, column: 6)
!2332 = !DILocation(line: 464, column: 11, scope: !2331)
!2333 = !DILocation(line: 464, column: 6, scope: !2262)
!2334 = !DILocation(line: 464, column: 26, scope: !2331)
!2335 = !DILocation(line: 465, column: 6, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 465, column: 6)
!2337 = !DILocation(line: 465, column: 11, scope: !2336)
!2338 = !DILocation(line: 465, column: 6, scope: !2262)
!2339 = !DILocation(line: 465, column: 26, scope: !2336)
!2340 = !DILocation(line: 466, column: 6, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 466, column: 6)
!2342 = !DILocation(line: 466, column: 11, scope: !2341)
!2343 = !DILocation(line: 466, column: 6, scope: !2262)
!2344 = !DILocation(line: 466, column: 26, scope: !2341)
!2345 = !DILocation(line: 467, column: 6, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 467, column: 6)
!2347 = !DILocation(line: 467, column: 11, scope: !2346)
!2348 = !DILocation(line: 467, column: 6, scope: !2262)
!2349 = !DILocation(line: 467, column: 26, scope: !2346)
!2350 = !DILocation(line: 468, column: 6, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 468, column: 6)
!2352 = !DILocation(line: 468, column: 11, scope: !2351)
!2353 = !DILocation(line: 468, column: 6, scope: !2262)
!2354 = !DILocation(line: 468, column: 26, scope: !2351)
!2355 = !DILocation(line: 469, column: 6, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 469, column: 6)
!2357 = !DILocation(line: 469, column: 11, scope: !2356)
!2358 = !DILocation(line: 469, column: 6, scope: !2262)
!2359 = !DILocation(line: 469, column: 26, scope: !2356)
!2360 = !DILocation(line: 470, column: 6, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 470, column: 6)
!2362 = !DILocation(line: 470, column: 11, scope: !2361)
!2363 = !DILocation(line: 470, column: 6, scope: !2262)
!2364 = !DILocation(line: 470, column: 26, scope: !2361)
!2365 = !DILocation(line: 471, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 471, column: 6)
!2367 = !DILocation(line: 471, column: 11, scope: !2366)
!2368 = !DILocation(line: 471, column: 6, scope: !2262)
!2369 = !DILocation(line: 471, column: 26, scope: !2366)
!2370 = !DILocation(line: 472, column: 6, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 472, column: 6)
!2372 = !DILocation(line: 472, column: 11, scope: !2371)
!2373 = !DILocation(line: 472, column: 6, scope: !2262)
!2374 = !DILocation(line: 472, column: 26, scope: !2371)
!2375 = !DILocation(line: 473, column: 6, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 473, column: 6)
!2377 = !DILocation(line: 473, column: 11, scope: !2376)
!2378 = !DILocation(line: 473, column: 6, scope: !2262)
!2379 = !DILocation(line: 473, column: 26, scope: !2376)
!2380 = !DILocation(line: 474, column: 6, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 474, column: 6)
!2382 = !DILocation(line: 474, column: 11, scope: !2381)
!2383 = !DILocation(line: 474, column: 6, scope: !2262)
!2384 = !DILocation(line: 474, column: 27, scope: !2381)
!2385 = !DILocation(line: 475, column: 6, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 475, column: 6)
!2387 = !DILocation(line: 475, column: 11, scope: !2386)
!2388 = !DILocation(line: 475, column: 6, scope: !2262)
!2389 = !DILocation(line: 475, column: 32, scope: !2386)
!2390 = !DILocation(line: 477, column: 50, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2262, file: !25, line: 477, column: 6)
!2392 = !{i8 0, i8 2}
!2393 = !DILocation(line: 477, column: 6, scope: !2262)
!2394 = !DILocation(line: 478, column: 3, scope: !2391)
!2395 = !DILocation(line: 478, column: 3, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !25, line: 478, column: 3)
!2397 = distinct !DILexicalBlock(scope: !2391, file: !25, line: 478, column: 3)
!2398 = !{i32 -2143501936}
!2399 = !DILocation(line: 478, column: 3, scope: !2397)
!2400 = !DILocation(line: 480, column: 3, scope: !2391)
!2401 = !DILocation(line: 480, column: 3, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2391, file: !25, line: 480, column: 3)
!2403 = !DILocation(line: 480, column: 3, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2402, file: !25, line: 480, column: 3)
!2405 = !DILocation(line: 480, column: 3, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !25, line: 480, column: 3)
!2407 = !{i64 2151465563, i64 2151465592, i64 2151465638, i64 2151465696, i64 2151465750, i64 2151465804, i64 2151465859, i64 2151465890}
!2408 = !DILocation(line: 483, column: 2, scope: !2262)
!2409 = !DILocation(line: 484, column: 1, scope: !2262)
!2410 = !DISubprogram(name: "kmalloc_trace", scope: !25, file: !25, line: 525, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!35, !2413, !1081, !189}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2415, line: 11, flags: DIFlagFwdDecl)
!2415 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2416 = distinct !DISubprogram(name: "kmalloc_type", scope: !25, file: !25, line: 401, type: !2417, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!24, !1081, !192}
!2419 = !{!2420, !2421}
!2420 = !DILocalVariable(name: "flags", arg: 1, scope: !2416, file: !25, line: 401, type: !1081)
!2421 = !DILocalVariable(name: "caller", arg: 2, scope: !2416, file: !25, line: 401, type: !192)
!2422 = !DILocation(line: 401, column: 67, scope: !2416)
!2423 = !DILocation(line: 401, column: 88, scope: !2416)
!2424 = !DILocation(line: 407, column: 6, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2416, file: !25, line: 407, column: 6)
!2426 = !DILocation(line: 407, column: 6, scope: !2416)
!2427 = !DILocation(line: 413, column: 3, scope: !2425)
!2428 = !DILocation(line: 423, column: 38, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2416, file: !25, line: 423, column: 6)
!2430 = !DILocation(line: 423, column: 44, scope: !2429)
!2431 = !DILocation(line: 423, column: 6, scope: !2416)
!2432 = !DILocation(line: 424, column: 3, scope: !2429)
!2433 = !DILocation(line: 426, column: 3, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2416, file: !25, line: 425, column: 6)
!2435 = !DILocation(line: 429, column: 1, scope: !2416)
!2436 = !DISubprogram(name: "__kmalloc", scope: !25, file: !25, line: 488, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2437 = !DISubprogram(name: "__compiletime_assert_117", scope: !25, file: !25, line: 478, type: !1078, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2438 = distinct !DISubprogram(name: "crypto_instance_ctx", scope: !638, file: !638, line: 224, type: !2439, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!35, !1203}
!2441 = !{!2442}
!2442 = !DILocalVariable(name: "inst", arg: 1, scope: !2438, file: !638, line: 224, type: !1203)
!2443 = !DILocation(line: 224, column: 65, scope: !2438)
!2444 = !DILocation(line: 226, column: 9, scope: !2438)
!2445 = !DILocation(line: 226, column: 15, scope: !2438)
!2446 = !DILocation(line: 226, column: 2, scope: !2438)
!2447 = !DISubprogram(name: "crypto_grab_spawn", scope: !638, file: !638, line: 158, type: !2448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!95, !1263, !1203, !60, !983, !983}
!2450 = distinct !DISubprogram(name: "crypto_shash_alignmask", scope: !1281, file: !1281, line: 801, type: !2451, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!7, !1291}
!2453 = !{!2454}
!2454 = !DILocalVariable(name: "tfm", arg: 1, scope: !2450, file: !1281, line: 802, type: !1291)
!2455 = !DILocation(line: 802, column: 23, scope: !2450)
!2456 = !DILocation(line: 804, column: 51, scope: !2450)
!2457 = !DILocation(line: 804, column: 34, scope: !2450)
!2458 = !DILocation(line: 804, column: 9, scope: !2450)
!2459 = !DILocation(line: 804, column: 2, scope: !2450)
!2460 = distinct !DISubprogram(name: "shash_desc_ctx", scope: !1281, file: !1281, line: 885, type: !2461, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!35, !1287}
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "desc", arg: 1, scope: !2460, file: !1281, line: 885, type: !1287)
!2465 = !DILocation(line: 885, column: 55, scope: !2460)
!2466 = !DILocation(line: 887, column: 9, scope: !2460)
!2467 = !DILocation(line: 887, column: 15, scope: !2460)
!2468 = !DILocation(line: 887, column: 2, scope: !2460)
!2469 = distinct !DISubprogram(name: "crypto_shash_blocksize", scope: !1281, file: !1281, line: 816, type: !2451, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2470)
!2470 = !{!2471}
!2471 = !DILocalVariable(name: "tfm", arg: 1, scope: !2469, file: !1281, line: 816, type: !1291)
!2472 = !DILocation(line: 816, column: 72, scope: !2469)
!2473 = !DILocation(line: 818, column: 51, scope: !2469)
!2474 = !DILocation(line: 818, column: 34, scope: !2469)
!2475 = !DILocation(line: 818, column: 9, scope: !2469)
!2476 = !DILocation(line: 818, column: 2, scope: !2469)
!2477 = distinct !DISubprogram(name: "crypto_tfm_alg_alignmask", scope: !1143, file: !1143, line: 470, type: !2478, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!7, !1176}
!2480 = !{!2481}
!2481 = !DILocalVariable(name: "tfm", arg: 1, scope: !2477, file: !1143, line: 470, type: !1176)
!2482 = !DILocation(line: 470, column: 72, scope: !2477)
!2483 = !DILocation(line: 472, column: 9, scope: !2477)
!2484 = !DILocation(line: 472, column: 14, scope: !2477)
!2485 = !DILocation(line: 472, column: 25, scope: !2477)
!2486 = !DILocation(line: 472, column: 2, scope: !2477)
!2487 = distinct !DISubprogram(name: "crypto_shash_tfm", scope: !1281, file: !1281, line: 775, type: !2488, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!1176, !1291}
!2490 = !{!2491}
!2491 = !DILocalVariable(name: "tfm", arg: 1, scope: !2487, file: !1281, line: 775, type: !1291)
!2492 = !DILocation(line: 775, column: 72, scope: !2487)
!2493 = !DILocation(line: 777, column: 10, scope: !2487)
!2494 = !DILocation(line: 777, column: 15, scope: !2487)
!2495 = !DILocation(line: 777, column: 2, scope: !2487)
!2496 = distinct !DISubprogram(name: "crypto_tfm_alg_blocksize", scope: !1143, file: !1143, line: 465, type: !2478, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2497)
!2497 = !{!2498}
!2498 = !DILocalVariable(name: "tfm", arg: 1, scope: !2496, file: !1143, line: 465, type: !1176)
!2499 = !DILocation(line: 465, column: 72, scope: !2496)
!2500 = !DILocation(line: 467, column: 9, scope: !2496)
!2501 = !DILocation(line: 467, column: 14, scope: !2496)
!2502 = !DILocation(line: 467, column: 25, scope: !2496)
!2503 = !DILocation(line: 467, column: 2, scope: !2496)
!2504 = distinct !DISubprogram(name: "crypto_shash_ctx", scope: !1122, file: !1122, line: 238, type: !2505, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!35, !1291}
!2507 = !{!2508}
!2508 = !DILocalVariable(name: "tfm", arg: 1, scope: !2504, file: !1122, line: 238, type: !1291)
!2509 = !DILocation(line: 238, column: 59, scope: !2504)
!2510 = !DILocation(line: 240, column: 25, scope: !2504)
!2511 = !DILocation(line: 240, column: 30, scope: !2504)
!2512 = !DILocation(line: 240, column: 9, scope: !2504)
!2513 = !DILocation(line: 240, column: 2, scope: !2504)
!2514 = !DILocation(line: 16, column: 35, scope: !1086)
!2515 = !DILocation(line: 16, column: 50, scope: !1086)
!2516 = !DILocation(line: 16, column: 68, scope: !1086)
!2517 = !DILocation(line: 19, column: 27, scope: !1098)
!2518 = !DILocation(line: 19, column: 6, scope: !1098)
!2519 = !DILocation(line: 19, column: 33, scope: !1098)
!2520 = !DILocation(line: 20, column: 7, scope: !1098)
!2521 = !DILocation(line: 20, column: 12, scope: !1098)
!2522 = !DILocation(line: 20, column: 37, scope: !1098)
!2523 = !DILocation(line: 18, column: 6, scope: !1086)
!2524 = !DILocation(line: 21, column: 3, scope: !1097)
!2525 = !DILocation(line: 21, column: 18, scope: !1097)
!2526 = !DILocation(line: 21, column: 39, scope: !1097)
!2527 = !DILocation(line: 22, column: 3, scope: !1097)
!2528 = !DILocation(line: 22, column: 18, scope: !1097)
!2529 = !DILocation(line: 22, column: 39, scope: !1097)
!2530 = !DILocation(line: 23, column: 3, scope: !1097)
!2531 = !DILocation(line: 23, column: 17, scope: !1097)
!2532 = !DILocation(line: 25, column: 3, scope: !1097)
!2533 = !DILocation(line: 25, column: 10, scope: !1097)
!2534 = !DILocation(line: 25, column: 15, scope: !1097)
!2535 = !DILocation(line: 26, column: 8, scope: !1102)
!2536 = !DILocation(line: 26, column: 8, scope: !1103)
!2537 = !DILocation(line: 26, column: 27, scope: !1105)
!2538 = !DILocation(line: 26, column: 27, scope: !1103)
!2539 = !DILocation(line: 26, column: 25, scope: !1103)
!2540 = !DILocation(line: 26, column: 6, scope: !1103)
!2541 = !DILocation(line: 27, column: 4, scope: !1103)
!2542 = !DILocation(line: 27, column: 4, scope: !1112)
!2543 = !DILocation(line: 28, column: 9, scope: !1103)
!2544 = distinct !{!2544, !2532, !2545, !1856, !1857}
!2545 = !DILocation(line: 29, column: 3, scope: !1097)
!2546 = !DILocation(line: 30, column: 2, scope: !1098)
!2547 = !DILocation(line: 30, column: 2, scope: !1097)
!2548 = !DILocation(line: 31, column: 16, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !1098, file: !1085, line: 30, column: 9)
!2550 = !DILocation(line: 31, column: 21, scope: !2549)
!2551 = !DILocation(line: 31, column: 26, scope: !2549)
!2552 = !DILocation(line: 31, column: 31, scope: !2549)
!2553 = !DILocation(line: 31, column: 3, scope: !2549)
!2554 = !DILocation(line: 33, column: 1, scope: !1086)
!2555 = !DISubprogram(name: "crypto_cipher_encrypt_one", scope: !1352, file: !1352, line: 164, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !1350, !1089, !1090}
!2558 = distinct !DISubprogram(name: "crypto_tfm_ctx", scope: !638, file: !638, line: 184, type: !2559, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!35, !1176}
!2561 = !{!2562}
!2562 = !DILocalVariable(name: "tfm", arg: 1, scope: !2558, file: !638, line: 184, type: !1176)
!2563 = !DILocation(line: 184, column: 55, scope: !2558)
!2564 = !DILocation(line: 186, column: 9, scope: !2558)
!2565 = !DILocation(line: 186, column: 14, scope: !2558)
!2566 = !DILocation(line: 186, column: 2, scope: !2558)
!2567 = !DISubprogram(name: "__crypto_xor", scope: !1085, file: !1085, line: 14, type: !2568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !1089, !1090, !1090, !7}
!2570 = !DISubprogram(name: "crypto_cipher_setkey", scope: !1352, file: !1352, line: 152, type: !2571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!95, !1350, !1090, !7}
!2573 = distinct !DISubprogram(name: "shash_alg_instance", scope: !1122, file: !1122, line: 255, type: !2574, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!1120, !1291}
!2576 = !{!2577}
!2577 = !DILocalVariable(name: "shash", arg: 1, scope: !2573, file: !1122, line: 256, type: !1291)
!2578 = !DILocation(line: 256, column: 23, scope: !2573)
!2579 = !DILocation(line: 258, column: 49, scope: !2573)
!2580 = !DILocation(line: 258, column: 56, scope: !2573)
!2581 = !DILocation(line: 258, column: 24, scope: !2573)
!2582 = !DILocation(line: 258, column: 9, scope: !2573)
!2583 = !DILocation(line: 258, column: 2, scope: !2573)
!2584 = distinct !DISubprogram(name: "crypto_spawn_cipher", scope: !1352, file: !1352, line: 206, type: !2585, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!1350, !1423}
!2587 = !{!2588, !2589, !2590}
!2588 = !DILocalVariable(name: "spawn", arg: 1, scope: !2584, file: !1352, line: 207, type: !1423)
!2589 = !DILocalVariable(name: "type", scope: !2584, file: !1352, line: 209, type: !983)
!2590 = !DILocalVariable(name: "mask", scope: !2584, file: !1352, line: 210, type: !983)
!2591 = !DILocation(line: 207, column: 30, scope: !2584)
!2592 = !DILocation(line: 209, column: 2, scope: !2584)
!2593 = !DILocation(line: 209, column: 6, scope: !2584)
!2594 = !DILocation(line: 210, column: 2, scope: !2584)
!2595 = !DILocation(line: 210, column: 6, scope: !2584)
!2596 = !DILocation(line: 212, column: 48, scope: !2584)
!2597 = !DILocation(line: 212, column: 55, scope: !2584)
!2598 = !DILocation(line: 212, column: 61, scope: !2584)
!2599 = !DILocation(line: 212, column: 67, scope: !2584)
!2600 = !DILocation(line: 212, column: 30, scope: !2584)
!2601 = !DILocation(line: 212, column: 9, scope: !2584)
!2602 = !DILocation(line: 213, column: 1, scope: !2584)
!2603 = !DILocation(line: 212, column: 2, scope: !2584)
!2604 = distinct !DISubprogram(name: "IS_ERR", scope: !2605, file: !2605, line: 59, type: !2606, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2605 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!498, !420}
!2608 = !{!2609}
!2609 = !DILocalVariable(name: "ptr", arg: 1, scope: !2604, file: !2605, line: 59, type: !420)
!2610 = !DILocation(line: 59, column: 60, scope: !2604)
!2611 = !DILocation(line: 61, column: 9, scope: !2604)
!2612 = !DILocation(line: 61, column: 2, scope: !2604)
!2613 = distinct !DISubprogram(name: "PTR_ERR", scope: !2605, file: !2605, line: 49, type: !2614, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!178, !420}
!2616 = !{!2617}
!2617 = !DILocalVariable(name: "ptr", arg: 1, scope: !2613, file: !2605, line: 49, type: !420)
!2618 = !DILocation(line: 49, column: 61, scope: !2613)
!2619 = !DILocation(line: 51, column: 16, scope: !2613)
!2620 = !DILocation(line: 51, column: 9, scope: !2613)
!2621 = !DILocation(line: 51, column: 2, scope: !2613)
!2622 = distinct !DISubprogram(name: "shash_instance", scope: !1122, file: !1122, line: 249, type: !2623, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!1120, !1203}
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "inst", arg: 1, scope: !2622, file: !1122, line: 250, type: !1203)
!2627 = !DILocalVariable(name: "__mptr", scope: !2628, file: !1122, line: 252, type: !35)
!2628 = distinct !DILexicalBlock(scope: !2622, file: !1122, line: 252, column: 9)
!2629 = !DILocation(line: 250, column: 26, scope: !2622)
!2630 = !DILocation(line: 252, column: 9, scope: !2628)
!2631 = !DILocation(line: 252, column: 9, scope: !2622)
!2632 = !DILocation(line: 252, column: 2, scope: !2622)
!2633 = distinct !DISubprogram(name: "crypto_tfm_alg_instance", scope: !638, file: !638, line: 218, type: !2634, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!1203, !1176}
!2636 = !{!2637, !2638}
!2637 = !DILocalVariable(name: "tfm", arg: 1, scope: !2633, file: !638, line: 219, type: !1176)
!2638 = !DILocalVariable(name: "__mptr", scope: !2639, file: !638, line: 221, type: !35)
!2639 = distinct !DILexicalBlock(scope: !2633, file: !638, line: 221, column: 9)
!2640 = !DILocation(line: 219, column: 21, scope: !2633)
!2641 = !DILocation(line: 221, column: 9, scope: !2639)
!2642 = !DILocation(line: 221, column: 9, scope: !2633)
!2643 = !DILocation(line: 221, column: 2, scope: !2633)
!2644 = distinct !DISubprogram(name: "__crypto_cipher_cast", scope: !1352, file: !1352, line: 37, type: !2645, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!1350, !1176}
!2647 = !{!2648}
!2648 = !DILocalVariable(name: "tfm", arg: 1, scope: !2644, file: !1352, line: 37, type: !1176)
!2649 = !DILocation(line: 37, column: 77, scope: !2644)
!2650 = !DILocation(line: 39, column: 33, scope: !2644)
!2651 = !DILocation(line: 39, column: 2, scope: !2644)
!2652 = !DISubprogram(name: "crypto_spawn_tfm", scope: !638, file: !638, line: 161, type: !2653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!1176, !1263, !983, !983}
!2655 = !DISubprogram(name: "crypto_clone_cipher", scope: !1352, file: !1352, line: 179, type: !2656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!1350, !1350}
!2658 = distinct !DISubprogram(name: "crypto_free_cipher", scope: !1352, file: !1352, line: 75, type: !2659, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !1350}
!2661 = !{!2662}
!2662 = !DILocalVariable(name: "tfm", arg: 1, scope: !2658, file: !1352, line: 75, type: !1350)
!2663 = !DILocation(line: 75, column: 61, scope: !2658)
!2664 = !DILocation(line: 77, column: 36, scope: !2658)
!2665 = !DILocation(line: 77, column: 18, scope: !2658)
!2666 = !DILocation(line: 77, column: 2, scope: !2658)
!2667 = !DILocation(line: 78, column: 1, scope: !2658)
!2668 = distinct !DISubprogram(name: "crypto_free_tfm", scope: !1143, file: !1143, line: 447, type: !1184, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2669)
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "tfm", arg: 1, scope: !2668, file: !1143, line: 447, type: !1176)
!2671 = !DILocation(line: 447, column: 55, scope: !2668)
!2672 = !DILocation(line: 449, column: 28, scope: !2668)
!2673 = !DILocation(line: 449, column: 33, scope: !2668)
!2674 = !DILocation(line: 449, column: 9, scope: !2668)
!2675 = !DILocation(line: 449, column: 2, scope: !2668)
!2676 = distinct !DISubprogram(name: "crypto_cipher_tfm", scope: !1352, file: !1352, line: 66, type: !2677, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!1176, !1350}
!2679 = !{!2680}
!2680 = !DILocalVariable(name: "tfm", arg: 1, scope: !2676, file: !1352, line: 66, type: !1350)
!2681 = !DILocation(line: 66, column: 74, scope: !2676)
!2682 = !DILocation(line: 68, column: 10, scope: !2676)
!2683 = !DILocation(line: 68, column: 15, scope: !2676)
!2684 = !DILocation(line: 68, column: 2, scope: !2676)
!2685 = !DISubprogram(name: "crypto_destroy_tfm", scope: !1143, file: !1143, line: 445, type: !2686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !35, !1176}
!2688 = !DISubprogram(name: "crypto_register_template", scope: !638, file: !638, line: 148, type: !2689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!95, !1241}
