; ModuleID = 'drivers/cpuidle/poll_state.c'
source_filename = "drivers/cpuidle/poll_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpuidle_poll_state_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpuidle_poll_state_init ; .previous"

%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"POLL\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"CPUIDLE CORE POLL IDLE\00", align 1, !dbg !7
@__UNIQUE_ID___addressable_cpuidle_poll_state_init149 = internal global ptr @cpuidle_poll_state_init, section ".discard.addressable", align 8, !dbg !12
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_cpuidle_poll_state_init149], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpuidle_poll_state_init(ptr noundef %drv) #0 align 16 !dbg !1225 {
entry:
  %drv.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1305, metadata !DIExpression()), !dbg !1308
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %state, metadata !1306, metadata !DIExpression()), !dbg !1310
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1311
  %states = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 3, !dbg !1312
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], ptr %states, i64 0, i64 0, !dbg !1311
  store ptr %arrayidx, ptr %state, align 8, !dbg !1310
  %1 = load ptr, ptr %state, align 8, !dbg !1313
  %name = getelementptr inbounds %struct.cpuidle_state, ptr %1, i32 0, i32 0, !dbg !1314
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !1313
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 16, ptr noundef @.str) #10, !dbg !1315
  %2 = load ptr, ptr %state, align 8, !dbg !1316
  %desc = getelementptr inbounds %struct.cpuidle_state, ptr %2, i32 0, i32 1, !dbg !1317
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %desc, i64 0, i64 0, !dbg !1316
  %call2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay1, i64 noundef 32, ptr noundef @.str.1) #10, !dbg !1318
  %3 = load ptr, ptr %state, align 8, !dbg !1319
  %exit_latency = getelementptr inbounds %struct.cpuidle_state, ptr %3, i32 0, i32 5, !dbg !1320
  store i32 0, ptr %exit_latency, align 4, !dbg !1321
  %4 = load ptr, ptr %state, align 8, !dbg !1322
  %target_residency = getelementptr inbounds %struct.cpuidle_state, ptr %4, i32 0, i32 7, !dbg !1323
  store i32 0, ptr %target_residency, align 4, !dbg !1324
  %5 = load ptr, ptr %state, align 8, !dbg !1325
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %5, i32 0, i32 2, !dbg !1326
  store i64 0, ptr %exit_latency_ns, align 8, !dbg !1327
  %6 = load ptr, ptr %state, align 8, !dbg !1328
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %6, i32 0, i32 3, !dbg !1329
  store i64 0, ptr %target_residency_ns, align 8, !dbg !1330
  %7 = load ptr, ptr %state, align 8, !dbg !1331
  %power_usage = getelementptr inbounds %struct.cpuidle_state, ptr %7, i32 0, i32 6, !dbg !1332
  store i32 -1, ptr %power_usage, align 8, !dbg !1333
  %8 = load ptr, ptr %state, align 8, !dbg !1334
  %enter = getelementptr inbounds %struct.cpuidle_state, ptr %8, i32 0, i32 8, !dbg !1335
  store ptr @poll_idle, ptr %enter, align 8, !dbg !1336
  %9 = load ptr, ptr %state, align 8, !dbg !1337
  %flags = getelementptr inbounds %struct.cpuidle_state, ptr %9, i32 0, i32 4, !dbg !1338
  store i32 1, ptr %flags, align 8, !dbg !1339
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !1340
  ret void, !dbg !1340
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1341 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @poll_idle(ptr noundef %dev, ptr noundef %drv, i32 noundef %index) #4 section ".cpuidle.text" align 16 !dbg !1345 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %time_start = alloca i64, align 8
  %loop_count = alloca i32, align 4
  %limit = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1347, metadata !DIExpression()), !dbg !1355
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1348, metadata !DIExpression()), !dbg !1356
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1349, metadata !DIExpression()), !dbg !1357
  call void @llvm.lifetime.start.p0(i64 8, ptr %time_start) #9, !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %time_start, metadata !1350, metadata !DIExpression()), !dbg !1359
  %call = call i64 @local_clock_noinstr() #10, !dbg !1360
  store i64 %call, ptr %time_start, align 8, !dbg !1361
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1362
  %bf.load = load i8, ptr %0, align 8, !dbg !1363
  %bf.clear = and i8 %bf.load, -5, !dbg !1363
  %bf.set = or i8 %bf.clear, 0, !dbg !1363
  store i8 %bf.set, ptr %0, align 8, !dbg !1363
  call void @arch_local_irq_enable() #10, !dbg !1364
  %call1 = call zeroext i1 @current_set_polling_and_test() #10, !dbg !1365
  br i1 %call1, label %if.end12, label %if.then, !dbg !1366

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %loop_count) #9, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %loop_count, metadata !1351, metadata !DIExpression()), !dbg !1368
  store i32 0, ptr %loop_count, align 4, !dbg !1368
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #9, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !1354, metadata !DIExpression()), !dbg !1370
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1371
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1372
  %call2 = call i64 @cpuidle_poll_time(ptr noundef %1, ptr noundef %2) #10, !dbg !1373
  store i64 %call2, ptr %limit, align 8, !dbg !1374
  br label %while.cond, !dbg !1375

while.cond:                                       ; preds = %if.end11, %if.then4, %if.then
  %call3 = call zeroext i1 @need_resched() #10, !dbg !1376
  %lnot = xor i1 %call3, true, !dbg !1377
  br i1 %lnot, label %while.body, label %while.end, !dbg !1375

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #10, !dbg !1378
  %3 = load i32, ptr %loop_count, align 4, !dbg !1380
  %inc = add i32 %3, 1, !dbg !1380
  store i32 %inc, ptr %loop_count, align 4, !dbg !1380
  %cmp = icmp ult i32 %3, 200, !dbg !1382
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1383

if.then4:                                         ; preds = %while.body
  br label %while.cond, !dbg !1384, !llvm.loop !1385

if.end:                                           ; preds = %while.body
  store i32 0, ptr %loop_count, align 4, !dbg !1389
  %call5 = call i64 @local_clock_noinstr() #10, !dbg !1390
  %4 = load i64, ptr %time_start, align 8, !dbg !1392
  %sub = sub i64 %call5, %4, !dbg !1393
  %5 = load i64, ptr %limit, align 8, !dbg !1394
  %cmp6 = icmp ugt i64 %sub, %5, !dbg !1395
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !1396

if.then7:                                         ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !1397
  %bf.load8 = load i8, ptr %6, align 8, !dbg !1399
  %bf.clear9 = and i8 %bf.load8, -5, !dbg !1399
  %bf.set10 = or i8 %bf.clear9, 4, !dbg !1399
  store i8 %bf.set10, ptr %6, align 8, !dbg !1399
  br label %while.end, !dbg !1400

if.end11:                                         ; preds = %if.end
  br label %while.cond, !dbg !1375, !llvm.loop !1385

while.end:                                        ; preds = %if.then7, %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #9, !dbg !1401
  call void @llvm.lifetime.end.p0(i64 4, ptr %loop_count) #9, !dbg !1401
  br label %if.end12, !dbg !1402

if.end12:                                         ; preds = %while.end, %entry
  call void @arch_local_irq_disable() #10, !dbg !1403
  call void @current_clr_polling() #10, !dbg !1404
  %7 = load i32, ptr %index.addr, align 4, !dbg !1405
  call void @llvm.lifetime.end.p0(i64 8, ptr %time_start) #9, !dbg !1406
  ret i32 %7, !dbg !1407
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1408 dso_local i64 @local_clock_noinstr() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #5 align 16 !dbg !1412 {
entry:
  call void @native_irq_enable() #10, !dbg !1416
  ret void, !dbg !1417
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @current_set_polling_and_test() #5 align 16 !dbg !1418 {
entry:
  call void @__current_set_polling() #10, !dbg !1422
  br label %do.body, !dbg !1423

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1424

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1426

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1424

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !1428

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1424

do.end4:                                          ; preds = %do.end3
  %call = call zeroext i1 @tif_need_resched() #10, !dbg !1430
  %lnot = xor i1 %call, true, !dbg !1430
  %lnot5 = xor i1 %lnot, true, !dbg !1430
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !1430
  %conv = sext i32 %lnot.ext to i64, !dbg !1430
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1430
  %tobool = icmp ne i64 %expval, 0, !dbg !1430
  ret i1 %tobool, !dbg !1431
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1432 dso_local i64 @cpuidle_poll_time(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #5 align 16 !dbg !1435 {
entry:
  %call = call zeroext i1 @tif_need_resched() #10, !dbg !1436
  %lnot = xor i1 %call, true, !dbg !1436
  %lnot1 = xor i1 %lnot, true, !dbg !1436
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1436
  %conv = sext i32 %lnot.ext to i64, !dbg !1436
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1436
  %tobool = icmp ne i64 %expval, 0, !dbg !1436
  ret i1 %tobool, !dbg !1437
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #5 align 16 !dbg !1438 {
entry:
  call void @rep_nop() #10, !dbg !1440
  ret void, !dbg !1441
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #5 align 16 !dbg !1442 {
entry:
  call void @native_irq_disable() #10, !dbg !1443
  ret void, !dbg !1444
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @current_clr_polling() #5 align 16 !dbg !1445 {
entry:
  call void @__current_clr_polling() #10, !dbg !1446
  br label %do.body, !dbg !1447

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1448

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1450

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1448, !srcloc !1452
  br label %do.end2, !dbg !1448

do.end2:                                          ; preds = %do.end
  br label %do.body3, !dbg !1453

do.body3:                                         ; preds = %do.end2
  %call = call zeroext i1 @tif_need_resched() #10, !dbg !1454
  br i1 %call, label %if.then, label %if.end, !dbg !1457

if.then:                                          ; preds = %do.body3
  call void @set_preempt_need_resched() #10, !dbg !1454
  br label %if.end, !dbg !1454

if.end:                                           ; preds = %if.then, %do.body3
  br label %do.end4, !dbg !1457

do.end4:                                          ; preds = %if.end
  ret void, !dbg !1458
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #5 align 16 !dbg !1459 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1460, !srcloc !1461
  ret void, !dbg !1462
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__current_set_polling() #5 align 16 !dbg !1463 {
entry:
  %call = call ptr @get_current() #10, !dbg !1464
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !1465
  call void @arch_set_bit(i64 noundef 21, ptr noundef %flags) #10, !dbg !1466
  ret void, !dbg !1467
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #5 align 16 !dbg !1468 {
entry:
  %call = call ptr @get_current() #10, !dbg !1470
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !1471
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #10, !dbg !1472
  ret i1 %call1, !dbg !1473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1474 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1481, metadata !DIExpression()), !dbg !1483
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1482, metadata !DIExpression()), !dbg !1484
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1485
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1487
  br i1 %1, label %if.then, label %if.else, !dbg !1488

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1489
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1489
  %shr = ashr i64 %3, 3, !dbg !1489
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1489
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1491
  %and = and i64 %4, 7, !dbg !1491
  %sh_prom = trunc i64 %and to i32, !dbg !1491
  %shl = shl i32 1, %sh_prom, !dbg !1491
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !1492, !srcloc !1493
  br label %if.end, !dbg !1494

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1495
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1497
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !1498, !srcloc !1499
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1500
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !1501 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !1514
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1506, metadata !DIExpression()), !dbg !1514
  br label %do.body, !dbg !1514

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !1515
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1508, metadata !DIExpression()), !dbg !1515
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1515
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1515
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !1514
  br label %do.cond, !dbg !1515

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1515

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1512, metadata !DIExpression()), !dbg !1516
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !1516, !srcloc !1517
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1516
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1516
  %3 = inttoptr i64 %2 to ptr, !dbg !1516
  store ptr %3, ptr %tmp, align 8, !dbg !1516
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !1514
  %4 = load ptr, ptr %tmp, align 8, !dbg !1516
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1514
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1514
  store ptr %5, ptr %tmp1, align 8, !dbg !1514
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !1518
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1514
  ret ptr %6, !dbg !1519
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1520 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1526, metadata !DIExpression()), !dbg !1528
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1527, metadata !DIExpression()), !dbg !1529
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1530
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1531
  br i1 %1, label %cond.true, label %cond.false, !dbg !1531

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1532
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1533
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1534
  %conv = zext i1 %call to i32, !dbg !1534
  br label %cond.end, !dbg !1531

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1535
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1536
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !1537
  %conv2 = zext i1 %call1 to i32, !dbg !1537
  br label %cond.end, !dbg !1531

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1531
  %tobool = icmp ne i32 %cond, 0, !dbg !1531
  ret i1 %tobool, !dbg !1538
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1539 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1543, metadata !DIExpression()), !dbg !1545
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1544, metadata !DIExpression()), !dbg !1546
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1547
  %and = and i64 %0, 63, !dbg !1548
  %shl = shl i64 1, %and, !dbg !1549
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1550
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1551
  %shr = ashr i64 %2, 6, !dbg !1552
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1550
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1550
  %and1 = and i64 %shl, %3, !dbg !1553
  %cmp = icmp ne i64 %and1, 0, !dbg !1554
  ret i1 %cmp, !dbg !1555
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1556 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1558, metadata !DIExpression()), !dbg !1561
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1559, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1560, metadata !DIExpression()), !dbg !1564
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1565
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1566
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !1567, !srcloc !1568
  %3 = icmp ult i8 %2, 2, !dbg !1567
  call void @llvm.assume(i1 %3), !dbg !1567
  store i8 %2, ptr %oldbit, align 1, !dbg !1567
  %4 = load i8, ptr %oldbit, align 1, !dbg !1569, !range !1570, !noundef !952
  %tobool = trunc i8 %4 to i1, !dbg !1569
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !1571
  ret i1 %tobool, !dbg !1572
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #5 align 16 !dbg !1573 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1574, !srcloc !1575
  ret void, !dbg !1576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #5 align 16 !dbg !1577 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1578, !srcloc !1579
  ret void, !dbg !1580
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__current_clr_polling() #5 align 16 !dbg !1581 {
entry:
  %call = call ptr @get_current() #10, !dbg !1582
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !1583
  call void @arch_clear_bit(i64 noundef 21, ptr noundef %flags) #10, !dbg !1584
  ret void, !dbg !1585
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_preempt_need_resched() #5 align 16 !dbg !1586 {
entry:
  %pto_val__ = alloca i32, align 4
  br label %do.body, !dbg !1591

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #9, !dbg !1592
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1589, metadata !DIExpression()), !dbg !1592
  store i32 2147483647, ptr %pto_val__, align 4, !dbg !1592
  %0 = load i32, ptr %pto_val__, align 4, !dbg !1592
  call void asm "andl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), i32 %0, ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #9, !dbg !1592, !srcloc !1593
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #9, !dbg !1591
  br label %do.end, !dbg !1592

do.end:                                           ; preds = %do.body
  ret void, !dbg !1594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1595 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1597, metadata !DIExpression()), !dbg !1599
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1598, metadata !DIExpression()), !dbg !1600
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1601
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1603
  br i1 %1, label %if.then, label %if.else, !dbg !1604

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1605
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1605
  %shr = ashr i64 %3, 3, !dbg !1605
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1605
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1607
  %and = and i64 %4, 7, !dbg !1607
  %sh_prom = trunc i64 %and to i32, !dbg !1607
  %shl = shl i32 1, %sh_prom, !dbg !1607
  %not = xor i32 %shl, -1, !dbg !1608
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #9, !dbg !1609, !srcloc !1610
  br label %if.end, !dbg !1611

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1612
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1614
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !1615, !srcloc !1616
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1617
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223}
!llvm.ident = !{!1224}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/cpuidle/poll_state.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "206e622511c0c0985b5693c4be7f82b3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpuidle_poll_state_init149", scope: !14, file: !2, line: 62, type: !34, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpuidle/.poll_state.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpuidle/poll_state\22 -D KBUILD_BASENAME=\22poll_state\22 -D KBUILD_MODNAME=\22poll_state\22 -D __KBUILD_MODNAME=kmod_poll_state -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpuidle/poll_state.ll drivers/cpuidle/poll_state.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !33, globals: !1215, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !22, !27}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !23, line: 65, baseType: !18, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!26 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !28, line: 16, baseType: !18, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!29 = !{!30, !31, !32}
!30 = !DIEnumerator(name: "TT_NONE", value: 0)
!31 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!32 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!33 = !{!34, !35, !37, !49, !51, !54, !55, !36, !44}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !39, line: 56, size: 192, elements: !40)
!39 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!40 = !{!41, !42, !43, !48}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !39, line: 57, baseType: !36, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !38, file: !39, line: 58, baseType: !36, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !38, file: !39, line: 59, baseType: !44, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !45, line: 21, baseType: !46)
!45 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !47, line: 27, baseType: !18)
!47 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !38, file: !39, line: 61, baseType: !44, size: 32, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!53 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !57, line: 746, size: 58368, elements: !58)
!57 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!58 = !{!59, !60, !61, !62, !74, !75, !76, !77, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !169, !180, !307, !311, !314, !345, !346, !347, !348, !359, !361, !362, !363, !364, !365, !366, !377, !378, !381, !382, !383, !384, !385, !386, !387, !388, !395, !396, !403, !404, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !489, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !557, !559, !560, !561, !565, !567, !568, !569, !570, !571, !572, !578, !579, !580, !581, !582, !583, !584, !598, !621, !625, !626, !627, !630, !634, !637, !644, !649, !652, !655, !658, !661, !664, !667, !673, !674, !675, !681, !682, !686, !687, !688, !691, !699, !700, !709, !720, !721, !722, !723, !724, !729, !730, !731, !734, !735, !738, !741, !744, !747, !750, !751, !839, !850, !851, !852, !853, !859, !864, !865, !866, !869, !870, !873, !876, !877, !880, !881, !882, !885, !886, !887, !890, !891, !892, !905, !906, !907, !908, !909, !910, !911, !912, !913, !924, !927, !935, !938, !939, !940, !941, !942, !943, !944, !947, !950, !953, !954, !955, !956, !957, !969, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !986, !987, !988}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !56, file: !57, line: 752, baseType: !38, size: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !56, file: !57, line: 754, baseType: !18, size: 32, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !56, file: !57, line: 767, baseType: !34, size: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !56, file: !57, line: 768, baseType: !63, size: 32, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !64, line: 113, baseType: !65)
!64 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !64, line: 111, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !65, file: !64, line: 112, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !69, line: 174, baseType: !70)
!69 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !69, line: 173, baseType: !73, size: 32)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !57, line: 770, baseType: !18, size: 32, offset: 352)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !56, file: !57, line: 771, baseType: !18, size: 32, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !56, file: !57, line: 774, baseType: !73, size: 32, offset: 416)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !56, file: !57, line: 775, baseType: !78, size: 128, offset: 448)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !79, line: 58, size: 128, elements: !80)
!79 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!80 = !{!81, !87, !92, !96}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !78, file: !79, line: 59, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !83, line: 60, size: 64, elements: !84)
!83 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !83, line: 61, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !79, line: 60, baseType: !88, size: 32, offset: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !79, line: 60, size: 32, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !88, file: !79, line: 61, baseType: !18, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !88, file: !79, line: 62, baseType: !68, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !78, file: !79, line: 65, baseType: !93, size: 16, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !45, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !47, line: 24, baseType: !95)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !78, file: !79, line: 65, baseType: !93, size: 16, offset: 112)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !56, file: !57, line: 776, baseType: !18, size: 32, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !56, file: !57, line: 777, baseType: !36, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !56, file: !57, line: 778, baseType: !55, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !56, file: !57, line: 787, baseType: !73, size: 32, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !56, file: !57, line: 788, baseType: !73, size: 32, offset: 800)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !56, file: !57, line: 790, baseType: !73, size: 32, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !56, file: !57, line: 792, baseType: !73, size: 32, offset: 864)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !56, file: !57, line: 793, baseType: !73, size: 32, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !56, file: !57, line: 794, baseType: !73, size: 32, offset: 928)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !56, file: !57, line: 795, baseType: !18, size: 32, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !56, file: !57, line: 797, baseType: !108, size: 2048, offset: 1024)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !57, line: 551, size: 2048, elements: !109)
!109 = !{!110, !115, !123, !127, !128, !134, !135, !136, !137, !138, !139, !143, !144, !145, !146, !148, !151, !152, !153}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !108, file: !57, line: 553, baseType: !111, size: 128)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !57, line: 411, size: 128, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !111, file: !57, line: 412, baseType: !36, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !111, file: !57, line: 413, baseType: !44, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !108, file: !57, line: 554, baseType: !116, size: 192, align: 64, offset: 128)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !117, line: 5, size: 192, align: 64, elements: !118)
!117 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!118 = !{!119, !120, !122}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !116, file: !117, line: 6, baseType: !36, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !116, file: !117, line: 7, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !116, file: !117, line: 8, baseType: !121, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !108, file: !57, line: 555, baseType: !124, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !45, line: 23, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !47, line: 31, baseType: !126)
!126 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !108, file: !57, line: 556, baseType: !124, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !108, file: !57, line: 558, baseType: !129, size: 128, offset: 448)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !69, line: 190, size: 128, elements: !130)
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !69, line: 191, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !69, line: 191, baseType: !132, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !108, file: !57, line: 559, baseType: !18, size: 32, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !108, file: !57, line: 561, baseType: !124, size: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !108, file: !57, line: 562, baseType: !124, size: 64, offset: 704)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !108, file: !57, line: 563, baseType: !124, size: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !108, file: !57, line: 564, baseType: !124, size: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !108, file: !57, line: 565, baseType: !140, size: 64, offset: 896)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !45, line: 22, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !47, line: 30, baseType: !142)
!142 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !108, file: !57, line: 566, baseType: !124, size: 64, offset: 960)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !108, file: !57, line: 568, baseType: !124, size: 64, offset: 1024)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !108, file: !57, line: 571, baseType: !73, size: 32, offset: 1088)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !108, file: !57, line: 572, baseType: !147, size: 64, offset: 1152)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !108, file: !57, line: 574, baseType: !149, size: 64, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !57, line: 49, flags: DIFlagFwdDecl)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !108, file: !57, line: 576, baseType: !149, size: 64, offset: 1280)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !108, file: !57, line: 578, baseType: !36, size: 64, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !108, file: !57, line: 588, baseType: !154, size: 512, align: 512, offset: 1536)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !57, line: 497, size: 512, align: 512, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !154, file: !57, line: 498, baseType: !124, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !154, file: !57, line: 499, baseType: !124, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !154, file: !57, line: 500, baseType: !124, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !154, file: !57, line: 501, baseType: !44, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !154, file: !57, line: 502, baseType: !44, size: 32, offset: 224)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !154, file: !57, line: 503, baseType: !36, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !154, file: !57, line: 504, baseType: !36, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !154, file: !57, line: 505, baseType: !36, size: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !154, file: !57, line: 506, baseType: !165, size: 64, align: 64, offset: 448)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !57, line: 445, size: 64, align: 64, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !165, file: !57, line: 446, baseType: !18, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !165, file: !57, line: 447, baseType: !18, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !56, file: !57, line: 798, baseType: !170, size: 384, offset: 3072)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !57, line: 592, size: 384, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !170, file: !57, line: 593, baseType: !129, size: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !170, file: !57, line: 594, baseType: !36, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !170, file: !57, line: 595, baseType: !36, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !170, file: !57, line: 596, baseType: !18, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !170, file: !57, line: 597, baseType: !95, size: 16, offset: 288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !170, file: !57, line: 598, baseType: !95, size: 16, offset: 304)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !170, file: !57, line: 600, baseType: !179, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !56, file: !57, line: 799, baseType: !181, size: 1792, offset: 3456)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !57, line: 610, size: 1792, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !304, !305}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !181, file: !57, line: 611, baseType: !116, size: 192, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !181, file: !57, line: 618, baseType: !124, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !181, file: !57, line: 619, baseType: !124, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !181, file: !57, line: 620, baseType: !124, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !181, file: !57, line: 621, baseType: !124, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !181, file: !57, line: 622, baseType: !124, size: 64, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !181, file: !57, line: 629, baseType: !140, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !181, file: !57, line: 630, baseType: !124, size: 64, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !57, line: 631, baseType: !18, size: 32, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !181, file: !57, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !181, file: !57, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !181, file: !57, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !181, file: !57, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !181, file: !57, line: 662, baseType: !197, size: 512, offset: 704)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !23, line: 118, size: 512, elements: !198)
!198 = !{!199, !207, !208, !213, !300, !301, !302, !303}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !23, line: 119, baseType: !200, size: 256)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !201, line: 9, size: 256, elements: !202)
!201 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !201, line: 10, baseType: !116, size: 192, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !200, file: !201, line: 11, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !206, line: 29, baseType: !140)
!206 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !197, file: !23, line: 120, baseType: !205, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !197, file: !23, line: 121, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!22, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !197, file: !23, line: 122, baseType: !214, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !23, line: 159, size: 512, align: 512, elements: !216)
!216 = !{!217, !268, !269, !273, !283, !284, !295, !299}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !215, file: !23, line: 160, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !23, line: 215, size: 4608, align: 512, elements: !220)
!220 = !{!221, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !219, file: !23, line: 216, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !223, line: 23, baseType: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !223, line: 14, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !224, file: !223, line: 15, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !228, line: 44, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !228, line: 14, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 15, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 15, size: 32, elements: !233)
!233 = !{!234, !235, !243}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !232, file: !228, line: 16, baseType: !68, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 24, baseType: !236, size: 16)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 24, size: 16, elements: !237)
!237 = !{!238, !242}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !236, file: !228, line: 25, baseType: !239, size: 8)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !45, line: 17, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !47, line: 21, baseType: !241)
!241 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !236, file: !228, line: 26, baseType: !239, size: 8, offset: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 28, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 28, size: 32, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !244, file: !228, line: 29, baseType: !93, size: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !244, file: !228, line: 30, baseType: !93, size: 16, offset: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !219, file: !23, line: 217, baseType: !18, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !219, file: !23, line: 218, baseType: !18, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !219, file: !23, line: 219, baseType: !18, size: 32, offset: 96)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !219, file: !23, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !219, file: !23, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !219, file: !23, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !219, file: !23, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !219, file: !23, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !219, file: !23, line: 226, baseType: !18, size: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !219, file: !23, line: 227, baseType: !95, size: 16, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !219, file: !23, line: 228, baseType: !95, size: 16, offset: 208)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !219, file: !23, line: 229, baseType: !18, size: 32, offset: 224)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !219, file: !23, line: 235, baseType: !205, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !219, file: !23, line: 236, baseType: !212, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !219, file: !23, line: 237, baseType: !205, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !219, file: !23, line: 238, baseType: !212, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !219, file: !23, line: 239, baseType: !265, size: 4096, align: 512, offset: 512)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 4096, align: 512, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 8)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !215, file: !23, line: 161, baseType: !18, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !215, file: !23, line: 162, baseType: !270, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !69, line: 32, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !272, line: 96, baseType: !73)
!272 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !215, file: !23, line: 163, baseType: !274, size: 32, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !275, line: 274, baseType: !276)
!275 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !275, line: 274, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !276, file: !275, line: 274, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !275, line: 69, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !275, line: 64, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !280, file: !275, line: 65, baseType: !18, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !215, file: !23, line: 164, baseType: !212, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !215, file: !23, line: 165, baseType: !285, size: 128, offset: 256)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !201, line: 14, size: 128, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !285, file: !201, line: 15, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !117, line: 26, size: 128, elements: !289)
!289 = !{!290, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !288, file: !117, line: 27, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !117, line: 12, size: 64, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !291, file: !117, line: 13, baseType: !121, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !288, file: !117, line: 28, baseType: !121, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !215, file: !23, line: 166, baseType: !296, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!205}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !215, file: !23, line: 167, baseType: !205, size: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !197, file: !23, line: 123, baseType: !239, size: 8, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !197, file: !23, line: 124, baseType: !239, size: 8, offset: 456)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !197, file: !23, line: 125, baseType: !239, size: 8, offset: 464)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !197, file: !23, line: 126, baseType: !239, size: 8, offset: 472)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !181, file: !57, line: 671, baseType: !197, size: 512, offset: 1216)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !181, file: !57, line: 679, baseType: !306, size: 64, offset: 1728)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !56, file: !57, line: 800, baseType: !308, size: 64, offset: 5248)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !57, line: 800, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !56, file: !57, line: 809, baseType: !312, size: 64, offset: 5312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !57, line: 70, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !56, file: !57, line: 825, baseType: !315, size: 2048, align: 512, offset: 5632)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !57, line: 509, size: 2048, align: 512, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !315, file: !57, line: 511, baseType: !124, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !315, file: !57, line: 512, baseType: !124, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !315, file: !57, line: 513, baseType: !124, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !315, file: !57, line: 514, baseType: !124, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !315, file: !57, line: 515, baseType: !124, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !315, file: !57, line: 516, baseType: !124, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !315, file: !57, line: 518, baseType: !124, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !315, file: !57, line: 519, baseType: !124, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !315, file: !57, line: 520, baseType: !140, size: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !315, file: !57, line: 522, baseType: !124, size: 64, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !315, file: !57, line: 523, baseType: !124, size: 64, offset: 640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !315, file: !57, line: 524, baseType: !140, size: 64, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !315, file: !57, line: 526, baseType: !140, size: 64, offset: 768)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !315, file: !57, line: 527, baseType: !124, size: 64, offset: 832)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !315, file: !57, line: 529, baseType: !124, size: 64, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !315, file: !57, line: 530, baseType: !124, size: 64, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !315, file: !57, line: 531, baseType: !124, size: 64, offset: 1024)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !315, file: !57, line: 532, baseType: !124, size: 64, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !315, file: !57, line: 533, baseType: !124, size: 64, offset: 1152)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !315, file: !57, line: 535, baseType: !124, size: 64, offset: 1216)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !315, file: !57, line: 536, baseType: !124, size: 64, offset: 1280)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !315, file: !57, line: 537, baseType: !124, size: 64, offset: 1344)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !315, file: !57, line: 538, baseType: !124, size: 64, offset: 1408)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !315, file: !57, line: 539, baseType: !124, size: 64, offset: 1472)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !315, file: !57, line: 540, baseType: !124, size: 64, offset: 1536)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !315, file: !57, line: 541, baseType: !124, size: 64, offset: 1600)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !315, file: !57, line: 542, baseType: !124, size: 64, offset: 1664)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !315, file: !57, line: 543, baseType: !124, size: 64, offset: 1728)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !56, file: !57, line: 833, baseType: !18, size: 32, offset: 7680)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !56, file: !57, line: 836, baseType: !18, size: 32, offset: 7712)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !56, file: !57, line: 837, baseType: !73, size: 32, offset: 7744)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !56, file: !57, line: 838, baseType: !349, size: 64, offset: 7808)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !352, line: 19, baseType: !353)
!352 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !352, line: 19, size: 64, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !353, file: !352, line: 19, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 1)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !56, file: !57, line: 839, baseType: !360, size: 64, offset: 7872)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !56, file: !57, line: 840, baseType: !351, size: 64, offset: 7936)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !56, file: !57, line: 841, baseType: !34, size: 64, offset: 8000)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !56, file: !57, line: 843, baseType: !95, size: 16, offset: 8064)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !56, file: !57, line: 845, baseType: !95, size: 16, offset: 8080)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !56, file: !57, line: 848, baseType: !73, size: 32, offset: 8096)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !56, file: !57, line: 849, baseType: !367, size: 32, offset: 8128)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !57, line: 718, size: 32, elements: !368)
!368 = !{!369, !376}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !367, file: !57, line: 724, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !57, line: 719, size: 32, elements: !371)
!371 = !{!372, !373, !374, !375}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !370, file: !57, line: 720, baseType: !239, size: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !370, file: !57, line: 721, baseType: !239, size: 8, offset: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !370, file: !57, line: 722, baseType: !239, size: 8, offset: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !370, file: !57, line: 723, baseType: !239, size: 8, offset: 24)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !367, file: !57, line: 725, baseType: !44, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !56, file: !57, line: 850, baseType: !129, size: 128, offset: 8192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !56, file: !57, line: 851, baseType: !379, size: 64, offset: 8320)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !57, line: 60, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !56, file: !57, line: 855, baseType: !36, size: 64, offset: 8384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !56, file: !57, line: 856, baseType: !239, size: 8, offset: 8448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !56, file: !57, line: 857, baseType: !239, size: 8, offset: 8456)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !56, file: !57, line: 858, baseType: !73, size: 32, offset: 8480)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !56, file: !57, line: 859, baseType: !129, size: 128, offset: 8512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !56, file: !57, line: 860, baseType: !73, size: 32, offset: 8640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !56, file: !57, line: 861, baseType: !129, size: 128, offset: 8704)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !56, file: !57, line: 873, baseType: !389, size: 256, offset: 8832)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !57, line: 376, size: 256, elements: !390)
!390 = !{!391, !392, !393, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !389, file: !57, line: 381, baseType: !36, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !389, file: !57, line: 384, baseType: !126, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !389, file: !57, line: 389, baseType: !126, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !389, file: !57, line: 392, baseType: !126, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !56, file: !57, line: 875, baseType: !129, size: 128, offset: 9088)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !56, file: !57, line: 877, baseType: !397, size: 320, offset: 9216)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !398, line: 86, size: 320, elements: !399)
!398 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !397, file: !398, line: 87, baseType: !73, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !397, file: !398, line: 88, baseType: !129, size: 128, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !397, file: !398, line: 89, baseType: !129, size: 128, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !56, file: !57, line: 878, baseType: !116, size: 192, align: 64, offset: 9536)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !56, file: !57, line: 881, baseType: !405, size: 64, offset: 9728)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !407, line: 10, flags: DIFlagFwdDecl)
!407 = !DIFile(filename: "./include/linux/mmdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f9d87c4b20d651b22046bc386b68150")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !56, file: !57, line: 882, baseType: !405, size: 64, offset: 9792)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !56, file: !57, line: 884, baseType: !73, size: 32, offset: 9856)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !56, file: !57, line: 885, baseType: !73, size: 32, offset: 9888)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !56, file: !57, line: 886, baseType: !73, size: 32, offset: 9920)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !56, file: !57, line: 888, baseType: !73, size: 32, offset: 9952)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !56, file: !57, line: 890, baseType: !36, size: 64, offset: 9984)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !56, file: !57, line: 893, baseType: !18, size: 32, offset: 10048)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !56, file: !57, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !56, file: !57, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !56, file: !57, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !56, file: !57, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !56, file: !57, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !56, file: !57, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !56, file: !57, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !56, file: !57, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !56, file: !57, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !56, file: !57, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !56, file: !57, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !56, file: !57, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !56, file: !57, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !56, file: !57, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !56, file: !57, line: 969, baseType: !36, size: 64, offset: 10176)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !56, file: !57, line: 971, baseType: !431, size: 448, offset: 10240)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !28, line: 25, size: 448, elements: !432)
!432 = !{!433, !434, !439}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !431, file: !28, line: 26, baseType: !36, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !431, file: !28, line: 27, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!53, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !28, line: 28, baseType: !440, size: 320, offset: 128)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !28, line: 28, size: 320, elements: !441)
!441 = !{!442, !452, !479}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !440, file: !28, line: 37, baseType: !443, size: 320)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !28, line: 30, size: 320, elements: !444)
!444 = !{!445, !447, !448, !449, !450, !451}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !443, file: !28, line: 31, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !443, file: !28, line: 32, baseType: !44, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !28, line: 33, baseType: !44, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !443, file: !28, line: 34, baseType: !44, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !443, file: !28, line: 35, baseType: !124, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !443, file: !28, line: 36, baseType: !446, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !440, file: !28, line: 47, baseType: !453, size: 192)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !28, line: 39, size: 192, elements: !454)
!454 = !{!455, !456, !457, !478}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !453, file: !28, line: 40, baseType: !270, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !28, line: 41, baseType: !27, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !28, line: 42, baseType: !458, size: 64, offset: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !28, line: 42, size: 64, elements: !459)
!459 = !{!460, !468}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !458, file: !28, line: 43, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !463, line: 7, size: 128, elements: !464)
!463 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!464 = !{!465, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !462, file: !463, line: 8, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !272, line: 93, baseType: !142)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !462, file: !463, line: 9, baseType: !142, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !458, file: !28, line: 44, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !471, line: 7, size: 64, elements: !472)
!471 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!472 = !{!473, !477}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !470, file: !471, line: 8, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !471, line: 5, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !45, line: 20, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !47, line: 26, baseType: !73)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !470, file: !471, line: 9, baseType: !475, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !453, file: !28, line: 46, baseType: !124, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !440, file: !28, line: 55, baseType: !480, size: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !28, line: 49, size: 256, elements: !481)
!481 = !{!482, !485, !486, !487, !488}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !480, file: !28, line: 50, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !28, line: 14, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !480, file: !28, line: 51, baseType: !73, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !480, file: !28, line: 52, baseType: !73, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !480, file: !28, line: 53, baseType: !36, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !480, file: !28, line: 54, baseType: !36, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !56, file: !57, line: 973, baseType: !490, size: 32, offset: 10688)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !69, line: 27, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !272, line: 28, baseType: !73)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !56, file: !57, line: 974, baseType: !490, size: 32, offset: 10720)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !56, file: !57, line: 978, baseType: !36, size: 64, offset: 10752)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !56, file: !57, line: 987, baseType: !55, size: 64, offset: 10816)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !56, file: !57, line: 990, baseType: !55, size: 64, offset: 10880)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !56, file: !57, line: 995, baseType: !129, size: 128, offset: 10944)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !56, file: !57, line: 996, baseType: !129, size: 128, offset: 11072)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !56, file: !57, line: 997, baseType: !55, size: 64, offset: 11200)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !56, file: !57, line: 1005, baseType: !129, size: 128, offset: 11264)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !56, file: !57, line: 1006, baseType: !129, size: 128, offset: 11392)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !56, file: !57, line: 1009, baseType: !502, size: 64, offset: 11520)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !504, line: 59, size: 768, elements: !505)
!504 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!505 = !{!506, !507, !508, !517, !530, !531, !538, !547}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !503, file: !504, line: 61, baseType: !63, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !503, file: !504, line: 62, baseType: !18, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !503, file: !504, line: 63, baseType: !509, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !510, line: 29, baseType: !511)
!510 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !510, line: 17, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !510, line: 18, baseType: !514, size: 32)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !510, line: 18, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !514, file: !510, line: 19, baseType: !224, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !503, file: !504, line: 65, baseType: !518, size: 256, offset: 128)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 256, elements: !528)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !69, line: 194, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !519, file: !69, line: 195, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !69, line: 198, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !69, line: 199, baseType: !522, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !523, file: !69, line: 199, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!528 = !{!529}
!529 = !DISubrange(count: 4)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !503, file: !504, line: 66, baseType: !519, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !503, file: !504, line: 68, baseType: !532, size: 192, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !533, line: 41, baseType: !534)
!533 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !533, line: 37, size: 192, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !534, file: !533, line: 38, baseType: !509, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !534, file: !533, line: 39, baseType: !129, size: 128, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !503, file: !504, line: 69, baseType: !539, size: 128, align: 64, offset: 640)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !69, line: 232, size: 128, align: 64, elements: !540)
!540 = !{!541, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !69, line: 233, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !539, file: !69, line: 234, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !542}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !503, file: !504, line: 70, baseType: !548, offset: 768)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, elements: !555)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !504, line: 54, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !549, file: !504, line: 55, baseType: !73, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !549, file: !504, line: 56, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !504, line: 56, flags: DIFlagFwdDecl)
!555 = !{!556}
!556 = !DISubrange(count: -1)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !56, file: !57, line: 1010, baseType: !558, size: 512, offset: 11584)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 512, elements: !528)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !56, file: !57, line: 1011, baseType: !129, size: 128, offset: 12096)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !56, file: !57, line: 1012, baseType: !129, size: 128, offset: 12224)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !56, file: !57, line: 1014, baseType: !562, size: 64, offset: 12352)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !564, line: 96, flags: DIFlagFwdDecl)
!564 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !56, file: !57, line: 1017, baseType: !566, size: 64, offset: 12416)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !56, file: !57, line: 1020, baseType: !566, size: 64, offset: 12480)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !56, file: !57, line: 1023, baseType: !34, size: 64, offset: 12544)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !56, file: !57, line: 1025, baseType: !124, size: 64, offset: 12608)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !56, file: !57, line: 1026, baseType: !124, size: 64, offset: 12672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !56, file: !57, line: 1031, baseType: !124, size: 64, offset: 12736)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !56, file: !57, line: 1032, baseType: !573, size: 192, offset: 12800)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !57, line: 324, size: 192, elements: !574)
!574 = !{!575, !576, !577}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !573, file: !57, line: 326, baseType: !124, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !573, file: !57, line: 327, baseType: !124, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !57, line: 328, baseType: !222, size: 32, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !56, file: !57, line: 1041, baseType: !36, size: 64, offset: 12992)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !56, file: !57, line: 1042, baseType: !36, size: 64, offset: 13056)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !56, file: !57, line: 1045, baseType: !124, size: 64, offset: 13120)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !56, file: !57, line: 1048, baseType: !124, size: 64, offset: 13184)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !56, file: !57, line: 1051, baseType: !36, size: 64, offset: 13248)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !56, file: !57, line: 1052, baseType: !36, size: 64, offset: 13312)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !56, file: !57, line: 1055, baseType: !585, size: 640, offset: 13376)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !586, line: 132, size: 640, elements: !587)
!586 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!587 = !{!588, !596, !597}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !585, file: !586, line: 133, baseType: !589, size: 576)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 576, elements: !594)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !586, line: 117, size: 192, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !590, file: !586, line: 118, baseType: !124, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !590, file: !586, line: 119, baseType: !285, size: 128, offset: 64)
!594 = !{!595}
!595 = !DISubrange(count: 3)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !585, file: !586, line: 134, baseType: !18, size: 32, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !585, file: !586, line: 135, baseType: !18, size: 32, offset: 608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !56, file: !57, line: 1058, baseType: !599, size: 448, offset: 14016)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !586, line: 144, size: 448, elements: !600)
!600 = !{!601, !602, !620}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !599, file: !586, line: 145, baseType: !539, size: 128, align: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !599, file: !586, line: 146, baseType: !603, size: 256, offset: 128)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !604, line: 66, size: 256, elements: !605)
!604 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!605 = !{!606, !613, !614, !619}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !603, file: !604, line: 67, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !608, line: 13, baseType: !609)
!608 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !69, line: 181, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 179, size: 64, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !610, file: !69, line: 180, baseType: !140, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !603, file: !604, line: 68, baseType: !222, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !603, file: !604, line: 70, baseType: !615, size: 32, offset: 96)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !616, line: 15, size: 32, elements: !617)
!616 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !615, file: !616, line: 20, baseType: !68, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !603, file: !604, line: 72, baseType: !129, size: 128, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !599, file: !586, line: 147, baseType: !18, size: 32, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !56, file: !57, line: 1064, baseType: !622, size: 64, offset: 14464)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !57, line: 1064, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !56, file: !57, line: 1067, baseType: !622, size: 64, offset: 14528)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !56, file: !57, line: 1070, baseType: !622, size: 64, offset: 14592)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !56, file: !57, line: 1074, baseType: !628, size: 64, offset: 14656)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !57, line: 1074, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !56, file: !57, line: 1084, baseType: !631, size: 128, offset: 14720)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 16)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !56, file: !57, line: 1086, baseType: !635, size: 64, offset: 14848)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !57, line: 55, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !56, file: !57, line: 1089, baseType: !638, size: 64, offset: 14912)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !639, line: 12, size: 64, elements: !640)
!639 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !638, file: !639, line: 13, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !639, line: 8, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !56, file: !57, line: 1090, baseType: !645, size: 128, offset: 14976)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !646, line: 13, size: 128, elements: !647)
!646 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !645, file: !646, line: 14, baseType: !129, size: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !56, file: !57, line: 1097, baseType: !650, size: 64, offset: 15104)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !57, line: 50, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !56, file: !57, line: 1100, baseType: !653, size: 64, offset: 15168)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !57, line: 1100, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !56, file: !57, line: 1103, baseType: !656, size: 64, offset: 15232)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !57, line: 53, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !56, file: !57, line: 1107, baseType: !659, size: 64, offset: 15296)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !57, line: 56, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !56, file: !57, line: 1110, baseType: !662, size: 64, offset: 15360)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !586, line: 236, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !56, file: !57, line: 1111, baseType: !665, size: 64, offset: 15424)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !57, line: 67, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !56, file: !57, line: 1112, baseType: !668, size: 64, offset: 15488)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !669, line: 25, baseType: !670)
!669 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !669, line: 23, size: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !670, file: !669, line: 24, baseType: !356, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !56, file: !57, line: 1113, baseType: !668, size: 64, offset: 15552)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !56, file: !57, line: 1115, baseType: !668, size: 64, offset: 15616)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !56, file: !57, line: 1116, baseType: !676, size: 192, offset: 15680)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !677, line: 32, size: 192, elements: !678)
!677 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !676, file: !677, line: 33, baseType: !129, size: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !676, file: !677, line: 34, baseType: !668, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !56, file: !57, line: 1117, baseType: !36, size: 64, offset: 15872)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !56, file: !57, line: 1118, baseType: !683, size: 64, offset: 15936)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 61, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !272, line: 72, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !272, line: 16, baseType: !36)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !56, file: !57, line: 1119, baseType: !18, size: 32, offset: 16000)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !56, file: !57, line: 1121, baseType: !542, size: 64, offset: 16064)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !56, file: !57, line: 1125, baseType: !689, size: 64, offset: 16128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !57, line: 43, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !56, file: !57, line: 1127, baseType: !692, size: 32, offset: 16192)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !693, line: 23, baseType: !694)
!693 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 21, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !694, file: !693, line: 22, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !69, line: 37, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !272, line: 49, baseType: !18)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !56, file: !57, line: 1128, baseType: !18, size: 32, offset: 16224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !56, file: !57, line: 1130, baseType: !701, size: 128, offset: 16256)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !702, line: 37, size: 128, elements: !703)
!702 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !701, file: !702, line: 38, baseType: !73, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !701, file: !702, line: 39, baseType: !68, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !701, file: !702, line: 40, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !702, line: 24, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !56, file: !57, line: 1131, baseType: !710, size: 256, offset: 16384)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !711, line: 12, size: 256, elements: !712)
!711 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!712 = !{!713, !715, !716, !717}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !710, file: !711, line: 13, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !710, file: !711, line: 14, baseType: !36, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !710, file: !711, line: 15, baseType: !36, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !710, file: !711, line: 16, baseType: !718, size: 8, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !69, line: 35, baseType: !719)
!719 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !56, file: !57, line: 1134, baseType: !124, size: 64, offset: 16640)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !56, file: !57, line: 1135, baseType: !124, size: 64, offset: 16704)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !56, file: !57, line: 1138, baseType: !509, size: 32, offset: 16768)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !56, file: !57, line: 1141, baseType: !222, size: 32, offset: 16800)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !56, file: !57, line: 1143, baseType: !725, size: 64, offset: 16832)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !57, line: 735, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !725, file: !57, line: 736, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !56, file: !57, line: 1147, baseType: !288, size: 128, offset: 16896)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !56, file: !57, line: 1149, baseType: !55, size: 64, offset: 17024)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !56, file: !57, line: 1151, baseType: !732, size: 64, offset: 17088)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !57, line: 1151, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !56, file: !57, line: 1188, baseType: !34, size: 64, offset: 17152)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !56, file: !57, line: 1191, baseType: !736, size: 64, offset: 17216)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !57, line: 44, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !56, file: !57, line: 1194, baseType: !739, size: 64, offset: 17280)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !57, line: 45, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !56, file: !57, line: 1197, baseType: !742, size: 64, offset: 17344)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !57, line: 61, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !56, file: !57, line: 1199, baseType: !745, size: 64, offset: 17408)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !57, line: 52, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !56, file: !57, line: 1202, baseType: !748, size: 64, offset: 17472)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !57, line: 48, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !56, file: !57, line: 1205, baseType: !36, size: 64, offset: 17536)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !56, file: !57, line: 1206, baseType: !752, size: 64, offset: 17600)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !677, line: 14, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !677, line: 12, size: 384, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !677, line: 13, baseType: !757, size: 384)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !677, line: 13, size: 384, elements: !758)
!758 = !{!759, !760, !761, !762}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !757, file: !677, line: 13, baseType: !73, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !757, file: !677, line: 13, baseType: !73, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !757, file: !677, line: 13, baseType: !73, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !757, file: !677, line: 13, baseType: !763, size: 256, offset: 128)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !764, line: 37, size: 256, elements: !765)
!764 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!765 = !{!766, !771, !784, !790, !800, !828, !833}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !763, file: !764, line: 42, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !764, line: 39, size: 64, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !767, file: !764, line: 40, baseType: !491, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !767, file: !764, line: 41, baseType: !698, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !763, file: !764, line: 50, baseType: !772, size: 192)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !764, line: 45, size: 192, elements: !773)
!773 = !{!774, !776, !777, !783}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !772, file: !764, line: 46, baseType: !775, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !272, line: 95, baseType: !73)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !772, file: !764, line: 47, baseType: !73, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !772, file: !764, line: 48, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !764, line: 11, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !764, line: 8, size: 64, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !779, file: !764, line: 9, baseType: !73, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !779, file: !764, line: 10, baseType: !34, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !772, file: !764, line: 49, baseType: !73, size: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !763, file: !764, line: 57, baseType: !785, size: 128)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !764, line: 53, size: 128, elements: !786)
!786 = !{!787, !788, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !785, file: !764, line: 54, baseType: !491, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !785, file: !764, line: 55, baseType: !698, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !785, file: !764, line: 56, baseType: !778, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !763, file: !764, line: 66, baseType: !791, size: 256)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !764, line: 60, size: 256, elements: !792)
!792 = !{!793, !794, !795, !796, !799}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !791, file: !764, line: 61, baseType: !491, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !791, file: !764, line: 62, baseType: !698, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !791, file: !764, line: 63, baseType: !73, size: 32, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !791, file: !764, line: 64, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !272, line: 94, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !272, line: 15, baseType: !53)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !791, file: !764, line: 65, baseType: !797, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !763, file: !764, line: 105, baseType: !801, size: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !764, line: 69, size: 256, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !801, file: !764, line: 70, baseType: !34, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !764, line: 79, baseType: !805, size: 192, offset: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !764, line: 79, size: 192, elements: !806)
!806 = !{!807, !808, !810, !817, !822}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !805, file: !764, line: 81, baseType: !73, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !805, file: !764, line: 86, baseType: !809, size: 16)
!809 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !805, file: !764, line: 92, baseType: !811, size: 192)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !764, line: 88, size: 192, elements: !812)
!812 = !{!813, !815, !816}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !811, file: !764, line: 89, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !266)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !811, file: !764, line: 90, baseType: !34, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !811, file: !764, line: 91, baseType: !34, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !805, file: !764, line: 97, baseType: !818, size: 96)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !764, line: 94, size: 96, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !818, file: !764, line: 95, baseType: !814, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !818, file: !764, line: 96, baseType: !46, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !805, file: !764, line: 103, baseType: !823, size: 128)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !764, line: 99, size: 128, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !823, file: !764, line: 100, baseType: !36, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !823, file: !764, line: 101, baseType: !46, size: 32, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !823, file: !764, line: 102, baseType: !46, size: 32, offset: 96)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !763, file: !764, line: 111, baseType: !829, size: 128)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !764, line: 108, size: 128, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !829, file: !764, line: 109, baseType: !53, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !829, file: !764, line: 110, baseType: !73, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !763, file: !764, line: 118, baseType: !834, size: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !764, line: 114, size: 128, elements: !835)
!835 = !{!836, !837, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !834, file: !764, line: 115, baseType: !34, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !834, file: !764, line: 116, baseType: !73, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !834, file: !764, line: 117, baseType: !18, size: 32, offset: 96)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !56, file: !57, line: 1208, baseType: !840, size: 448, offset: 17664)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !841, line: 12, size: 448, elements: !842)
!841 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!842 = !{!843, !844, !845, !846, !847, !848, !849}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !840, file: !841, line: 15, baseType: !124, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !840, file: !841, line: 17, baseType: !124, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !840, file: !841, line: 19, baseType: !124, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !840, file: !841, line: 21, baseType: !124, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !840, file: !841, line: 29, baseType: !124, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !840, file: !841, line: 35, baseType: !124, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !840, file: !841, line: 44, baseType: !124, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !56, file: !57, line: 1215, baseType: !124, size: 64, offset: 18112)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !56, file: !57, line: 1217, baseType: !124, size: 64, offset: 18176)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !56, file: !57, line: 1219, baseType: !124, size: 64, offset: 18240)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !56, file: !57, line: 1223, baseType: !854, size: 64, offset: 18304)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !855, line: 99, baseType: !856)
!855 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !855, line: 99, size: 64, elements: !857)
!857 = !{!858}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !856, file: !855, line: 99, baseType: !356, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !56, file: !57, line: 1225, baseType: !860, size: 32, offset: 18368)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !275, line: 275, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !275, line: 275, size: 32, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !861, file: !275, line: 275, baseType: !279, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !56, file: !57, line: 1226, baseType: !73, size: 32, offset: 18400)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !56, file: !57, line: 1227, baseType: !73, size: 32, offset: 18432)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !56, file: !57, line: 1231, baseType: !867, size: 64, offset: 18496)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !57, line: 1231, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !56, file: !57, line: 1233, baseType: !129, size: 128, offset: 18560)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !56, file: !57, line: 1240, baseType: !871, size: 64, offset: 18688)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !57, line: 62, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !56, file: !57, line: 1242, baseType: !874, size: 64, offset: 18752)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !57, line: 1242, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !56, file: !57, line: 1244, baseType: !129, size: 128, offset: 18816)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !56, file: !57, line: 1245, baseType: !878, size: 64, offset: 18944)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !57, line: 51, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !56, file: !57, line: 1246, baseType: !603, size: 256, offset: 19008)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !56, file: !57, line: 1247, baseType: !18, size: 32, offset: 19264)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !56, file: !57, line: 1250, baseType: !883, size: 64, offset: 19328)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !57, line: 57, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !56, file: !57, line: 1251, baseType: !603, size: 256, offset: 19392)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !56, file: !57, line: 1252, baseType: !129, size: 128, offset: 19648)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !56, file: !57, line: 1259, baseType: !888, size: 64, offset: 19776)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !57, line: 54, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !56, file: !57, line: 1260, baseType: !809, size: 16, offset: 19840)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !56, file: !57, line: 1261, baseType: !809, size: 16, offset: 19856)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !56, file: !57, line: 1314, baseType: !893, size: 64, offset: 19904)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !895, line: 62, size: 256, align: 256, elements: !896)
!895 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!896 = !{!897, !898, !899, !900, !901, !902, !903}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !894, file: !895, line: 75, baseType: !46, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !894, file: !895, line: 90, baseType: !46, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !894, file: !895, line: 112, baseType: !125, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !895, line: 132, baseType: !46, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !894, file: !895, line: 140, baseType: !46, size: 32, offset: 160)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !894, file: !895, line: 149, baseType: !46, size: 32, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !894, file: !895, line: 154, baseType: !904, offset: 224)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !555)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !56, file: !57, line: 1315, baseType: !44, size: 32, offset: 19968)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !56, file: !57, line: 1316, baseType: !44, size: 32, offset: 20000)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !56, file: !57, line: 1321, baseType: !36, size: 64, offset: 20032)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !56, file: !57, line: 1325, baseType: !73, size: 32, offset: 20096)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !56, file: !57, line: 1326, baseType: !73, size: 32, offset: 20128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !56, file: !57, line: 1327, baseType: !73, size: 32, offset: 20160)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !56, file: !57, line: 1328, baseType: !73, size: 32, offset: 20192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !56, file: !57, line: 1329, baseType: !539, size: 128, align: 64, offset: 20224)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !56, file: !57, line: 1332, baseType: !914, size: 128, offset: 20352)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !915, line: 51, size: 128, elements: !916)
!915 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!916 = !{!917, !922, !923}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !914, file: !915, line: 60, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !919, line: 7, size: 64, elements: !920)
!919 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !918, file: !919, line: 12, baseType: !353, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !914, file: !915, line: 63, baseType: !718, size: 8, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !914, file: !915, line: 70, baseType: !718, size: 8, offset: 72)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !56, file: !57, line: 1335, baseType: !925, size: 64, offset: 20480)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !57, line: 59, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !56, file: !57, line: 1337, baseType: !928, size: 128, offset: 20544)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !915, line: 39, size: 128, elements: !929)
!929 = !{!930, !933, !934}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !928, file: !915, line: 40, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !407, line: 8, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !928, file: !915, line: 42, baseType: !46, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !928, file: !915, line: 43, baseType: !46, size: 32, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !56, file: !57, line: 1340, baseType: !936, size: 64, offset: 20672)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !57, line: 69, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !56, file: !57, line: 1351, baseType: !73, size: 32, offset: 20736)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !56, file: !57, line: 1352, baseType: !73, size: 32, offset: 20768)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !56, file: !57, line: 1354, baseType: !36, size: 64, offset: 20800)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !56, file: !57, line: 1364, baseType: !124, size: 64, offset: 20864)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !56, file: !57, line: 1365, baseType: !124, size: 64, offset: 20928)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !56, file: !57, line: 1412, baseType: !36, size: 64, offset: 20992)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !56, file: !57, line: 1453, baseType: !945, size: 64, offset: 21056)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !57, line: 1453, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !56, file: !57, line: 1457, baseType: !948, size: 64, offset: 21120)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 1457, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !56, file: !57, line: 1463, baseType: !951, offset: 21184)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !57, line: 739, elements: !952)
!952 = !{}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !56, file: !57, line: 1470, baseType: !539, size: 128, align: 64, offset: 21184)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !56, file: !57, line: 1471, baseType: !63, size: 32, offset: 21312)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !56, file: !57, line: 1472, baseType: !73, size: 32, offset: 21344)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !56, file: !57, line: 1474, baseType: !55, size: 64, offset: 21376)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !56, file: !57, line: 1475, baseType: !958, size: 320, offset: 21440)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !959, line: 11, size: 320, elements: !960)
!959 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!960 = !{!961, !962, !963, !968}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !958, file: !959, line: 16, baseType: !523, size: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !958, file: !959, line: 17, baseType: !36, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !958, file: !959, line: 18, baseType: !964, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !959, line: 19, baseType: !44, size: 32, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !56, file: !57, line: 1478, baseType: !970, size: 64, offset: 21760)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !57, line: 1478, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !56, file: !57, line: 1482, baseType: !63, size: 32, offset: 21824)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !56, file: !57, line: 1489, baseType: !34, size: 64, offset: 21888)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !56, file: !57, line: 1504, baseType: !34, size: 64, offset: 21952)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !56, file: !57, line: 1505, baseType: !125, size: 64, offset: 22016)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !56, file: !57, line: 1506, baseType: !124, size: 64, offset: 22080)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !56, file: !57, line: 1507, baseType: !125, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !56, file: !57, line: 1508, baseType: !125, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !56, file: !57, line: 1509, baseType: !125, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !56, file: !57, line: 1510, baseType: !539, size: 128, align: 64, offset: 22208)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !56, file: !57, line: 1511, baseType: !73, size: 32, offset: 22336)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !56, file: !57, line: 1515, baseType: !983, size: 64, offset: 22400)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !83, line: 56, size: 64, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !983, file: !83, line: 57, baseType: !86, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !56, file: !57, line: 1518, baseType: !983, size: 64, offset: 22464)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !56, file: !57, line: 1528, baseType: !539, size: 128, align: 64, offset: 22528)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !56, file: !57, line: 1552, baseType: !989, size: 35328, offset: 23040)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !990, line: 430, size: 35328, elements: !991)
!990 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!991 = !{!992, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1021, !1022, !1023, !1024, !1025, !1026, !1029, !1030, !1031, !1032}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !989, file: !990, line: 432, baseType: !993, size: 192)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 192, elements: !594)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !995, line: 16, size: 64, elements: !996)
!995 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !994, file: !995, line: 17, baseType: !93, size: 16)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !994, file: !995, line: 18, baseType: !93, size: 16, offset: 16)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !994, file: !995, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !994, file: !995, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !994, file: !995, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !994, file: !995, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !994, file: !995, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !994, file: !995, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !994, file: !995, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !994, file: !995, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !994, file: !995, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !994, file: !995, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !994, file: !995, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !989, file: !990, line: 436, baseType: !36, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !989, file: !990, line: 440, baseType: !95, size: 16, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !989, file: !990, line: 441, baseType: !95, size: 16, offset: 272)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !989, file: !990, line: 442, baseType: !95, size: 16, offset: 288)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !989, file: !990, line: 443, baseType: !95, size: 16, offset: 304)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !989, file: !990, line: 447, baseType: !36, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !989, file: !990, line: 448, baseType: !36, size: 64, offset: 384)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !989, file: !990, line: 459, baseType: !1018, size: 256, offset: 448)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 256, elements: !528)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !990, line: 428, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !989, file: !990, line: 461, baseType: !36, size: 64, offset: 704)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !989, file: !990, line: 463, baseType: !36, size: 64, offset: 768)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !989, file: !990, line: 465, baseType: !36, size: 64, offset: 832)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !989, file: !990, line: 466, baseType: !36, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !989, file: !990, line: 467, baseType: !36, size: 64, offset: 960)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !989, file: !990, line: 473, baseType: !1027, size: 64, offset: 1024)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !990, line: 10, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !989, file: !990, line: 480, baseType: !36, size: 64, offset: 1088)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !989, file: !990, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !989, file: !990, line: 491, baseType: !44, size: 32, offset: 1184)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !989, file: !990, line: 501, baseType: !1033, size: 33792, offset: 1536)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1034, line: 448, size: 33792, elements: !1035)
!1034 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1035 = !{!1036, !1037, !1038, !1206, !1207, !1213, !1214}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1033, file: !1034, line: 461, baseType: !18, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1033, file: !1034, line: 468, baseType: !36, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1033, file: !1034, line: 476, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1034, line: 356, size: 33280, align: 512, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1040, file: !1034, line: 358, baseType: !18, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1040, file: !1034, line: 361, baseType: !18, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1040, file: !1034, line: 364, baseType: !124, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1040, file: !1034, line: 367, baseType: !124, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1040, file: !1034, line: 370, baseType: !124, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1040, file: !1034, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1040, file: !1034, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1040, file: !1034, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1040, file: !1034, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1040, file: !1034, line: 397, baseType: !1052, size: 32768, offset: 512)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1034, line: 348, size: 32768, elements: !1053)
!1053 = !{!1054, !1069, !1110, !1187, !1202}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1052, file: !1034, line: 349, baseType: !1055, size: 896)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1034, line: 12, size: 896, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1068}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1055, file: !1034, line: 13, baseType: !44, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1055, file: !1034, line: 14, baseType: !44, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1055, file: !1034, line: 15, baseType: !44, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1055, file: !1034, line: 16, baseType: !44, size: 32, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1055, file: !1034, line: 17, baseType: !44, size: 32, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1055, file: !1034, line: 18, baseType: !44, size: 32, offset: 160)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1055, file: !1034, line: 19, baseType: !44, size: 32, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1055, file: !1034, line: 22, baseType: !1065, size: 640, offset: 224)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 20)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1055, file: !1034, line: 25, baseType: !44, size: 32, offset: 864)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1052, file: !1034, line: 350, baseType: !1070, size: 4096, align: 128)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1034, line: 34, size: 4096, align: 128, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1091, !1092, !1093, !1097, !1101, !1105}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1070, file: !1034, line: 35, baseType: !93, size: 16)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1070, file: !1034, line: 36, baseType: !93, size: 16, offset: 16)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1070, file: !1034, line: 37, baseType: !93, size: 16, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1070, file: !1034, line: 38, baseType: !93, size: 16, offset: 48)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !1034, line: 39, baseType: !1077, size: 128, offset: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !1034, line: 39, size: 128, elements: !1078)
!1078 = !{!1079, !1084}
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1034, line: 40, baseType: !1080, size: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !1034, line: 40, size: 128, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1080, file: !1034, line: 41, baseType: !124, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1080, file: !1034, line: 42, baseType: !124, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1034, line: 44, baseType: !1085, size: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !1034, line: 44, size: 128, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1085, file: !1034, line: 45, baseType: !44, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1085, file: !1034, line: 46, baseType: !44, size: 32, offset: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1085, file: !1034, line: 47, baseType: !44, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1085, file: !1034, line: 48, baseType: !44, size: 32, offset: 96)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1070, file: !1034, line: 51, baseType: !44, size: 32, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1070, file: !1034, line: 52, baseType: !44, size: 32, offset: 224)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1070, file: !1034, line: 55, baseType: !1094, size: 1024, offset: 256)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1024, elements: !1095)
!1095 = !{!1096}
!1096 = !DISubrange(count: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1070, file: !1034, line: 58, baseType: !1098, size: 2048, offset: 1280)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1070, file: !1034, line: 60, baseType: !1102, size: 384, offset: 3328)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 384, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 12)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !1034, line: 62, baseType: !1106, size: 384, offset: 3712)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !1034, line: 62, size: 384, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1106, file: !1034, line: 63, baseType: !1102, size: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1106, file: !1034, line: 64, baseType: !1102, size: 384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1052, file: !1034, line: 351, baseType: !1111, size: 1088)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1034, line: 79, size: 1088, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1186}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1111, file: !1034, line: 80, baseType: !44, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1111, file: !1034, line: 81, baseType: !44, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1111, file: !1034, line: 82, baseType: !44, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1111, file: !1034, line: 83, baseType: !44, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1111, file: !1034, line: 84, baseType: !44, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1111, file: !1034, line: 85, baseType: !44, size: 32, offset: 160)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1111, file: !1034, line: 86, baseType: !44, size: 32, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1111, file: !1034, line: 88, baseType: !1065, size: 640, offset: 224)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1111, file: !1034, line: 89, baseType: !239, size: 8, offset: 864)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1111, file: !1034, line: 90, baseType: !239, size: 8, offset: 872)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1111, file: !1034, line: 91, baseType: !239, size: 8, offset: 880)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1111, file: !1034, line: 92, baseType: !239, size: 8, offset: 888)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1111, file: !1034, line: 93, baseType: !239, size: 8, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1111, file: !1034, line: 94, baseType: !239, size: 8, offset: 904)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1111, file: !1034, line: 95, baseType: !1128, size: 64, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1130, line: 11, size: 128, elements: !1131)
!1130 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1129, file: !1130, line: 12, baseType: !53, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1129, file: !1130, line: 13, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1136, line: 103, size: 1344, elements: !1137)
!1136 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1166, !1167, !1168}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1135, file: !1136, line: 109, baseType: !36, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1135, file: !1136, line: 110, baseType: !36, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1135, file: !1136, line: 111, baseType: !36, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1135, file: !1136, line: 112, baseType: !36, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1135, file: !1136, line: 113, baseType: !36, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1135, file: !1136, line: 114, baseType: !36, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1135, file: !1136, line: 117, baseType: !36, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1135, file: !1136, line: 118, baseType: !36, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1135, file: !1136, line: 119, baseType: !36, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1135, file: !1136, line: 120, baseType: !36, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1135, file: !1136, line: 121, baseType: !36, size: 64, offset: 640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1135, file: !1136, line: 122, baseType: !36, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1135, file: !1136, line: 123, baseType: !36, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1135, file: !1136, line: 124, baseType: !36, size: 64, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1135, file: !1136, line: 125, baseType: !36, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1135, file: !1136, line: 139, baseType: !36, size: 64, offset: 960)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1135, file: !1136, line: 142, baseType: !36, size: 64, offset: 1024)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !1136, line: 144, baseType: !1156, size: 64, offset: 1088)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1135, file: !1136, line: 144, size: 64, elements: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1156, file: !1136, line: 146, baseType: !93, size: 16)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1156, file: !1136, line: 148, baseType: !124, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1156, file: !1136, line: 150, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1136, line: 59, size: 64, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1161, file: !1136, line: 61, baseType: !124, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1161, file: !1136, line: 63, baseType: !124, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1161, file: !1136, line: 65, baseType: !124, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1135, file: !1136, line: 153, baseType: !36, size: 64, offset: 1152)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1135, file: !1136, line: 154, baseType: !36, size: 64, offset: 1216)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !1136, line: 156, baseType: !1169, size: 64, offset: 1280)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1135, file: !1136, line: 156, size: 64, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1169, file: !1136, line: 158, baseType: !93, size: 16)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1169, file: !1136, line: 160, baseType: !124, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1169, file: !1136, line: 162, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1136, line: 69, size: 64, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1174, file: !1136, line: 71, baseType: !124, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1174, file: !1136, line: 73, baseType: !124, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1174, file: !1136, line: 75, baseType: !124, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1174, file: !1136, line: 77, baseType: !124, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1174, file: !1136, line: 80, baseType: !124, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1174, file: !1136, line: 83, baseType: !124, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1174, file: !1136, line: 86, baseType: !124, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1174, file: !1136, line: 88, baseType: !124, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1174, file: !1136, line: 93, baseType: !124, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1174, file: !1136, line: 100, baseType: !124, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1111, file: !1034, line: 96, baseType: !44, size: 32, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1052, file: !1034, line: 352, baseType: !1188, size: 4608, align: 512)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1034, line: 333, size: 4608, align: 512, elements: !1189)
!1189 = !{!1190, !1191, !1200}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1188, file: !1034, line: 334, baseType: !1070, size: 4096, align: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1188, file: !1034, line: 335, baseType: !1192, size: 512, offset: 4096)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1034, line: 312, size: 512, elements: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1192, file: !1034, line: 313, baseType: !124, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1192, file: !1034, line: 314, baseType: !124, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1192, file: !1034, line: 315, baseType: !1197, size: 384, offset: 128)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 384, elements: !1198)
!1198 = !{!1199}
!1199 = !DISubrange(count: 6)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1188, file: !1034, line: 336, baseType: !1201, offset: 4608)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, elements: !555)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1052, file: !1034, line: 353, baseType: !1203, size: 32768)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 32768, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 4096)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1033, file: !1034, line: 484, baseType: !1039, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1033, file: !1034, line: 491, baseType: !1208, size: 128, offset: 256)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1034, line: 404, size: 128, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1208, file: !1034, line: 424, baseType: !124, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1208, file: !1034, line: 432, baseType: !18, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1208, file: !1034, line: 440, baseType: !18, size: 32, offset: 96)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1033, file: !1034, line: 498, baseType: !1208, size: 128, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1033, file: !1034, line: 508, baseType: !1040, size: 33280, align: 512, offset: 512)
!1215 = !{!0, !7, !12}
!1216 = !{i32 7, !"Dwarf Version", i32 5}
!1217 = !{i32 2, !"Debug Info Version", i32 3}
!1218 = !{i32 1, !"wchar_size", i32 2}
!1219 = !{i32 8, !"cf-protection-branch", i32 1}
!1220 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1221 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1222 = !{i32 1, !"Code Model", i32 2}
!1223 = !{i32 1, !"override-stack-alignment", i32 8}
!1224 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1225 = distinct !DISubprogram(name: "cpuidle_poll_state_init", scope: !2, file: !2, line: 48, type: !1226, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1304)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !1230, line: 152, size: 8704, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4e37910f6e1ee8771b4e96ef73e2ef7")
!1231 = !{!1232, !1235, !1239, !1240, !1299, !1300, !1301, !1303}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1229, file: !1230, line: 153, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1229, file: !1230, line: 154, baseType: !1236, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1238, line: 348, flags: DIFlagFwdDecl)
!1238 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !1229, file: !1230, line: 157, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1229, file: !1230, line: 159, baseType: !1241, size: 8320, offset: 192)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 8320, elements: !1281)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !1230, line: 49, size: 832, elements: !1243)
!1243 = !{!1244, !1245, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1294, !1298}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1242, file: !1230, line: 50, baseType: !631, size: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1242, file: !1230, line: 51, baseType: !1246, size: 256, offset: 128)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1095)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !1242, file: !1230, line: 53, baseType: !140, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !1242, file: !1230, line: 54, baseType: !140, size: 64, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !1230, line: 55, baseType: !18, size: 32, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !1242, file: !1230, line: 56, baseType: !18, size: 32, offset: 544)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !1242, file: !1230, line: 57, baseType: !73, size: 32, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !1242, file: !1230, line: 58, baseType: !18, size: 32, offset: 608)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !1242, file: !1230, line: 60, baseType: !1254, size: 64, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!73, !1257, !1228, !73}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !1230, line: 93, size: 6400, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1283, !1287, !1290, !1293}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1258, file: !1230, line: 94, baseType: !18, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1258, file: !1230, line: 95, baseType: !18, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !1258, file: !1230, line: 96, baseType: !18, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1258, file: !1230, line: 97, baseType: !18, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !1258, file: !1230, line: 98, baseType: !205, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !1258, file: !1230, line: 100, baseType: !73, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !1258, file: !1230, line: 101, baseType: !124, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !1258, file: !1230, line: 102, baseType: !124, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !1258, file: !1230, line: 103, baseType: !124, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !1258, file: !1230, line: 104, baseType: !1270, size: 5120, offset: 384)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 5120, elements: !1281)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !1230, line: 36, size: 512, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1271, file: !1230, line: 37, baseType: !126, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1271, file: !1230, line: 38, baseType: !126, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1271, file: !1230, line: 39, baseType: !124, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !1271, file: !1230, line: 40, baseType: !126, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !1271, file: !1230, line: 41, baseType: !126, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !1271, file: !1230, line: 42, baseType: !126, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !1271, file: !1230, line: 44, baseType: !126, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !1271, file: !1230, line: 45, baseType: !126, size: 64, offset: 448)
!1281 = !{!1282}
!1282 = !DISubrange(count: 10)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !1258, file: !1230, line: 105, baseType: !1284, size: 640, offset: 5504)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1285, size: 640, elements: !1281)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !1230, line: 90, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !1258, file: !1230, line: 106, baseType: !1288, size: 64, offset: 6144)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !1230, line: 91, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !1258, file: !1230, line: 107, baseType: !1291, size: 64, offset: 6208)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !1230, line: 89, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !1258, file: !1230, line: 108, baseType: !129, size: 128, offset: 6272)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !1242, file: !1230, line: 64, baseType: !1295, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!73, !1257, !73}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !1242, file: !1230, line: 74, baseType: !1254, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1229, file: !1230, line: 160, baseType: !73, size: 32, offset: 8512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !1229, file: !1230, line: 161, baseType: !73, size: 32, offset: 8544)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1229, file: !1230, line: 164, baseType: !1302, size: 64, offset: 8576)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !1229, file: !1230, line: 167, baseType: !1233, size: 64, offset: 8640)
!1304 = !{!1305, !1306}
!1305 = !DILocalVariable(name: "drv", arg: 1, scope: !1225, file: !2, line: 48, type: !1228)
!1306 = !DILocalVariable(name: "state", scope: !1225, file: !2, line: 50, type: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1308 = !DILocation(line: 48, column: 53, scope: !1225)
!1309 = !DILocation(line: 50, column: 2, scope: !1225)
!1310 = !DILocation(line: 50, column: 24, scope: !1225)
!1311 = !DILocation(line: 50, column: 33, scope: !1225)
!1312 = !DILocation(line: 50, column: 38, scope: !1225)
!1313 = !DILocation(line: 52, column: 11, scope: !1225)
!1314 = !DILocation(line: 52, column: 18, scope: !1225)
!1315 = !DILocation(line: 52, column: 2, scope: !1225)
!1316 = !DILocation(line: 53, column: 11, scope: !1225)
!1317 = !DILocation(line: 53, column: 18, scope: !1225)
!1318 = !DILocation(line: 53, column: 2, scope: !1225)
!1319 = !DILocation(line: 54, column: 2, scope: !1225)
!1320 = !DILocation(line: 54, column: 9, scope: !1225)
!1321 = !DILocation(line: 54, column: 22, scope: !1225)
!1322 = !DILocation(line: 55, column: 2, scope: !1225)
!1323 = !DILocation(line: 55, column: 9, scope: !1225)
!1324 = !DILocation(line: 55, column: 26, scope: !1225)
!1325 = !DILocation(line: 56, column: 2, scope: !1225)
!1326 = !DILocation(line: 56, column: 9, scope: !1225)
!1327 = !DILocation(line: 56, column: 25, scope: !1225)
!1328 = !DILocation(line: 57, column: 2, scope: !1225)
!1329 = !DILocation(line: 57, column: 9, scope: !1225)
!1330 = !DILocation(line: 57, column: 29, scope: !1225)
!1331 = !DILocation(line: 58, column: 2, scope: !1225)
!1332 = !DILocation(line: 58, column: 9, scope: !1225)
!1333 = !DILocation(line: 58, column: 21, scope: !1225)
!1334 = !DILocation(line: 59, column: 2, scope: !1225)
!1335 = !DILocation(line: 59, column: 9, scope: !1225)
!1336 = !DILocation(line: 59, column: 15, scope: !1225)
!1337 = !DILocation(line: 60, column: 2, scope: !1225)
!1338 = !DILocation(line: 60, column: 9, scope: !1225)
!1339 = !DILocation(line: 60, column: 15, scope: !1225)
!1340 = !DILocation(line: 61, column: 1, scope: !1225)
!1341 = !DISubprogram(name: "snprintf", scope: !1342, file: !1342, line: 12, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1342 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!73, !714, !683, !1233, null}
!1345 = distinct !DISubprogram(name: "poll_idle", scope: !2, file: !2, line: 13, type: !1255, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1354}
!1347 = !DILocalVariable(name: "dev", arg: 1, scope: !1345, file: !2, line: 13, type: !1257)
!1348 = !DILocalVariable(name: "drv", arg: 2, scope: !1345, file: !2, line: 14, type: !1228)
!1349 = !DILocalVariable(name: "index", arg: 3, scope: !1345, file: !2, line: 14, type: !73)
!1350 = !DILocalVariable(name: "time_start", scope: !1345, file: !2, line: 16, type: !124)
!1351 = !DILocalVariable(name: "loop_count", scope: !1352, file: !2, line: 24, type: !18)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 23, column: 39)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 23, column: 6)
!1354 = !DILocalVariable(name: "limit", scope: !1352, file: !2, line: 25, type: !124)
!1355 = !DILocation(line: 13, column: 55, scope: !1345)
!1356 = !DILocation(line: 14, column: 34, scope: !1345)
!1357 = !DILocation(line: 14, column: 43, scope: !1345)
!1358 = !DILocation(line: 16, column: 2, scope: !1345)
!1359 = !DILocation(line: 16, column: 6, scope: !1345)
!1360 = !DILocation(line: 18, column: 15, scope: !1345)
!1361 = !DILocation(line: 18, column: 13, scope: !1345)
!1362 = !DILocation(line: 20, column: 2, scope: !1345)
!1363 = !DILocation(line: 20, column: 23, scope: !1345)
!1364 = !DILocation(line: 22, column: 2, scope: !1345)
!1365 = !DILocation(line: 23, column: 7, scope: !1353)
!1366 = !DILocation(line: 23, column: 6, scope: !1345)
!1367 = !DILocation(line: 24, column: 3, scope: !1352)
!1368 = !DILocation(line: 24, column: 16, scope: !1352)
!1369 = !DILocation(line: 25, column: 3, scope: !1352)
!1370 = !DILocation(line: 25, column: 7, scope: !1352)
!1371 = !DILocation(line: 27, column: 29, scope: !1352)
!1372 = !DILocation(line: 27, column: 34, scope: !1352)
!1373 = !DILocation(line: 27, column: 11, scope: !1352)
!1374 = !DILocation(line: 27, column: 9, scope: !1352)
!1375 = !DILocation(line: 29, column: 3, scope: !1352)
!1376 = !DILocation(line: 29, column: 11, scope: !1352)
!1377 = !DILocation(line: 29, column: 10, scope: !1352)
!1378 = !DILocation(line: 30, column: 4, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 29, column: 27)
!1380 = !DILocation(line: 31, column: 18, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 31, column: 8)
!1382 = !DILocation(line: 31, column: 21, scope: !1381)
!1383 = !DILocation(line: 31, column: 8, scope: !1379)
!1384 = !DILocation(line: 32, column: 5, scope: !1381)
!1385 = distinct !{!1385, !1375, !1386, !1387, !1388}
!1386 = !DILocation(line: 39, column: 3, scope: !1352)
!1387 = !{!"llvm.loop.mustprogress"}
!1388 = !{!"llvm.loop.unroll.disable"}
!1389 = !DILocation(line: 34, column: 15, scope: !1379)
!1390 = !DILocation(line: 35, column: 8, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 35, column: 8)
!1392 = !DILocation(line: 35, column: 32, scope: !1391)
!1393 = !DILocation(line: 35, column: 30, scope: !1391)
!1394 = !DILocation(line: 35, column: 45, scope: !1391)
!1395 = !DILocation(line: 35, column: 43, scope: !1391)
!1396 = !DILocation(line: 35, column: 8, scope: !1379)
!1397 = !DILocation(line: 36, column: 5, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 35, column: 52)
!1399 = !DILocation(line: 36, column: 26, scope: !1398)
!1400 = !DILocation(line: 37, column: 5, scope: !1398)
!1401 = !DILocation(line: 40, column: 2, scope: !1353)
!1402 = !DILocation(line: 40, column: 2, scope: !1352)
!1403 = !DILocation(line: 41, column: 2, scope: !1345)
!1404 = !DILocation(line: 43, column: 2, scope: !1345)
!1405 = !DILocation(line: 45, column: 9, scope: !1345)
!1406 = !DILocation(line: 46, column: 1, scope: !1345)
!1407 = !DILocation(line: 45, column: 2, scope: !1345)
!1408 = !DISubprogram(name: "local_clock_noinstr", scope: !1409, file: !1409, line: 96, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1409 = !DIFile(filename: "./include/linux/sched/clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "820797187d326b72c061635bf384b4aa")
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!124}
!1412 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !1413, file: !1413, line: 75, type: !1414, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1413 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null}
!1416 = !DILocation(line: 77, column: 2, scope: !1412)
!1417 = !DILocation(line: 78, column: 1, scope: !1412)
!1418 = distinct !DISubprogram(name: "current_set_polling_and_test", scope: !1419, file: !1419, line: 56, type: !1420, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1419 = !DIFile(filename: "./include/linux/sched/idle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c48061294cc6ed2b1e8fec5961924d0")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!718}
!1422 = !DILocation(line: 58, column: 2, scope: !1418)
!1423 = !DILocation(line: 64, column: 2, scope: !1418)
!1424 = !DILocation(line: 64, column: 2, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1418, file: !1419, line: 64, column: 2)
!1426 = !DILocation(line: 64, column: 2, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !1419, line: 64, column: 2)
!1428 = !DILocation(line: 64, column: 2, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !1419, line: 64, column: 2)
!1430 = !DILocation(line: 66, column: 9, scope: !1418)
!1431 = !DILocation(line: 66, column: 2, scope: !1418)
!1432 = !DISubprogram(name: "cpuidle_poll_time", scope: !1230, file: !1230, line: 181, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!124, !1228, !1257}
!1435 = distinct !DISubprogram(name: "need_resched", scope: !57, file: !57, line: 2260, type: !1420, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1436 = !DILocation(line: 2262, column: 9, scope: !1435)
!1437 = !DILocation(line: 2262, column: 2, scope: !1435)
!1438 = distinct !DISubprogram(name: "cpu_relax", scope: !1439, file: !1439, line: 16, type: !1414, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1439 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!1440 = !DILocation(line: 18, column: 2, scope: !1438)
!1441 = !DILocation(line: 19, column: 1, scope: !1438)
!1442 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !1413, file: !1413, line: 70, type: !1414, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1443 = !DILocation(line: 72, column: 2, scope: !1442)
!1444 = !DILocation(line: 73, column: 1, scope: !1442)
!1445 = distinct !DISubprogram(name: "current_clr_polling", scope: !1419, file: !1419, line: 96, type: !1414, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1446 = !DILocation(line: 98, column: 2, scope: !1445)
!1447 = !DILocation(line: 106, column: 2, scope: !1445)
!1448 = !DILocation(line: 106, column: 2, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !1419, line: 106, column: 2)
!1450 = !DILocation(line: 106, column: 2, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1449, file: !1419, line: 106, column: 2)
!1452 = !{i64 2150845123}
!1453 = !DILocation(line: 108, column: 2, scope: !1445)
!1454 = !DILocation(line: 108, column: 2, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !1419, line: 108, column: 2)
!1456 = distinct !DILexicalBlock(scope: !1445, file: !1419, line: 108, column: 2)
!1457 = !DILocation(line: 108, column: 2, scope: !1456)
!1458 = !DILocation(line: 109, column: 1, scope: !1445)
!1459 = distinct !DISubprogram(name: "native_irq_enable", scope: !1413, file: !1413, line: 40, type: !1414, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1460 = !DILocation(line: 42, column: 2, scope: !1459)
!1461 = !{i64 1881418}
!1462 = !DILocation(line: 43, column: 1, scope: !1459)
!1463 = distinct !DISubprogram(name: "__current_set_polling", scope: !1419, file: !1419, line: 28, type: !1414, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1464 = !DILocation(line: 31, column: 27, scope: !1463)
!1465 = !DILocation(line: 31, column: 50, scope: !1463)
!1466 = !DILocation(line: 30, column: 2, scope: !1463)
!1467 = !DILocation(line: 32, column: 1, scope: !1463)
!1468 = distinct !DISubprogram(name: "tif_need_resched", scope: !1469, file: !1469, line: 182, type: !1420, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1469 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!1470 = !DILocation(line: 185, column: 28, scope: !1468)
!1471 = !DILocation(line: 185, column: 51, scope: !1468)
!1472 = !DILocation(line: 184, column: 9, scope: !1468)
!1473 = !DILocation(line: 184, column: 2, scope: !1468)
!1474 = distinct !DISubprogram(name: "arch_set_bit", scope: !1475, file: !1475, line: 52, type: !1476, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1480)
!1475 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !53, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!1480 = !{!1481, !1482}
!1481 = !DILocalVariable(name: "nr", arg: 1, scope: !1474, file: !1475, line: 52, type: !53)
!1482 = !DILocalVariable(name: "addr", arg: 2, scope: !1474, file: !1475, line: 52, type: !1478)
!1483 = !DILocation(line: 52, column: 19, scope: !1474)
!1484 = !DILocation(line: 52, column: 47, scope: !1474)
!1485 = !DILocation(line: 54, column: 27, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1474, file: !1475, line: 54, column: 6)
!1487 = !DILocation(line: 54, column: 6, scope: !1486)
!1488 = !DILocation(line: 54, column: 6, scope: !1474)
!1489 = !DILocation(line: 56, column: 6, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !1475, line: 54, column: 32)
!1491 = !DILocation(line: 57, column: 12, scope: !1490)
!1492 = !DILocation(line: 55, column: 3, scope: !1490)
!1493 = !{i64 2148063142, i64 2148063181, i64 2148063202, i64 2148063239, i64 2148063262, i64 2148063132}
!1494 = !DILocation(line: 59, column: 2, scope: !1490)
!1495 = !DILocation(line: 61, column: 8, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1486, file: !1475, line: 59, column: 9)
!1497 = !DILocation(line: 61, column: 32, scope: !1496)
!1498 = !DILocation(line: 60, column: 3, scope: !1496)
!1499 = !{i64 2148063427, i64 2148063466, i64 2148063487, i64 2148063524, i64 2148063547, i64 2148063417}
!1500 = !DILocation(line: 63, column: 1, scope: !1474)
!1501 = distinct !DISubprogram(name: "get_current", scope: !1502, file: !1502, line: 39, type: !1503, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1505)
!1502 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!55}
!1505 = !{!1506, !1508, !1512}
!1506 = !DILocalVariable(name: "pscr_ret__", scope: !1507, file: !1502, line: 41, type: !55)
!1507 = distinct !DILexicalBlock(scope: !1501, file: !1502, line: 41, column: 9)
!1508 = !DILocalVariable(name: "__vpp_verify", scope: !1509, file: !1502, line: 41, type: !1510)
!1509 = distinct !DILexicalBlock(scope: !1507, file: !1502, line: 41, column: 9)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1512 = !DILocalVariable(name: "pfo_val__", scope: !1513, file: !1502, line: 41, type: !124)
!1513 = distinct !DILexicalBlock(scope: !1507, file: !1502, line: 41, column: 9)
!1514 = !DILocation(line: 41, column: 9, scope: !1507)
!1515 = !DILocation(line: 41, column: 9, scope: !1509)
!1516 = !DILocation(line: 41, column: 9, scope: !1513)
!1517 = !{i64 2148287294}
!1518 = !DILocation(line: 41, column: 9, scope: !1501)
!1519 = !DILocation(line: 41, column: 2, scope: !1501)
!1520 = distinct !DISubprogram(name: "arch_test_bit", scope: !1475, file: !1475, line: 237, type: !1521, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1525)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!718, !36, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1479)
!1525 = !{!1526, !1527}
!1526 = !DILocalVariable(name: "nr", arg: 1, scope: !1520, file: !1475, line: 237, type: !36)
!1527 = !DILocalVariable(name: "addr", arg: 2, scope: !1520, file: !1475, line: 237, type: !1523)
!1528 = !DILocation(line: 237, column: 29, scope: !1520)
!1529 = !DILocation(line: 237, column: 63, scope: !1520)
!1530 = !DILocation(line: 239, column: 30, scope: !1520)
!1531 = !DILocation(line: 239, column: 9, scope: !1520)
!1532 = !DILocation(line: 239, column: 54, scope: !1520)
!1533 = !DILocation(line: 239, column: 58, scope: !1520)
!1534 = !DILocation(line: 239, column: 36, scope: !1520)
!1535 = !DILocation(line: 240, column: 26, scope: !1520)
!1536 = !DILocation(line: 240, column: 30, scope: !1520)
!1537 = !DILocation(line: 240, column: 8, scope: !1520)
!1538 = !DILocation(line: 239, column: 2, scope: !1520)
!1539 = distinct !DISubprogram(name: "constant_test_bit", scope: !1475, file: !1475, line: 204, type: !1540, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!718, !53, !1523}
!1542 = !{!1543, !1544}
!1543 = !DILocalVariable(name: "nr", arg: 1, scope: !1539, file: !1475, line: 204, type: !53)
!1544 = !DILocalVariable(name: "addr", arg: 2, scope: !1539, file: !1475, line: 204, type: !1523)
!1545 = !DILocation(line: 204, column: 52, scope: !1539)
!1546 = !DILocation(line: 204, column: 86, scope: !1539)
!1547 = !DILocation(line: 206, column: 19, scope: !1539)
!1548 = !DILocation(line: 206, column: 22, scope: !1539)
!1549 = !DILocation(line: 206, column: 15, scope: !1539)
!1550 = !DILocation(line: 207, column: 4, scope: !1539)
!1551 = !DILocation(line: 207, column: 9, scope: !1539)
!1552 = !DILocation(line: 207, column: 12, scope: !1539)
!1553 = !DILocation(line: 206, column: 44, scope: !1539)
!1554 = !DILocation(line: 207, column: 37, scope: !1539)
!1555 = !DILocation(line: 206, column: 2, scope: !1539)
!1556 = distinct !DISubprogram(name: "variable_test_bit", scope: !1475, file: !1475, line: 224, type: !1540, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1557)
!1557 = !{!1558, !1559, !1560}
!1558 = !DILocalVariable(name: "nr", arg: 1, scope: !1556, file: !1475, line: 224, type: !53)
!1559 = !DILocalVariable(name: "addr", arg: 2, scope: !1556, file: !1475, line: 224, type: !1523)
!1560 = !DILocalVariable(name: "oldbit", scope: !1556, file: !1475, line: 226, type: !718)
!1561 = !DILocation(line: 224, column: 52, scope: !1556)
!1562 = !DILocation(line: 224, column: 86, scope: !1556)
!1563 = !DILocation(line: 226, column: 2, scope: !1556)
!1564 = !DILocation(line: 226, column: 7, scope: !1556)
!1565 = !DILocation(line: 231, column: 33, scope: !1556)
!1566 = !DILocation(line: 231, column: 46, scope: !1556)
!1567 = !DILocation(line: 228, column: 2, scope: !1556)
!1568 = !{i64 2148076754, i64 2148076828}
!1569 = !DILocation(line: 233, column: 9, scope: !1556)
!1570 = !{i8 0, i8 2}
!1571 = !DILocation(line: 234, column: 1, scope: !1556)
!1572 = !DILocation(line: 233, column: 2, scope: !1556)
!1573 = distinct !DISubprogram(name: "rep_nop", scope: !1439, file: !1439, line: 11, type: !1414, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1574 = !DILocation(line: 13, column: 2, scope: !1573)
!1575 = !{i64 1922986}
!1576 = !DILocation(line: 14, column: 1, scope: !1573)
!1577 = distinct !DISubprogram(name: "native_irq_disable", scope: !1413, file: !1413, line: 35, type: !1414, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1578 = !DILocation(line: 37, column: 2, scope: !1577)
!1579 = !{i64 1881326}
!1580 = !DILocation(line: 38, column: 1, scope: !1577)
!1581 = distinct !DISubprogram(name: "__current_clr_polling", scope: !1419, file: !1419, line: 34, type: !1414, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!1582 = !DILocation(line: 37, column: 29, scope: !1581)
!1583 = !DILocation(line: 37, column: 52, scope: !1581)
!1584 = !DILocation(line: 36, column: 2, scope: !1581)
!1585 = !DILocation(line: 38, column: 1, scope: !1581)
!1586 = distinct !DISubprogram(name: "set_preempt_need_resched", scope: !1587, file: !1587, line: 59, type: !1414, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1588)
!1587 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1588 = !{!1589}
!1589 = !DILocalVariable(name: "pto_val__", scope: !1590, file: !1587, line: 61, type: !44)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !1587, line: 61, column: 2)
!1591 = !DILocation(line: 61, column: 2, scope: !1586)
!1592 = !DILocation(line: 61, column: 2, scope: !1590)
!1593 = !{i64 2149451113}
!1594 = !DILocation(line: 62, column: 1, scope: !1586)
!1595 = distinct !DISubprogram(name: "arch_clear_bit", scope: !1475, file: !1475, line: 72, type: !1476, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1596)
!1596 = !{!1597, !1598}
!1597 = !DILocalVariable(name: "nr", arg: 1, scope: !1595, file: !1475, line: 72, type: !53)
!1598 = !DILocalVariable(name: "addr", arg: 2, scope: !1595, file: !1475, line: 72, type: !1478)
!1599 = !DILocation(line: 72, column: 21, scope: !1595)
!1600 = !DILocation(line: 72, column: 49, scope: !1595)
!1601 = !DILocation(line: 74, column: 27, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1595, file: !1475, line: 74, column: 6)
!1603 = !DILocation(line: 74, column: 6, scope: !1602)
!1604 = !DILocation(line: 74, column: 6, scope: !1595)
!1605 = !DILocation(line: 76, column: 6, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !1475, line: 74, column: 32)
!1607 = !DILocation(line: 77, column: 13, scope: !1606)
!1608 = !DILocation(line: 77, column: 12, scope: !1606)
!1609 = !DILocation(line: 75, column: 3, scope: !1606)
!1610 = !{i64 2148064430, i64 2148064469, i64 2148064490, i64 2148064527, i64 2148064550, i64 2148064420}
!1611 = !DILocation(line: 78, column: 2, scope: !1606)
!1612 = !DILocation(line: 80, column: 8, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1602, file: !1475, line: 78, column: 9)
!1614 = !DILocation(line: 80, column: 32, scope: !1613)
!1615 = !DILocation(line: 79, column: 3, scope: !1613)
!1616 = !{i64 2148064715, i64 2148064754, i64 2148064775, i64 2148064812, i64 2148064835, i64 2148064705}
!1617 = !DILocation(line: 82, column: 1, scope: !1595)
