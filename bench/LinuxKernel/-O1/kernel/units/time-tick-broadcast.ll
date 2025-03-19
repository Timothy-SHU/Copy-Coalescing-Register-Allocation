; ModuleID = 'kernel/time/tick-broadcast.c'
source_filename = "kernel/time/tick-broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tick_broadcast_control: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tick_broadcast_control ; .previous"

%struct.tick_device = type { ptr, i32 }
%struct.cpumask = type { [1 x i64] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }

@tick_broadcast_device = internal global %struct.tick_device zeroinitializer, align 8, !dbg !0
@tick_broadcast_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 8, !dbg !1176
@tick_broadcast_lock = internal global %struct.raw_spinlock zeroinitializer, section ".data..cacheline_aligned", align 64, !dbg !1194
@tick_broadcast_on = internal global [1 x %struct.cpumask] zeroinitializer, align 8, !dbg !1180
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !1169
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@tick_broadcast_forced = internal global i32 0, align 4, !dbg !1184
@__UNIQUE_ID___addressable_tick_broadcast_control206 = internal global ptr @tick_broadcast_control, section ".discard.addressable", align 8, !dbg !1174
@tick_broadcast_oneshot_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 8, !dbg !1186
@tick_broadcast_force_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 8, !dbg !1190
@tmpmask = internal global [1 x %struct.cpumask] zeroinitializer, align 8, !dbg !1182
@tick_broadcast_pending_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 8, !dbg !1188
@tick_oneshot_wakeup_device = internal global ptr null, section ".data..percpu", align 8, !dbg !1192
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@tick_device_setup_broadcast_func.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !1196
@.str.1 = private unnamed_addr constant [64 x i8] c"\014%s depends on broadcast, but no broadcast function available\0A\00", align 1, !dbg !1209
@err_broadcast.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !1212
@.str.2 = private unnamed_addr constant [66 x i8] c"\012Failed to broadcast timer tick. Some CPUs may be unresponsive.\0A\00", align 1, !dbg !1223
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"kernel/time/tick-broadcast.c\00", align 1, !dbg !1228
@jiffies_lock = external dso_local global %struct.raw_spinlock, align 4
@tick_next_period = external dso_local global i64, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_tick_broadcast_control206], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tick_get_broadcast_device() #0 align 16 !dbg !1242 {
entry:
  ret ptr @tick_broadcast_device, !dbg !1245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tick_get_broadcast_mask() #0 align 16 !dbg !1246 {
entry:
  ret ptr @tick_broadcast_mask, !dbg !1249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tick_get_wakeup_device(i32 noundef %cpu) #0 align 16 !dbg !1250 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1256, metadata !DIExpression()), !dbg !1257
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1258
  %call = call ptr @tick_get_oneshot_wakeup_device(i32 noundef %0) #14, !dbg !1259
  ret ptr %call, !dbg !1260
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tick_get_oneshot_wakeup_device(i32 noundef %cpu) #0 align 16 !dbg !1261 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1265, metadata !DIExpression()), !dbg !1271
  br label %do.body, !dbg !1272

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1266, metadata !DIExpression()), !dbg !1273
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1273
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1272
  br label %do.end, !dbg !1273

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !1274
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1269, metadata !DIExpression()), !dbg !1274
  store i64 ptrtoint (ptr @tick_oneshot_wakeup_device to i64), ptr %__ptr, align 8, !dbg !1274
  %1 = load i64, ptr %__ptr, align 8, !dbg !1274
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1274
  %idxprom = sext i32 %2 to i64, !dbg !1274
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1274
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1274
  %add = add i64 %1, %3, !dbg !1274
  %4 = inttoptr i64 %add to ptr, !dbg !1274
  store ptr %4, ptr %tmp1, align 8, !dbg !1274
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !1272
  %5 = load ptr, ptr %tmp1, align 8, !dbg !1274
  store ptr %5, ptr %tmp, align 8, !dbg !1273
  %6 = load ptr, ptr %tmp, align 8, !dbg !1272
  %7 = load ptr, ptr %6, align 8, !dbg !1275
  ret ptr %7, !dbg !1276
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_install_broadcast_device(ptr noundef %dev, i32 noundef %cpu) #0 align 16 !dbg !1277 {
entry:
  %dev.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %cur = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1281, metadata !DIExpression()), !dbg !1284
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #15, !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !1283, metadata !DIExpression()), !dbg !1287
  %0 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !1288
  store ptr %0, ptr %cur, align 8, !dbg !1287
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1289
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1291
  %call = call zeroext i1 @tick_set_oneshot_wakeup_device(ptr noundef %1, i32 noundef %2) #14, !dbg !1292
  br i1 %call, label %if.then, label %if.end, !dbg !1293

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1294

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cur, align 8, !dbg !1295
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1297
  %call1 = call zeroext i1 @tick_check_broadcast_device(ptr noundef %3, ptr noundef %4) #14, !dbg !1298
  br i1 %call1, label %if.end3, label %if.then2, !dbg !1299

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1300

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !1301
  %owner = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 27, !dbg !1303
  %6 = load ptr, ptr %owner, align 8, !dbg !1303
  %call4 = call zeroext i1 @try_module_get(ptr noundef %6) #14, !dbg !1304
  br i1 %call4, label %if.end6, label %if.then5, !dbg !1305

if.then5:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1306

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %cur, align 8, !dbg !1307
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !1308
  call void @clockevents_exchange_device(ptr noundef %7, ptr noundef %8) #14, !dbg !1309
  %9 = load ptr, ptr %cur, align 8, !dbg !1310
  %tobool = icmp ne ptr %9, null, !dbg !1310
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !1312

if.then7:                                         ; preds = %if.end6
  %10 = load ptr, ptr %cur, align 8, !dbg !1313
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 0, !dbg !1314
  store ptr @clockevents_handle_noop, ptr %event_handler, align 64, !dbg !1315
  br label %if.end8, !dbg !1313

if.end8:                                          ; preds = %if.then7, %if.end6
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !1316
  store ptr %11, ptr @tick_broadcast_device, align 8, !dbg !1317
  %call9 = call zeroext i1 @cpumask_empty(ptr noundef @tick_broadcast_mask) #14, !dbg !1318
  br i1 %call9, label %if.end11, label %if.then10, !dbg !1320

if.then10:                                        ; preds = %if.end8
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1321
  call void @tick_broadcast_start_periodic(ptr noundef %12) #14, !dbg !1322
  br label %if.end11, !dbg !1322

if.end11:                                         ; preds = %if.then10, %if.end8
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !1323
  %features = getelementptr inbounds %struct.clock_event_device, ptr %13, i32 0, i32 9, !dbg !1325
  %14 = load i32, ptr %features, align 4, !dbg !1325
  %and = and i32 %14, 2, !dbg !1326
  %tobool12 = icmp ne i32 %and, 0, !dbg !1326
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1327

if.then13:                                        ; preds = %if.end11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1328

if.end14:                                         ; preds = %if.end11
  %call15 = call i32 @tick_broadcast_oneshot_active() #14, !dbg !1329
  %tobool16 = icmp ne i32 %call15, 0, !dbg !1329
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1331

if.then17:                                        ; preds = %if.end14
  call void @tick_broadcast_switch_to_oneshot() #14, !dbg !1332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1334

if.end18:                                         ; preds = %if.end14
  call void @tick_clock_notify() #14, !dbg !1335
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1336
  br label %cleanup, !dbg !1336

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then13, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #15, !dbg !1336
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1336

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tick_set_oneshot_wakeup_device(ptr noundef %newdev, i32 noundef %cpu) #0 align 16 !dbg !1337 {
entry:
  %retval = alloca i1, align 1
  %newdev.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %curdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp27 = alloca ptr, align 8
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !1341, metadata !DIExpression()), !dbg !1350
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1342, metadata !DIExpression()), !dbg !1351
  call void @llvm.lifetime.start.p0(i64 8, ptr %curdev) #15, !dbg !1352
  call void @llvm.dbg.declare(metadata ptr %curdev, metadata !1343, metadata !DIExpression()), !dbg !1353
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1354
  %call = call ptr @tick_get_oneshot_wakeup_device(i32 noundef %0) #14, !dbg !1355
  store ptr %call, ptr %curdev, align 8, !dbg !1353
  %1 = load ptr, ptr %newdev.addr, align 8, !dbg !1356
  %tobool = icmp ne ptr %1, null, !dbg !1356
  br i1 %tobool, label %if.end, label %if.then, !dbg !1358

if.then:                                          ; preds = %entry
  br label %set_device, !dbg !1359

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %newdev.addr, align 8, !dbg !1360
  %features = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 9, !dbg !1362
  %3 = load i32, ptr %features, align 4, !dbg !1362
  %and = and i32 %3, 16, !dbg !1363
  %tobool1 = icmp ne i32 %and, 0, !dbg !1363
  br i1 %tobool1, label %if.then5, label %lor.lhs.false, !dbg !1364

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %newdev.addr, align 8, !dbg !1365
  %features2 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 9, !dbg !1366
  %5 = load i32, ptr %features2, align 4, !dbg !1366
  %and3 = and i32 %5, 8, !dbg !1367
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1367
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1368

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i1 false, ptr %retval, align 1, !dbg !1369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1369

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %newdev.addr, align 8, !dbg !1370
  %features7 = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 9, !dbg !1372
  %7 = load i32, ptr %features7, align 4, !dbg !1372
  %and8 = and i32 %7, 64, !dbg !1373
  %tobool9 = icmp ne i32 %and8, 0, !dbg !1373
  br i1 %tobool9, label %lor.lhs.false10, label %if.then14, !dbg !1374

lor.lhs.false10:                                  ; preds = %if.end6
  %8 = load ptr, ptr %newdev.addr, align 8, !dbg !1375
  %features11 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9, !dbg !1376
  %9 = load i32, ptr %features11, align 4, !dbg !1376
  %and12 = and i32 %9, 2, !dbg !1377
  %tobool13 = icmp ne i32 %and12, 0, !dbg !1377
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1378

if.then14:                                        ; preds = %lor.lhs.false10, %if.end6
  store i1 false, ptr %retval, align 1, !dbg !1379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1379

if.end15:                                         ; preds = %lor.lhs.false10
  %10 = load ptr, ptr %newdev.addr, align 8, !dbg !1380
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 25, !dbg !1382
  %11 = load ptr, ptr %cpumask, align 16, !dbg !1382
  %12 = load i32, ptr %cpu.addr, align 4, !dbg !1383
  %call16 = call ptr @get_cpu_mask(i32 noundef %12) #14, !dbg !1383
  %call17 = call zeroext i1 @cpumask_equal(ptr noundef %11, ptr noundef %call16) #14, !dbg !1384
  br i1 %call17, label %if.end19, label %if.then18, !dbg !1385

if.then18:                                        ; preds = %if.end15
  store i1 false, ptr %retval, align 1, !dbg !1386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1386

if.end19:                                         ; preds = %if.end15
  %13 = load ptr, ptr %curdev, align 8, !dbg !1387
  %tobool20 = icmp ne ptr %13, null, !dbg !1387
  br i1 %tobool20, label %land.lhs.true, label %if.end23, !dbg !1389

land.lhs.true:                                    ; preds = %if.end19
  %14 = load ptr, ptr %newdev.addr, align 8, !dbg !1390
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %14, i32 0, i32 22, !dbg !1391
  %15 = load i32, ptr %rating, align 32, !dbg !1391
  %16 = load ptr, ptr %curdev, align 8, !dbg !1392
  %rating21 = getelementptr inbounds %struct.clock_event_device, ptr %16, i32 0, i32 22, !dbg !1393
  %17 = load i32, ptr %rating21, align 32, !dbg !1393
  %cmp = icmp sle i32 %15, %17, !dbg !1394
  br i1 %cmp, label %if.then22, label %if.end23, !dbg !1395

if.then22:                                        ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !1396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1396

if.end23:                                         ; preds = %land.lhs.true, %if.end19
  %18 = load ptr, ptr %newdev.addr, align 8, !dbg !1397
  %owner = getelementptr inbounds %struct.clock_event_device, ptr %18, i32 0, i32 27, !dbg !1399
  %19 = load ptr, ptr %owner, align 8, !dbg !1399
  %call24 = call zeroext i1 @try_module_get(ptr noundef %19) #14, !dbg !1400
  br i1 %call24, label %if.end26, label %if.then25, !dbg !1401

if.then25:                                        ; preds = %if.end23
  store i1 false, ptr %retval, align 1, !dbg !1402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1402

if.end26:                                         ; preds = %if.end23
  %20 = load ptr, ptr %newdev.addr, align 8, !dbg !1403
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %20, i32 0, i32 0, !dbg !1404
  store ptr @tick_oneshot_wakeup_handler, ptr %event_handler, align 64, !dbg !1405
  br label %set_device, !dbg !1403

set_device:                                       ; preds = %if.end26, %if.then
  call void @llvm.dbg.label(metadata !1344), !dbg !1406
  %21 = load ptr, ptr %curdev, align 8, !dbg !1407
  %22 = load ptr, ptr %newdev.addr, align 8, !dbg !1408
  call void @clockevents_exchange_device(ptr noundef %21, ptr noundef %22) #14, !dbg !1409
  %23 = load ptr, ptr %newdev.addr, align 8, !dbg !1410
  br label %do.body, !dbg !1411

do.body:                                          ; preds = %set_device
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1345, metadata !DIExpression()), !dbg !1412
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1412
  %24 = load ptr, ptr %__vpp_verify, align 8, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1411
  br label %do.cond, !dbg !1412

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1412

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !1413
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1348, metadata !DIExpression()), !dbg !1413
  store i64 ptrtoint (ptr @tick_oneshot_wakeup_device to i64), ptr %__ptr, align 8, !dbg !1413
  %25 = load i64, ptr %__ptr, align 8, !dbg !1413
  %26 = load i32, ptr %cpu.addr, align 4, !dbg !1413
  %idxprom = sext i32 %26 to i64, !dbg !1413
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1413
  %27 = load i64, ptr %arrayidx, align 8, !dbg !1413
  %add = add i64 %25, %27, !dbg !1413
  %28 = inttoptr i64 %add to ptr, !dbg !1413
  store ptr %28, ptr %tmp27, align 8, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !1411
  %29 = load ptr, ptr %tmp27, align 8, !dbg !1413
  store ptr %29, ptr %tmp, align 8, !dbg !1412
  %30 = load ptr, ptr %tmp, align 8, !dbg !1411
  store ptr %23, ptr %30, align 8, !dbg !1414
  store i1 true, ptr %retval, align 1, !dbg !1415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1415

cleanup:                                          ; preds = %do.end, %if.then25, %if.then22, %if.then18, %if.then14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %curdev) #15, !dbg !1416
  %31 = load i1, ptr %retval, align 1, !dbg !1416
  ret i1 %31, !dbg !1416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tick_check_broadcast_device(ptr noundef %curdev, ptr noundef %newdev) #0 align 16 !dbg !1417 {
entry:
  %retval = alloca i1, align 1
  %curdev.addr = alloca ptr, align 8
  %newdev.addr = alloca ptr, align 8
  store ptr %curdev, ptr %curdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %curdev.addr, metadata !1421, metadata !DIExpression()), !dbg !1423
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !1422, metadata !DIExpression()), !dbg !1424
  %0 = load ptr, ptr %newdev.addr, align 8, !dbg !1425
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !1427
  %1 = load i32, ptr %features, align 4, !dbg !1427
  %and = and i32 %1, 16, !dbg !1428
  %tobool = icmp ne i32 %and, 0, !dbg !1428
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1429

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %newdev.addr, align 8, !dbg !1430
  %features1 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 9, !dbg !1431
  %3 = load i32, ptr %features1, align 4, !dbg !1431
  %and2 = and i32 %3, 64, !dbg !1432
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1432
  br i1 %tobool3, label %if.then, label %lor.lhs.false4, !dbg !1433

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %newdev.addr, align 8, !dbg !1434
  %features5 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 9, !dbg !1435
  %5 = load i32, ptr %features5, align 4, !dbg !1435
  %and6 = and i32 %5, 8, !dbg !1436
  %tobool7 = icmp ne i32 %and6, 0, !dbg !1436
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1437

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !1438
  br label %return, !dbg !1438

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !1439
  %cmp = icmp eq i32 %6, 1, !dbg !1441
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !1442

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %newdev.addr, align 8, !dbg !1443
  %features8 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 9, !dbg !1444
  %8 = load i32, ptr %features8, align 4, !dbg !1444
  %and9 = and i32 %8, 2, !dbg !1445
  %tobool10 = icmp ne i32 %and9, 0, !dbg !1445
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1446

if.then11:                                        ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !1447
  br label %return, !dbg !1447

if.end12:                                         ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %curdev.addr, align 8, !dbg !1448
  %tobool13 = icmp ne ptr %9, null, !dbg !1448
  br i1 %tobool13, label %lor.rhs, label %lor.end, !dbg !1449

lor.rhs:                                          ; preds = %if.end12
  %10 = load ptr, ptr %newdev.addr, align 8, !dbg !1450
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 22, !dbg !1451
  %11 = load i32, ptr %rating, align 32, !dbg !1451
  %12 = load ptr, ptr %curdev.addr, align 8, !dbg !1452
  %rating14 = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 22, !dbg !1453
  %13 = load i32, ptr %rating14, align 32, !dbg !1453
  %cmp15 = icmp sgt i32 %11, %13, !dbg !1454
  br label %lor.end, !dbg !1449

lor.end:                                          ; preds = %lor.rhs, %if.end12
  %14 = phi i1 [ true, %if.end12 ], [ %cmp15, %lor.rhs ]
  store i1 %14, ptr %retval, align 1, !dbg !1455
  br label %return, !dbg !1455

return:                                           ; preds = %lor.end, %if.then11, %if.then
  %15 = load i1, ptr %retval, align 1, !dbg !1456
  ret i1 %15, !dbg !1456
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1457 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1460 dso_local void @clockevents_exchange_device(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clockevents_handle_noop(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_empty(ptr noundef %srcp) #4 align 16 !dbg !1464 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1468, metadata !DIExpression()), !dbg !1469
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !1470
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1470
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1470
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 64) #14, !dbg !1471
  ret i1 %call, !dbg !1472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_start_periodic(ptr noundef %bc) #0 align 16 !dbg !1473 {
entry:
  %bc.addr = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !1475, metadata !DIExpression()), !dbg !1476
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !1477
  %tobool = icmp ne ptr %0, null, !dbg !1477
  br i1 %tobool, label %if.then, label %if.end, !dbg !1479

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bc.addr, align 8, !dbg !1480
  call void @tick_setup_periodic(ptr noundef %1, i32 noundef 1) #14, !dbg !1481
  br label %if.end, !dbg !1481

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1482
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_broadcast_oneshot_active() #0 align 16 !dbg !1483 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !1484
  %cmp = icmp eq i32 %0, 1, !dbg !1485
  %conv = zext i1 %cmp to i32, !dbg !1485
  ret i32 %conv, !dbg !1486
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_broadcast_switch_to_oneshot() #0 align 16 !dbg !1487 {
entry:
  %bc = alloca ptr, align 8
  %oldmode = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !1489, metadata !DIExpression()), !dbg !1501
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldmode) #15, !dbg !1502
  call void @llvm.dbg.declare(metadata ptr %oldmode, metadata !1490, metadata !DIExpression()), !dbg !1503
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !1504
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1491, metadata !DIExpression()), !dbg !1505
  br label %do.body, !dbg !1506

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !1507
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1492, metadata !DIExpression()), !dbg !1507
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !1507
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1495, metadata !DIExpression()), !dbg !1507
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1507
  %conv = zext i1 %cmp to i32, !dbg !1507
  store i32 1, ptr %tmp, align 4, !dbg !1507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !1508
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !1508
  %0 = load i32, ptr %tmp, align 4, !dbg !1507
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tick_broadcast_lock) #14, !dbg !1508
  store i64 %call, ptr %flags, align 8, !dbg !1508
  br label %do.cond, !dbg !1508

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1508

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !1509
  store i32 %1, ptr %oldmode, align 4, !dbg !1510
  store i32 1, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !1511
  %2 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !1512
  store ptr %2, ptr %bc, align 8, !dbg !1513
  %3 = load ptr, ptr %bc, align 8, !dbg !1514
  %tobool = icmp ne ptr %3, null, !dbg !1514
  br i1 %tobool, label %if.then, label %if.end, !dbg !1516

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr %bc, align 8, !dbg !1517
  %5 = load i32, ptr %oldmode, align 4, !dbg !1518
  %cmp1 = icmp eq i32 %5, 0, !dbg !1519
  call void @tick_broadcast_setup_oneshot(ptr noundef %4, i1 noundef zeroext %cmp1) #14, !dbg !1520
  br label %if.end, !dbg !1520

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body3, !dbg !1521

do.body3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #15, !dbg !1522
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !1496, metadata !DIExpression()), !dbg !1522
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #15, !dbg !1522
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !1499, metadata !DIExpression()), !dbg !1522
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !1522
  %conv7 = zext i1 %cmp6 to i32, !dbg !1522
  store i32 1, ptr %tmp8, align 4, !dbg !1522
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #15, !dbg !1523
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #15, !dbg !1523
  %6 = load i32, ptr %tmp8, align 4, !dbg !1522
  %7 = load i64, ptr %flags, align 8, !dbg !1523
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tick_broadcast_lock, i64 noundef %7) #14, !dbg !1523
  br label %do.cond9, !dbg !1523

do.cond9:                                         ; preds = %do.body3
  br label %do.end10, !dbg !1523

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !1524
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldmode) #15, !dbg !1524
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !1524
  ret void, !dbg !1524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1525 dso_local void @tick_clock_notify() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_is_broadcast_device(ptr noundef %dev) #0 align 16 !dbg !1526 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1528, metadata !DIExpression()), !dbg !1529
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1530
  %tobool = icmp ne ptr %0, null, !dbg !1530
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1531

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !1532
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1533
  %cmp = icmp eq ptr %1, %2, !dbg !1534
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !1535
  %land.ext = zext i1 %3 to i32, !dbg !1531
  ret i32 %land.ext, !dbg !1536
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_broadcast_update_freq(ptr noundef %dev, i32 noundef %freq) #0 align 16 !dbg !1537 {
entry:
  %dev.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1541, metadata !DIExpression()), !dbg !1544
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !1542, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1543, metadata !DIExpression()), !dbg !1547
  store i32 -19, ptr %ret, align 4, !dbg !1547
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1548
  %call = call i32 @tick_is_broadcast_device(ptr noundef %0) #14, !dbg !1550
  %tobool = icmp ne i32 %call, 0, !dbg !1550
  br i1 %tobool, label %if.then, label %if.end, !dbg !1551

if.then:                                          ; preds = %entry
  call void @_raw_spin_lock(ptr noundef @tick_broadcast_lock) #14, !dbg !1552
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1554
  %2 = load i32, ptr %freq.addr, align 4, !dbg !1555
  %call1 = call i32 @__clockevents_update_freq(ptr noundef %1, i32 noundef %2) #14, !dbg !1556
  store i32 %call1, ptr %ret, align 4, !dbg !1557
  call void @_raw_spin_unlock(ptr noundef @tick_broadcast_lock) #14, !dbg !1558
  br label %if.end, !dbg !1559

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %ret, align 4, !dbg !1560
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !1561
  ret i32 %3, !dbg !1562
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1563 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1568 dso_local i32 @__clockevents_update_freq(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1569 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_device_uses_broadcast(ptr noundef %dev, i32 noundef %cpu) #0 align 16 !dbg !1570 {
entry:
  %dev.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %bc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy30 = alloca i64, align 8
  %__dummy231 = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1574, metadata !DIExpression()), !dbg !1587
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1575, metadata !DIExpression()), !dbg !1588
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !1589
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !1576, metadata !DIExpression()), !dbg !1590
  %0 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !1591
  store ptr %0, ptr %bc, align 8, !dbg !1590
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !1592
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1577, metadata !DIExpression()), !dbg !1593
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !1594
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1578, metadata !DIExpression()), !dbg !1595
  store i32 0, ptr %ret, align 4, !dbg !1595
  br label %do.body, !dbg !1596

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !1597
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1579, metadata !DIExpression()), !dbg !1597
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !1597
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1582, metadata !DIExpression()), !dbg !1597
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1597
  %conv = zext i1 %cmp to i32, !dbg !1597
  store i32 1, ptr %tmp, align 4, !dbg !1597
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !1598
  %1 = load i32, ptr %tmp, align 4, !dbg !1597
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tick_broadcast_lock) #14, !dbg !1598
  store i64 %call, ptr %flags, align 8, !dbg !1598
  br label %do.cond, !dbg !1598

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1598

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1599
  %call1 = call i32 @tick_device_is_functional(ptr noundef %2) #14, !dbg !1601
  %tobool = icmp ne i32 %call1, 0, !dbg !1601
  br i1 %tobool, label %if.else5, label %if.then, !dbg !1602

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !1603
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 0, !dbg !1605
  store ptr @tick_handle_periodic, ptr %event_handler, align 64, !dbg !1606
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1607
  call void @tick_device_setup_broadcast_func(ptr noundef %4) #14, !dbg !1608
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !1609
  call void @cpumask_set_cpu(i32 noundef %5, ptr noundef @tick_broadcast_mask) #14, !dbg !1610
  %6 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !1611
  %cmp2 = icmp eq i32 %6, 0, !dbg !1613
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !1614

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %bc, align 8, !dbg !1615
  call void @tick_broadcast_start_periodic(ptr noundef %7) #14, !dbg !1616
  br label %if.end, !dbg !1616

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %bc, align 8, !dbg !1617
  call void @tick_broadcast_setup_oneshot(ptr noundef %8, i1 noundef zeroext false) #14, !dbg !1618
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  store i32 1, ptr %ret, align 4, !dbg !1619
  br label %if.end28, !dbg !1620

if.else5:                                         ; preds = %do.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !1621
  %features = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 9, !dbg !1624
  %10 = load i32, ptr %features, align 4, !dbg !1624
  %and = and i32 %10, 8, !dbg !1625
  %tobool6 = icmp ne i32 %and, 0, !dbg !1625
  br i1 %tobool6, label %if.else8, label %if.then7, !dbg !1626

if.then7:                                         ; preds = %if.else5
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !1627
  call void @cpumask_clear_cpu(i32 noundef %11, ptr noundef @tick_broadcast_mask) #14, !dbg !1628
  br label %if.end9, !dbg !1628

if.else8:                                         ; preds = %if.else5
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1629
  call void @tick_device_setup_broadcast_func(ptr noundef %12) #14, !dbg !1630
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !1631
  %call10 = call zeroext i1 @cpumask_test_cpu(i32 noundef %13, ptr noundef @tick_broadcast_on) #14, !dbg !1633
  br i1 %call10, label %if.end12, label %if.then11, !dbg !1634

if.then11:                                        ; preds = %if.end9
  %14 = load i32, ptr %cpu.addr, align 4, !dbg !1635
  call void @cpumask_clear_cpu(i32 noundef %14, ptr noundef @tick_broadcast_mask) #14, !dbg !1636
  br label %if.end12, !dbg !1636

if.end12:                                         ; preds = %if.then11, %if.end9
  %15 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !1637
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb13
  ], !dbg !1638

sw.bb:                                            ; preds = %if.end12
  %16 = load i32, ptr %cpu.addr, align 4, !dbg !1639
  call void @tick_broadcast_clear_oneshot(i32 noundef %16) #14, !dbg !1641
  store i32 0, ptr %ret, align 4, !dbg !1642
  br label %sw.epilog, !dbg !1643

sw.bb13:                                          ; preds = %if.end12
  %call14 = call zeroext i1 @cpumask_empty(ptr noundef @tick_broadcast_mask) #14, !dbg !1644
  br i1 %call14, label %land.lhs.true, label %if.end18, !dbg !1646

land.lhs.true:                                    ; preds = %sw.bb13
  %17 = load ptr, ptr %bc, align 8, !dbg !1647
  %tobool16 = icmp ne ptr %17, null, !dbg !1647
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1648

if.then17:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %bc, align 8, !dbg !1649
  call void @clockevents_shutdown(ptr noundef %18) #14, !dbg !1650
  br label %if.end18, !dbg !1650

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %sw.bb13
  %19 = load ptr, ptr %bc, align 8, !dbg !1651
  %tobool19 = icmp ne ptr %19, null, !dbg !1651
  br i1 %tobool19, label %land.lhs.true20, label %if.end27, !dbg !1653

land.lhs.true20:                                  ; preds = %if.end18
  %20 = load ptr, ptr %bc, align 8, !dbg !1654
  %features21 = getelementptr inbounds %struct.clock_event_device, ptr %20, i32 0, i32 9, !dbg !1655
  %21 = load i32, ptr %features21, align 4, !dbg !1655
  %and22 = and i32 %21, 128, !dbg !1656
  %tobool23 = icmp ne i32 %and22, 0, !dbg !1656
  br i1 %tobool23, label %if.end27, label %if.then24, !dbg !1657

if.then24:                                        ; preds = %land.lhs.true20
  %22 = load i32, ptr %cpu.addr, align 4, !dbg !1658
  %call25 = call zeroext i1 @cpumask_test_cpu(i32 noundef %22, ptr noundef @tick_broadcast_mask) #14, !dbg !1659
  %conv26 = zext i1 %call25 to i32, !dbg !1659
  store i32 %conv26, ptr %ret, align 4, !dbg !1660
  br label %if.end27, !dbg !1661

if.end27:                                         ; preds = %if.then24, %land.lhs.true20, %if.end18
  br label %sw.epilog, !dbg !1662

sw.default:                                       ; preds = %if.end12
  br label %sw.epilog, !dbg !1663

sw.epilog:                                        ; preds = %sw.default, %if.end27, %sw.bb
  br label %if.end28

if.end28:                                         ; preds = %sw.epilog, %if.end
  br label %do.body29, !dbg !1664

do.body29:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy30) #15, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %__dummy30, metadata !1583, metadata !DIExpression()), !dbg !1665
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy231) #15, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %__dummy231, metadata !1586, metadata !DIExpression()), !dbg !1665
  %cmp32 = icmp eq ptr %__dummy30, %__dummy231, !dbg !1665
  %conv33 = zext i1 %cmp32 to i32, !dbg !1665
  store i32 1, ptr %tmp34, align 4, !dbg !1665
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy231) #15, !dbg !1666
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy30) #15, !dbg !1666
  %23 = load i32, ptr %tmp34, align 4, !dbg !1665
  %24 = load i64, ptr %flags, align 8, !dbg !1666
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tick_broadcast_lock, i64 noundef %24) #14, !dbg !1666
  br label %do.cond35, !dbg !1666

do.cond35:                                        ; preds = %do.body29
  br label %do.end36, !dbg !1666

do.end36:                                         ; preds = %do.cond35
  %25 = load i32, ptr %ret, align 4, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !1668
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !1668
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !1668
  ret i32 %25, !dbg !1669
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1670 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tick_device_is_functional(ptr noundef %dev) #4 align 16 !dbg !1673 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1675, metadata !DIExpression()), !dbg !1676
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1677
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !1678
  %1 = load i32, ptr %features, align 4, !dbg !1678
  %and = and i32 %1, 16, !dbg !1679
  %tobool = icmp ne i32 %and, 0, !dbg !1680
  %lnot = xor i1 %tobool, true, !dbg !1680
  %lnot.ext = zext i1 %lnot to i32, !dbg !1680
  ret i32 %lnot.ext, !dbg !1681
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tick_handle_periodic(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_device_setup_broadcast_func(ptr noundef %dev) #0 align 16 !dbg !1198 {
entry:
  %dev.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp24 = alloca i32, align 4
  %tmp26 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1200, metadata !DIExpression()), !dbg !1682
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1683
  %broadcast = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 16, !dbg !1685
  %1 = load ptr, ptr %broadcast, align 16, !dbg !1685
  %tobool = icmp ne ptr %1, null, !dbg !1683
  br i1 %tobool, label %if.end, label %if.then, !dbg !1686

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1687
  %broadcast1 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 16, !dbg !1688
  store ptr null, ptr %broadcast1, align 16, !dbg !1689
  br label %if.end, !dbg !1687

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !1690
  %broadcast2 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 16, !dbg !1691
  %4 = load ptr, ptr %broadcast2, align 16, !dbg !1691
  %tobool3 = icmp ne ptr %4, null, !dbg !1690
  br i1 %tobool3, label %if.end35, label %if.then4, !dbg !1692

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !1201, metadata !DIExpression()), !dbg !1693
  store i8 1, ptr %__ret_do_once, align 1, !dbg !1693
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !1205, metadata !DIExpression()), !dbg !1694
  %5 = load i8, ptr %__ret_do_once, align 1, !dbg !1694, !range !1695, !noundef !359
  %tobool5 = trunc i8 %5 to i1, !dbg !1694
  %lnot = xor i1 %tobool5, true, !dbg !1694
  %lnot6 = xor i1 %lnot, true, !dbg !1694
  %frombool = zext i1 %lnot6 to i8, !dbg !1694
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !1694
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !1208, metadata !DIExpression()), !dbg !1694
  store i8 0, ptr %__ret_once, align 1, !dbg !1694
  %6 = load i8, ptr %__ret_cond, align 1, !dbg !1696, !range !1695, !noundef !359
  %tobool7 = trunc i8 %6 to i1, !dbg !1696
  br i1 %tobool7, label %land.rhs, label %land.end, !dbg !1696

land.rhs:                                         ; preds = %if.then4
  %7 = load i8, ptr @tick_device_setup_broadcast_func.__already_done, align 1, !dbg !1696, !range !1695, !noundef !359
  %tobool8 = trunc i8 %7 to i1, !dbg !1696
  %lnot9 = xor i1 %tobool8, true, !dbg !1696
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then4
  %8 = phi i1 [ false, %if.then4 ], [ %lnot9, %land.rhs ], !dbg !1698
  %lnot10 = xor i1 %8, true, !dbg !1696
  %lnot11 = xor i1 %lnot10, true, !dbg !1696
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !1696
  %conv = sext i32 %lnot.ext to i64, !dbg !1696
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1696
  %tobool12 = icmp ne i64 %expval, 0, !dbg !1696
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1694

if.then13:                                        ; preds = %land.end
  store i8 1, ptr @tick_device_setup_broadcast_func.__already_done, align 1, !dbg !1699
  store i8 1, ptr %__ret_once, align 1, !dbg !1699
  br label %if.end14, !dbg !1699

if.end14:                                         ; preds = %if.then13, %land.end
  %9 = load i8, ptr %__ret_once, align 1, !dbg !1694, !range !1695, !noundef !359
  %tobool15 = trunc i8 %9 to i1, !dbg !1694
  %lnot16 = xor i1 %tobool15, true, !dbg !1694
  %lnot18 = xor i1 %lnot16, true, !dbg !1694
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !1694
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !1694
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !1694
  store i64 %expval21, ptr %tmp, align 8, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !1701
  %10 = load i64, ptr %tmp, align 8, !dbg !1694
  %tobool22 = icmp ne i64 %10, 0, !dbg !1701
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !1693

if.then23:                                        ; preds = %if.end14
  br label %do.body, !dbg !1702

do.body:                                          ; preds = %if.then23
  br label %do.cond, !dbg !1704

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1704

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !1702
  %name = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 21, !dbg !1702
  %12 = load ptr, ptr %name, align 8, !dbg !1702
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %12) #16, !dbg !1702
  store i32 %call, ptr %tmp24, align 4, !dbg !1704
  %13 = load i32, ptr %tmp24, align 4, !dbg !1702
  br label %if.end25, !dbg !1701

if.end25:                                         ; preds = %do.end, %if.end14
  %14 = load i8, ptr %__ret_do_once, align 1, !dbg !1693, !range !1695, !noundef !359
  %tobool27 = trunc i8 %14 to i1, !dbg !1693
  %lnot28 = xor i1 %tobool27, true, !dbg !1693
  %lnot30 = xor i1 %lnot28, true, !dbg !1693
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !1693
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !1693
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1693
  store i64 %expval33, ptr %tmp26, align 8, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !1706
  %15 = load i64, ptr %tmp26, align 8, !dbg !1693
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !1707
  %broadcast34 = getelementptr inbounds %struct.clock_event_device, ptr %16, i32 0, i32 16, !dbg !1708
  store ptr @err_broadcast, ptr %broadcast34, align 16, !dbg !1709
  br label %if.end35, !dbg !1710

if.end35:                                         ; preds = %if.end25, %if.end
  ret void, !dbg !1711
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #5 align 16 !dbg !1712 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1716, metadata !DIExpression()), !dbg !1718
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !1717, metadata !DIExpression()), !dbg !1719
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1720
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !1721
  %conv = zext i32 %call to i64, !dbg !1721
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !1722
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1722
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1722
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !1723
  ret void, !dbg !1724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_setup_oneshot(ptr noundef %bc, i1 noundef zeroext %from_periodic) #0 align 16 !dbg !1725 {
entry:
  %bc.addr = alloca ptr, align 8
  %from_periodic.addr = alloca i8, align 1
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %nexttick = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bc, ptr %bc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !1729, metadata !DIExpression()), !dbg !1740
  %frombool = zext i1 %from_periodic to i8
  store i8 %frombool, ptr %from_periodic.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %from_periodic.addr, metadata !1730, metadata !DIExpression()), !dbg !1741
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !1742
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1731, metadata !DIExpression()), !dbg !1743
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !1744
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !1745
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1732, metadata !DIExpression()), !dbg !1745
  br label %do.body, !dbg !1745

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1746
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1735, metadata !DIExpression()), !dbg !1746
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1746
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1746
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1745
  br label %do.cond, !dbg !1746

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1746

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1737, metadata !DIExpression()), !dbg !1747
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !1747, !srcloc !1748
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1747
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1747
  %conv = zext i32 %2 to i64, !dbg !1747
  %conv2 = trunc i64 %conv to i32, !dbg !1747
  store i32 %conv2, ptr %tmp1, align 4, !dbg !1747
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !1745
  %3 = load i32, ptr %tmp1, align 4, !dbg !1747
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1745
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1745
  store i32 %4, ptr %tmp3, align 4, !dbg !1745
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !1744
  %5 = load i32, ptr %tmp3, align 4, !dbg !1745
  store i32 %5, ptr %tmp, align 4, !dbg !1744
  %6 = load i32, ptr %tmp, align 4, !dbg !1744
  store i32 %6, ptr %cpu, align 4, !dbg !1743
  call void @llvm.lifetime.start.p0(i64 8, ptr %nexttick) #15, !dbg !1749
  call void @llvm.dbg.declare(metadata ptr %nexttick, metadata !1739, metadata !DIExpression()), !dbg !1750
  store i64 0, ptr %nexttick, align 8, !dbg !1750
  %7 = load ptr, ptr %bc.addr, align 8, !dbg !1751
  %tobool = icmp ne ptr %7, null, !dbg !1751
  br i1 %tobool, label %if.end, label %if.then, !dbg !1753

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1754

if.end:                                           ; preds = %do.end
  %8 = load ptr, ptr %bc.addr, align 8, !dbg !1755
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 0, !dbg !1757
  %9 = load ptr, ptr %event_handler, align 64, !dbg !1757
  %cmp = icmp eq ptr %9, @tick_handle_oneshot_broadcast, !dbg !1758
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1759

if.then5:                                         ; preds = %if.end
  %10 = load i32, ptr %cpu, align 4, !dbg !1760
  call void @tick_broadcast_clear_oneshot(i32 noundef %10) #14, !dbg !1762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1763

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %bc.addr, align 8, !dbg !1764
  %event_handler7 = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 0, !dbg !1765
  store ptr @tick_handle_oneshot_broadcast, ptr %event_handler7, align 64, !dbg !1766
  %12 = load ptr, ptr %bc.addr, align 8, !dbg !1767
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 3, !dbg !1768
  store i64 9223372036854775807, ptr %next_event, align 8, !dbg !1769
  %13 = load i8, ptr %from_periodic.addr, align 1, !dbg !1770, !range !1695, !noundef !359
  %tobool8 = trunc i8 %13 to i1, !dbg !1770
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !1772

if.then9:                                         ; preds = %if.end6
  call void @cpumask_copy(ptr noundef @tmpmask, ptr noundef @tick_broadcast_mask) #14, !dbg !1773
  %14 = load i32, ptr %cpu, align 4, !dbg !1775
  call void @cpumask_clear_cpu(i32 noundef %14, ptr noundef @tmpmask) #14, !dbg !1776
  call void @cpumask_or(ptr noundef @tick_broadcast_oneshot_mask, ptr noundef @tick_broadcast_oneshot_mask, ptr noundef @tmpmask) #14, !dbg !1777
  %call = call i64 @tick_get_next_period() #14, !dbg !1778
  store i64 %call, ptr %nexttick, align 8, !dbg !1779
  %15 = load i64, ptr %nexttick, align 8, !dbg !1780
  call void @tick_broadcast_init_next_event(ptr noundef @tmpmask, i64 noundef %15) #14, !dbg !1781
  %16 = load ptr, ptr %bc.addr, align 8, !dbg !1782
  %call10 = call zeroext i1 @clockevent_state_oneshot(ptr noundef %16) #14, !dbg !1784
  br i1 %call10, label %if.then11, label %if.end12, !dbg !1785

if.then11:                                        ; preds = %if.then9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1786

if.end12:                                         ; preds = %if.then9
  br label %if.end13, !dbg !1787

if.end13:                                         ; preds = %if.end12, %if.end6
  %call14 = call zeroext i1 @cpumask_empty(ptr noundef @tick_broadcast_oneshot_mask) #14, !dbg !1788
  br i1 %call14, label %if.end16, label %if.then15, !dbg !1790

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %bc.addr, align 8, !dbg !1791
  %18 = load i32, ptr %cpu, align 4, !dbg !1792
  %19 = load i64, ptr %nexttick, align 8, !dbg !1793
  call void @tick_broadcast_set_event(ptr noundef %17, i32 noundef %18, i64 noundef %19) #14, !dbg !1794
  br label %if.end16, !dbg !1794

if.end16:                                         ; preds = %if.then15, %if.end13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1795
  br label %cleanup, !dbg !1795

cleanup:                                          ; preds = %if.end16, %if.then11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nexttick) #15, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !1795
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1795

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear_cpu(i32 noundef %cpu, ptr noundef %dstp) #5 align 16 !dbg !1796 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1800, metadata !DIExpression()), !dbg !1802
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !1801, metadata !DIExpression()), !dbg !1803
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1804
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !1805
  %conv = zext i32 %call to i64, !dbg !1805
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !1806
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1806
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1806
  call void @clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !1807
  ret void, !dbg !1808
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !1809 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1813, metadata !DIExpression()), !dbg !1815
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !1814, metadata !DIExpression()), !dbg !1816
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1817
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !1817
  %conv = zext i32 %call to i64, !dbg !1817
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !1817
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1817
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1817
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !1817
  ret i1 %call1, !dbg !1818
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_clear_oneshot(i32 noundef %cpu) #0 align 16 !dbg !1819 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1823, metadata !DIExpression()), !dbg !1824
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1825
  call void @cpumask_clear_cpu(i32 noundef %0, ptr noundef @tick_broadcast_oneshot_mask) #14, !dbg !1826
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1827
  call void @cpumask_clear_cpu(i32 noundef %1, ptr noundef @tick_broadcast_pending_mask) #14, !dbg !1828
  ret void, !dbg !1829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1830 dso_local void @clockevents_shutdown(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1831 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_receive_broadcast() #0 align 16 !dbg !1834 {
entry:
  %retval = alloca i32, align 4
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %evt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !1843
  call void @llvm.dbg.declare(metadata ptr %td, metadata !1836, metadata !DIExpression()), !dbg !1844
  br label %do.body, !dbg !1845

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1846
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1837, metadata !DIExpression()), !dbg !1846
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1846
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1846
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1845
  br label %do.cond, !dbg !1846

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1846

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !1847
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1840, metadata !DIExpression()), !dbg !1847
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #17, !dbg !1847, !srcloc !1848
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !1847
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !1847
  %3 = inttoptr i64 %2 to ptr, !dbg !1847
  store ptr %3, ptr %tmp1, align 8, !dbg !1847
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !1845
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1847
  store ptr %4, ptr %tmp, align 8, !dbg !1846
  %5 = load ptr, ptr %tmp, align 8, !dbg !1845
  store ptr %5, ptr %td, align 8, !dbg !1844
  call void @llvm.lifetime.start.p0(i64 8, ptr %evt) #15, !dbg !1849
  call void @llvm.dbg.declare(metadata ptr %evt, metadata !1842, metadata !DIExpression()), !dbg !1850
  %6 = load ptr, ptr %td, align 8, !dbg !1851
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 0, !dbg !1852
  %7 = load ptr, ptr %evtdev, align 8, !dbg !1852
  store ptr %7, ptr %evt, align 8, !dbg !1850
  %8 = load ptr, ptr %evt, align 8, !dbg !1853
  %tobool = icmp ne ptr %8, null, !dbg !1853
  br i1 %tobool, label %if.end, label %if.then, !dbg !1855

if.then:                                          ; preds = %do.end
  store i32 -19, ptr %retval, align 4, !dbg !1856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1856

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %evt, align 8, !dbg !1857
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 0, !dbg !1859
  %10 = load ptr, ptr %event_handler, align 64, !dbg !1859
  %tobool2 = icmp ne ptr %10, null, !dbg !1857
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1860

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1861

if.end4:                                          ; preds = %if.end
  %11 = load ptr, ptr %evt, align 8, !dbg !1862
  %event_handler5 = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 0, !dbg !1863
  %12 = load ptr, ptr %event_handler5, align 64, !dbg !1863
  %13 = load ptr, ptr %evt, align 8, !dbg !1864
  call void %12(ptr noundef %13) #14, !dbg !1862
  store i32 0, ptr %retval, align 4, !dbg !1865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1865

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %evt) #15, !dbg !1866
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !1866
  %14 = load i32, ptr %retval, align 4, !dbg !1866
  ret i32 %14, !dbg !1866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_broadcast_control(i32 noundef %mode) #0 align 16 !dbg !1867 {
entry:
  %mode.addr = alloca i32, align 4
  %bc = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %td = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %bc_stopped = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %tmp11 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify13 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %__dummy64 = alloca i64, align 8
  %__dummy265 = alloca i64, align 8
  %tmp68 = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !1871, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !1872, metadata !DIExpression()), !dbg !1901
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1873, metadata !DIExpression()), !dbg !1902
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !1903
  call void @llvm.dbg.declare(metadata ptr %td, metadata !1874, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1875, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.start.p0(i64 4, ptr %bc_stopped) #15, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %bc_stopped, metadata !1876, metadata !DIExpression()), !dbg !1907
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !1908
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1877, metadata !DIExpression()), !dbg !1909
  br label %do.body, !dbg !1910

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1878, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1881, metadata !DIExpression()), !dbg !1911
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1911
  %conv = zext i1 %cmp to i32, !dbg !1911
  store i32 1, ptr %tmp, align 4, !dbg !1911
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !1912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !1912
  %0 = load i32, ptr %tmp, align 4, !dbg !1911
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tick_broadcast_lock) #14, !dbg !1912
  store i64 %call, ptr %flags, align 8, !dbg !1912
  br label %do.cond, !dbg !1912

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1912

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !1913

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1914
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1882, metadata !DIExpression()), !dbg !1914
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1914
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !1914
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1913
  br label %do.cond2, !dbg !1914

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !1914

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1885, metadata !DIExpression()), !dbg !1915
  %2 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #17, !dbg !1915, !srcloc !1916
  store i64 %2, ptr %tcp_ptr__, align 8, !dbg !1915
  %3 = load i64, ptr %tcp_ptr__, align 8, !dbg !1915
  %4 = inttoptr i64 %3 to ptr, !dbg !1915
  store ptr %4, ptr %tmp5, align 8, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !1913
  %5 = load ptr, ptr %tmp5, align 8, !dbg !1915
  store ptr %5, ptr %tmp4, align 8, !dbg !1914
  %6 = load ptr, ptr %tmp4, align 8, !dbg !1913
  store ptr %6, ptr %td, align 8, !dbg !1917
  %7 = load ptr, ptr %td, align 8, !dbg !1918
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %7, i32 0, i32 0, !dbg !1919
  %8 = load ptr, ptr %evtdev, align 8, !dbg !1919
  store ptr %8, ptr %dev, align 8, !dbg !1920
  %9 = load ptr, ptr %dev, align 8, !dbg !1921
  %tobool = icmp ne ptr %9, null, !dbg !1921
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1923

lor.lhs.false:                                    ; preds = %do.end3
  %10 = load ptr, ptr %dev, align 8, !dbg !1924
  %features = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 9, !dbg !1925
  %11 = load i32, ptr %features, align 4, !dbg !1925
  %and = and i32 %11, 8, !dbg !1926
  %tobool6 = icmp ne i32 %and, 0, !dbg !1926
  br i1 %tobool6, label %if.end, label %if.then, !dbg !1927

if.then:                                          ; preds = %lor.lhs.false, %do.end3
  br label %out, !dbg !1928

if.end:                                           ; preds = %lor.lhs.false
  %12 = load ptr, ptr %dev, align 8, !dbg !1929
  %call7 = call i32 @tick_device_is_functional(ptr noundef %12) #14, !dbg !1931
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1931
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1932

if.then9:                                         ; preds = %if.end
  br label %out, !dbg !1933

if.end10:                                         ; preds = %if.end
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !1934
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1887, metadata !DIExpression()), !dbg !1935
  br label %do.body12, !dbg !1935

do.body12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #15, !dbg !1936
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !1890, metadata !DIExpression()), !dbg !1936
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !1936
  %13 = load ptr, ptr %__vpp_verify13, align 8, !dbg !1936
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #15, !dbg !1935
  br label %do.cond14, !dbg !1936

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !1936

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !1937
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1892, metadata !DIExpression()), !dbg !1937
  %14 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !1937, !srcloc !1938
  store i32 %14, ptr %pfo_val__, align 4, !dbg !1937
  %15 = load i32, ptr %pfo_val__, align 4, !dbg !1937
  %conv17 = zext i32 %15 to i64, !dbg !1937
  %conv18 = trunc i64 %conv17 to i32, !dbg !1937
  store i32 %conv18, ptr %tmp16, align 4, !dbg !1937
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !1935
  %16 = load i32, ptr %tmp16, align 4, !dbg !1937
  store i32 %16, ptr %pscr_ret__, align 4, !dbg !1935
  %17 = load i32, ptr %pscr_ret__, align 4, !dbg !1935
  store i32 %17, ptr %tmp19, align 4, !dbg !1935
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !1934
  %18 = load i32, ptr %tmp19, align 4, !dbg !1935
  store i32 %18, ptr %tmp11, align 4, !dbg !1934
  %19 = load i32, ptr %tmp11, align 4, !dbg !1934
  store i32 %19, ptr %cpu, align 4, !dbg !1939
  %20 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !1940
  store ptr %20, ptr %bc, align 8, !dbg !1941
  %call20 = call zeroext i1 @cpumask_empty(ptr noundef @tick_broadcast_mask) #14, !dbg !1942
  %conv21 = zext i1 %call20 to i32, !dbg !1942
  store i32 %conv21, ptr %bc_stopped, align 4, !dbg !1943
  %21 = load i32, ptr %mode.addr, align 4, !dbg !1944
  switch i32 %21, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb22
    i32 0, label %sw.bb35
  ], !dbg !1945

sw.bb:                                            ; preds = %do.end15
  store i32 1, ptr @tick_broadcast_forced, align 4, !dbg !1946
  br label %sw.bb22, !dbg !1948

sw.bb22:                                          ; preds = %do.end15, %sw.bb
  %22 = load i32, ptr %cpu, align 4, !dbg !1949
  call void @cpumask_set_cpu(i32 noundef %22, ptr noundef @tick_broadcast_on) #14, !dbg !1950
  %23 = load i32, ptr %cpu, align 4, !dbg !1951
  %call23 = call zeroext i1 @cpumask_test_and_set_cpu(i32 noundef %23, ptr noundef @tick_broadcast_mask) #14, !dbg !1953
  br i1 %call23, label %if.end34, label %if.then24, !dbg !1954

if.then24:                                        ; preds = %sw.bb22
  %24 = load ptr, ptr %bc, align 8, !dbg !1955
  %tobool25 = icmp ne ptr %24, null, !dbg !1955
  br i1 %tobool25, label %land.lhs.true, label %if.end33, !dbg !1958

land.lhs.true:                                    ; preds = %if.then24
  %25 = load ptr, ptr %bc, align 8, !dbg !1959
  %features26 = getelementptr inbounds %struct.clock_event_device, ptr %25, i32 0, i32 9, !dbg !1960
  %26 = load i32, ptr %features26, align 4, !dbg !1960
  %and27 = and i32 %26, 128, !dbg !1961
  %tobool28 = icmp ne i32 %and27, 0, !dbg !1961
  br i1 %tobool28, label %if.end33, label %land.lhs.true29, !dbg !1962

land.lhs.true29:                                  ; preds = %land.lhs.true
  %27 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !1963
  %cmp30 = icmp eq i32 %27, 0, !dbg !1964
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1965

if.then32:                                        ; preds = %land.lhs.true29
  %28 = load ptr, ptr %dev, align 8, !dbg !1966
  call void @clockevents_shutdown(ptr noundef %28) #14, !dbg !1967
  br label %if.end33, !dbg !1967

if.end33:                                         ; preds = %if.then32, %land.lhs.true29, %land.lhs.true, %if.then24
  br label %if.end34, !dbg !1968

if.end34:                                         ; preds = %if.end33, %sw.bb22
  br label %sw.epilog, !dbg !1969

sw.bb35:                                          ; preds = %do.end15
  %29 = load i32, ptr @tick_broadcast_forced, align 4, !dbg !1970
  %tobool36 = icmp ne i32 %29, 0, !dbg !1970
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1972

if.then37:                                        ; preds = %sw.bb35
  br label %sw.epilog, !dbg !1973

if.end38:                                         ; preds = %sw.bb35
  %30 = load i32, ptr %cpu, align 4, !dbg !1974
  call void @cpumask_clear_cpu(i32 noundef %30, ptr noundef @tick_broadcast_on) #14, !dbg !1975
  %31 = load i32, ptr %cpu, align 4, !dbg !1976
  %call39 = call zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %31, ptr noundef @tick_broadcast_mask) #14, !dbg !1978
  br i1 %call39, label %if.then40, label %if.end45, !dbg !1979

if.then40:                                        ; preds = %if.end38
  %32 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !1980
  %cmp41 = icmp eq i32 %32, 0, !dbg !1983
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !1984

if.then43:                                        ; preds = %if.then40
  %33 = load ptr, ptr %dev, align 8, !dbg !1985
  call void @tick_setup_periodic(ptr noundef %33, i32 noundef 0) #14, !dbg !1986
  br label %if.end44, !dbg !1986

if.end44:                                         ; preds = %if.then43, %if.then40
  br label %if.end45, !dbg !1987

if.end45:                                         ; preds = %if.end44, %if.end38
  br label %sw.epilog, !dbg !1988

sw.epilog:                                        ; preds = %do.end15, %if.end45, %if.then37, %if.end34
  %34 = load ptr, ptr %bc, align 8, !dbg !1989
  %tobool46 = icmp ne ptr %34, null, !dbg !1989
  br i1 %tobool46, label %if.then47, label %if.end62, !dbg !1991

if.then47:                                        ; preds = %sw.epilog
  %call48 = call zeroext i1 @cpumask_empty(ptr noundef @tick_broadcast_mask) #14, !dbg !1992
  br i1 %call48, label %if.then49, label %if.else, !dbg !1995

if.then49:                                        ; preds = %if.then47
  %35 = load i32, ptr %bc_stopped, align 4, !dbg !1996
  %tobool50 = icmp ne i32 %35, 0, !dbg !1996
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !1999

if.then51:                                        ; preds = %if.then49
  %36 = load ptr, ptr %bc, align 8, !dbg !2000
  call void @clockevents_shutdown(ptr noundef %36) #14, !dbg !2001
  br label %if.end52, !dbg !2001

if.end52:                                         ; preds = %if.then51, %if.then49
  br label %if.end61, !dbg !2002

if.else:                                          ; preds = %if.then47
  %37 = load i32, ptr %bc_stopped, align 4, !dbg !2003
  %tobool53 = icmp ne i32 %37, 0, !dbg !2003
  br i1 %tobool53, label %if.then54, label %if.end60, !dbg !2005

if.then54:                                        ; preds = %if.else
  %38 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !2006
  %cmp55 = icmp eq i32 %38, 0, !dbg !2009
  br i1 %cmp55, label %if.then57, label %if.else58, !dbg !2010

if.then57:                                        ; preds = %if.then54
  %39 = load ptr, ptr %bc, align 8, !dbg !2011
  call void @tick_broadcast_start_periodic(ptr noundef %39) #14, !dbg !2012
  br label %if.end59, !dbg !2012

if.else58:                                        ; preds = %if.then54
  %40 = load ptr, ptr %bc, align 8, !dbg !2013
  call void @tick_broadcast_setup_oneshot(ptr noundef %40, i1 noundef zeroext false) #14, !dbg !2014
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  br label %if.end60, !dbg !2015

if.end60:                                         ; preds = %if.end59, %if.else
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end52
  br label %if.end62, !dbg !2016

if.end62:                                         ; preds = %if.end61, %sw.epilog
  br label %out, !dbg !1989

out:                                              ; preds = %if.end62, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !1894), !dbg !2017
  br label %do.body63, !dbg !2018

do.body63:                                        ; preds = %out
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy64) #15, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %__dummy64, metadata !1895, metadata !DIExpression()), !dbg !2019
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy265) #15, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %__dummy265, metadata !1898, metadata !DIExpression()), !dbg !2019
  %cmp66 = icmp eq ptr %__dummy64, %__dummy265, !dbg !2019
  %conv67 = zext i1 %cmp66 to i32, !dbg !2019
  store i32 1, ptr %tmp68, align 4, !dbg !2019
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy265) #15, !dbg !2020
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy64) #15, !dbg !2020
  %41 = load i32, ptr %tmp68, align 4, !dbg !2019
  %42 = load i64, ptr %flags, align 8, !dbg !2020
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tick_broadcast_lock, i64 noundef %42) #14, !dbg !2020
  br label %do.cond69, !dbg !2020

do.cond69:                                        ; preds = %do.body63
  br label %do.end70, !dbg !2020

do.end70:                                         ; preds = %do.cond69
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 4, ptr %bc_stopped) #15, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !2021
  ret void, !dbg !2021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !2022 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2027, metadata !DIExpression()), !dbg !2028
  ret void, !dbg !2029
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_and_set_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !2030 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2034, metadata !DIExpression()), !dbg !2036
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !2035, metadata !DIExpression()), !dbg !2037
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2038
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !2039
  %conv = zext i32 %call to i64, !dbg !2039
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !2040
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2040
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2040
  %call1 = call zeroext i1 @test_and_set_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !2041
  ret i1 %call1, !dbg !2042
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !2043 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2045, metadata !DIExpression()), !dbg !2047
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !2046, metadata !DIExpression()), !dbg !2048
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2049
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !2050
  %conv = zext i32 %call to i64, !dbg !2050
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !2051
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2051
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2051
  %call1 = call zeroext i1 @test_and_clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !2052
  ret i1 %call1, !dbg !2053
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2054 dso_local void @tick_setup_periodic(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_set_periodic_handler(ptr noundef %dev, i32 noundef %broadcast) #0 align 16 !dbg !2055 {
entry:
  %dev.addr = alloca ptr, align 8
  %broadcast.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2057, metadata !DIExpression()), !dbg !2059
  store i32 %broadcast, ptr %broadcast.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %broadcast.addr, metadata !2058, metadata !DIExpression()), !dbg !2060
  %0 = load i32, ptr %broadcast.addr, align 4, !dbg !2061
  %tobool = icmp ne i32 %0, 0, !dbg !2061
  br i1 %tobool, label %if.else, label %if.then, !dbg !2063

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2064
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 0, !dbg !2065
  store ptr @tick_handle_periodic, ptr %event_handler, align 64, !dbg !2066
  br label %if.end, !dbg !2064

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2067
  %event_handler1 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 0, !dbg !2068
  store ptr @tick_handle_periodic_broadcast, ptr %event_handler1, align 64, !dbg !2069
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2070
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_handle_periodic_broadcast(ptr noundef %dev) #0 align 16 !dbg !2071 {
entry:
  %dev.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %bc_local = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %next = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2073, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %td, metadata !2074, metadata !DIExpression()), !dbg !2086
  br label %do.body, !dbg !2087

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2088
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2075, metadata !DIExpression()), !dbg !2088
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2088
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2087
  br label %do.cond, !dbg !2088

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2088

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !2089
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2078, metadata !DIExpression()), !dbg !2089
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #17, !dbg !2089, !srcloc !2090
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !2089
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !2089
  %3 = inttoptr i64 %2 to ptr, !dbg !2089
  store ptr %3, ptr %tmp1, align 8, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !2087
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2089
  store ptr %4, ptr %tmp, align 8, !dbg !2088
  %5 = load ptr, ptr %tmp, align 8, !dbg !2087
  store ptr %5, ptr %td, align 8, !dbg !2086
  call void @llvm.lifetime.start.p0(i64 1, ptr %bc_local) #15, !dbg !2091
  call void @llvm.dbg.declare(metadata ptr %bc_local, metadata !2080, metadata !DIExpression()), !dbg !2092
  call void @_raw_spin_lock(ptr noundef @tick_broadcast_lock) #14, !dbg !2093
  %6 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !2094
  %call = call zeroext i1 @clockevent_state_shutdown(ptr noundef %6) #14, !dbg !2096
  br i1 %call, label %if.then, label %if.end, !dbg !2097

if.then:                                          ; preds = %do.end
  call void @_raw_spin_unlock(ptr noundef @tick_broadcast_lock) #14, !dbg !2098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2100

if.end:                                           ; preds = %do.end
  %call2 = call zeroext i1 @tick_do_periodic_broadcast() #14, !dbg !2101
  %frombool = zext i1 %call2 to i8, !dbg !2102
  store i8 %frombool, ptr %bc_local, align 1, !dbg !2102
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2103
  %call3 = call zeroext i1 @clockevent_state_oneshot(ptr noundef %7) #14, !dbg !2104
  br i1 %call3, label %if.then4, label %if.end6, !dbg !2105

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2081, metadata !DIExpression()), !dbg !2107
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2108
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 3, !dbg !2108
  %9 = load i64, ptr %next_event, align 8, !dbg !2108
  %add = add i64 %9, 1000000, !dbg !2108
  store i64 %add, ptr %next, align 8, !dbg !2107
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2109
  %11 = load i64, ptr %next, align 8, !dbg !2110
  %call5 = call i32 @clockevents_program_event(ptr noundef %10, i64 noundef %11, i1 noundef zeroext true) #14, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !2112
  br label %if.end6, !dbg !2113

if.end6:                                          ; preds = %if.then4, %if.end
  call void @_raw_spin_unlock(ptr noundef @tick_broadcast_lock) #14, !dbg !2114
  %12 = load i8, ptr %bc_local, align 1, !dbg !2115, !range !1695, !noundef !359
  %tobool = trunc i8 %12 to i1, !dbg !2115
  br i1 %tobool, label %if.then7, label %if.end9, !dbg !2117

if.then7:                                         ; preds = %if.end6
  %13 = load ptr, ptr %td, align 8, !dbg !2118
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %13, i32 0, i32 0, !dbg !2119
  %14 = load ptr, ptr %evtdev, align 8, !dbg !2119
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %14, i32 0, i32 0, !dbg !2120
  %15 = load ptr, ptr %event_handler, align 64, !dbg !2120
  %16 = load ptr, ptr %td, align 8, !dbg !2121
  %evtdev8 = getelementptr inbounds %struct.tick_device, ptr %16, i32 0, i32 0, !dbg !2122
  %17 = load ptr, ptr %evtdev8, align 8, !dbg !2122
  call void %15(ptr noundef %17) #14, !dbg !2118
  br label %if.end9, !dbg !2118

if.end9:                                          ; preds = %if.then7, %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2123
  br label %cleanup, !dbg !2123

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %bc_local) #15, !dbg !2123
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !2123
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2123

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_broadcast_offline(i32 noundef %cpu) #0 align 16 !dbg !2124 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @_raw_spin_lock(ptr noundef @tick_broadcast_lock) #14, !dbg !2130
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2131
  call void @cpumask_clear_cpu(i32 noundef %0, ptr noundef @tick_broadcast_mask) #14, !dbg !2132
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2133
  call void @cpumask_clear_cpu(i32 noundef %1, ptr noundef @tick_broadcast_on) #14, !dbg !2134
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2135
  call void @tick_broadcast_oneshot_offline(i32 noundef %2) #14, !dbg !2136
  call void @tick_shutdown_broadcast() #14, !dbg !2137
  call void @_raw_spin_unlock(ptr noundef @tick_broadcast_lock) #14, !dbg !2138
  ret void, !dbg !2139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_oneshot_offline(i32 noundef %cpu) #0 align 16 !dbg !2140 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2142, metadata !DIExpression()), !dbg !2143
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2144
  %call = call ptr @tick_get_oneshot_wakeup_device(i32 noundef %0) #14, !dbg !2146
  %tobool = icmp ne ptr %call, null, !dbg !2146
  br i1 %tobool, label %if.then, label %if.end, !dbg !2147

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2148
  %call1 = call zeroext i1 @tick_set_oneshot_wakeup_device(ptr noundef null, i32 noundef %1) #14, !dbg !2149
  br label %if.end, !dbg !2149

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2150
  call void @cpumask_clear_cpu(i32 noundef %2, ptr noundef @tick_broadcast_oneshot_mask) #14, !dbg !2151
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !2152
  call void @cpumask_clear_cpu(i32 noundef %3, ptr noundef @tick_broadcast_pending_mask) #14, !dbg !2153
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !2154
  call void @cpumask_clear_cpu(i32 noundef %4, ptr noundef @tick_broadcast_force_mask) #14, !dbg !2155
  ret void, !dbg !2156
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_shutdown_broadcast() #0 align 16 !dbg !2157 {
entry:
  %bc = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !2160
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !2159, metadata !DIExpression()), !dbg !2161
  %0 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !2162
  store ptr %0, ptr %bc, align 8, !dbg !2161
  %1 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !2163
  %cmp = icmp eq i32 %1, 0, !dbg !2165
  br i1 %cmp, label %if.then, label %if.end2, !dbg !2166

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bc, align 8, !dbg !2167
  %tobool = icmp ne ptr %2, null, !dbg !2167
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2170

land.lhs.true:                                    ; preds = %if.then
  %call = call zeroext i1 @cpumask_empty(ptr noundef @tick_broadcast_mask) #14, !dbg !2171
  br i1 %call, label %if.then1, label %if.end, !dbg !2172

if.then1:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %bc, align 8, !dbg !2173
  call void @clockevents_shutdown(ptr noundef %3) #14, !dbg !2174
  br label %if.end, !dbg !2174

if.end:                                           ; preds = %if.then1, %land.lhs.true, %if.then
  br label %if.end2, !dbg !2175

if.end2:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !2176
  ret void, !dbg !2176
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_suspend_broadcast() #0 align 16 !dbg !2177 {
entry:
  %bc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !2189
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !2179, metadata !DIExpression()), !dbg !2190
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2191
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2180, metadata !DIExpression()), !dbg !2192
  br label %do.body, !dbg !2193

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !2194
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2181, metadata !DIExpression()), !dbg !2194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !2194
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2184, metadata !DIExpression()), !dbg !2194
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2194
  %conv = zext i1 %cmp to i32, !dbg !2194
  store i32 1, ptr %tmp, align 4, !dbg !2194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !2195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !2195
  %0 = load i32, ptr %tmp, align 4, !dbg !2194
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tick_broadcast_lock) #14, !dbg !2195
  store i64 %call, ptr %flags, align 8, !dbg !2195
  br label %do.cond, !dbg !2195

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2195

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !2196
  store ptr %1, ptr %bc, align 8, !dbg !2197
  %2 = load ptr, ptr %bc, align 8, !dbg !2198
  %tobool = icmp ne ptr %2, null, !dbg !2198
  br i1 %tobool, label %if.then, label %if.end, !dbg !2200

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %bc, align 8, !dbg !2201
  call void @clockevents_shutdown(ptr noundef %3) #14, !dbg !2202
  br label %if.end, !dbg !2202

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body1, !dbg !2203

do.body1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !2204
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !2185, metadata !DIExpression()), !dbg !2204
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !2204
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !2188, metadata !DIExpression()), !dbg !2204
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !2204
  %conv6 = zext i1 %cmp5 to i32, !dbg !2204
  store i32 1, ptr %tmp7, align 4, !dbg !2204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !2205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !2205
  %4 = load i32, ptr %tmp7, align 4, !dbg !2204
  %5 = load i64, ptr %flags, align 8, !dbg !2205
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tick_broadcast_lock, i64 noundef %5) #14, !dbg !2205
  br label %do.cond8, !dbg !2205

do.cond8:                                         ; preds = %do.body1
  br label %do.end9, !dbg !2205

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !2206
  ret void, !dbg !2206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tick_resume_check_broadcast() #0 align 16 !dbg !2207 {
entry:
  %retval = alloca i1, align 1
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %0 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !2217
  %cmp = icmp eq i32 %0, 1, !dbg !2218
  br i1 %cmp, label %if.then, label %if.else, !dbg !2219

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2220
  br label %return, !dbg !2220

if.else:                                          ; preds = %entry
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !2221
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2209, metadata !DIExpression()), !dbg !2222
  br label %do.body, !dbg !2222

do.body:                                          ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2213, metadata !DIExpression()), !dbg !2223
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2223
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !2223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2222
  br label %do.cond, !dbg !2223

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2223

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !2224
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2215, metadata !DIExpression()), !dbg !2224
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !2224, !srcloc !2225
  store i32 %2, ptr %pfo_val__, align 4, !dbg !2224
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !2224
  %conv = zext i32 %3 to i64, !dbg !2224
  %conv2 = trunc i64 %conv to i32, !dbg !2224
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !2222
  %4 = load i32, ptr %tmp1, align 4, !dbg !2224
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !2222
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !2222
  store i32 %5, ptr %tmp3, align 4, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2221
  %6 = load i32, ptr %tmp3, align 4, !dbg !2222
  store i32 %6, ptr %tmp, align 4, !dbg !2221
  %7 = load i32, ptr %tmp, align 4, !dbg !2221
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %7, ptr noundef @tick_broadcast_mask) #14, !dbg !2226
  store i1 %call, ptr %retval, align 1, !dbg !2227
  br label %return, !dbg !2227

return:                                           ; preds = %do.end, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !2228
  ret i1 %8, !dbg !2228
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_resume_broadcast() #0 align 16 !dbg !2229 {
entry:
  %bc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy10 = alloca i64, align 8
  %__dummy211 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !2231, metadata !DIExpression()), !dbg !2242
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2243
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2232, metadata !DIExpression()), !dbg !2244
  br label %do.body, !dbg !2245

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !2246
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2233, metadata !DIExpression()), !dbg !2246
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !2246
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2236, metadata !DIExpression()), !dbg !2246
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2246
  %conv = zext i1 %cmp to i32, !dbg !2246
  store i32 1, ptr %tmp, align 4, !dbg !2246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !2247
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !2247
  %0 = load i32, ptr %tmp, align 4, !dbg !2246
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tick_broadcast_lock) #14, !dbg !2247
  store i64 %call, ptr %flags, align 8, !dbg !2247
  br label %do.cond, !dbg !2247

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2247

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !2248
  store ptr %1, ptr %bc, align 8, !dbg !2249
  %2 = load ptr, ptr %bc, align 8, !dbg !2250
  %tobool = icmp ne ptr %2, null, !dbg !2250
  br i1 %tobool, label %if.then, label %if.end8, !dbg !2252

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %bc, align 8, !dbg !2253
  %call1 = call i32 @clockevents_tick_resume(ptr noundef %3) #14, !dbg !2255
  %4 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !2256
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !2257

sw.bb:                                            ; preds = %if.then
  %call2 = call zeroext i1 @cpumask_empty(ptr noundef @tick_broadcast_mask) #14, !dbg !2258
  br i1 %call2, label %if.end, label %if.then3, !dbg !2261

if.then3:                                         ; preds = %sw.bb
  %5 = load ptr, ptr %bc, align 8, !dbg !2262
  call void @tick_broadcast_start_periodic(ptr noundef %5) #14, !dbg !2263
  br label %if.end, !dbg !2263

if.end:                                           ; preds = %if.then3, %sw.bb
  br label %sw.epilog, !dbg !2264

sw.bb4:                                           ; preds = %if.then
  %call5 = call zeroext i1 @cpumask_empty(ptr noundef @tick_broadcast_mask) #14, !dbg !2265
  br i1 %call5, label %if.end7, label %if.then6, !dbg !2267

if.then6:                                         ; preds = %sw.bb4
  %6 = load ptr, ptr %bc, align 8, !dbg !2268
  call void @tick_resume_broadcast_oneshot(ptr noundef %6) #14, !dbg !2269
  br label %if.end7, !dbg !2269

if.end7:                                          ; preds = %if.then6, %sw.bb4
  br label %sw.epilog, !dbg !2270

sw.epilog:                                        ; preds = %if.then, %if.end7, %if.end
  br label %if.end8, !dbg !2271

if.end8:                                          ; preds = %sw.epilog, %do.end
  br label %do.body9, !dbg !2272

do.body9:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy10) #15, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %__dummy10, metadata !2237, metadata !DIExpression()), !dbg !2273
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy211) #15, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %__dummy211, metadata !2240, metadata !DIExpression()), !dbg !2273
  %cmp12 = icmp eq ptr %__dummy10, %__dummy211, !dbg !2273
  %conv13 = zext i1 %cmp12 to i32, !dbg !2273
  store i32 1, ptr %tmp14, align 4, !dbg !2273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy211) #15, !dbg !2274
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy10) #15, !dbg !2274
  %7 = load i32, ptr %tmp14, align 4, !dbg !2273
  %8 = load i64, ptr %flags, align 8, !dbg !2274
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tick_broadcast_lock, i64 noundef %8) #14, !dbg !2274
  br label %do.cond15, !dbg !2274

do.cond15:                                        ; preds = %do.body9
  br label %do.end16, !dbg !2274

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !2275
  ret void, !dbg !2275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2276 dso_local i32 @clockevents_tick_resume(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_resume_broadcast_oneshot(ptr noundef %bc) #0 align 16 !dbg !2277 {
entry:
  %bc.addr = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2279, metadata !DIExpression()), !dbg !2280
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !2281
  call void @clockevents_switch_state(ptr noundef %0, i32 noundef 3) #14, !dbg !2282
  ret void, !dbg !2283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tick_get_broadcast_oneshot_mask() #0 align 16 !dbg !2284 {
entry:
  ret ptr @tick_broadcast_oneshot_mask, !dbg !2285
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_check_broadcast_expired() #6 section ".noinstr.text" align 16 !dbg !2286 {
entry:
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !2295
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2296
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2288, metadata !DIExpression()), !dbg !2296
  br label %do.body, !dbg !2296

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2297
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2291, metadata !DIExpression()), !dbg !2297
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2297
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2297
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2296
  br label %do.cond, !dbg !2297

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2297

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !2298
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2293, metadata !DIExpression()), !dbg !2298
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !2298, !srcloc !2299
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2298
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2298
  %conv = zext i32 %2 to i64, !dbg !2298
  %conv2 = trunc i64 %conv to i32, !dbg !2298
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2298
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !2296
  %3 = load i32, ptr %tmp1, align 4, !dbg !2298
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2296
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2296
  store i32 %4, ptr %tmp3, align 4, !dbg !2296
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2295
  %5 = load i32, ptr %tmp3, align 4, !dbg !2296
  store i32 %5, ptr %tmp, align 4, !dbg !2295
  %6 = load i32, ptr %tmp, align 4, !dbg !2295
  %conv4 = sext i32 %6 to i64, !dbg !2300
  %call = call zeroext i1 @arch_test_bit(i64 noundef %conv4, ptr noundef @tick_broadcast_force_mask) #14, !dbg !2301
  %conv5 = zext i1 %call to i32, !dbg !2301
  ret i32 %conv5, !dbg !2302
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2303 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2311, metadata !DIExpression()), !dbg !2313
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2312, metadata !DIExpression()), !dbg !2314
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2315
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2316
  br i1 %1, label %cond.true, label %cond.false, !dbg !2316

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2317
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2318
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !2319
  %conv = zext i1 %call to i32, !dbg !2319
  br label %cond.end, !dbg !2316

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2320
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2321
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !2322
  %conv2 = zext i1 %call1 to i32, !dbg !2322
  br label %cond.end, !dbg !2316

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2316
  %tobool = icmp ne i32 %cond, 0, !dbg !2316
  ret i1 %tobool, !dbg !2323
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_check_oneshot_broadcast_this_cpu() #0 align 16 !dbg !2324 {
entry:
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %td = alloca ptr, align 8
  %__vpp_verify5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !2341
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2342
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2326, metadata !DIExpression()), !dbg !2342
  br label %do.body, !dbg !2342

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2343
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2330, metadata !DIExpression()), !dbg !2343
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2343
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2342
  br label %do.cond, !dbg !2343

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2343

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !2344
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2332, metadata !DIExpression()), !dbg !2344
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !2344, !srcloc !2345
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2344
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2344
  %conv = zext i32 %2 to i64, !dbg !2344
  %conv2 = trunc i64 %conv to i32, !dbg !2344
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !2342
  %3 = load i32, ptr %tmp1, align 4, !dbg !2344
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2342
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2342
  store i32 %4, ptr %tmp3, align 4, !dbg !2342
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2341
  %5 = load i32, ptr %tmp3, align 4, !dbg !2342
  store i32 %5, ptr %tmp, align 4, !dbg !2341
  %6 = load i32, ptr %tmp, align 4, !dbg !2341
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %6, ptr noundef @tick_broadcast_oneshot_mask) #14, !dbg !2346
  br i1 %call, label %if.then, label %if.end12, !dbg !2347

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !2348
  call void @llvm.dbg.declare(metadata ptr %td, metadata !2334, metadata !DIExpression()), !dbg !2349
  br label %do.body4, !dbg !2350

do.body4:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify5) #15, !dbg !2351
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify5, metadata !2336, metadata !DIExpression()), !dbg !2351
  store ptr null, ptr %__vpp_verify5, align 8, !dbg !2351
  %7 = load ptr, ptr %__vpp_verify5, align 8, !dbg !2351
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify5) #15, !dbg !2350
  br label %do.cond6, !dbg !2351

do.cond6:                                         ; preds = %do.body4
  br label %do.end7, !dbg !2351

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2339, metadata !DIExpression()), !dbg !2352
  %8 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #17, !dbg !2352, !srcloc !2353
  store i64 %8, ptr %tcp_ptr__, align 8, !dbg !2352
  %9 = load i64, ptr %tcp_ptr__, align 8, !dbg !2352
  %10 = inttoptr i64 %9 to ptr, !dbg !2352
  store ptr %10, ptr %tmp9, align 8, !dbg !2352
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !2350
  %11 = load ptr, ptr %tmp9, align 8, !dbg !2352
  store ptr %11, ptr %tmp8, align 8, !dbg !2351
  %12 = load ptr, ptr %tmp8, align 8, !dbg !2350
  store ptr %12, ptr %td, align 8, !dbg !2349
  %13 = load ptr, ptr %td, align 8, !dbg !2354
  %mode = getelementptr inbounds %struct.tick_device, ptr %13, i32 0, i32 1, !dbg !2356
  %14 = load i32, ptr %mode, align 8, !dbg !2356
  %cmp = icmp eq i32 %14, 1, !dbg !2357
  br i1 %cmp, label %if.then11, label %if.end, !dbg !2358

if.then11:                                        ; preds = %do.end7
  %15 = load ptr, ptr %td, align 8, !dbg !2359
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %15, i32 0, i32 0, !dbg !2361
  %16 = load ptr, ptr %evtdev, align 8, !dbg !2361
  call void @clockevents_switch_state(ptr noundef %16, i32 noundef 3) #14, !dbg !2362
  br label %if.end, !dbg !2363

if.end:                                           ; preds = %if.then11, %do.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !2364
  br label %if.end12, !dbg !2365

if.end12:                                         ; preds = %if.end, %do.end
  ret void, !dbg !2366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2367 dso_local void @clockevents_switch_state(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__tick_broadcast_oneshot_control(i32 noundef %state) #0 align 16 !dbg !2370 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2374, metadata !DIExpression()), !dbg !2389
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %td, metadata !2375, metadata !DIExpression()), !dbg !2391
  br label %do.body, !dbg !2392

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2393
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2376, metadata !DIExpression()), !dbg !2393
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2393
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2392
  br label %do.cond, !dbg !2393

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2393

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !2394
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2379, metadata !DIExpression()), !dbg !2394
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #17, !dbg !2394, !srcloc !2395
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !2394
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !2394
  %3 = inttoptr i64 %2 to ptr, !dbg !2394
  store ptr %3, ptr %tmp1, align 8, !dbg !2394
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !2392
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2394
  store ptr %4, ptr %tmp, align 8, !dbg !2393
  %5 = load ptr, ptr %tmp, align 8, !dbg !2392
  store ptr %5, ptr %td, align 8, !dbg !2391
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !2396
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2381, metadata !DIExpression()), !dbg !2397
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !2398
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2399
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2382, metadata !DIExpression()), !dbg !2399
  br label %do.body3, !dbg !2399

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #15, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !2385, metadata !DIExpression()), !dbg !2400
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !2400
  %6 = load ptr, ptr %__vpp_verify4, align 8, !dbg !2400
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #15, !dbg !2399
  br label %do.cond5, !dbg !2400

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !2400

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !2401
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2387, metadata !DIExpression()), !dbg !2401
  %7 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !2401, !srcloc !2402
  store i32 %7, ptr %pfo_val__, align 4, !dbg !2401
  %8 = load i32, ptr %pfo_val__, align 4, !dbg !2401
  %conv = zext i32 %8 to i64, !dbg !2401
  %conv8 = trunc i64 %conv to i32, !dbg !2401
  store i32 %conv8, ptr %tmp7, align 4, !dbg !2401
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !2399
  %9 = load i32, ptr %tmp7, align 4, !dbg !2401
  store i32 %9, ptr %pscr_ret__, align 4, !dbg !2399
  %10 = load i32, ptr %pscr_ret__, align 4, !dbg !2399
  store i32 %10, ptr %tmp9, align 4, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2398
  %11 = load i32, ptr %tmp9, align 4, !dbg !2399
  store i32 %11, ptr %tmp2, align 4, !dbg !2398
  %12 = load i32, ptr %tmp2, align 4, !dbg !2398
  store i32 %12, ptr %cpu, align 4, !dbg !2397
  %13 = load i32, ptr %state.addr, align 4, !dbg !2403
  %14 = load ptr, ptr %td, align 8, !dbg !2405
  %15 = load i32, ptr %cpu, align 4, !dbg !2406
  %call = call i32 @tick_oneshot_wakeup_control(i32 noundef %13, ptr noundef %14, i32 noundef %15) #14, !dbg !2407
  %tobool = icmp ne i32 %call, 0, !dbg !2407
  br i1 %tobool, label %if.end, label %if.then, !dbg !2408

if.then:                                          ; preds = %do.end6
  store i32 0, ptr %retval, align 4, !dbg !2409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2409

if.end:                                           ; preds = %do.end6
  %16 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !2410
  %tobool10 = icmp ne ptr %16, null, !dbg !2412
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2413

if.then11:                                        ; preds = %if.end
  %17 = load i32, ptr %state.addr, align 4, !dbg !2414
  %18 = load ptr, ptr %td, align 8, !dbg !2415
  %19 = load i32, ptr %cpu, align 4, !dbg !2416
  %call12 = call i32 @___tick_broadcast_oneshot_control(i32 noundef %17, ptr noundef %18, i32 noundef %19) #14, !dbg !2417
  store i32 %call12, ptr %retval, align 4, !dbg !2418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2418

if.end13:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !2419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2419

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !2420
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !2420
  %20 = load i32, ptr %retval, align 4, !dbg !2420
  ret i32 %20, !dbg !2420
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tick_oneshot_wakeup_control(i32 noundef %state, ptr noundef %td, i32 noundef %cpu) #0 align 16 !dbg !2421 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %td.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %wd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2425, metadata !DIExpression()), !dbg !2430
  store ptr %td, ptr %td.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %td.addr, metadata !2426, metadata !DIExpression()), !dbg !2431
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2427, metadata !DIExpression()), !dbg !2432
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2433
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2428, metadata !DIExpression()), !dbg !2434
  call void @llvm.lifetime.start.p0(i64 8, ptr %wd) #15, !dbg !2433
  call void @llvm.dbg.declare(metadata ptr %wd, metadata !2429, metadata !DIExpression()), !dbg !2435
  %0 = load ptr, ptr %td.addr, align 8, !dbg !2436
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %0, i32 0, i32 0, !dbg !2437
  %1 = load ptr, ptr %evtdev, align 8, !dbg !2437
  store ptr %1, ptr %dev, align 8, !dbg !2438
  %2 = load ptr, ptr %td.addr, align 8, !dbg !2439
  %mode = getelementptr inbounds %struct.tick_device, ptr %2, i32 0, i32 1, !dbg !2441
  %3 = load i32, ptr %mode, align 8, !dbg !2441
  %cmp = icmp ne i32 %3, 1, !dbg !2442
  br i1 %cmp, label %if.then, label %if.end, !dbg !2443

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2444

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !2445
  %call = call ptr @tick_get_oneshot_wakeup_device(i32 noundef %4) #14, !dbg !2446
  store ptr %call, ptr %wd, align 8, !dbg !2447
  %5 = load ptr, ptr %wd, align 8, !dbg !2448
  %tobool = icmp ne ptr %5, null, !dbg !2448
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2450

if.then1:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !2451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2451

if.end2:                                          ; preds = %if.end
  %6 = load i32, ptr %state.addr, align 4, !dbg !2452
  switch i32 %6, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
  ], !dbg !2453

sw.bb:                                            ; preds = %if.end2
  %7 = load ptr, ptr %dev, align 8, !dbg !2454
  call void @clockevents_switch_state(ptr noundef %7, i32 noundef 4) #14, !dbg !2456
  %8 = load ptr, ptr %wd, align 8, !dbg !2457
  call void @clockevents_switch_state(ptr noundef %8, i32 noundef 3) #14, !dbg !2458
  %9 = load ptr, ptr %wd, align 8, !dbg !2459
  %10 = load ptr, ptr %dev, align 8, !dbg !2460
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 3, !dbg !2461
  %11 = load i64, ptr %next_event, align 8, !dbg !2461
  %call3 = call i32 @clockevents_program_event(ptr noundef %9, i64 noundef %11, i1 noundef zeroext true) #14, !dbg !2462
  br label %sw.epilog, !dbg !2463

sw.bb4:                                           ; preds = %if.end2
  %12 = load ptr, ptr %wd, align 8, !dbg !2464
  %call5 = call i32 @clockevent_get_state(ptr noundef %12) #14, !dbg !2466
  %cmp6 = icmp ne i32 %call5, 3, !dbg !2467
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2468

if.then7:                                         ; preds = %sw.bb4
  store i32 -19, ptr %retval, align 4, !dbg !2469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2469

if.end8:                                          ; preds = %sw.bb4
  br label %sw.epilog, !dbg !2470

sw.epilog:                                        ; preds = %if.end8, %if.end2, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !2471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2471

cleanup:                                          ; preds = %sw.epilog, %if.then7, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wd) #15, !dbg !2472
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2472
  %13 = load i32, ptr %retval, align 4, !dbg !2472
  ret i32 %13, !dbg !2472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @___tick_broadcast_oneshot_control(i32 noundef %state, ptr noundef %td, i32 noundef %cpu) #0 align 16 !dbg !2473 {
entry:
  %state.addr = alloca i32, align 4
  %td.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %bc = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %now = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2475, metadata !DIExpression()), !dbg !2492
  store ptr %td, ptr %td.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %td.addr, metadata !2476, metadata !DIExpression()), !dbg !2493
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2477, metadata !DIExpression()), !dbg !2494
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !2478, metadata !DIExpression()), !dbg !2496
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2479, metadata !DIExpression()), !dbg !2497
  %0 = load ptr, ptr %td.addr, align 8, !dbg !2498
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %0, i32 0, i32 0, !dbg !2499
  %1 = load ptr, ptr %evtdev, align 8, !dbg !2499
  store ptr %1, ptr %dev, align 8, !dbg !2497
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2480, metadata !DIExpression()), !dbg !2501
  store i32 0, ptr %ret, align 4, !dbg !2501
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #15, !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %now, metadata !2481, metadata !DIExpression()), !dbg !2503
  call void @_raw_spin_lock(ptr noundef @tick_broadcast_lock) #14, !dbg !2504
  %2 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !2505
  store ptr %2, ptr %bc, align 8, !dbg !2506
  %3 = load i32, ptr %state.addr, align 4, !dbg !2507
  %cmp = icmp eq i32 %3, 1, !dbg !2508
  br i1 %cmp, label %if.then, label %if.else50, !dbg !2509

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %bc, align 8, !dbg !2510
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !2511
  %call = call i32 @broadcast_needs_cpu(ptr noundef %4, i32 noundef %5) #14, !dbg !2512
  store i32 %call, ptr %ret, align 4, !dbg !2513
  %6 = load i32, ptr %ret, align 4, !dbg !2514
  %tobool = icmp ne i32 %6, 0, !dbg !2514
  br i1 %tobool, label %if.then1, label %if.end, !dbg !2516

if.then1:                                         ; preds = %if.then
  br label %out, !dbg !2517

if.end:                                           ; preds = %if.then
  %7 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 8, !dbg !2518
  %cmp2 = icmp eq i32 %7, 0, !dbg !2520
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !2521

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %bc, align 8, !dbg !2522
  %features = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9, !dbg !2525
  %9 = load i32, ptr %features, align 4, !dbg !2525
  %and = and i32 %9, 128, !dbg !2526
  %tobool4 = icmp ne i32 %and, 0, !dbg !2526
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2527

if.then5:                                         ; preds = %if.then3
  store i32 -16, ptr %ret, align 4, !dbg !2528
  br label %if.end6, !dbg !2529

if.end6:                                          ; preds = %if.then5, %if.then3
  br label %out, !dbg !2530

if.end7:                                          ; preds = %if.end
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !2531
  %call8 = call zeroext i1 @cpumask_test_and_set_cpu(i32 noundef %10, ptr noundef @tick_broadcast_oneshot_mask) #14, !dbg !2532
  br i1 %call8, label %if.end49, label %if.then9, !dbg !2533

if.then9:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !2534
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2482, metadata !DIExpression()), !dbg !2534
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !2534
  %call10 = call zeroext i1 @cpumask_test_cpu(i32 noundef %11, ptr noundef @tick_broadcast_pending_mask) #14, !dbg !2534
  %lnot = xor i1 %call10, true, !dbg !2534
  %lnot11 = xor i1 %lnot, true, !dbg !2534
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !2534
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2534
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !2535
  %tobool12 = icmp ne i32 %12, 0, !dbg !2535
  %lnot13 = xor i1 %tobool12, true, !dbg !2535
  %lnot15 = xor i1 %lnot13, true, !dbg !2535
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !2535
  %conv = sext i32 %lnot.ext16 to i64, !dbg !2535
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2535
  %tobool17 = icmp ne i64 %expval, 0, !dbg !2535
  br i1 %tobool17, label %if.then18, label %if.end28, !dbg !2534

if.then18:                                        ; preds = %if.then9
  br label %do.body, !dbg !2535

do.body:                                          ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !2536
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2488, metadata !DIExpression()), !dbg !2536
  store i32 2307, ptr %__flags, align 4, !dbg !2536
  br label %do.body19, !dbg !2536

do.body19:                                        ; preds = %do.body
  br label %do.cond, !dbg !2537

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !2537

do.end:                                           ; preds = %do.cond
  br label %do.body20, !dbg !2536

do.body20:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !2539
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 831, i32 %13, i64 12) #15, !dbg !2539, !srcloc !2541
  br label %do.cond21, !dbg !2539

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !2539

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !2536

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !2542

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !2542

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !2535
  br label %do.cond26, !dbg !2536

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !2536

do.end27:                                         ; preds = %do.cond26
  br label %if.end28, !dbg !2536

if.end28:                                         ; preds = %do.end27, %if.then9
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !2534
  %tobool29 = icmp ne i32 %14, 0, !dbg !2534
  %lnot30 = xor i1 %tobool29, true, !dbg !2534
  %lnot32 = xor i1 %lnot30, true, !dbg !2534
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !2534
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !2534
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !2534
  store i64 %expval35, ptr %tmp, align 8, !dbg !2535
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !2544
  %15 = load i64, ptr %tmp, align 8, !dbg !2534
  %16 = load ptr, ptr %bc, align 8, !dbg !2545
  %17 = load ptr, ptr %dev, align 8, !dbg !2546
  call void @broadcast_shutdown_local(ptr noundef %16, ptr noundef %17) #14, !dbg !2547
  %18 = load i32, ptr %cpu.addr, align 4, !dbg !2548
  %call36 = call zeroext i1 @cpumask_test_cpu(i32 noundef %18, ptr noundef @tick_broadcast_force_mask) #14, !dbg !2550
  br i1 %call36, label %if.then37, label %if.else, !dbg !2551

if.then37:                                        ; preds = %if.end28
  store i32 -16, ptr %ret, align 4, !dbg !2552
  br label %if.end48, !dbg !2554

if.else:                                          ; preds = %if.end28
  %19 = load ptr, ptr %dev, align 8, !dbg !2555
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 3, !dbg !2557
  %20 = load i64, ptr %next_event, align 8, !dbg !2557
  %21 = load ptr, ptr %bc, align 8, !dbg !2558
  %next_event38 = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 3, !dbg !2559
  %22 = load i64, ptr %next_event38, align 8, !dbg !2559
  %cmp39 = icmp slt i64 %20, %22, !dbg !2560
  br i1 %cmp39, label %if.then41, label %if.end47, !dbg !2561

if.then41:                                        ; preds = %if.else
  %23 = load ptr, ptr %bc, align 8, !dbg !2562
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !2564
  %25 = load ptr, ptr %dev, align 8, !dbg !2565
  %next_event42 = getelementptr inbounds %struct.clock_event_device, ptr %25, i32 0, i32 3, !dbg !2566
  %26 = load i64, ptr %next_event42, align 8, !dbg !2566
  call void @tick_broadcast_set_event(ptr noundef %23, i32 noundef %24, i64 noundef %26) #14, !dbg !2567
  %27 = load ptr, ptr %bc, align 8, !dbg !2568
  %28 = load i32, ptr %cpu.addr, align 4, !dbg !2569
  %call43 = call i32 @broadcast_needs_cpu(ptr noundef %27, i32 noundef %28) #14, !dbg !2570
  store i32 %call43, ptr %ret, align 4, !dbg !2571
  %29 = load i32, ptr %ret, align 4, !dbg !2572
  %tobool44 = icmp ne i32 %29, 0, !dbg !2572
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !2574

if.then45:                                        ; preds = %if.then41
  %30 = load i32, ptr %cpu.addr, align 4, !dbg !2575
  call void @cpumask_clear_cpu(i32 noundef %30, ptr noundef @tick_broadcast_oneshot_mask) #14, !dbg !2577
  br label %if.end46, !dbg !2578

if.end46:                                         ; preds = %if.then45, %if.then41
  br label %if.end47, !dbg !2579

if.end47:                                         ; preds = %if.end46, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then37
  br label %if.end49, !dbg !2580

if.end49:                                         ; preds = %if.end48, %if.end7
  br label %if.end70, !dbg !2581

if.else50:                                        ; preds = %entry
  %31 = load i32, ptr %cpu.addr, align 4, !dbg !2582
  %call51 = call zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %31, ptr noundef @tick_broadcast_oneshot_mask) #14, !dbg !2585
  br i1 %call51, label %if.then52, label %if.end69, !dbg !2586

if.then52:                                        ; preds = %if.else50
  %32 = load ptr, ptr %dev, align 8, !dbg !2587
  call void @clockevents_switch_state(ptr noundef %32, i32 noundef 3) #14, !dbg !2589
  %33 = load i32, ptr %cpu.addr, align 4, !dbg !2590
  %call53 = call zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %33, ptr noundef @tick_broadcast_pending_mask) #14, !dbg !2592
  br i1 %call53, label %if.then54, label %if.end55, !dbg !2593

if.then54:                                        ; preds = %if.then52
  br label %out, !dbg !2594

if.end55:                                         ; preds = %if.then52
  %34 = load ptr, ptr %dev, align 8, !dbg !2595
  %next_event56 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 3, !dbg !2597
  %35 = load i64, ptr %next_event56, align 8, !dbg !2597
  %cmp57 = icmp eq i64 %35, 9223372036854775807, !dbg !2598
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !2599

if.then59:                                        ; preds = %if.end55
  br label %out, !dbg !2600

if.end60:                                         ; preds = %if.end55
  %call61 = call i64 @ktime_get() #14, !dbg !2601
  store i64 %call61, ptr %now, align 8, !dbg !2602
  %36 = load ptr, ptr %dev, align 8, !dbg !2603
  %next_event62 = getelementptr inbounds %struct.clock_event_device, ptr %36, i32 0, i32 3, !dbg !2605
  %37 = load i64, ptr %next_event62, align 8, !dbg !2605
  %38 = load i64, ptr %now, align 8, !dbg !2606
  %cmp63 = icmp sle i64 %37, %38, !dbg !2607
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !2608

if.then65:                                        ; preds = %if.end60
  %39 = load i32, ptr %cpu.addr, align 4, !dbg !2609
  call void @cpumask_set_cpu(i32 noundef %39, ptr noundef @tick_broadcast_force_mask) #14, !dbg !2611
  br label %out, !dbg !2612

if.end66:                                         ; preds = %if.end60
  %40 = load ptr, ptr %dev, align 8, !dbg !2613
  %next_event67 = getelementptr inbounds %struct.clock_event_device, ptr %40, i32 0, i32 3, !dbg !2614
  %41 = load i64, ptr %next_event67, align 8, !dbg !2614
  %call68 = call i32 @tick_program_event(i64 noundef %41, i32 noundef 1) #14, !dbg !2615
  br label %if.end69, !dbg !2616

if.end69:                                         ; preds = %if.end66, %if.else50
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end49
  br label %out, !dbg !2617

out:                                              ; preds = %if.end70, %if.then65, %if.then59, %if.then54, %if.end6, %if.then1
  call void @llvm.dbg.label(metadata !2491), !dbg !2618
  call void @_raw_spin_unlock(ptr noundef @tick_broadcast_lock) #14, !dbg !2619
  %42 = load i32, ptr %ret, align 4, !dbg !2620
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #15, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !2621
  ret i32 %42, !dbg !2622
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hotplug_cpu__broadcast_tick_pull(i32 noundef %deadcpu) #0 align 16 !dbg !2623 {
entry:
  %deadcpu.addr = alloca i32, align 4
  %bc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp10 = alloca ptr, align 8
  %tmp11 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify13 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %__dummy25 = alloca i64, align 8
  %__dummy226 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  store i32 %deadcpu, ptr %deadcpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %deadcpu.addr, metadata !2625, metadata !DIExpression()), !dbg !2653
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !2626, metadata !DIExpression()), !dbg !2655
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2656
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2627, metadata !DIExpression()), !dbg !2657
  br label %do.body, !dbg !2658

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !2659
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2628, metadata !DIExpression()), !dbg !2659
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !2659
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2631, metadata !DIExpression()), !dbg !2659
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2659
  %conv = zext i1 %cmp to i32, !dbg !2659
  store i32 1, ptr %tmp, align 4, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !2660
  %0 = load i32, ptr %tmp, align 4, !dbg !2659
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tick_broadcast_lock) #14, !dbg !2660
  store i64 %call, ptr %flags, align 8, !dbg !2660
  br label %do.cond, !dbg !2660

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2660

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !2661
  store ptr %1, ptr %bc, align 8, !dbg !2662
  %2 = load ptr, ptr %bc, align 8, !dbg !2663
  %tobool = icmp ne ptr %2, null, !dbg !2663
  br i1 %tobool, label %land.lhs.true, label %if.end23, !dbg !2664

land.lhs.true:                                    ; preds = %do.end
  %3 = load ptr, ptr %bc, align 8, !dbg !2665
  %4 = load i32, ptr %deadcpu.addr, align 4, !dbg !2666
  %call1 = call i32 @broadcast_needs_cpu(ptr noundef %3, i32 noundef %4) #14, !dbg !2667
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2667
  br i1 %tobool2, label %if.then, label %if.end23, !dbg !2668

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @tick_check_broadcast_expired() #14, !dbg !2669
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2669
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !2670

if.then5:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !2671
  call void @llvm.dbg.declare(metadata ptr %td, metadata !2632, metadata !DIExpression()), !dbg !2672
  br label %do.body6, !dbg !2673

do.body6:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2674
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2637, metadata !DIExpression()), !dbg !2674
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2674
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !2674
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2673
  br label %do.cond7, !dbg !2674

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !2674

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2640, metadata !DIExpression()), !dbg !2675
  %6 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #17, !dbg !2675, !srcloc !2676
  store i64 %6, ptr %tcp_ptr__, align 8, !dbg !2675
  %7 = load i64, ptr %tcp_ptr__, align 8, !dbg !2675
  %8 = inttoptr i64 %7 to ptr, !dbg !2675
  store ptr %8, ptr %tmp10, align 8, !dbg !2675
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !2673
  %9 = load ptr, ptr %tmp10, align 8, !dbg !2675
  store ptr %9, ptr %tmp9, align 8, !dbg !2674
  %10 = load ptr, ptr %tmp9, align 8, !dbg !2673
  store ptr %10, ptr %td, align 8, !dbg !2672
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !2677
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2678
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2642, metadata !DIExpression()), !dbg !2678
  br label %do.body12, !dbg !2678

do.body12:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #15, !dbg !2679
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !2645, metadata !DIExpression()), !dbg !2679
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !2679
  %11 = load ptr, ptr %__vpp_verify13, align 8, !dbg !2679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #15, !dbg !2678
  br label %do.cond14, !dbg !2679

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !2679

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !2680
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2647, metadata !DIExpression()), !dbg !2680
  %12 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !2680, !srcloc !2681
  store i32 %12, ptr %pfo_val__, align 4, !dbg !2680
  %13 = load i32, ptr %pfo_val__, align 4, !dbg !2680
  %conv17 = zext i32 %13 to i64, !dbg !2680
  %conv18 = trunc i64 %conv17 to i32, !dbg !2680
  store i32 %conv18, ptr %tmp16, align 4, !dbg !2680
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !2678
  %14 = load i32, ptr %tmp16, align 4, !dbg !2680
  store i32 %14, ptr %pscr_ret__, align 4, !dbg !2678
  %15 = load i32, ptr %pscr_ret__, align 4, !dbg !2678
  store i32 %15, ptr %tmp19, align 4, !dbg !2678
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !2677
  %16 = load i32, ptr %tmp19, align 4, !dbg !2678
  store i32 %16, ptr %tmp11, align 4, !dbg !2677
  %17 = load i32, ptr %tmp11, align 4, !dbg !2677
  call void @cpumask_clear_cpu(i32 noundef %17, ptr noundef @tick_broadcast_force_mask) #14, !dbg !2682
  %18 = load ptr, ptr %td, align 8, !dbg !2683
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %18, i32 0, i32 0, !dbg !2684
  %19 = load ptr, ptr %evtdev, align 8, !dbg !2684
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 3, !dbg !2685
  %20 = load i64, ptr %next_event, align 8, !dbg !2685
  %call20 = call i32 @tick_program_event(i64 noundef %20, i32 noundef 1) #14, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !2687
  br label %if.end, !dbg !2688

if.end:                                           ; preds = %do.end15, %if.then
  %21 = load ptr, ptr %bc, align 8, !dbg !2689
  %22 = load ptr, ptr %bc, align 8, !dbg !2690
  %next_event21 = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 3, !dbg !2691
  %23 = load i64, ptr %next_event21, align 8, !dbg !2691
  %call22 = call i32 @clockevents_program_event(ptr noundef %21, i64 noundef %23, i1 noundef zeroext true) #14, !dbg !2692
  br label %if.end23, !dbg !2693

if.end23:                                         ; preds = %if.end, %land.lhs.true, %do.end
  br label %do.body24, !dbg !2694

do.body24:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #15, !dbg !2695
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy226) #15, !dbg !2695
  call void @llvm.dbg.declare(metadata ptr %__dummy226, metadata !2652, metadata !DIExpression()), !dbg !2695
  %cmp27 = icmp eq ptr %__dummy25, %__dummy226, !dbg !2695
  %conv28 = zext i1 %cmp27 to i32, !dbg !2695
  store i32 1, ptr %tmp29, align 4, !dbg !2695
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy226) #15, !dbg !2696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #15, !dbg !2696
  %24 = load i32, ptr %tmp29, align 4, !dbg !2695
  %25 = load i64, ptr %flags, align 8, !dbg !2696
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tick_broadcast_lock, i64 noundef %25) #14, !dbg !2696
  br label %do.cond30, !dbg !2696

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !2696

do.end31:                                         ; preds = %do.cond30
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2697
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !2697
  ret void, !dbg !2697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @broadcast_needs_cpu(ptr noundef %bc, i32 noundef %cpu) #0 align 16 !dbg !2698 {
entry:
  %retval = alloca i32, align 4
  %bc.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  store ptr %bc, ptr %bc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2700, metadata !DIExpression()), !dbg !2702
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2701, metadata !DIExpression()), !dbg !2703
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !2704
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !2706
  %1 = load i32, ptr %features, align 4, !dbg !2706
  %and = and i32 %1, 128, !dbg !2707
  %tobool = icmp ne i32 %and, 0, !dbg !2707
  br i1 %tobool, label %if.end, label %if.then, !dbg !2708

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2709
  br label %return, !dbg !2709

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bc.addr, align 8, !dbg !2710
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 3, !dbg !2712
  %3 = load i64, ptr %next_event, align 8, !dbg !2712
  %cmp = icmp eq i64 %3, 9223372036854775807, !dbg !2713
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2714

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %bc.addr, align 8, !dbg !2716
  %bound_on = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 24, !dbg !2717
  %5 = load i32, ptr %bound_on, align 8, !dbg !2717
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !2718
  %cmp3 = icmp eq i32 %5, %6, !dbg !2719
  %7 = zext i1 %cmp3 to i64, !dbg !2716
  %cond = select i1 %cmp3, i32 -16, i32 0, !dbg !2716
  store i32 %cond, ptr %retval, align 4, !dbg !2720
  br label %return, !dbg !2720

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !2721
  ret i32 %8, !dbg !2721
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2722 dso_local i32 @tick_program_event(i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2725 dso_local i32 @clockevents_program_event(ptr noundef, i64 noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tick_broadcast_oneshot_available() #0 align 16 !dbg !2728 {
entry:
  %bc = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !2731
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !2730, metadata !DIExpression()), !dbg !2732
  %0 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !2733
  store ptr %0, ptr %bc, align 8, !dbg !2732
  %1 = load ptr, ptr %bc, align 8, !dbg !2734
  %tobool = icmp ne ptr %1, null, !dbg !2734
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2734

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %bc, align 8, !dbg !2735
  %features = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 9, !dbg !2736
  %3 = load i32, ptr %features, align 4, !dbg !2736
  %and = and i32 %3, 2, !dbg !2737
  br label %cond.end, !dbg !2734

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2734

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ 0, %cond.false ], !dbg !2734
  %tobool1 = icmp ne i32 %cond, 0, !dbg !2734
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !2738
  ret i1 %tobool1, !dbg !2739
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @tick_broadcast_init() #7 section ".init.text" align 16 !dbg !2740 {
entry:
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef @tick_broadcast_mask, i32 noundef 2048) #14, !dbg !2741
  %call1 = call zeroext i1 @zalloc_cpumask_var(ptr noundef @tick_broadcast_on, i32 noundef 2048) #14, !dbg !2742
  %call2 = call zeroext i1 @zalloc_cpumask_var(ptr noundef @tmpmask, i32 noundef 2048) #14, !dbg !2743
  %call3 = call zeroext i1 @zalloc_cpumask_var(ptr noundef @tick_broadcast_oneshot_mask, i32 noundef 2048) #14, !dbg !2744
  %call4 = call zeroext i1 @zalloc_cpumask_var(ptr noundef @tick_broadcast_pending_mask, i32 noundef 2048) #14, !dbg !2745
  %call5 = call zeroext i1 @zalloc_cpumask_var(ptr noundef @tick_broadcast_force_mask, i32 noundef 2048) #14, !dbg !2746
  ret void, !dbg !2747
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #4 align 16 !dbg !2748 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !2753, metadata !DIExpression()), !dbg !2755
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2754, metadata !DIExpression()), !dbg !2756
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !2757
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !2758
  call void @cpumask_clear(ptr noundef %arraydecay) #14, !dbg !2759
  ret i1 true, !dbg !2760
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_equal(ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !2761 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !2765, metadata !DIExpression()), !dbg !2767
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !2766, metadata !DIExpression()), !dbg !2768
  %0 = load ptr, ptr %src1p.addr, align 8, !dbg !2769
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !2769
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2769
  %1 = load ptr, ptr %src2p.addr, align 8, !dbg !2770
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2770
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !2770
  %call = call zeroext i1 @bitmap_equal(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #14, !dbg !2771
  ret i1 %call, !dbg !2772
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_mask(i32 noundef %cpu) #4 align 16 !dbg !2773 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2777, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2782
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2778, metadata !DIExpression()), !dbg !2783
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2784
  %rem = urem i32 %0, 64, !dbg !2785
  %add = add i32 1, %rem, !dbg !2786
  %idxprom = zext i32 %add to i64, !dbg !2787
  %arrayidx = getelementptr [65 x [1 x i64]], ptr @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !2787
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !2787
  store ptr %arraydecay, ptr %p, align 8, !dbg !2783
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2788
  %div = udiv i32 %1, 64, !dbg !2789
  %2 = load ptr, ptr %p, align 8, !dbg !2790
  %idx.ext = zext i32 %div to i64, !dbg !2790
  %idx.neg = sub i64 0, %idx.ext, !dbg !2790
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !2790
  store ptr %add.ptr, ptr %p, align 8, !dbg !2790
  %3 = load ptr, ptr %p, align 8, !dbg !2791
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2792
  ret ptr %3, !dbg !2793
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_oneshot_wakeup_handler(ptr noundef %wd) #0 align 16 !dbg !2794 {
entry:
  %wd.addr = alloca ptr, align 8
  store ptr %wd, ptr %wd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wd.addr, metadata !2796, metadata !DIExpression()), !dbg !2797
  %call = call i32 @tick_receive_broadcast() #14, !dbg !2798
  ret void, !dbg !2799
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_equal(ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !2800 {
entry:
  %retval = alloca i1, align 1
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !2805, metadata !DIExpression()), !dbg !2808
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !2806, metadata !DIExpression()), !dbg !2809
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !2807, metadata !DIExpression()), !dbg !2810
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !2811
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2811
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2811

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !2811
  %cmp = icmp ule i32 %2, 64, !dbg !2811
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2811

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !2811
  %cmp2 = icmp ugt i32 %3, 0, !dbg !2811
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2813

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !2814
  %5 = load i64, ptr %4, align 8, !dbg !2815
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !2816
  %7 = load i64, ptr %6, align 8, !dbg !2817
  %xor = xor i64 %5, %7, !dbg !2818
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !2819
  %sub = sub i32 0, %8, !dbg !2819
  %and = and i32 %sub, 63, !dbg !2819
  %sh_prom = zext i32 %and to i64, !dbg !2819
  %shr = lshr i64 -1, %sh_prom, !dbg !2819
  %and3 = and i64 %xor, %shr, !dbg !2820
  %tobool = icmp ne i64 %and3, 0, !dbg !2821
  %lnot = xor i1 %tobool, true, !dbg !2821
  store i1 %lnot, ptr %retval, align 1, !dbg !2822
  br label %return, !dbg !2822

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !2823
  %and4 = and i32 %9, 7, !dbg !2825
  %10 = call i1 @llvm.is.constant.i32(i32 %and4), !dbg !2826
  br i1 %10, label %land.lhs.true5, label %if.end11, !dbg !2827

land.lhs.true5:                                   ; preds = %if.end
  %11 = load i32, ptr %nbits.addr, align 4, !dbg !2828
  %and6 = and i32 %11, 7, !dbg !2828
  %cmp7 = icmp eq i32 %and6, 0, !dbg !2828
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !2829

if.then8:                                         ; preds = %land.lhs.true5
  %12 = load ptr, ptr %src1.addr, align 8, !dbg !2830
  %13 = load ptr, ptr %src2.addr, align 8, !dbg !2831
  %14 = load i32, ptr %nbits.addr, align 4, !dbg !2832
  %div = udiv i32 %14, 8, !dbg !2833
  %conv = zext i32 %div to i64, !dbg !2832
  %call = call i32 @memcmp(ptr noundef %12, ptr noundef %13, i64 noundef %conv) #14, !dbg !2834
  %tobool9 = icmp ne i32 %call, 0, !dbg !2835
  %lnot10 = xor i1 %tobool9, true, !dbg !2835
  store i1 %lnot10, ptr %retval, align 1, !dbg !2836
  br label %return, !dbg !2836

if.end11:                                         ; preds = %land.lhs.true5, %if.end
  %15 = load ptr, ptr %src1.addr, align 8, !dbg !2837
  %16 = load ptr, ptr %src2.addr, align 8, !dbg !2838
  %17 = load i32, ptr %nbits.addr, align 4, !dbg !2839
  %call12 = call zeroext i1 @__bitmap_equal(ptr noundef %15, ptr noundef %16, i32 noundef %17) #14, !dbg !2840
  store i1 %call12, ptr %retval, align 1, !dbg !2841
  br label %return, !dbg !2841

return:                                           ; preds = %if.end11, %if.then8, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !2842
  ret i1 %18, !dbg !2842
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2843 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2847 dso_local zeroext i1 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !2848 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2852, metadata !DIExpression()), !dbg !2854
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !2853, metadata !DIExpression()), !dbg !2855
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !2856
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2856
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2856

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !2856
  %cmp = icmp ule i32 %2, 64, !dbg !2856
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2856

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !2856
  %cmp2 = icmp ugt i32 %3, 0, !dbg !2856
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2858

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2859
  %5 = load i64, ptr %4, align 8, !dbg !2860
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !2861
  %sub = sub i32 0, %6, !dbg !2861
  %and = and i32 %sub, 63, !dbg !2861
  %sh_prom = zext i32 %and to i64, !dbg !2861
  %shr = lshr i64 -1, %sh_prom, !dbg !2861
  %and3 = and i64 %5, %shr, !dbg !2862
  %tobool = icmp ne i64 %and3, 0, !dbg !2863
  %lnot = xor i1 %tobool, true, !dbg !2863
  store i1 %lnot, ptr %retval, align 1, !dbg !2864
  br label %return, !dbg !2864

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !2865
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !2866
  %conv = zext i32 %8 to i64, !dbg !2866
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #14, !dbg !2867
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !2868
  %conv4 = zext i32 %9 to i64, !dbg !2868
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !2869
  store i1 %cmp5, ptr %retval, align 1, !dbg !2870
  br label %return, !dbg !2870

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !2871
  ret i1 %10, !dbg !2871
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !2872 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2877, metadata !DIExpression()), !dbg !2882
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2878, metadata !DIExpression()), !dbg !2883
  %0 = load i64, ptr %size.addr, align 8, !dbg !2884
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2884
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2884

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2884
  %cmp = icmp ule i64 %2, 64, !dbg !2884
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2884

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2884
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2884
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2885

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2879, metadata !DIExpression()), !dbg !2887
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !2888
  %5 = load i64, ptr %4, align 8, !dbg !2889
  %6 = load i64, ptr %size.addr, align 8, !dbg !2890
  %sub = sub i64 %6, 1, !dbg !2890
  %sub3 = sub i64 63, %sub, !dbg !2890
  %shr = lshr i64 -1, %sub3, !dbg !2890
  %and = and i64 -1, %shr, !dbg !2890
  %add = add i64 0, %and, !dbg !2890
  %and4 = and i64 %5, %add, !dbg !2891
  store i64 %and4, ptr %val, align 8, !dbg !2887
  %7 = load i64, ptr %val, align 8, !dbg !2892
  %tobool = icmp ne i64 %7, 0, !dbg !2892
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !2892

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !2893
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !2893
  br i1 %9, label %cond.true5, label %cond.false, !dbg !2893

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !2893
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !2893
  %cast = trunc i64 %11 to i32, !dbg !2893
  %conv = sext i32 %cast to i64, !dbg !2893
  br label %cond.end, !dbg !2893

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !2893
  %call = call i64 @variable__ffs(i64 noundef %12) #14, !dbg !2893
  br label %cond.end, !dbg !2893

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !2893
  br label %cond.end7, !dbg !2892

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !2894
  br label %cond.end7, !dbg !2892

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !2892
  store i64 %cond8, ptr %retval, align 8, !dbg !2895
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !2896
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !2897
  %15 = load i64, ptr %size.addr, align 8, !dbg !2898
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #14, !dbg !2899
  store i64 %call9, ptr %retval, align 8, !dbg !2900
  br label %return, !dbg !2900

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !2901
  ret i64 %16, !dbg !2901
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #5 align 16 !dbg !2902 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  %0 = load i64, ptr %word.addr, align 8, !dbg !2908
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #17, !dbg !2909, !srcloc !2910
  store i64 %1, ptr %word.addr, align 8, !dbg !2909
  %2 = load i64, ptr %word.addr, align 8, !dbg !2911
  ret i64 %2, !dbg !2912
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2913 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2914 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @err_broadcast(ptr noundef %mask) #0 align 16 !dbg !1214 {
entry:
  %mask.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %tmp19 = alloca i64, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1216, metadata !DIExpression()), !dbg !2918
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !2919
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !1217, metadata !DIExpression()), !dbg !2919
  store i8 1, ptr %__ret_do_once, align 1, !dbg !2919
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !1219, metadata !DIExpression()), !dbg !2920
  %0 = load i8, ptr %__ret_do_once, align 1, !dbg !2920, !range !1695, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !2920
  %lnot = xor i1 %tobool, true, !dbg !2920
  %lnot1 = xor i1 %lnot, true, !dbg !2920
  %frombool = zext i1 %lnot1 to i8, !dbg !2920
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !2920
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !1222, metadata !DIExpression()), !dbg !2920
  store i8 0, ptr %__ret_once, align 1, !dbg !2920
  %1 = load i8, ptr %__ret_cond, align 1, !dbg !2921, !range !1695, !noundef !359
  %tobool2 = trunc i8 %1 to i1, !dbg !2921
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !2921

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr @err_broadcast.__already_done, align 1, !dbg !2921, !range !1695, !noundef !359
  %tobool3 = trunc i8 %2 to i1, !dbg !2921
  %lnot4 = xor i1 %tobool3, true, !dbg !2921
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot4, %land.rhs ], !dbg !2923
  %lnot5 = xor i1 %3, true, !dbg !2921
  %lnot6 = xor i1 %lnot5, true, !dbg !2921
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2921
  %conv = sext i32 %lnot.ext to i64, !dbg !2921
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2921
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2921
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2920

if.then:                                          ; preds = %land.end
  store i8 1, ptr @err_broadcast.__already_done, align 1, !dbg !2924
  store i8 1, ptr %__ret_once, align 1, !dbg !2924
  br label %if.end, !dbg !2924

if.end:                                           ; preds = %if.then, %land.end
  %4 = load i8, ptr %__ret_once, align 1, !dbg !2920, !range !1695, !noundef !359
  %tobool8 = trunc i8 %4 to i1, !dbg !2920
  %lnot9 = xor i1 %tobool8, true, !dbg !2920
  %lnot11 = xor i1 %lnot9, true, !dbg !2920
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !2920
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !2920
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !2920
  store i64 %expval14, ptr %tmp, align 8, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !2926
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !2926
  %5 = load i64, ptr %tmp, align 8, !dbg !2920
  %tobool15 = icmp ne i64 %5, 0, !dbg !2926
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2919

if.then16:                                        ; preds = %if.end
  br label %do.body, !dbg !2927

do.body:                                          ; preds = %if.then16
  br label %do.cond, !dbg !2929

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2929

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #16, !dbg !2927
  store i32 %call, ptr %tmp17, align 4, !dbg !2929
  %6 = load i32, ptr %tmp17, align 4, !dbg !2927
  br label %if.end18, !dbg !2926

if.end18:                                         ; preds = %do.end, %if.end
  %7 = load i8, ptr %__ret_do_once, align 1, !dbg !2919, !range !1695, !noundef !359
  %tobool20 = trunc i8 %7 to i1, !dbg !2919
  %lnot21 = xor i1 %tobool20, true, !dbg !2919
  %lnot23 = xor i1 %lnot21, true, !dbg !2919
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !2919
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !2919
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !2919
  store i64 %expval26, ptr %tmp19, align 8, !dbg !2926
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !2931
  %8 = load i64, ptr %tmp19, align 8, !dbg !2919
  ret void, !dbg !2932
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2933 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2939, metadata !DIExpression()), !dbg !2941
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2940, metadata !DIExpression()), !dbg !2942
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2943
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2944
  %div = sdiv i64 %1, 64, !dbg !2944
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2945
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !2946
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2947
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2948
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !2949
  ret void, !dbg !2950
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !2951 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2957
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #14, !dbg !2958
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2959
  ret i32 %1, !dbg !2960
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !2961 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2969, metadata !DIExpression()), !dbg !2971
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2970, metadata !DIExpression()), !dbg !2972
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2973
  %1 = load i64, ptr %size.addr, align 8, !dbg !2974
  %conv = trunc i64 %1 to i32, !dbg !2974
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !2975
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2976
  %3 = load i64, ptr %size.addr, align 8, !dbg !2976
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !2976
  ret void, !dbg !2977
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2978 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2980, metadata !DIExpression()), !dbg !2982
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2981, metadata !DIExpression()), !dbg !2983
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2984
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2986
  br i1 %1, label %if.then, label %if.else, !dbg !2987

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2988
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2988
  %shr = ashr i64 %3, 3, !dbg !2988
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2988
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2990
  %and = and i64 %4, 7, !dbg !2990
  %sh_prom = trunc i64 %and to i32, !dbg !2990
  %shl = shl i32 1, %sh_prom, !dbg !2990
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #15, !dbg !2991, !srcloc !2992
  br label %if.end, !dbg !2993

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2994
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2996
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !2997, !srcloc !2998
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2999
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !3000 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3005, metadata !DIExpression()), !dbg !3007
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3006, metadata !DIExpression()), !dbg !3008
  ret i1 true, !dbg !3009
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !3010 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3015, metadata !DIExpression()), !dbg !3018
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3016, metadata !DIExpression()), !dbg !3019
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3017, metadata !DIExpression()), !dbg !3020
  ret void, !dbg !3021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !3022 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3026, metadata !DIExpression()), !dbg !3028
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3027, metadata !DIExpression()), !dbg !3029
  ret void, !dbg !3030
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3031 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3033, metadata !DIExpression()), !dbg !3035
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3034, metadata !DIExpression()), !dbg !3036
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3037
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3038
  %div = sdiv i64 %1, 64, !dbg !3038
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3039
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !3040
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3041
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3042
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !3043
  ret void, !dbg !3044
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3045 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3047, metadata !DIExpression()), !dbg !3049
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3048, metadata !DIExpression()), !dbg !3050
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3051
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3053
  br i1 %1, label %if.then, label %if.else, !dbg !3054

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3055
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3055
  %shr = ashr i64 %3, 3, !dbg !3055
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3055
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3057
  %and = and i64 %4, 7, !dbg !3057
  %sh_prom = trunc i64 %and to i32, !dbg !3057
  %shl = shl i32 1, %sh_prom, !dbg !3057
  %not = xor i32 %shl, -1, !dbg !3058
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #15, !dbg !3059, !srcloc !3060
  br label %if.end, !dbg !3061

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3062
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3064
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !3065, !srcloc !3066
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3068 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3071, metadata !DIExpression()), !dbg !3073
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3072, metadata !DIExpression()), !dbg !3074
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3075
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3076
  %div = udiv i64 %1, 64, !dbg !3076
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3077
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !3078
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3079
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3080
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !3081
  ret i1 %call, !dbg !3082
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3083 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3085, metadata !DIExpression()), !dbg !3087
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3086, metadata !DIExpression()), !dbg !3088
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3089
  %1 = load i64, ptr %size.addr, align 8, !dbg !3090
  %conv = trunc i64 %1 to i32, !dbg !3090
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !3091
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3092
  %3 = load i64, ptr %size.addr, align 8, !dbg !3092
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !3092
  ret void, !dbg !3093
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !3094 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3096, metadata !DIExpression()), !dbg !3098
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3097, metadata !DIExpression()), !dbg !3099
  ret i1 true, !dbg !3100
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3101 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3105, metadata !DIExpression()), !dbg !3107
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3106, metadata !DIExpression()), !dbg !3108
  br label %do.body, !dbg !3109

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3110

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3112
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3113
  %div = sdiv i64 %1, 64, !dbg !3113
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3114
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !3115
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3116
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3117
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !3118
  ret i1 %call, !dbg !3119
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3120 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3122, metadata !DIExpression()), !dbg !3124
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3123, metadata !DIExpression()), !dbg !3125
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3126
  %1 = load i64, ptr %size.addr, align 8, !dbg !3127
  %conv = trunc i64 %1 to i32, !dbg !3127
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !3128
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3129
  %3 = load i64, ptr %size.addr, align 8, !dbg !3129
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !3129
  ret void, !dbg !3130
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3131 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3133, metadata !DIExpression()), !dbg !3137
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3134, metadata !DIExpression()), !dbg !3138
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !3139
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3135, metadata !DIExpression()), !dbg !3139
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3139
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3139
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #15, !dbg !3139, !srcloc !3140
  %3 = icmp ult i8 %2, 2, !dbg !3139
  call void @llvm.assume(i1 %3), !dbg !3139
  store i8 %2, ptr %c, align 1, !dbg !3139
  %4 = load i8, ptr %c, align 1, !dbg !3139, !range !1695, !noundef !359
  %tobool = trunc i8 %4 to i1, !dbg !3139
  %frombool = zext i1 %tobool to i8, !dbg !3139
  store i8 %frombool, ptr %tmp, align 1, !dbg !3139
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !3141
  %5 = load i8, ptr %tmp, align 1, !dbg !3139, !range !1695, !noundef !359
  %tobool1 = trunc i8 %5 to i1, !dbg !3139
  ret i1 %tobool1, !dbg !3142
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3143 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3145, metadata !DIExpression()), !dbg !3147
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3146, metadata !DIExpression()), !dbg !3148
  br label %do.body, !dbg !3149

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3150

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3152
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3153
  %div = sdiv i64 %1, 64, !dbg !3153
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3154
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !3155
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3156
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3157
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !3158
  ret i1 %call, !dbg !3159
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3160 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3162, metadata !DIExpression()), !dbg !3166
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3163, metadata !DIExpression()), !dbg !3167
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !3168
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3164, metadata !DIExpression()), !dbg !3168
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3168
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3168
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #15, !dbg !3168, !srcloc !3169
  %3 = icmp ult i8 %2, 2, !dbg !3168
  call void @llvm.assume(i1 %3), !dbg !3168
  store i8 %2, ptr %c, align 1, !dbg !3168
  %4 = load i8, ptr %c, align 1, !dbg !3168, !range !1695, !noundef !359
  %tobool = trunc i8 %4 to i1, !dbg !3168
  %frombool = zext i1 %tobool to i8, !dbg !3168
  store i8 %frombool, ptr %tmp, align 1, !dbg !3168
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !3170
  %5 = load i8, ptr %tmp, align 1, !dbg !3168, !range !1695, !noundef !359
  %tobool1 = trunc i8 %5 to i1, !dbg !3168
  ret i1 %tobool1, !dbg !3171
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_shutdown(ptr noundef %dev) #4 align 16 !dbg !3172 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3176, metadata !DIExpression()), !dbg !3177
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3178
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !3179
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !3179
  %cmp = icmp eq i32 %1, 1, !dbg !3180
  ret i1 %cmp, !dbg !3181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tick_do_periodic_broadcast() #0 align 16 !dbg !3182 {
entry:
  %call = call zeroext i1 @cpumask_and(ptr noundef @tmpmask, ptr noundef @__cpu_online_mask, ptr noundef @tick_broadcast_mask) #14, !dbg !3183
  %call1 = call zeroext i1 @tick_do_broadcast(ptr noundef @tmpmask) #14, !dbg !3184
  ret i1 %call1, !dbg !3185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_oneshot(ptr noundef %dev) #4 align 16 !dbg !3186 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3188, metadata !DIExpression()), !dbg !3189
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3190
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !3191
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !3191
  %cmp = icmp eq i32 %1, 3, !dbg !3192
  ret i1 %cmp, !dbg !3193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_and(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !3194 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !3198, metadata !DIExpression()), !dbg !3201
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !3199, metadata !DIExpression()), !dbg !3202
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !3200, metadata !DIExpression()), !dbg !3203
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !3204
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3204
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3204
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !3205
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3205
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !3205
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !3206
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !3206
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !3206
  %call = call zeroext i1 @bitmap_and(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #14, !dbg !3207
  ret i1 %call, !dbg !3208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tick_do_broadcast(ptr noundef %mask) #0 align 16 !dbg !3209 {
entry:
  %mask.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %td = alloca ptr, align 8
  %local = alloca i8, align 1
  %bc = alloca ptr, align 8
  %__vpp_verify7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3213, metadata !DIExpression()), !dbg !3234
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !3235
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3214, metadata !DIExpression()), !dbg !3236
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !3237
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3238
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3215, metadata !DIExpression()), !dbg !3238
  br label %do.body, !dbg !3238

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3239
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3218, metadata !DIExpression()), !dbg !3239
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3239
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3238
  br label %do.cond, !dbg !3239

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3239

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !3240
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3220, metadata !DIExpression()), !dbg !3240
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !3240, !srcloc !3241
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3240
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3240
  %conv = zext i32 %2 to i64, !dbg !3240
  %conv2 = trunc i64 %conv to i32, !dbg !3240
  store i32 %conv2, ptr %tmp1, align 4, !dbg !3240
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !3238
  %3 = load i32, ptr %tmp1, align 4, !dbg !3240
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3238
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3238
  store i32 %4, ptr %tmp3, align 4, !dbg !3238
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3237
  %5 = load i32, ptr %tmp3, align 4, !dbg !3238
  store i32 %5, ptr %tmp, align 4, !dbg !3237
  %6 = load i32, ptr %tmp, align 4, !dbg !3237
  store i32 %6, ptr %cpu, align 4, !dbg !3236
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !3242
  call void @llvm.dbg.declare(metadata ptr %td, metadata !3222, metadata !DIExpression()), !dbg !3243
  call void @llvm.lifetime.start.p0(i64 1, ptr %local) #15, !dbg !3244
  call void @llvm.dbg.declare(metadata ptr %local, metadata !3223, metadata !DIExpression()), !dbg !3245
  store i8 0, ptr %local, align 1, !dbg !3245
  %7 = load i32, ptr %cpu, align 4, !dbg !3246
  %8 = load ptr, ptr %mask.addr, align 8, !dbg !3247
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %7, ptr noundef %8) #14, !dbg !3248
  br i1 %call, label %if.then, label %if.end, !dbg !3249

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #15, !dbg !3250
  call void @llvm.dbg.declare(metadata ptr %bc, metadata !3224, metadata !DIExpression()), !dbg !3251
  %9 = load ptr, ptr @tick_broadcast_device, align 8, !dbg !3252
  store ptr %9, ptr %bc, align 8, !dbg !3251
  %10 = load i32, ptr %cpu, align 4, !dbg !3253
  %11 = load ptr, ptr %mask.addr, align 8, !dbg !3254
  call void @cpumask_clear_cpu(i32 noundef %10, ptr noundef %11) #14, !dbg !3255
  %12 = load ptr, ptr %bc, align 8, !dbg !3256
  %features = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 9, !dbg !3257
  %13 = load i32, ptr %features, align 4, !dbg !3257
  %and = and i32 %13, 128, !dbg !3258
  %tobool = icmp ne i32 %and, 0, !dbg !3259
  %lnot = xor i1 %tobool, true, !dbg !3259
  %frombool = zext i1 %lnot to i8, !dbg !3260
  store i8 %frombool, ptr %local, align 1, !dbg !3260
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #15, !dbg !3261
  br label %if.end, !dbg !3262

if.end:                                           ; preds = %if.then, %do.end
  %14 = load ptr, ptr %mask.addr, align 8, !dbg !3263
  %call4 = call zeroext i1 @cpumask_empty(ptr noundef %14) #14, !dbg !3264
  br i1 %call4, label %if.end13, label %if.then5, !dbg !3265

if.then5:                                         ; preds = %if.end
  br label %do.body6, !dbg !3266

do.body6:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #15, !dbg !3267
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !3227, metadata !DIExpression()), !dbg !3267
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !3267
  %15 = load ptr, ptr %__vpp_verify7, align 8, !dbg !3267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #15, !dbg !3266
  br label %do.cond8, !dbg !3267

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !3267

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !3268
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3232, metadata !DIExpression()), !dbg !3268
  store i64 ptrtoint (ptr @tick_cpu_device to i64), ptr %__ptr, align 8, !dbg !3268
  %16 = load i64, ptr %__ptr, align 8, !dbg !3268
  %17 = load ptr, ptr %mask.addr, align 8, !dbg !3268
  %call12 = call i32 @cpumask_first(ptr noundef %17) #14, !dbg !3268
  %idxprom = zext i32 %call12 to i64, !dbg !3268
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3268
  %18 = load i64, ptr %arrayidx, align 8, !dbg !3268
  %add = add i64 %16, %18, !dbg !3268
  %19 = inttoptr i64 %add to ptr, !dbg !3268
  store ptr %19, ptr %tmp11, align 8, !dbg !3268
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !3266
  %20 = load ptr, ptr %tmp11, align 8, !dbg !3268
  store ptr %20, ptr %tmp10, align 8, !dbg !3267
  %21 = load ptr, ptr %tmp10, align 8, !dbg !3266
  store ptr %21, ptr %td, align 8, !dbg !3269
  %22 = load ptr, ptr %td, align 8, !dbg !3270
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %22, i32 0, i32 0, !dbg !3271
  %23 = load ptr, ptr %evtdev, align 8, !dbg !3271
  %broadcast = getelementptr inbounds %struct.clock_event_device, ptr %23, i32 0, i32 16, !dbg !3272
  %24 = load ptr, ptr %broadcast, align 16, !dbg !3272
  %25 = load ptr, ptr %mask.addr, align 8, !dbg !3273
  call void %24(ptr noundef %25) #14, !dbg !3270
  br label %if.end13, !dbg !3274

if.end13:                                         ; preds = %do.end9, %if.end
  %26 = load i8, ptr %local, align 1, !dbg !3275, !range !1695, !noundef !359
  %tobool14 = trunc i8 %26 to i1, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 1, ptr %local) #15, !dbg !3276
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !3276
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !3276
  ret i1 %tobool14, !dbg !3277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_and(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !3278 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3282, metadata !DIExpression()), !dbg !3286
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !3283, metadata !DIExpression()), !dbg !3287
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !3284, metadata !DIExpression()), !dbg !3288
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3285, metadata !DIExpression()), !dbg !3289
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3290
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3290
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3290

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !3290
  %cmp = icmp ule i32 %2, 64, !dbg !3290
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3290

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3290
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3290
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3292

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !3293
  %5 = load i64, ptr %4, align 8, !dbg !3294
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !3295
  %7 = load i64, ptr %6, align 8, !dbg !3296
  %and = and i64 %5, %7, !dbg !3297
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !3298
  %sub = sub i32 0, %8, !dbg !3298
  %and3 = and i32 %sub, 63, !dbg !3298
  %sh_prom = zext i32 %and3 to i64, !dbg !3298
  %shr = lshr i64 -1, %sh_prom, !dbg !3298
  %and4 = and i64 %and, %shr, !dbg !3299
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !3300
  store i64 %and4, ptr %9, align 8, !dbg !3301
  %cmp5 = icmp ne i64 %and4, 0, !dbg !3302
  store i1 %cmp5, ptr %retval, align 1, !dbg !3303
  br label %return, !dbg !3303

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !3304
  %11 = load ptr, ptr %src1.addr, align 8, !dbg !3305
  %12 = load ptr, ptr %src2.addr, align 8, !dbg !3306
  %13 = load i32, ptr %nbits.addr, align 4, !dbg !3307
  %call = call zeroext i1 @__bitmap_and(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13) #14, !dbg !3308
  store i1 %call, ptr %retval, align 1, !dbg !3309
  br label %return, !dbg !3309

return:                                           ; preds = %if.end, %if.then
  %14 = load i1, ptr %retval, align 1, !dbg !3310
  ret i1 %14, !dbg !3310
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3311 dso_local zeroext i1 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first(ptr noundef %srcp) #4 align 16 !dbg !3312 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !3318
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3318
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3318
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #14, !dbg !3319
  %conv = trunc i64 %call to i32, !dbg !3319
  ret i32 %conv, !dbg !3320
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3321 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3325, metadata !DIExpression()), !dbg !3327
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3326, metadata !DIExpression()), !dbg !3328
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3329
  %and = and i64 %0, 63, !dbg !3330
  %shl = shl i64 1, %and, !dbg !3331
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3332
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3333
  %shr = ashr i64 %2, 6, !dbg !3334
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3332
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3332
  %and1 = and i64 %shl, %3, !dbg !3335
  %cmp = icmp ne i64 %and1, 0, !dbg !3336
  ret i1 %cmp, !dbg !3337
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3338 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3340, metadata !DIExpression()), !dbg !3343
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3341, metadata !DIExpression()), !dbg !3344
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !3345
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3342, metadata !DIExpression()), !dbg !3346
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3347
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3348
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !3349, !srcloc !3350
  %3 = icmp ult i8 %2, 2, !dbg !3349
  call void @llvm.assume(i1 %3), !dbg !3349
  store i8 %2, ptr %oldbit, align 1, !dbg !3349
  %4 = load i8, ptr %oldbit, align 1, !dbg !3351, !range !1695, !noundef !359
  %tobool = trunc i8 %4 to i1, !dbg !3351
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !3352
  ret i1 %tobool, !dbg !3353
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clockevent_get_state(ptr noundef %dev) #4 align 16 !dbg !3354 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3358, metadata !DIExpression()), !dbg !3359
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3360
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !3361
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !3361
  ret i32 %1, !dbg !3362
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @broadcast_shutdown_local(ptr noundef %bc, ptr noundef %dev) #0 align 16 !dbg !3363 {
entry:
  %bc.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %bc, ptr %bc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !3365, metadata !DIExpression()), !dbg !3377
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3366, metadata !DIExpression()), !dbg !3378
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !3379
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !3380
  %1 = load i32, ptr %features, align 4, !dbg !3380
  %and = and i32 %1, 128, !dbg !3381
  %tobool = icmp ne i32 %and, 0, !dbg !3381
  br i1 %tobool, label %if.then, label %if.end10, !dbg !3382

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bc.addr, align 8, !dbg !3383
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !3384
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3367, metadata !DIExpression()), !dbg !3385
  br label %do.body, !dbg !3385

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3386
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3373, metadata !DIExpression()), !dbg !3386
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3386
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3385
  br label %do.cond, !dbg !3386

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3386

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3375, metadata !DIExpression()), !dbg !3387
  %4 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !3387, !srcloc !3388
  store i32 %4, ptr %pfo_val__, align 4, !dbg !3387
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !3387
  %conv = zext i32 %5 to i64, !dbg !3387
  %conv2 = trunc i64 %conv to i32, !dbg !3387
  store i32 %conv2, ptr %tmp1, align 4, !dbg !3387
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !3385
  %6 = load i32, ptr %tmp1, align 4, !dbg !3387
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !3385
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !3385
  store i32 %7, ptr %tmp3, align 4, !dbg !3385
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3384
  %8 = load i32, ptr %tmp3, align 4, !dbg !3385
  store i32 %8, ptr %tmp, align 4, !dbg !3384
  %9 = load i32, ptr %tmp, align 4, !dbg !3384
  %call = call i32 @broadcast_needs_cpu(ptr noundef %2, i32 noundef %9) #14, !dbg !3389
  %tobool4 = icmp ne i32 %call, 0, !dbg !3389
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !3390

if.then5:                                         ; preds = %do.end
  br label %return, !dbg !3391

if.end:                                           ; preds = %do.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !3392
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 3, !dbg !3394
  %11 = load i64, ptr %next_event, align 8, !dbg !3394
  %12 = load ptr, ptr %bc.addr, align 8, !dbg !3395
  %next_event6 = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 3, !dbg !3396
  %13 = load i64, ptr %next_event6, align 8, !dbg !3396
  %cmp = icmp slt i64 %11, %13, !dbg !3397
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !3398

if.then8:                                         ; preds = %if.end
  br label %return, !dbg !3399

if.end9:                                          ; preds = %if.end
  br label %if.end10, !dbg !3400

if.end10:                                         ; preds = %if.end9, %entry
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !3401
  call void @clockevents_switch_state(ptr noundef %14, i32 noundef 1) #14, !dbg !3402
  br label %return, !dbg !3403

return:                                           ; preds = %if.end10, %if.then8, %if.then5
  ret void, !dbg !3403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_set_event(ptr noundef %bc, i32 noundef %cpu, i64 noundef %expires) #0 align 16 !dbg !3404 {
entry:
  %bc.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %expires.addr = alloca i64, align 8
  store ptr %bc, ptr %bc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !3408, metadata !DIExpression()), !dbg !3411
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3409, metadata !DIExpression()), !dbg !3412
  store i64 %expires, ptr %expires.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expires.addr, metadata !3410, metadata !DIExpression()), !dbg !3413
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !3414
  %call = call zeroext i1 @clockevent_state_oneshot(ptr noundef %0) #14, !dbg !3416
  br i1 %call, label %if.end, label %if.then, !dbg !3417

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bc.addr, align 8, !dbg !3418
  call void @clockevents_switch_state(ptr noundef %1, i32 noundef 3) #14, !dbg !3419
  br label %if.end, !dbg !3419

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %bc.addr, align 8, !dbg !3420
  %3 = load i64, ptr %expires.addr, align 8, !dbg !3421
  %call1 = call i32 @clockevents_program_event(ptr noundef %2, i64 noundef %3, i1 noundef zeroext true) #14, !dbg !3422
  %4 = load ptr, ptr %bc.addr, align 8, !dbg !3423
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !3424
  %call2 = call ptr @get_cpu_mask(i32 noundef %5) #14, !dbg !3424
  call void @tick_broadcast_set_affinity(ptr noundef %4, ptr noundef %call2) #14, !dbg !3425
  ret void, !dbg !3426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3427 dso_local i64 @ktime_get() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_set_affinity(ptr noundef %bc, ptr noundef %cpumask) #0 align 16 !dbg !3431 {
entry:
  %bc.addr = alloca ptr, align 8
  %cpumask.addr = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !3435, metadata !DIExpression()), !dbg !3437
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !3436, metadata !DIExpression()), !dbg !3438
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !3439
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !3441
  %1 = load i32, ptr %features, align 4, !dbg !3441
  %and = and i32 %1, 32, !dbg !3442
  %tobool = icmp ne i32 %and, 0, !dbg !3442
  br i1 %tobool, label %if.end, label %if.then, !dbg !3443

if.then:                                          ; preds = %entry
  br label %return, !dbg !3444

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bc.addr, align 8, !dbg !3445
  %cpumask1 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 25, !dbg !3447
  %3 = load ptr, ptr %cpumask1, align 16, !dbg !3447
  %4 = load ptr, ptr %cpumask.addr, align 8, !dbg !3448
  %call = call zeroext i1 @cpumask_equal(ptr noundef %3, ptr noundef %4) #14, !dbg !3449
  br i1 %call, label %if.then2, label %if.end3, !dbg !3450

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !3451

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %cpumask.addr, align 8, !dbg !3452
  %6 = load ptr, ptr %bc.addr, align 8, !dbg !3453
  %cpumask4 = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 25, !dbg !3454
  store ptr %5, ptr %cpumask4, align 16, !dbg !3455
  %7 = load ptr, ptr %bc.addr, align 8, !dbg !3456
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 23, !dbg !3457
  %8 = load i32, ptr %irq, align 4, !dbg !3457
  %9 = load ptr, ptr %bc.addr, align 8, !dbg !3458
  %cpumask5 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 25, !dbg !3459
  %10 = load ptr, ptr %cpumask5, align 16, !dbg !3459
  %call6 = call i32 @irq_set_affinity(i32 noundef %8, ptr noundef %10) #14, !dbg !3460
  br label %return, !dbg !3461

return:                                           ; preds = %if.end3, %if.then2, %if.then
  ret void, !dbg !3461
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3462 dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_handle_oneshot_broadcast(ptr noundef %dev) #0 align 16 !dbg !3466 {
entry:
  %dev.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %now = alloca i64, align 8
  %next_event = alloca i64, align 8
  %cpu = alloca i32, align 4
  %next_cpu = alloca i32, align 4
  %bc_local = alloca i8, align 1
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %tmp17 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify19 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  %__vpp_verify69 = alloca ptr, align 8
  %tmp72 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp73 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3468, metadata !DIExpression()), !dbg !3503
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !3504
  call void @llvm.dbg.declare(metadata ptr %td, metadata !3469, metadata !DIExpression()), !dbg !3505
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #15, !dbg !3506
  call void @llvm.dbg.declare(metadata ptr %now, metadata !3470, metadata !DIExpression()), !dbg !3507
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_event) #15, !dbg !3506
  call void @llvm.dbg.declare(metadata ptr %next_event, metadata !3471, metadata !DIExpression()), !dbg !3508
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3472, metadata !DIExpression()), !dbg !3510
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_cpu) #15, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %next_cpu, metadata !3473, metadata !DIExpression()), !dbg !3511
  store i32 0, ptr %next_cpu, align 4, !dbg !3511
  call void @llvm.lifetime.start.p0(i64 1, ptr %bc_local) #15, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %bc_local, metadata !3474, metadata !DIExpression()), !dbg !3513
  call void @_raw_spin_lock(ptr noundef @tick_broadcast_lock) #14, !dbg !3514
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3515
  %next_event1 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3, !dbg !3516
  store i64 9223372036854775807, ptr %next_event1, align 8, !dbg !3517
  store i64 9223372036854775807, ptr %next_event, align 8, !dbg !3518
  call void @cpumask_clear(ptr noundef @tmpmask) #14, !dbg !3519
  %call = call i64 @ktime_get() #14, !dbg !3520
  store i64 %call, ptr %now, align 8, !dbg !3521
  store i32 0, ptr %cpu, align 4, !dbg !3522
  br label %for.cond, !dbg !3522

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %cpu, align 4, !dbg !3523
  %conv = sext i32 %1 to i64, !dbg !3523
  %call2 = call i64 @find_next_bit(ptr noundef @tick_broadcast_oneshot_mask, i64 noundef 64, i64 noundef %conv) #14, !dbg !3523
  %conv3 = trunc i64 %call2 to i32, !dbg !3523
  store i32 %conv3, ptr %cpu, align 4, !dbg !3523
  %2 = load i32, ptr %cpu, align 4, !dbg !3523
  %cmp = icmp ult i32 %2, 64, !dbg !3523
  br i1 %cmp, label %for.body, label %for.end, !dbg !3522

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3524

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3525
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3475, metadata !DIExpression()), !dbg !3525
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3525
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3525
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3524
  br label %do.cond, !dbg !3525

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3525

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !3526
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3481, metadata !DIExpression()), !dbg !3526
  store i64 ptrtoint (ptr @tick_cpu_device to i64), ptr %__ptr, align 8, !dbg !3526
  %4 = load i64, ptr %__ptr, align 8, !dbg !3526
  %5 = load i32, ptr %cpu, align 4, !dbg !3526
  %idxprom = sext i32 %5 to i64, !dbg !3526
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3526
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3526
  %add = add i64 %4, %6, !dbg !3526
  %7 = inttoptr i64 %add to ptr, !dbg !3526
  store ptr %7, ptr %tmp5, align 8, !dbg !3526
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !3524
  %8 = load ptr, ptr %tmp5, align 8, !dbg !3526
  store ptr %8, ptr %tmp, align 8, !dbg !3525
  %9 = load ptr, ptr %tmp, align 8, !dbg !3524
  store ptr %9, ptr %td, align 8, !dbg !3527
  %10 = load ptr, ptr %td, align 8, !dbg !3528
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %10, i32 0, i32 0, !dbg !3530
  %11 = load ptr, ptr %evtdev, align 8, !dbg !3530
  %next_event6 = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 3, !dbg !3531
  %12 = load i64, ptr %next_event6, align 8, !dbg !3531
  %13 = load i64, ptr %now, align 8, !dbg !3532
  %cmp7 = icmp sle i64 %12, %13, !dbg !3533
  br i1 %cmp7, label %if.then, label %if.else, !dbg !3534

if.then:                                          ; preds = %do.end
  %14 = load i32, ptr %cpu, align 4, !dbg !3535
  call void @cpumask_set_cpu(i32 noundef %14, ptr noundef @tmpmask) #14, !dbg !3537
  %15 = load i32, ptr %cpu, align 4, !dbg !3538
  call void @cpumask_set_cpu(i32 noundef %15, ptr noundef @tick_broadcast_pending_mask) #14, !dbg !3539
  br label %if.end16, !dbg !3540

if.else:                                          ; preds = %do.end
  %16 = load ptr, ptr %td, align 8, !dbg !3541
  %evtdev9 = getelementptr inbounds %struct.tick_device, ptr %16, i32 0, i32 0, !dbg !3543
  %17 = load ptr, ptr %evtdev9, align 8, !dbg !3543
  %next_event10 = getelementptr inbounds %struct.clock_event_device, ptr %17, i32 0, i32 3, !dbg !3544
  %18 = load i64, ptr %next_event10, align 8, !dbg !3544
  %19 = load i64, ptr %next_event, align 8, !dbg !3545
  %cmp11 = icmp slt i64 %18, %19, !dbg !3546
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !3547

if.then13:                                        ; preds = %if.else
  %20 = load ptr, ptr %td, align 8, !dbg !3548
  %evtdev14 = getelementptr inbounds %struct.tick_device, ptr %20, i32 0, i32 0, !dbg !3550
  %21 = load ptr, ptr %evtdev14, align 8, !dbg !3550
  %next_event15 = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 3, !dbg !3551
  %22 = load i64, ptr %next_event15, align 8, !dbg !3551
  store i64 %22, ptr %next_event, align 8, !dbg !3552
  %23 = load i32, ptr %cpu, align 4, !dbg !3553
  store i32 %23, ptr %next_cpu, align 4, !dbg !3554
  br label %if.end, !dbg !3555

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  br label %for.inc, !dbg !3556

for.inc:                                          ; preds = %if.end16
  %24 = load i32, ptr %cpu, align 4, !dbg !3523
  %inc = add i32 %24, 1, !dbg !3523
  store i32 %inc, ptr %cpu, align 4, !dbg !3523
  br label %for.cond, !dbg !3523, !llvm.loop !3557

for.end:                                          ; preds = %for.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !3561
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3562
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3483, metadata !DIExpression()), !dbg !3562
  br label %do.body18, !dbg !3562

do.body18:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify19) #15, !dbg !3563
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify19, metadata !3486, metadata !DIExpression()), !dbg !3563
  store ptr null, ptr %__vpp_verify19, align 8, !dbg !3563
  %25 = load ptr, ptr %__vpp_verify19, align 8, !dbg !3563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify19) #15, !dbg !3562
  br label %do.cond20, !dbg !3563

do.cond20:                                        ; preds = %do.body18
  br label %do.end21, !dbg !3563

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !3564
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3488, metadata !DIExpression()), !dbg !3564
  %26 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !3564, !srcloc !3565
  store i32 %26, ptr %pfo_val__, align 4, !dbg !3564
  %27 = load i32, ptr %pfo_val__, align 4, !dbg !3564
  %conv23 = zext i32 %27 to i64, !dbg !3564
  %conv24 = trunc i64 %conv23 to i32, !dbg !3564
  store i32 %conv24, ptr %tmp22, align 4, !dbg !3564
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !3562
  %28 = load i32, ptr %tmp22, align 4, !dbg !3564
  store i32 %28, ptr %pscr_ret__, align 4, !dbg !3562
  %29 = load i32, ptr %pscr_ret__, align 4, !dbg !3562
  store i32 %29, ptr %tmp25, align 4, !dbg !3562
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3561
  %30 = load i32, ptr %tmp25, align 4, !dbg !3562
  store i32 %30, ptr %tmp17, align 4, !dbg !3561
  %31 = load i32, ptr %tmp17, align 4, !dbg !3561
  call void @cpumask_clear_cpu(i32 noundef %31, ptr noundef @tick_broadcast_pending_mask) #14, !dbg !3566
  call void @cpumask_or(ptr noundef @tmpmask, ptr noundef @tmpmask, ptr noundef @tick_broadcast_force_mask) #14, !dbg !3567
  call void @cpumask_clear(ptr noundef @tick_broadcast_force_mask) #14, !dbg !3568
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3569
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3490, metadata !DIExpression()), !dbg !3569
  %call26 = call zeroext i1 @cpumask_subset(ptr noundef @tmpmask, ptr noundef @__cpu_online_mask) #14, !dbg !3569
  %lnot = xor i1 %call26, true, !dbg !3569
  %lnot27 = xor i1 %lnot, true, !dbg !3569
  %lnot28 = xor i1 %lnot27, true, !dbg !3569
  %lnot.ext = zext i1 %lnot28 to i32, !dbg !3569
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3569
  %32 = load i32, ptr %__ret_warn_on, align 4, !dbg !3570
  %tobool = icmp ne i32 %32, 0, !dbg !3570
  %lnot29 = xor i1 %tobool, true, !dbg !3570
  %lnot31 = xor i1 %lnot29, true, !dbg !3570
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !3570
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !3570
  %expval = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !3570
  %tobool34 = icmp ne i64 %expval, 0, !dbg !3570
  br i1 %tobool34, label %if.then35, label %if.end48, !dbg !3569

if.then35:                                        ; preds = %do.end21
  br label %do.body36, !dbg !3570

do.body36:                                        ; preds = %if.then35
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3493, metadata !DIExpression()), !dbg !3571
  store i32 2307, ptr %__flags, align 4, !dbg !3571
  br label %do.body37, !dbg !3571

do.body37:                                        ; preds = %do.body36
  br label %do.cond38, !dbg !3572

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !3572

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !3571

do.body40:                                        ; preds = %do.end39
  %33 = load i32, ptr %__flags, align 4, !dbg !3574
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 741, i32 %33, i64 12) #15, !dbg !3574, !srcloc !3576
  br label %do.cond41, !dbg !3574

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !3574

do.end42:                                         ; preds = %do.cond41
  br label %do.body43, !dbg !3571

do.body43:                                        ; preds = %do.end42
  br label %do.cond44, !dbg !3577

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !3577

do.end45:                                         ; preds = %do.cond44
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !3570
  br label %do.cond46, !dbg !3571

do.cond46:                                        ; preds = %do.end45
  br label %do.end47, !dbg !3571

do.end47:                                         ; preds = %do.cond46
  br label %if.end48, !dbg !3571

if.end48:                                         ; preds = %do.end47, %do.end21
  %34 = load i32, ptr %__ret_warn_on, align 4, !dbg !3569
  %tobool50 = icmp ne i32 %34, 0, !dbg !3569
  %lnot51 = xor i1 %tobool50, true, !dbg !3569
  %lnot53 = xor i1 %lnot51, true, !dbg !3569
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !3569
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !3569
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !3569
  store i64 %expval56, ptr %tmp49, align 8, !dbg !3570
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3579
  %35 = load i64, ptr %tmp49, align 8, !dbg !3569
  %tobool57 = icmp ne i64 %35, 0, !dbg !3579
  br i1 %tobool57, label %if.then58, label %if.end60, !dbg !3580

if.then58:                                        ; preds = %if.end48
  %call59 = call zeroext i1 @cpumask_and(ptr noundef @tmpmask, ptr noundef @tmpmask, ptr noundef @__cpu_online_mask) #14, !dbg !3581
  br label %if.end60, !dbg !3581

if.end60:                                         ; preds = %if.then58, %if.end48
  %call61 = call zeroext i1 @tick_do_broadcast(ptr noundef @tmpmask) #14, !dbg !3582
  %frombool = zext i1 %call61 to i8, !dbg !3583
  store i8 %frombool, ptr %bc_local, align 1, !dbg !3583
  %36 = load i64, ptr %next_event, align 8, !dbg !3584
  %cmp62 = icmp ne i64 %36, 9223372036854775807, !dbg !3586
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !3587

if.then64:                                        ; preds = %if.end60
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !3588
  %38 = load i32, ptr %next_cpu, align 4, !dbg !3589
  %39 = load i64, ptr %next_event, align 8, !dbg !3590
  call void @tick_broadcast_set_event(ptr noundef %37, i32 noundef %38, i64 noundef %39) #14, !dbg !3591
  br label %if.end65, !dbg !3591

if.end65:                                         ; preds = %if.then64, %if.end60
  call void @_raw_spin_unlock(ptr noundef @tick_broadcast_lock) #14, !dbg !3592
  %40 = load i8, ptr %bc_local, align 1, !dbg !3593, !range !1695, !noundef !359
  %tobool66 = trunc i8 %40 to i1, !dbg !3593
  br i1 %tobool66, label %if.then67, label %if.end76, !dbg !3594

if.then67:                                        ; preds = %if.end65
  br label %do.body68, !dbg !3595

do.body68:                                        ; preds = %if.then67
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify69) #15, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify69, metadata !3496, metadata !DIExpression()), !dbg !3596
  store ptr null, ptr %__vpp_verify69, align 8, !dbg !3596
  %41 = load ptr, ptr %__vpp_verify69, align 8, !dbg !3596
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify69) #15, !dbg !3595
  br label %do.cond70, !dbg !3596

do.cond70:                                        ; preds = %do.body68
  br label %do.end71, !dbg !3596

do.end71:                                         ; preds = %do.cond70
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !3597
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !3501, metadata !DIExpression()), !dbg !3597
  %42 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #17, !dbg !3597, !srcloc !3598
  store i64 %42, ptr %tcp_ptr__, align 8, !dbg !3597
  %43 = load i64, ptr %tcp_ptr__, align 8, !dbg !3597
  %44 = inttoptr i64 %43 to ptr, !dbg !3597
  store ptr %44, ptr %tmp73, align 8, !dbg !3597
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !3595
  %45 = load ptr, ptr %tmp73, align 8, !dbg !3597
  store ptr %45, ptr %tmp72, align 8, !dbg !3596
  %46 = load ptr, ptr %tmp72, align 8, !dbg !3595
  store ptr %46, ptr %td, align 8, !dbg !3599
  %47 = load ptr, ptr %td, align 8, !dbg !3600
  %evtdev74 = getelementptr inbounds %struct.tick_device, ptr %47, i32 0, i32 0, !dbg !3601
  %48 = load ptr, ptr %evtdev74, align 8, !dbg !3601
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %48, i32 0, i32 0, !dbg !3602
  %49 = load ptr, ptr %event_handler, align 64, !dbg !3602
  %50 = load ptr, ptr %td, align 8, !dbg !3603
  %evtdev75 = getelementptr inbounds %struct.tick_device, ptr %50, i32 0, i32 0, !dbg !3604
  %51 = load ptr, ptr %evtdev75, align 8, !dbg !3604
  call void %49(ptr noundef %51) #14, !dbg !3600
  br label %if.end76, !dbg !3605

if.end76:                                         ; preds = %do.end71, %if.end65
  call void @llvm.lifetime.end.p0(i64 1, ptr %bc_local) #15, !dbg !3606
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_cpu) #15, !dbg !3606
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !3606
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_event) #15, !dbg !3606
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #15, !dbg !3606
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !3606
  ret void, !dbg !3606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #4 align 16 !dbg !3607 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !3611, metadata !DIExpression()), !dbg !3613
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !3612, metadata !DIExpression()), !dbg !3614
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !3615
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3615
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3615
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !3616
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3616
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !3616
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #14, !dbg !3617
  ret void, !dbg !3618
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_or(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !3619 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !3623, metadata !DIExpression()), !dbg !3626
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !3624, metadata !DIExpression()), !dbg !3627
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !3625, metadata !DIExpression()), !dbg !3628
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !3629
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3629
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3629
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !3630
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3630
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !3630
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !3631
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !3631
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !3631
  call void @bitmap_or(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #14, !dbg !3632
  ret void, !dbg !3633
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @tick_get_next_period() #4 align 16 !dbg !3634 {
entry:
  %next = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !3637
  call void @llvm.dbg.declare(metadata ptr %next, metadata !3636, metadata !DIExpression()), !dbg !3638
  call void @_raw_spin_lock(ptr noundef @jiffies_lock) #14, !dbg !3639
  %0 = load i64, ptr @tick_next_period, align 8, !dbg !3640
  store i64 %0, ptr %next, align 8, !dbg !3641
  call void @_raw_spin_unlock(ptr noundef @jiffies_lock) #14, !dbg !3642
  %1 = load i64, ptr %next, align 8, !dbg !3643
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !3644
  ret i64 %1, !dbg !3645
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_init_next_event(ptr noundef %mask, i64 noundef %expires) #0 align 16 !dbg !3646 {
entry:
  %mask.addr = alloca ptr, align 8
  %expires.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3650, metadata !DIExpression()), !dbg !3662
  store i64 %expires, ptr %expires.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expires.addr, metadata !3651, metadata !DIExpression()), !dbg !3663
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #15, !dbg !3664
  call void @llvm.dbg.declare(metadata ptr %td, metadata !3652, metadata !DIExpression()), !dbg !3665
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !3666
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3653, metadata !DIExpression()), !dbg !3667
  store i32 0, ptr %cpu, align 4, !dbg !3668
  br label %for.cond, !dbg !3668

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !3669
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3669
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3669
  %1 = load i32, ptr %cpu, align 4, !dbg !3669
  %conv = sext i32 %1 to i64, !dbg !3669
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #14, !dbg !3669
  %conv1 = trunc i64 %call to i32, !dbg !3669
  store i32 %conv1, ptr %cpu, align 4, !dbg !3669
  %2 = load i32, ptr %cpu, align 4, !dbg !3669
  %cmp = icmp ult i32 %2, 64, !dbg !3669
  br i1 %cmp, label %for.body, label %for.end, !dbg !3668

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3670

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3671
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3654, metadata !DIExpression()), !dbg !3671
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3671
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3671
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3670
  br label %do.cond, !dbg !3671

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3671

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !3672
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3660, metadata !DIExpression()), !dbg !3672
  store i64 ptrtoint (ptr @tick_cpu_device to i64), ptr %__ptr, align 8, !dbg !3672
  %4 = load i64, ptr %__ptr, align 8, !dbg !3672
  %5 = load i32, ptr %cpu, align 4, !dbg !3672
  %idxprom = sext i32 %5 to i64, !dbg !3672
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3672
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3672
  %add = add i64 %4, %6, !dbg !3672
  %7 = inttoptr i64 %add to ptr, !dbg !3672
  store ptr %7, ptr %tmp3, align 8, !dbg !3672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !3670
  %8 = load ptr, ptr %tmp3, align 8, !dbg !3672
  store ptr %8, ptr %tmp, align 8, !dbg !3671
  %9 = load ptr, ptr %tmp, align 8, !dbg !3670
  store ptr %9, ptr %td, align 8, !dbg !3673
  %10 = load ptr, ptr %td, align 8, !dbg !3674
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %10, i32 0, i32 0, !dbg !3676
  %11 = load ptr, ptr %evtdev, align 8, !dbg !3676
  %tobool = icmp ne ptr %11, null, !dbg !3674
  br i1 %tobool, label %if.then, label %if.end, !dbg !3677

if.then:                                          ; preds = %do.end
  %12 = load i64, ptr %expires.addr, align 8, !dbg !3678
  %13 = load ptr, ptr %td, align 8, !dbg !3679
  %evtdev4 = getelementptr inbounds %struct.tick_device, ptr %13, i32 0, i32 0, !dbg !3680
  %14 = load ptr, ptr %evtdev4, align 8, !dbg !3680
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %14, i32 0, i32 3, !dbg !3681
  store i64 %12, ptr %next_event, align 8, !dbg !3682
  br label %if.end, !dbg !3679

if.end:                                           ; preds = %if.then, %do.end
  br label %for.inc, !dbg !3683

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %cpu, align 4, !dbg !3669
  %inc = add i32 %15, 1, !dbg !3669
  store i32 %inc, ptr %cpu, align 4, !dbg !3669
  br label %for.cond, !dbg !3669, !llvm.loop !3684

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #15, !dbg !3686
  ret void, !dbg !3686
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #4 align 16 !dbg !3687 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !3691, metadata !DIExpression()), !dbg !3692
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !3693
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3693
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3693
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #14, !dbg !3694
  ret void, !dbg !3695
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !3696 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3700, metadata !DIExpression()), !dbg !3706
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3701, metadata !DIExpression()), !dbg !3707
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3702, metadata !DIExpression()), !dbg !3708
  %0 = load i64, ptr %size.addr, align 8, !dbg !3709
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3709
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3709

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3709
  %cmp = icmp ule i64 %2, 64, !dbg !3709
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3709

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3709
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3709
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3710

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !3711
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3703, metadata !DIExpression()), !dbg !3712
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3713
  %5 = load i64, ptr %size.addr, align 8, !dbg !3713
  %cmp3 = icmp uge i64 %4, %5, !dbg !3713
  %lnot = xor i1 %cmp3, true, !dbg !3713
  %lnot4 = xor i1 %lnot, true, !dbg !3713
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3713
  %conv = sext i32 %lnot.ext to i64, !dbg !3713
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3713
  %tobool = icmp ne i64 %expval, 0, !dbg !3713
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3715

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3716
  store i64 %6, ptr %retval, align 8, !dbg !3717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3717

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3718
  %8 = load i64, ptr %7, align 8, !dbg !3719
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3720
  %shl = shl i64 1, %9, !dbg !3720
  %sub = sub i64 -1, %shl, !dbg !3720
  %add = add i64 %sub, 1, !dbg !3720
  %10 = load i64, ptr %size.addr, align 8, !dbg !3720
  %sub6 = sub i64 %10, 1, !dbg !3720
  %sub7 = sub i64 63, %sub6, !dbg !3720
  %shr = lshr i64 -1, %sub7, !dbg !3720
  %and = and i64 %add, %shr, !dbg !3720
  %add8 = add i64 0, %and, !dbg !3720
  %and9 = and i64 %8, %add8, !dbg !3721
  store i64 %and9, ptr %val, align 8, !dbg !3722
  %11 = load i64, ptr %val, align 8, !dbg !3723
  %tobool10 = icmp ne i64 %11, 0, !dbg !3723
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3723

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3724
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3724
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3724

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3724
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3724
  %cast = trunc i64 %15 to i32, !dbg !3724
  %conv12 = sext i32 %cast to i64, !dbg !3724
  br label %cond.end, !dbg !3724

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3724
  %call = call i64 @variable__ffs(i64 noundef %16) #14, !dbg !3724
  br label %cond.end, !dbg !3724

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3724
  br label %cond.end14, !dbg !3723

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3725
  br label %cond.end14, !dbg !3723

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3723
  store i64 %cond15, ptr %retval, align 8, !dbg !3726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3726

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !3727
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3728
  %19 = load i64, ptr %size.addr, align 8, !dbg !3729
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3730
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #14, !dbg !3731
  store i64 %call17, ptr %retval, align 8, !dbg !3732
  br label %return, !dbg !3732

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3733
  ret i64 %21, !dbg !3733
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_subset(ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !3734 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !3736, metadata !DIExpression()), !dbg !3738
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !3737, metadata !DIExpression()), !dbg !3739
  %0 = load ptr, ptr %src1p.addr, align 8, !dbg !3740
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3740
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3740
  %1 = load ptr, ptr %src2p.addr, align 8, !dbg !3741
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3741
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !3741
  %call = call zeroext i1 @bitmap_subset(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #14, !dbg !3742
  ret i1 %call, !dbg !3743
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #4 align 16 !dbg !3744 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3748, metadata !DIExpression()), !dbg !3751
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !3753
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3750, metadata !DIExpression()), !dbg !3754
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3755
  %add = add i32 %0, 63, !dbg !3755
  %and = and i32 %add, -64, !dbg !3755
  %div = udiv i32 %and, 8, !dbg !3755
  store i32 %div, ptr %len, align 4, !dbg !3754
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !3756
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !3756
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !3756

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3756
  %cmp = icmp ule i32 %3, 64, !dbg !3756
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !3756

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !3756
  %cmp2 = icmp ugt i32 %4, 0, !dbg !3756
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3758

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !3759
  store i64 0, ptr %5, align 8, !dbg !3760
  br label %if.end, !dbg !3761

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !3762
  %7 = load i32, ptr %len, align 4, !dbg !3763
  %conv = zext i32 %7 to i64, !dbg !3763
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !3764
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !3765
  ret void, !dbg !3765
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3766 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_subset(ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !3767 {
entry:
  %retval = alloca i1, align 1
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !3769, metadata !DIExpression()), !dbg !3772
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !3770, metadata !DIExpression()), !dbg !3773
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3771, metadata !DIExpression()), !dbg !3774
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3775
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3775
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !3775

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !3775
  %cmp = icmp ule i32 %2, 64, !dbg !3775
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !3775

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3775
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3775
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3777

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !3778
  %5 = load i64, ptr %4, align 8, !dbg !3779
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !3780
  %7 = load i64, ptr %6, align 8, !dbg !3781
  %not = xor i64 %7, -1, !dbg !3782
  %and = and i64 %5, %not, !dbg !3783
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !3784
  %sub = sub i32 0, %8, !dbg !3784
  %and3 = and i32 %sub, 63, !dbg !3784
  %sh_prom = zext i32 %and3 to i64, !dbg !3784
  %shr = lshr i64 -1, %sh_prom, !dbg !3784
  %and4 = and i64 %and, %shr, !dbg !3785
  %tobool = icmp ne i64 %and4, 0, !dbg !3786
  %lnot = xor i1 %tobool, true, !dbg !3786
  store i1 %lnot, ptr %retval, align 1, !dbg !3787
  br label %return, !dbg !3787

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %src1.addr, align 8, !dbg !3788
  %10 = load ptr, ptr %src2.addr, align 8, !dbg !3789
  %11 = load i32, ptr %nbits.addr, align 4, !dbg !3790
  %call = call zeroext i1 @__bitmap_subset(ptr noundef %9, ptr noundef %10, i32 noundef %11) #14, !dbg !3791
  store i1 %call, ptr %retval, align 1, !dbg !3792
  br label %return, !dbg !3792

return:                                           ; preds = %if.else, %if.then
  %12 = load i1, ptr %retval, align 1, !dbg !3793
  ret i1 %12, !dbg !3793
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3794 dso_local zeroext i1 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !3795 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3799, metadata !DIExpression()), !dbg !3803
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3800, metadata !DIExpression()), !dbg !3804
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3801, metadata !DIExpression()), !dbg !3805
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !3806
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3802, metadata !DIExpression()), !dbg !3807
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3808
  %add = add i32 %0, 63, !dbg !3808
  %and = and i32 %add, -64, !dbg !3808
  %div = udiv i32 %and, 8, !dbg !3808
  store i32 %div, ptr %len, align 4, !dbg !3807
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !3809
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !3809
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !3809

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3809
  %cmp = icmp ule i32 %3, 64, !dbg !3809
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !3809

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !3809
  %cmp2 = icmp ugt i32 %4, 0, !dbg !3809
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3811

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !3812
  %6 = load i64, ptr %5, align 8, !dbg !3813
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !3814
  store i64 %6, ptr %7, align 8, !dbg !3815
  br label %if.end, !dbg !3816

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !3817
  %9 = load ptr, ptr %src.addr, align 8, !dbg !3818
  %10 = load i32, ptr %len, align 4, !dbg !3819
  %conv = zext i32 %10 to i64, !dbg !3819
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !3820
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !3821
  ret void, !dbg !3821
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_or(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !3822 {
entry:
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3826, metadata !DIExpression()), !dbg !3830
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !3827, metadata !DIExpression()), !dbg !3831
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !3828, metadata !DIExpression()), !dbg !3832
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3829, metadata !DIExpression()), !dbg !3833
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3834
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3834
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !3834

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !3834
  %cmp = icmp ule i32 %2, 64, !dbg !3834
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !3834

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3834
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3834
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3836

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !3837
  %5 = load i64, ptr %4, align 8, !dbg !3838
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !3839
  %7 = load i64, ptr %6, align 8, !dbg !3840
  %or = or i64 %5, %7, !dbg !3841
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !3842
  store i64 %or, ptr %8, align 8, !dbg !3843
  br label %if.end, !dbg !3844

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !3845
  %10 = load ptr, ptr %src1.addr, align 8, !dbg !3846
  %11 = load ptr, ptr %src2.addr, align 8, !dbg !3847
  %12 = load i32, ptr %nbits.addr, align 4, !dbg !3848
  call void @__bitmap_or(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12) #14, !dbg !3849
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3850
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3851 dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { cold noredzone }
attributes #17 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!llvm.ident = !{!1241}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tick_broadcast_device", scope: !2, file: !3, line: 27, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.tick-broadcast.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/tick-broadcast\22 -D KBUILD_BASENAME=\22tick_broadcast\22 -D KBUILD_MODNAME=\22tick_broadcast\22 -D __KBUILD_MODNAME=kmod_tick_broadcast -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/tick-broadcast.ll kernel/time/tick-broadcast.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !1168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/time/tick-broadcast.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f459f6ab7b7c1632cb59578402ffd6e")
!4 = !{!5, !14, !21, !27, !32, !37, !43}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_event_state", file: !6, line: 35, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/clockchips.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86f5f8ec61303214145eac8153b8fae6")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CLOCK_EVT_STATE_DETACHED", value: 0)
!10 = !DIEnumerator(name: "CLOCK_EVT_STATE_SHUTDOWN", value: 1)
!11 = !DIEnumerator(name: "CLOCK_EVT_STATE_PERIODIC", value: 2)
!12 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT", value: 3)
!13 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT_STOPPED", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !22, line: 26, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!25 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!26 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_device_mode", file: !28, line: 7, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "kernel/time/tick-sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0af3376d02c13b090a2952893b05c615")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "TICKDEV_MODE_PERIODIC", value: 0)
!31 = !DIEnumerator(name: "TICKDEV_MODE_ONESHOT", value: 1)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 10, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "false", value: 0)
!36 = !DIEnumerator(name: "true", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_broadcast_mode", file: !38, line: 55, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e1e58d669c75211497f9e6bb3ab6476")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TICK_BROADCAST_OFF", value: 0)
!41 = !DIEnumerator(name: "TICK_BROADCAST_ON", value: 1)
!42 = !DIEnumerator(name: "TICK_BROADCAST_FORCE", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_broadcast_state", file: !38, line: 61, baseType: !7, size: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "TICK_BROADCAST_EXIT", value: 0)
!46 = !DIEnumerator(name: "TICK_BROADCAST_ENTER", value: 1)
!47 = !{!48, !295, !946, !63, !64, !1161, !1162, !7, !1163, !1164, !1166, !101, !1143, !71, !78}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tick_device", file: !28, line: 12, size: 128, elements: !50)
!50 = !{!51, !1160}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "evtdev", scope: !49, file: !28, line: 13, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_event_device", file: !6, line: 100, size: 2048, align: 512, elements: !54)
!54 = !{!55, !59, !65, !76, !77, !81, !82, !85, !86, !87, !88, !89, !93, !94, !95, !96, !97, !110, !111, !112, !113, !114, !118, !119, !120, !121, !122, !129}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !53, file: !6, line: 101, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !52}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_event", scope: !53, file: !6, line: 102, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !64, !52}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_ktime", scope: !53, file: !6, line: 103, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!63, !69, !52}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !70, line: 29, baseType: !71)
!70 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !72, line: 22, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !74, line: 30, baseType: !75)
!74 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!75 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_event", scope: !53, file: !6, line: 104, baseType: !69, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ns", scope: !53, file: !6, line: 105, baseType: !78, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !72, line: 23, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !74, line: 31, baseType: !80)
!80 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ns", scope: !53, file: !6, line: 106, baseType: !78, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !53, file: !6, line: 107, baseType: !83, size: 32, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !72, line: 21, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !74, line: 27, baseType: !7)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !53, file: !6, line: 108, baseType: !83, size: 32, offset: 416)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !53, file: !6, line: 109, baseType: !5, size: 32, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !53, file: !6, line: 110, baseType: !7, size: 32, offset: 480)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !53, file: !6, line: 111, baseType: !64, size: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_periodic", scope: !53, file: !6, line: 113, baseType: !90, size: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!63, !52}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot", scope: !53, file: !6, line: 114, baseType: !90, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot_stopped", scope: !53, file: !6, line: 115, baseType: !90, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_shutdown", scope: !53, file: !6, line: 116, baseType: !90, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tick_resume", scope: !53, file: !6, line: 117, baseType: !90, size: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast", scope: !53, file: !6, line: 119, baseType: !98, size: 64, offset: 896)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !104, line: 19, size: 64, elements: !105)
!104 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !103, file: !104, line: 19, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 1)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !53, file: !6, line: 120, baseType: !56, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !53, file: !6, line: 121, baseType: !56, size: 64, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ticks", scope: !53, file: !6, line: 122, baseType: !64, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ticks", scope: !53, file: !6, line: 123, baseType: !64, size: 64, offset: 1152)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !6, line: 125, baseType: !115, size: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !53, file: !6, line: 126, baseType: !63, size: 32, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !53, file: !6, line: 127, baseType: !63, size: 32, offset: 1312)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bound_on", scope: !53, file: !6, line: 128, baseType: !63, size: 32, offset: 1344)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !53, file: !6, line: 129, baseType: !101, size: 64, offset: 1408)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !53, file: !6, line: 130, baseType: !123, size: 128, offset: 1472)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 190, size: 128, elements: !125)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !124, line: 191, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !124, line: 191, baseType: !127, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !53, file: !6, line: 131, baseType: !130, size: 64, offset: 1600)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !132)
!132 = !{!133, !134, !135, !139, !810, !836, !837, !838, !839, !843, !846, !847, !848, !901, !902, !903, !904, !905, !906, !907, !908, !916, !920, !940, !958, !959, !960, !961, !970, !993, !994, !997, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1011, !1012, !1118, !1126, !1127, !1128, !1130, !1134, !1135, !1139, !1140, !1141, !1142, !1144, !1145, !1146, !1153, !1154, !1155, !1159}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !131, file: !15, line: 403, baseType: !14, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !131, file: !15, line: 406, baseType: !123, size: 128, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !15, line: 409, baseType: !136, size: 448, offset: 192)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 448, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 56)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !131, file: !15, line: 417, baseType: !140, size: 768, offset: 640)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !141)
!141 = !{!142, !793, !794, !795, !798}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !140, file: !15, line: 46, baseType: !143, size: 512)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !144, line: 64, size: 512, elements: !145)
!144 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!145 = !{!146, !147, !148, !150, !237, !664, !778, !788, !789, !790, !791, !792}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 65, baseType: !115, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !143, file: !144, line: 66, baseType: !123, size: 128, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !144, line: 67, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !143, file: !144, line: 68, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !144, line: 168, size: 768, elements: !153)
!153 = !{!154, !155, !196, !197}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !152, file: !144, line: 169, baseType: !123, size: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !152, file: !144, line: 170, baseType: !156, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !157, line: 29, baseType: !158)
!157 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !157, line: 17, size: 32, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !157, line: 18, baseType: !161, size: 32)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !157, line: 18, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !161, file: !157, line: 19, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !165, line: 14, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !164, file: !165, line: 15, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !169, line: 44, baseType: !170)
!169 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !169, line: 14, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !169, line: 15, baseType: !173, size: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !169, line: 15, size: 32, elements: !174)
!174 = !{!175, !180, !188}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !169, line: 16, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 174, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 172, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !177, file: !124, line: 173, baseType: !63, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !169, line: 24, baseType: !181, size: 16)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !169, line: 24, size: 16, elements: !182)
!182 = !{!183, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !181, file: !169, line: 25, baseType: !184, size: 8)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !72, line: 17, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !74, line: 21, baseType: !186)
!186 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !181, file: !169, line: 26, baseType: !184, size: 8, offset: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !169, line: 28, baseType: !189, size: 32)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !169, line: 28, size: 32, elements: !190)
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !189, file: !169, line: 29, baseType: !192, size: 16)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !72, line: 19, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !74, line: 24, baseType: !194)
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !189, file: !169, line: 30, baseType: !192, size: 16, offset: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !152, file: !144, line: 171, baseType: !143, size: 512, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !152, file: !144, line: 172, baseType: !198, size: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !144, line: 133, size: 192, elements: !201)
!201 = !{!202, !209, !214}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !200, file: !144, line: 134, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!63, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !144, line: 135, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!115, !207}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !200, file: !144, line: 136, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!63, !207, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !144, line: 125, size: 20736, elements: !221)
!221 = !{!222, !227, !231, !232, !236}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !220, file: !144, line: 126, baseType: !223, size: 192)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 192, elements: !225)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!225 = !{!226}
!226 = !DISubrange(count: 3)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !220, file: !144, line: 127, baseType: !228, size: 4096, offset: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 4096, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !220, file: !144, line: 128, baseType: !63, size: 32, offset: 4288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !220, file: !144, line: 129, baseType: !233, size: 16384, offset: 4320)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 16384, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 2048)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !220, file: !144, line: 130, baseType: !63, size: 32, offset: 20704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !143, file: !144, line: 69, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !144, line: 116, size: 384, elements: !241)
!241 = !{!242, !246, !274, !611, !642, !646}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !240, file: !144, line: 117, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !149}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !240, file: !144, line: 118, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !250, line: 254, size: 128, elements: !251)
!250 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!251 = !{!252, !267}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !249, file: !250, line: 255, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !149, !261, !224}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 66, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !258, line: 73, baseType: !259)
!258 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !258, line: 15, baseType: !260)
!260 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !250, line: 30, size: 128, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !250, line: 31, baseType: !115, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !262, file: !250, line: 32, baseType: !266, size: 16, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 24, baseType: !194)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !249, file: !250, line: 256, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!256, !149, !261, !115, !271}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 61, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !258, line: 72, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !258, line: 16, baseType: !64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !240, file: !144, line: 119, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !250, line: 84, size: 320, elements: !279)
!279 = !{!280, !281, !285, !607, !609}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !250, line: 85, baseType: !115, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !278, file: !250, line: 86, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!266, !149, !261, !63}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !278, file: !250, line: 88, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!266, !149, !289, !63}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !250, line: 175, size: 512, elements: !291)
!291 = !{!292, !293, !294, !296, !303, !312, !313}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !290, file: !250, line: 176, baseType: !262, size: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !290, file: !250, line: 177, baseType: !271, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !290, file: !250, line: 178, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !290, file: !250, line: 179, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !302, line: 32, flags: DIFlagFwdDecl)
!302 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !290, file: !250, line: 180, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!256, !307, !149, !289, !224, !310, !271}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !309, line: 537, flags: DIFlagFwdDecl)
!309 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 52, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !258, line: 88, baseType: !75)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !290, file: !250, line: 182, baseType: !304, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !290, file: !250, line: 184, baseType: !314, size: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!63, !307, !149, !289, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !302, line: 625, size: 1344, elements: !319)
!319 = !{!320, !337, !555, !561, !568, !569, !574, !577, !589, !590, !593, !597, !598, !599, !600, !601, !605}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !302, line: 628, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !302, line: 628, size: 128, elements: !322)
!322 = !{!323, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !302, line: 629, baseType: !324, size: 128)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !302, line: 629, size: 128, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !324, file: !302, line: 631, baseType: !64, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !324, file: !302, line: 632, baseType: !64, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !321, file: !302, line: 635, baseType: !329, size: 128, align: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 232, size: 128, align: 64, elements: !330)
!330 = !{!331, !333}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !124, line: 233, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !329, file: !124, line: 234, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !332}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !318, file: !302, line: 639, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !302, line: 733, size: 10240, elements: !340)
!340 = !{!341, !551}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !302, line: 734, baseType: !342, size: 10240)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !302, line: 734, size: 10240, elements: !343)
!343 = !{!344, !348, !362, !366, !367, !368, !369, !370, !371, !379, !380, !381, !387, !388, !395, !396, !397, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !444, !458, !461, !516, !517, !518, !521, !525, !526, !529, !530, !531, !538, !539}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !302, line: 739, baseType: !345, size: 512, align: 512)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !302, line: 739, size: 512, align: 512, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !345, file: !302, line: 747, baseType: !176, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !342, file: !302, line: 750, baseType: !349, size: 128, offset: 512)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !350, line: 218, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!351 = !{!352, !360, !361}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !350, line: 219, baseType: !353, size: 32)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !350, line: 219, size: 32, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !353, file: !350, line: 220, baseType: !156, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !353, file: !350, line: 221, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !350, line: 197, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 197, elements: !359)
!359 = !{}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !349, file: !350, line: 223, baseType: !7, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !349, file: !350, line: 224, baseType: !295, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !342, file: !302, line: 752, baseType: !363, size: 64, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!64, !307, !64, !64, !64, !64}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !342, file: !302, line: 756, baseType: !64, size: 64, offset: 704)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !342, file: !302, line: 757, baseType: !64, size: 64, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !342, file: !302, line: 760, baseType: !64, size: 64, offset: 832)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !342, file: !302, line: 761, baseType: !64, size: 64, offset: 896)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !342, file: !302, line: 763, baseType: !64, size: 64, offset: 960)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !342, file: !302, line: 764, baseType: !372, size: 64, offset: 1024)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !309, line: 299, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 299, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !374, file: !309, line: 299, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !378, line: 18, baseType: !64)
!378 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !342, file: !302, line: 773, baseType: !176, size: 32, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !342, file: !302, line: 785, baseType: !176, size: 32, offset: 1120)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !342, file: !302, line: 795, baseType: !382, size: 64, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !302, line: 726, size: 128, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !383, file: !302, line: 727, baseType: !78, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !383, file: !302, line: 728, baseType: !63, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !342, file: !302, line: 801, baseType: !64, size: 64, offset: 1216)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !342, file: !302, line: 804, baseType: !389, size: 64, offset: 1280)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !390, line: 13, baseType: !391)
!390 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 181, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 179, size: 64, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !392, file: !124, line: 180, baseType: !71, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !342, file: !302, line: 806, baseType: !63, size: 32, offset: 1344)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !342, file: !302, line: 808, baseType: !156, size: 32, offset: 1376)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !342, file: !302, line: 823, baseType: !398, size: 320, offset: 1408)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !399, line: 48, size: 320, elements: !400)
!399 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!400 = !{!401, !402, !403, !408, !410}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !398, file: !399, line: 49, baseType: !389, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !398, file: !399, line: 55, baseType: !389, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !398, file: !399, line: 57, baseType: !404, size: 32, offset: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !405, line: 15, size: 32, elements: !406)
!405 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !404, file: !405, line: 20, baseType: !176, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !398, file: !399, line: 59, baseType: !409, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !165, line: 23, baseType: !164)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !398, file: !399, line: 60, baseType: !123, size: 128, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !342, file: !302, line: 825, baseType: !123, size: 128, offset: 1728)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !342, file: !302, line: 845, baseType: !63, size: 32, offset: 1856)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !342, file: !302, line: 849, baseType: !64, size: 64, offset: 1920)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !342, file: !302, line: 850, baseType: !64, size: 64, offset: 1984)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !342, file: !302, line: 852, baseType: !64, size: 64, offset: 2048)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !342, file: !302, line: 853, baseType: !64, size: 64, offset: 2112)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !342, file: !302, line: 854, baseType: !391, size: 64, offset: 2176)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !342, file: !302, line: 855, baseType: !64, size: 64, offset: 2240)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !342, file: !302, line: 856, baseType: !64, size: 64, offset: 2304)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !342, file: !302, line: 857, baseType: !64, size: 64, offset: 2368)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !342, file: !302, line: 858, baseType: !64, size: 64, offset: 2432)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !342, file: !302, line: 865, baseType: !423, size: 32, offset: 2496)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !424, line: 69, baseType: !425)
!424 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !424, line: 64, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !425, file: !424, line: 65, baseType: !7, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !342, file: !302, line: 867, baseType: !156, size: 32, offset: 2528)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !342, file: !302, line: 869, baseType: !64, size: 64, offset: 2560)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !342, file: !302, line: 869, baseType: !64, size: 64, offset: 2624)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !342, file: !302, line: 869, baseType: !64, size: 64, offset: 2688)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !342, file: !302, line: 869, baseType: !64, size: 64, offset: 2752)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !342, file: !302, line: 870, baseType: !64, size: 64, offset: 2816)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !342, file: !302, line: 870, baseType: !64, size: 64, offset: 2880)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !342, file: !302, line: 870, baseType: !64, size: 64, offset: 2944)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !342, file: !302, line: 871, baseType: !64, size: 64, offset: 3008)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !342, file: !302, line: 871, baseType: !64, size: 64, offset: 3072)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !342, file: !302, line: 871, baseType: !64, size: 64, offset: 3136)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !342, file: !302, line: 871, baseType: !64, size: 64, offset: 3200)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !342, file: !302, line: 873, baseType: !441, size: 3328, offset: 3264)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 3328, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 52)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !342, file: !302, line: 875, baseType: !445, size: 1280, offset: 6592)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 1280, elements: !456)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !447, line: 22, size: 320, elements: !448)
!447 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!448 = !{!449, !450, !451, !452}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !446, file: !447, line: 23, baseType: !409, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !446, file: !447, line: 24, baseType: !71, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !446, file: !447, line: 26, baseType: !123, size: 128, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !446, file: !447, line: 28, baseType: !453, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !72, line: 20, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !74, line: 26, baseType: !63)
!456 = !{!457}
!457 = !DISubrange(count: 4)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !342, file: !302, line: 877, baseType: !459, size: 64, offset: 7872)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !302, line: 877, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !342, file: !302, line: 880, baseType: !462, size: 1088, offset: 7936)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !463, line: 72, baseType: !464)
!463 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 23, size: 1088, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !473, !474, !482, !483, !510, !511, !512}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !464, file: !463, line: 28, baseType: !78, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !464, file: !463, line: 38, baseType: !391, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !464, file: !463, line: 40, baseType: !64, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !464, file: !463, line: 43, baseType: !398, size: 320, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !464, file: !463, line: 44, baseType: !471, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !463, line: 44, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !463, line: 48, baseType: !64, size: 64, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !464, file: !463, line: 59, baseType: !475, size: 256, offset: 640)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !476, line: 66, size: 256, elements: !477)
!476 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!477 = !{!478, !479, !480, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !475, file: !476, line: 67, baseType: !389, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !475, file: !476, line: 68, baseType: !409, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !475, file: !476, line: 70, baseType: !404, size: 32, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !475, file: !476, line: 72, baseType: !123, size: 128, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !464, file: !463, line: 60, baseType: !295, size: 64, offset: 896)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !464, file: !463, line: 61, baseType: !484, size: 64, offset: 960)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !487, line: 13, size: 1216, elements: !488)
!487 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!488 = !{!489, !490, !491, !492, !493, !494, !495, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !486, file: !487, line: 14, baseType: !295, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !486, file: !487, line: 15, baseType: !64, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !486, file: !487, line: 17, baseType: !64, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !486, file: !487, line: 17, baseType: !64, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !486, file: !487, line: 18, baseType: !64, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !486, file: !487, line: 18, baseType: !64, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !486, file: !487, line: 19, baseType: !496, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !486, file: !487, line: 21, baseType: !260, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !486, file: !487, line: 23, baseType: !260, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !486, file: !487, line: 24, baseType: !260, size: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !486, file: !487, line: 25, baseType: !260, size: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !486, file: !487, line: 26, baseType: !260, size: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !486, file: !487, line: 27, baseType: !260, size: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !486, file: !487, line: 28, baseType: !260, size: 64, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !486, file: !487, line: 29, baseType: !260, size: 64, offset: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !486, file: !487, line: 30, baseType: !260, size: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !486, file: !487, line: 31, baseType: !260, size: 64, offset: 1024)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !486, file: !487, line: 32, baseType: !260, size: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !486, file: !487, line: 33, baseType: !260, size: 64, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !464, file: !463, line: 63, baseType: !176, size: 32, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !464, file: !463, line: 69, baseType: !192, size: 16, offset: 1056)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !464, file: !463, line: 70, baseType: !513, size: 16, offset: 1072)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !72, line: 18, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !74, line: 23, baseType: !515)
!515 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !302, line: 882, baseType: !64, size: 64, offset: 9024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !342, file: !302, line: 885, baseType: !156, size: 32, offset: 9088)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !342, file: !302, line: 886, baseType: !519, size: 64, offset: 9152)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !302, line: 732, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !342, file: !302, line: 901, baseType: !522, size: 64, offset: 9216)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !524, line: 18, flags: DIFlagFwdDecl)
!524 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!525 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !342, file: !302, line: 904, baseType: !307, size: 64, offset: 9280)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !342, file: !302, line: 906, baseType: !527, size: 64, offset: 9344)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !302, line: 906, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !342, file: !302, line: 930, baseType: !176, size: 32, offset: 9408)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !342, file: !302, line: 933, baseType: !176, size: 32, offset: 9440)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !342, file: !302, line: 935, baseType: !532, size: 64, offset: 9472)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !533, line: 103, size: 64, elements: !534)
!533 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !532, file: !533, line: 104, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !533, line: 101, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !342, file: !302, line: 940, baseType: !389, size: 64, offset: 9536)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !342, file: !302, line: 942, baseType: !540, size: 256, offset: 9600)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !541, line: 98, size: 256, elements: !542)
!541 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!542 = !{!543, !544, !545}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !540, file: !541, line: 99, baseType: !389, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !540, file: !541, line: 100, baseType: !123, size: 128, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !540, file: !541, line: 101, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !541, line: 21, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !339, file: !302, line: 986, baseType: !552, offset: 10240)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: -1)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !318, file: !302, line: 640, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !309, line: 297, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !309, line: 297, size: 64, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !557, file: !309, line: 297, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !378, line: 19, baseType: !64)
!561 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !302, line: 646, baseType: !562, size: 64, offset: 256)
!562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !302, line: 646, size: 64, elements: !563)
!563 = !{!564, !567}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !562, file: !302, line: 647, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !302, line: 542, baseType: !64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !562, file: !302, line: 648, baseType: !566, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !318, file: !302, line: 666, baseType: !63, size: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !318, file: !302, line: 667, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !302, line: 579, size: 320, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !571, file: !302, line: 580, baseType: !398, size: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !318, file: !302, line: 670, baseType: !575, size: 8, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 35, baseType: !576)
!576 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !318, file: !302, line: 681, baseType: !578, size: 256, offset: 512)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !302, line: 678, size: 256, elements: !579)
!579 = !{!580, !588}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !578, file: !302, line: 679, baseType: !581, size: 192, align: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !582, line: 5, size: 192, align: 64, elements: !583)
!582 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!583 = !{!584, !585, !587}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !581, file: !582, line: 6, baseType: !64, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !581, file: !582, line: 7, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !581, file: !582, line: 8, baseType: !586, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !578, file: !302, line: 680, baseType: !64, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !318, file: !302, line: 689, baseType: !123, size: 128, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !318, file: !302, line: 691, baseType: !591, size: 64, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !302, line: 691, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !318, file: !302, line: 694, baseType: !594, size: 64, offset: 960)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !302, line: 694, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !318, file: !302, line: 697, baseType: !64, size: 64, offset: 1024)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !318, file: !302, line: 699, baseType: !307, size: 64, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !318, file: !302, line: 700, baseType: !295, size: 64, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !318, file: !302, line: 711, baseType: !389, size: 64, offset: 1216)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !318, file: !302, line: 717, baseType: !602, size: 64, offset: 1280)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !604, line: 54, flags: DIFlagFwdDecl)
!604 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !318, file: !302, line: 722, baseType: !606, offset: 1344)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !302, line: 570, elements: !359)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !278, file: !250, line: 90, baseType: !608, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !278, file: !250, line: 91, baseType: !610, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !240, file: !144, line: 120, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!615, !207}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !22, line: 39, size: 384, elements: !618)
!618 = !{!619, !620, !624, !628, !634, !638}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !22, line: 40, baseType: !21, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !617, file: !22, line: 41, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!575}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !617, file: !22, line: 42, baseType: !625, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!295}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !617, file: !22, line: 43, baseType: !629, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!496, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !22, line: 19, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !617, file: !22, line: 44, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!496}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !617, file: !22, line: 45, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !295}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !240, file: !144, line: 121, baseType: !643, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!496, !207}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !240, file: !144, line: 122, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !207, !650, !657}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !524, line: 23, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 21, size: 32, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !652, file: !524, line: 22, baseType: !655, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 37, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !258, line: 49, baseType: !7)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !524, line: 28, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 26, size: 32, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !659, file: !524, line: 27, baseType: !662, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 38, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !258, line: 50, baseType: !7)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !143, file: !144, line: 70, baseType: !665, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !667, line: 190, size: 1152, elements: !668)
!667 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !770, !771, !772, !773, !774, !777}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !666, file: !667, line: 191, baseType: !176, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !666, file: !667, line: 192, baseType: !176, size: 32, offset: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !666, file: !667, line: 202, baseType: !665, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !666, file: !667, line: 203, baseType: !115, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !666, file: !667, line: 205, baseType: !581, size: 192, align: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !666, file: !667, line: 207, baseType: !496, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !666, file: !667, line: 208, baseType: !7, size: 32, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !667, line: 209, baseType: !677, size: 256, offset: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !667, line: 209, size: 256, elements: !678)
!678 = !{!679, !691, !695}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !677, file: !667, line: 210, baseType: !680, size: 256)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !667, line: 153, size: 256, elements: !681)
!681 = !{!682, !683, !687, !690}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !680, file: !667, line: 154, baseType: !64, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !680, file: !667, line: 156, baseType: !684, size: 64, offset: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !582, line: 12, size: 64, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !684, file: !582, line: 13, baseType: !586, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !680, file: !667, line: 162, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !667, line: 162, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !680, file: !667, line: 167, baseType: !64, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !677, file: !667, line: 211, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !667, line: 170, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !692, file: !667, line: 171, baseType: !665, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !677, file: !667, line: 212, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !667, line: 174, size: 256, elements: !697)
!697 = !{!698, !765, !768, !769}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !696, file: !667, line: 175, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !667, line: 271, size: 768, elements: !702)
!702 = !{!703, !725, !729, !733, !738, !742, !746, !750, !751, !752, !753, !761}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !701, file: !667, line: 276, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!63, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !667, line: 251, size: 1216, elements: !709)
!709 = !{!710, !711, !712, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !708, file: !667, line: 253, baseType: !665, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !708, file: !667, line: 254, baseType: !307, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !708, file: !667, line: 255, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !604, line: 66, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !708, file: !667, line: 256, baseType: !295, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !708, file: !667, line: 259, baseType: !475, size: 256, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !708, file: !667, line: 260, baseType: !475, size: 256, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !708, file: !667, line: 261, baseType: !63, size: 32, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !708, file: !667, line: 262, baseType: !123, size: 128, offset: 832)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !708, file: !667, line: 263, baseType: !224, size: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !708, file: !667, line: 265, baseType: !271, size: 64, offset: 1024)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !708, file: !667, line: 266, baseType: !575, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !708, file: !667, line: 267, baseType: !575, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !708, file: !667, line: 268, baseType: !594, size: 64, offset: 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !701, file: !667, line: 277, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !707}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !701, file: !667, line: 290, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!63, !713, !295}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !701, file: !667, line: 292, baseType: !734, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!295, !713, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !701, file: !667, line: 293, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!295, !713, !295, !737}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !701, file: !667, line: 294, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !713, !295}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !701, file: !667, line: 296, baseType: !747, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!256, !707, !224, !271, !310}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !701, file: !667, line: 306, baseType: !271, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !701, file: !667, line: 313, baseType: !575, size: 8, offset: 512)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !701, file: !667, line: 314, baseType: !747, size: 64, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !701, file: !667, line: 317, baseType: !754, size: 64, offset: 640)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!757, !707, !759}
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !758, line: 59, baseType: !7)
!758 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !667, line: 31, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !701, file: !667, line: 320, baseType: !762, size: 64, offset: 704)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!63, !707, !317}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !696, file: !667, line: 176, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !667, line: 35, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !696, file: !667, line: 177, baseType: !310, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !696, file: !667, line: 178, baseType: !665, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !666, file: !667, line: 215, baseType: !295, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !666, file: !667, line: 221, baseType: !78, size: 64, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !667, line: 223, baseType: !194, size: 16, offset: 896)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !666, file: !667, line: 224, baseType: !266, size: 16, offset: 912)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !666, file: !667, line: 225, baseType: !775, size: 64, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !667, line: 36, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !666, file: !667, line: 227, baseType: !329, size: 128, align: 64, offset: 1024)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !143, file: !144, line: 71, baseType: !779, size: 32, offset: 448)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !780, line: 19, size: 32, elements: !781)
!780 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !779, file: !780, line: 20, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !784, line: 113, baseType: !785)
!784 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !784, line: 111, size: 32, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !785, file: !784, line: 112, baseType: !176, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !143, file: !144, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !143, file: !144, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !143, file: !144, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !143, file: !144, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !143, file: !144, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !140, file: !15, line: 47, baseType: !130, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !140, file: !15, line: 48, baseType: !149, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !140, file: !15, line: 49, baseType: !796, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !140, file: !15, line: 50, baseType: !799, size: 64, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !801, line: 26, size: 256, elements: !802)
!801 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !800, file: !801, line: 27, baseType: !7, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !800, file: !801, line: 28, baseType: !805, size: 192, offset: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !806, line: 43, size: 192, elements: !807)
!806 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !805, file: !806, line: 44, baseType: !409, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !805, file: !806, line: 45, baseType: !123, size: 128, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !131, file: !15, line: 418, baseType: !811, size: 64, offset: 1408)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !813)
!813 = !{!814, !815, !820, !824, !828, !832}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !812, file: !15, line: 54, baseType: !262, size: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !812, file: !15, line: 55, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!256, !811, !819, !224}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !812, file: !15, line: 57, baseType: !821, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!256, !811, !819, !115, !271}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !812, file: !15, line: 59, baseType: !825, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !130, !115}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !812, file: !15, line: 60, baseType: !829, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!63, !130}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !812, file: !15, line: 61, baseType: !833, size: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !130}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !131, file: !15, line: 419, baseType: !115, size: 64, offset: 1472)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !131, file: !15, line: 420, baseType: !115, size: 64, offset: 1536)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !131, file: !15, line: 421, baseType: !149, size: 64, offset: 1600)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !131, file: !15, line: 424, baseType: !840, size: 64, offset: 1664)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !131, file: !15, line: 425, baseType: !844, size: 64, offset: 1728)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !131, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !131, file: !15, line: 435, baseType: !475, size: 256, offset: 1856)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !131, file: !15, line: 437, baseType: !849, size: 64, offset: 2112)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !851, line: 69, size: 320, elements: !852)
!851 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!852 = !{!853, !854, !855, !872, !874, !878, !879}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !850, file: !851, line: 70, baseType: !115, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !850, file: !851, line: 71, baseType: !130, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !850, file: !851, line: 72, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !851, line: 47, size: 256, elements: !859)
!859 = !{!860, !861, !867, !871}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !858, file: !851, line: 49, baseType: !7, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !858, file: !851, line: 51, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!63, !115, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !858, file: !851, line: 53, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!63, !224, !865}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !858, file: !851, line: 55, baseType: !639, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !850, file: !851, line: 73, baseType: !873, size: 16, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !850, file: !851, line: 74, baseType: !875, size: 8, offset: 208)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !72, line: 16, baseType: !876)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !74, line: 20, baseType: !877)
!877 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !851, line: 75, baseType: !184, size: 8, offset: 216)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !851, line: 76, baseType: !880, size: 64, offset: 256)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !851, line: 76, size: 64, elements: !881)
!881 = !{!882, !883, !890}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !880, file: !851, line: 77, baseType: !295, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !880, file: !851, line: 78, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !851, line: 86, size: 128, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !886, file: !851, line: 87, baseType: !7, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !886, file: !851, line: 88, baseType: !224, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !880, file: !851, line: 79, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !851, line: 92, size: 256, elements: !894)
!894 = !{!895, !896, !897, !899, !900}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !893, file: !851, line: 94, baseType: !7, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !893, file: !851, line: 95, baseType: !7, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !893, file: !851, line: 96, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !893, file: !851, line: 97, baseType: !856, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !893, file: !851, line: 98, baseType: !295, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !131, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !131, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !131, file: !15, line: 442, baseType: !840, size: 64, offset: 2240)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !131, file: !15, line: 443, baseType: !844, size: 64, offset: 2304)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !131, file: !15, line: 444, baseType: !575, size: 8, offset: 2368)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !131, file: !15, line: 451, baseType: !575, size: 8, offset: 2376)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !131, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !131, file: !15, line: 455, baseType: !909, size: 64, offset: 2432)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !911, line: 23, size: 96, elements: !912)
!911 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !910, file: !911, line: 24, baseType: !63, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !910, file: !911, line: 24, baseType: !63, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !910, file: !911, line: 24, baseType: !63, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !131, file: !15, line: 458, baseType: !917, size: 64, offset: 2496)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!63}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !131, file: !15, line: 460, baseType: !921, size: 4032, align: 512, offset: 2560)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 4032, elements: !938)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !922, file: !15, line: 363, baseType: !295, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !922, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !922, file: !15, line: 367, baseType: !927, size: 448, offset: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !927, file: !15, line: 320, baseType: !130, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !927, file: !15, line: 321, baseType: !931, size: 384, offset: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !932, line: 40, size: 384, elements: !933)
!932 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !931, file: !932, line: 41, baseType: !935, size: 384, align: 64)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 384, align: 64, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 2)
!938 = !{!939}
!939 = !DISubrange(count: 7)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !131, file: !15, line: 463, baseType: !941, size: 192, offset: 6592)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !942, line: 8, size: 192, elements: !943)
!942 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!943 = !{!944, !945, !947}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !941, file: !942, line: 10, baseType: !7, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !941, file: !942, line: 11, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !941, file: !942, line: 12, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !950, line: 59, size: 48, elements: !951)
!950 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!951 = !{!952, !953, !954, !955, !956, !957}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !949, file: !950, line: 60, baseType: !513, size: 16)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !949, file: !950, line: 61, baseType: !513, size: 16, offset: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !949, file: !950, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !949, file: !950, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !949, file: !950, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !949, file: !950, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !131, file: !15, line: 465, baseType: !64, size: 64, offset: 6784)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !131, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !131, file: !15, line: 470, baseType: !123, size: 128, offset: 6912)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !131, file: !15, line: 471, baseType: !962, size: 64, offset: 7040)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !964, line: 33, size: 96, elements: !965)
!964 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!965 = !{!966, !967, !968, !969}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !963, file: !964, line: 37, baseType: !63, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !963, file: !964, line: 43, baseType: !63, size: 32, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !963, file: !964, line: 45, baseType: !194, size: 16, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !964, line: 47, baseType: !194, size: 16, offset: 80)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !131, file: !15, line: 476, baseType: !971, size: 64, offset: 7104)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !973)
!973 = !{!974, !990, !991, !992}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !972, file: !15, line: 379, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !977, line: 204, baseType: !978)
!977 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !977, line: 197, size: 192, elements: !979)
!979 = !{!980, !982, !983, !984, !986, !988}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !978, file: !977, line: 198, baseType: !981, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !977, line: 21, baseType: !84)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !978, file: !977, line: 199, baseType: !186, size: 8, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !978, file: !977, line: 200, baseType: !186, size: 8, offset: 40)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !978, file: !977, line: 201, baseType: !985, size: 16, offset: 48)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !977, line: 17, baseType: !193)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !978, file: !977, line: 202, baseType: !987, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !977, line: 16, baseType: !79)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !978, file: !977, line: 203, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !977, line: 22, baseType: !79)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !972, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !972, file: !15, line: 381, baseType: !224, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !972, file: !15, line: 382, baseType: !224, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !131, file: !15, line: 477, baseType: !972, size: 256, offset: 7168)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !131, file: !15, line: 480, baseType: !995, size: 64, offset: 7424)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !131, file: !15, line: 483, baseType: !998, size: 64, offset: 7488)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !131, file: !15, line: 488, baseType: !224, size: 64, offset: 7552)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !131, file: !15, line: 492, baseType: !295, size: 64, offset: 7616)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !131, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !131, file: !15, line: 495, baseType: !295, size: 64, offset: 7744)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !131, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !131, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !131, file: !15, line: 500, baseType: !1007, size: 64, offset: 7872)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1009, line: 45, baseType: !1010)
!1009 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !131, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !131, file: !15, line: 504, baseType: !1013, size: 64, offset: 8000)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1016, line: 96, size: 192, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1017 = !{!1018, !1019, !1079, !1082}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1015, file: !1016, line: 97, baseType: !7, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1015, file: !1016, line: 98, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1016, line: 24, size: 3072, elements: !1022)
!1022 = !{!1023, !1025, !1026, !1027, !1028, !1042, !1043, !1044, !1045, !1063, !1064, !1065, !1076, !1077, !1078}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1021, file: !1016, line: 26, baseType: !1024, size: 128)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 128, elements: !936)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1021, file: !1016, line: 27, baseType: !1024, size: 128, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1021, file: !1016, line: 28, baseType: !63, size: 32, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1021, file: !1016, line: 31, baseType: !156, size: 32, align: 512, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1021, file: !1016, line: 32, baseType: !1029, size: 960, offset: 576)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1030, line: 206, size: 960, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1031 = !{!1032, !1033, !1036, !1038, !1039, !1041}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1029, file: !1030, line: 207, baseType: !332, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1029, file: !1030, line: 208, baseType: !1034, size: 256, offset: 64)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 256, elements: !456)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1029, file: !1030, line: 209, baseType: !1037, size: 256, offset: 320)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !456)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1029, file: !1030, line: 213, baseType: !260, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1029, file: !1030, line: 215, baseType: !1040, size: 256, offset: 640)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !456)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !1030, line: 216, baseType: !184, size: 8, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1021, file: !1016, line: 33, baseType: !64, size: 64, offset: 1536)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1021, file: !1016, line: 34, baseType: !64, size: 64, offset: 1600)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1021, file: !1016, line: 35, baseType: !575, size: 8, offset: 1664)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1021, file: !1016, line: 36, baseType: !1046, size: 320, offset: 1728)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1047, line: 11, size: 320, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1048 = !{!1049, !1056, !1057, !1062}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1046, file: !1047, line: 16, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 198, size: 128, elements: !1051)
!1051 = !{!1052, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1050, file: !124, line: 199, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1050, file: !124, line: 199, baseType: !1055, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1046, file: !1047, line: 17, baseType: !64, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1046, file: !1047, line: 18, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !1047, line: 19, baseType: !83, size: 32, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1021, file: !1016, line: 37, baseType: !540, size: 256, offset: 2048)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1021, file: !1016, line: 38, baseType: !329, size: 128, align: 64, offset: 2304)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1021, file: !1016, line: 39, baseType: !1066, size: 64, offset: 2432)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1016, line: 49, size: 768, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1067, file: !1016, line: 50, baseType: !156, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1067, file: !1016, line: 51, baseType: !1037, size: 256, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1067, file: !1016, line: 53, baseType: !1037, size: 256, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1067, file: !1016, line: 54, baseType: !64, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1067, file: !1016, line: 55, baseType: !1066, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1067, file: !1016, line: 56, baseType: !63, size: 32, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1067, file: !1016, line: 57, baseType: !63, size: 32, offset: 736)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1021, file: !1016, line: 40, baseType: !64, size: 64, offset: 2496)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1021, file: !1016, line: 42, baseType: !63, size: 32, offset: 2560)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1021, file: !1016, line: 43, baseType: !1014, size: 64, offset: 2624)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1015, file: !1016, line: 99, baseType: !1080, offset: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1081, line: 211, elements: !359)
!1081 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1015, file: !1016, line: 100, baseType: !1083, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1016, line: 63, size: 3008, elements: !1085)
!1085 = !{!1086, !1087, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1117}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1084, file: !1016, line: 64, baseType: !1066, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1084, file: !1016, line: 65, baseType: !1088, size: 192, offset: 64)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 192, elements: !225)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1084, file: !1016, line: 67, baseType: !63, size: 32, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1084, file: !1016, line: 68, baseType: !475, size: 256, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1084, file: !1016, line: 69, baseType: !156, size: 32, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1084, file: !1016, line: 70, baseType: !475, size: 256, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1084, file: !1016, line: 71, baseType: !64, size: 64, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1084, file: !1016, line: 72, baseType: !64, size: 64, offset: 960)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1084, file: !1016, line: 73, baseType: !64, size: 64, offset: 1024)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1084, file: !1016, line: 74, baseType: !64, size: 64, offset: 1088)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1084, file: !1016, line: 75, baseType: !64, size: 64, offset: 1152)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1084, file: !1016, line: 76, baseType: !64, size: 64, offset: 1216)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1084, file: !1016, line: 77, baseType: !64, size: 64, offset: 1280)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1084, file: !1016, line: 78, baseType: !64, size: 64, offset: 1344)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1084, file: !1016, line: 79, baseType: !575, size: 8, offset: 1408)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1084, file: !1016, line: 80, baseType: !64, size: 64, offset: 1472)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1084, file: !1016, line: 81, baseType: !475, size: 256, offset: 1536)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1084, file: !1016, line: 82, baseType: !800, size: 256, offset: 1792)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1084, file: !1016, line: 84, baseType: !176, size: 32, offset: 2048)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1084, file: !1016, line: 87, baseType: !64, size: 64, offset: 2112)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1084, file: !1016, line: 88, baseType: !64, size: 64, offset: 2176)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1084, file: !1016, line: 89, baseType: !1109, size: 704, offset: 2240)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !541, line: 111, size: 704, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1116}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1109, file: !541, line: 112, baseType: !540, size: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1109, file: !541, line: 113, baseType: !1046, size: 320, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1109, file: !541, line: 116, baseType: !1114, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !541, line: 18, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1109, file: !541, line: 117, baseType: !63, size: 32, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1084, file: !1016, line: 90, baseType: !1014, size: 64, offset: 2944)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !131, file: !15, line: 515, baseType: !1119, size: 64, offset: 8064)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1121, line: 117, size: 128, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1122 = !{!1123, !1124, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1120, file: !1121, line: 118, baseType: !454, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1120, file: !1121, line: 119, baseType: !454, size: 32, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1120, file: !1121, line: 120, baseType: !260, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !131, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !131, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !131, file: !15, line: 520, baseType: !1129, size: 64, offset: 8192)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !131, file: !15, line: 523, baseType: !1131, size: 64, offset: 8256)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !131, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !131, file: !15, line: 525, baseType: !1136, size: 64, offset: 8384)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !131, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !131, file: !15, line: 533, baseType: !295, size: 64, offset: 8512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !131, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !131, file: !15, line: 535, baseType: !1143, size: 64, offset: 8640)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !131, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !131, file: !15, line: 539, baseType: !63, size: 32, offset: 8736)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !131, file: !15, line: 540, baseType: !1147, size: 64, offset: 8768)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1149, line: 32, size: 64, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1148, file: !1149, line: 33, baseType: !454, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1148, file: !1149, line: 34, baseType: !454, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !131, file: !15, line: 563, baseType: !123, size: 128, offset: 8832)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !131, file: !15, line: 565, baseType: !123, size: 128, offset: 8960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !131, file: !15, line: 568, baseType: !1156, size: 64, offset: 9088)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !131, file: !15, line: 570, baseType: !176, size: 32, offset: 9152)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !49, file: !28, line: 14, baseType: !27, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 154, baseType: !7)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!1168 = !{!1169, !1174, !0, !1176, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1196, !1209, !1212, !1223, !1228}
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !1171, isLocal: true, isDefinition: true)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 40, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 5)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tick_broadcast_control206", scope: !2, file: !3, line: 510, type: !295, isLocal: true, isDefinition: true)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(name: "tick_broadcast_mask", scope: !2, file: !3, line: 28, type: !1178, isLocal: true, isDefinition: true)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !104, line: 913, baseType: !1179)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !108)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(name: "tick_broadcast_on", scope: !2, file: !3, line: 29, type: !1178, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(name: "tmpmask", scope: !2, file: !3, line: 30, type: !1178, isLocal: true, isDefinition: true)
!1184 = !DIGlobalVariableExpression(var: !1185, expr: !DIExpression())
!1185 = distinct !DIGlobalVariable(name: "tick_broadcast_forced", scope: !2, file: !3, line: 31, type: !63, isLocal: true, isDefinition: true)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(name: "tick_broadcast_oneshot_mask", scope: !2, file: !3, line: 607, type: !1178, isLocal: true, isDefinition: true)
!1188 = !DIGlobalVariableExpression(var: !1189, expr: !DIExpression())
!1189 = distinct !DIGlobalVariable(name: "tick_broadcast_pending_mask", scope: !2, file: !3, line: 608, type: !1178, isLocal: true, isDefinition: true)
!1190 = !DIGlobalVariableExpression(var: !1191, expr: !DIExpression())
!1191 = distinct !DIGlobalVariable(name: "tick_broadcast_force_mask", scope: !2, file: !3, line: 609, type: !1178, isLocal: true, isDefinition: true)
!1192 = !DIGlobalVariableExpression(var: !1193, expr: !DIExpression())
!1193 = distinct !DIGlobalVariable(name: "tick_oneshot_wakeup_device", scope: !2, file: !3, line: 36, type: !52, isLocal: true, isDefinition: true)
!1194 = !DIGlobalVariableExpression(var: !1195, expr: !DIExpression())
!1195 = distinct !DIGlobalVariable(name: "tick_broadcast_lock", scope: !2, file: !3, line: 33, type: !409, isLocal: true, isDefinition: true, align: 512)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(name: "__already_done", scope: !1198, file: !3, line: 237, type: !575, isLocal: true, isDefinition: true)
!1198 = distinct !DISubprogram(name: "tick_device_setup_broadcast_func", scope: !3, file: !3, line: 232, type: !57, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1199)
!1199 = !{!1200, !1201, !1205, !1208}
!1200 = !DILocalVariable(name: "dev", arg: 1, scope: !1198, file: !3, line: 232, type: !52)
!1201 = !DILocalVariable(name: "__ret_do_once", scope: !1202, file: !3, line: 237, type: !575)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 237, column: 3)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 236, column: 23)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 236, column: 6)
!1205 = !DILocalVariable(name: "__ret_cond", scope: !1206, file: !3, line: 237, type: !575)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 237, column: 3)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 237, column: 3)
!1208 = !DILocalVariable(name: "__ret_once", scope: !1206, file: !3, line: 237, type: !575)
!1209 = !DIGlobalVariableExpression(var: !1210, expr: !DIExpression())
!1210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !1211, isLocal: true, isDefinition: true)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 512, elements: !229)
!1212 = !DIGlobalVariableExpression(var: !1213, expr: !DIExpression())
!1213 = distinct !DIGlobalVariable(name: "__already_done", scope: !1214, file: !3, line: 229, type: !575, isLocal: true, isDefinition: true)
!1214 = distinct !DISubprogram(name: "err_broadcast", scope: !3, file: !3, line: 227, type: !99, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1215)
!1215 = !{!1216, !1217, !1219, !1222}
!1216 = !DILocalVariable(name: "mask", arg: 1, scope: !1214, file: !3, line: 227, type: !101)
!1217 = !DILocalVariable(name: "__ret_do_once", scope: !1218, file: !3, line: 229, type: !575)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 229, column: 2)
!1219 = !DILocalVariable(name: "__ret_cond", scope: !1220, file: !3, line: 229, type: !575)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 229, column: 2)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 229, column: 2)
!1222 = !DILocalVariable(name: "__ret_once", scope: !1220, file: !3, line: 229, type: !575)
!1223 = !DIGlobalVariableExpression(var: !1224, expr: !DIExpression())
!1224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !1225, isLocal: true, isDefinition: true)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 528, elements: !1226)
!1226 = !{!1227}
!1227 = !DISubrange(count: 66)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 831, type: !1230, isLocal: true, isDefinition: true)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 232, elements: !1231)
!1231 = !{!1232}
!1232 = !DISubrange(count: 29)
!1233 = !{i32 7, !"Dwarf Version", i32 5}
!1234 = !{i32 2, !"Debug Info Version", i32 3}
!1235 = !{i32 1, !"wchar_size", i32 2}
!1236 = !{i32 8, !"cf-protection-branch", i32 1}
!1237 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1238 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1239 = !{i32 1, !"Code Model", i32 2}
!1240 = !{i32 1, !"override-stack-alignment", i32 8}
!1241 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1242 = distinct !DISubprogram(name: "tick_get_broadcast_device", scope: !3, file: !3, line: 57, type: !1243, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!48}
!1245 = !DILocation(line: 59, column: 2, scope: !1242)
!1246 = distinct !DISubprogram(name: "tick_get_broadcast_mask", scope: !3, file: !3, line: 62, type: !1247, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1163}
!1249 = !DILocation(line: 64, column: 2, scope: !1246)
!1250 = distinct !DISubprogram(name: "tick_get_wakeup_device", scope: !3, file: !3, line: 69, type: !1251, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1255)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1253, !63}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1255 = !{!1256}
!1256 = !DILocalVariable(name: "cpu", arg: 1, scope: !1250, file: !3, line: 69, type: !63)
!1257 = !DILocation(line: 69, column: 61, scope: !1250)
!1258 = !DILocation(line: 71, column: 40, scope: !1250)
!1259 = !DILocation(line: 71, column: 9, scope: !1250)
!1260 = !DILocation(line: 71, column: 2, scope: !1250)
!1261 = distinct !DISubprogram(name: "tick_get_oneshot_wakeup_device", scope: !3, file: !3, line: 102, type: !1262, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!52, !63}
!1264 = !{!1265, !1266, !1269}
!1265 = !DILocalVariable(name: "cpu", arg: 1, scope: !1261, file: !3, line: 102, type: !63)
!1266 = !DILocalVariable(name: "__vpp_verify", scope: !1267, file: !3, line: 104, type: !496)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 104, column: 9)
!1268 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 104, column: 9)
!1269 = !DILocalVariable(name: "__ptr", scope: !1270, file: !3, line: 104, type: !64)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 104, column: 9)
!1271 = !DILocation(line: 102, column: 70, scope: !1261)
!1272 = !DILocation(line: 104, column: 9, scope: !1268)
!1273 = !DILocation(line: 104, column: 9, scope: !1267)
!1274 = !DILocation(line: 104, column: 9, scope: !1270)
!1275 = !DILocation(line: 104, column: 9, scope: !1261)
!1276 = !DILocation(line: 104, column: 2, scope: !1261)
!1277 = distinct !DISubprogram(name: "tick_install_broadcast_device", scope: !3, file: !3, line: 163, type: !1278, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !52, !63}
!1280 = !{!1281, !1282, !1283}
!1281 = !DILocalVariable(name: "dev", arg: 1, scope: !1277, file: !3, line: 163, type: !52)
!1282 = !DILocalVariable(name: "cpu", arg: 2, scope: !1277, file: !3, line: 163, type: !63)
!1283 = !DILocalVariable(name: "cur", scope: !1277, file: !3, line: 165, type: !52)
!1284 = !DILocation(line: 163, column: 63, scope: !1277)
!1285 = !DILocation(line: 163, column: 72, scope: !1277)
!1286 = !DILocation(line: 165, column: 2, scope: !1277)
!1287 = !DILocation(line: 165, column: 29, scope: !1277)
!1288 = !DILocation(line: 165, column: 57, scope: !1277)
!1289 = !DILocation(line: 167, column: 37, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 167, column: 6)
!1291 = !DILocation(line: 167, column: 42, scope: !1290)
!1292 = !DILocation(line: 167, column: 6, scope: !1290)
!1293 = !DILocation(line: 167, column: 6, scope: !1277)
!1294 = !DILocation(line: 168, column: 3, scope: !1290)
!1295 = !DILocation(line: 170, column: 35, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 170, column: 6)
!1297 = !DILocation(line: 170, column: 40, scope: !1296)
!1298 = !DILocation(line: 170, column: 7, scope: !1296)
!1299 = !DILocation(line: 170, column: 6, scope: !1277)
!1300 = !DILocation(line: 171, column: 3, scope: !1296)
!1301 = !DILocation(line: 173, column: 22, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 173, column: 6)
!1303 = !DILocation(line: 173, column: 27, scope: !1302)
!1304 = !DILocation(line: 173, column: 7, scope: !1302)
!1305 = !DILocation(line: 173, column: 6, scope: !1277)
!1306 = !DILocation(line: 174, column: 3, scope: !1302)
!1307 = !DILocation(line: 176, column: 30, scope: !1277)
!1308 = !DILocation(line: 176, column: 35, scope: !1277)
!1309 = !DILocation(line: 176, column: 2, scope: !1277)
!1310 = !DILocation(line: 177, column: 6, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 177, column: 6)
!1312 = !DILocation(line: 177, column: 6, scope: !1277)
!1313 = !DILocation(line: 178, column: 3, scope: !1311)
!1314 = !DILocation(line: 178, column: 8, scope: !1311)
!1315 = !DILocation(line: 178, column: 22, scope: !1311)
!1316 = !DILocation(line: 179, column: 33, scope: !1277)
!1317 = !DILocation(line: 179, column: 31, scope: !1277)
!1318 = !DILocation(line: 180, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 180, column: 6)
!1320 = !DILocation(line: 180, column: 6, scope: !1277)
!1321 = !DILocation(line: 181, column: 33, scope: !1319)
!1322 = !DILocation(line: 181, column: 3, scope: !1319)
!1323 = !DILocation(line: 183, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 183, column: 6)
!1325 = !DILocation(line: 183, column: 13, scope: !1324)
!1326 = !DILocation(line: 183, column: 22, scope: !1324)
!1327 = !DILocation(line: 183, column: 6, scope: !1277)
!1328 = !DILocation(line: 184, column: 3, scope: !1324)
!1329 = !DILocation(line: 190, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 190, column: 6)
!1331 = !DILocation(line: 190, column: 6, scope: !1277)
!1332 = !DILocation(line: 191, column: 3, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 190, column: 39)
!1334 = !DILocation(line: 192, column: 3, scope: !1333)
!1335 = !DILocation(line: 203, column: 2, scope: !1277)
!1336 = !DILocation(line: 204, column: 1, scope: !1277)
!1337 = distinct !DISubprogram(name: "tick_set_oneshot_wakeup_device", scope: !3, file: !3, line: 116, type: !1338, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!575, !52, !63}
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1348}
!1341 = !DILocalVariable(name: "newdev", arg: 1, scope: !1337, file: !3, line: 116, type: !52)
!1342 = !DILocalVariable(name: "cpu", arg: 2, scope: !1337, file: !3, line: 117, type: !63)
!1343 = !DILocalVariable(name: "curdev", scope: !1337, file: !3, line: 119, type: !52)
!1344 = !DILabel(scope: !1337, name: "set_device", file: !3, line: 142)
!1345 = !DILocalVariable(name: "__vpp_verify", scope: !1346, file: !3, line: 144, type: !496)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 144, column: 2)
!1347 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 144, column: 2)
!1348 = !DILocalVariable(name: "__ptr", scope: !1349, file: !3, line: 144, type: !64)
!1349 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 144, column: 2)
!1350 = !DILocation(line: 116, column: 71, scope: !1337)
!1351 = !DILocation(line: 117, column: 13, scope: !1337)
!1352 = !DILocation(line: 119, column: 2, scope: !1337)
!1353 = !DILocation(line: 119, column: 29, scope: !1337)
!1354 = !DILocation(line: 119, column: 69, scope: !1337)
!1355 = !DILocation(line: 119, column: 38, scope: !1337)
!1356 = !DILocation(line: 121, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 121, column: 6)
!1358 = !DILocation(line: 121, column: 6, scope: !1337)
!1359 = !DILocation(line: 122, column: 3, scope: !1357)
!1360 = !DILocation(line: 124, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 124, column: 6)
!1362 = !DILocation(line: 124, column: 15, scope: !1361)
!1363 = !DILocation(line: 124, column: 24, scope: !1361)
!1364 = !DILocation(line: 124, column: 48, scope: !1361)
!1365 = !DILocation(line: 125, column: 7, scope: !1361)
!1366 = !DILocation(line: 125, column: 15, scope: !1361)
!1367 = !DILocation(line: 125, column: 24, scope: !1361)
!1368 = !DILocation(line: 124, column: 6, scope: !1337)
!1369 = !DILocation(line: 126, column: 4, scope: !1361)
!1370 = !DILocation(line: 128, column: 8, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 128, column: 6)
!1372 = !DILocation(line: 128, column: 16, scope: !1371)
!1373 = !DILocation(line: 128, column: 25, scope: !1371)
!1374 = !DILocation(line: 128, column: 50, scope: !1371)
!1375 = !DILocation(line: 129, column: 8, scope: !1371)
!1376 = !DILocation(line: 129, column: 16, scope: !1371)
!1377 = !DILocation(line: 129, column: 25, scope: !1371)
!1378 = !DILocation(line: 128, column: 6, scope: !1337)
!1379 = !DILocation(line: 130, column: 3, scope: !1371)
!1380 = !DILocation(line: 132, column: 21, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 132, column: 6)
!1382 = !DILocation(line: 132, column: 29, scope: !1381)
!1383 = !DILocation(line: 132, column: 38, scope: !1381)
!1384 = !DILocation(line: 132, column: 7, scope: !1381)
!1385 = !DILocation(line: 132, column: 6, scope: !1337)
!1386 = !DILocation(line: 133, column: 3, scope: !1381)
!1387 = !DILocation(line: 135, column: 6, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 135, column: 6)
!1389 = !DILocation(line: 135, column: 13, scope: !1388)
!1390 = !DILocation(line: 135, column: 16, scope: !1388)
!1391 = !DILocation(line: 135, column: 24, scope: !1388)
!1392 = !DILocation(line: 135, column: 34, scope: !1388)
!1393 = !DILocation(line: 135, column: 42, scope: !1388)
!1394 = !DILocation(line: 135, column: 31, scope: !1388)
!1395 = !DILocation(line: 135, column: 6, scope: !1337)
!1396 = !DILocation(line: 136, column: 3, scope: !1388)
!1397 = !DILocation(line: 138, column: 22, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 138, column: 6)
!1399 = !DILocation(line: 138, column: 30, scope: !1398)
!1400 = !DILocation(line: 138, column: 7, scope: !1398)
!1401 = !DILocation(line: 138, column: 6, scope: !1337)
!1402 = !DILocation(line: 139, column: 3, scope: !1398)
!1403 = !DILocation(line: 141, column: 2, scope: !1337)
!1404 = !DILocation(line: 141, column: 10, scope: !1337)
!1405 = !DILocation(line: 141, column: 24, scope: !1337)
!1406 = !DILocation(line: 142, column: 1, scope: !1337)
!1407 = !DILocation(line: 143, column: 30, scope: !1337)
!1408 = !DILocation(line: 143, column: 38, scope: !1337)
!1409 = !DILocation(line: 143, column: 2, scope: !1337)
!1410 = !DILocation(line: 144, column: 45, scope: !1337)
!1411 = !DILocation(line: 144, column: 2, scope: !1347)
!1412 = !DILocation(line: 144, column: 2, scope: !1346)
!1413 = !DILocation(line: 144, column: 2, scope: !1349)
!1414 = !DILocation(line: 144, column: 43, scope: !1337)
!1415 = !DILocation(line: 145, column: 2, scope: !1337)
!1416 = !DILocation(line: 146, column: 1, scope: !1337)
!1417 = distinct !DISubprogram(name: "tick_check_broadcast_device", scope: !3, file: !3, line: 86, type: !1418, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!575, !52, !52}
!1420 = !{!1421, !1422}
!1421 = !DILocalVariable(name: "curdev", arg: 1, scope: !1417, file: !3, line: 86, type: !52)
!1422 = !DILocalVariable(name: "newdev", arg: 2, scope: !1417, file: !3, line: 87, type: !52)
!1423 = !DILocation(line: 86, column: 68, scope: !1417)
!1424 = !DILocation(line: 87, column: 33, scope: !1417)
!1425 = !DILocation(line: 89, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 89, column: 6)
!1427 = !DILocation(line: 89, column: 15, scope: !1426)
!1428 = !DILocation(line: 89, column: 24, scope: !1426)
!1429 = !DILocation(line: 89, column: 48, scope: !1426)
!1430 = !DILocation(line: 90, column: 7, scope: !1426)
!1431 = !DILocation(line: 90, column: 15, scope: !1426)
!1432 = !DILocation(line: 90, column: 24, scope: !1426)
!1433 = !DILocation(line: 90, column: 49, scope: !1426)
!1434 = !DILocation(line: 91, column: 7, scope: !1426)
!1435 = !DILocation(line: 91, column: 15, scope: !1426)
!1436 = !DILocation(line: 91, column: 24, scope: !1426)
!1437 = !DILocation(line: 89, column: 6, scope: !1417)
!1438 = !DILocation(line: 92, column: 3, scope: !1426)
!1439 = !DILocation(line: 94, column: 28, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 94, column: 6)
!1441 = !DILocation(line: 94, column: 33, scope: !1440)
!1442 = !DILocation(line: 94, column: 57, scope: !1440)
!1443 = !DILocation(line: 95, column: 8, scope: !1440)
!1444 = !DILocation(line: 95, column: 16, scope: !1440)
!1445 = !DILocation(line: 95, column: 25, scope: !1440)
!1446 = !DILocation(line: 94, column: 6, scope: !1417)
!1447 = !DILocation(line: 96, column: 3, scope: !1440)
!1448 = !DILocation(line: 98, column: 10, scope: !1417)
!1449 = !DILocation(line: 98, column: 17, scope: !1417)
!1450 = !DILocation(line: 98, column: 20, scope: !1417)
!1451 = !DILocation(line: 98, column: 28, scope: !1417)
!1452 = !DILocation(line: 98, column: 37, scope: !1417)
!1453 = !DILocation(line: 98, column: 45, scope: !1417)
!1454 = !DILocation(line: 98, column: 35, scope: !1417)
!1455 = !DILocation(line: 98, column: 2, scope: !1417)
!1456 = !DILocation(line: 99, column: 1, scope: !1417)
!1457 = !DISubprogram(name: "try_module_get", scope: !15, file: !15, line: 696, type: !1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!575, !130}
!1460 = !DISubprogram(name: "clockevents_exchange_device", scope: !1461, file: !1461, line: 51, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1461 = !DIFile(filename: "kernel/time/tick-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43882d5594f243c1bfbd5b540566356d")
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !52, !52}
!1464 = distinct !DISubprogram(name: "cpumask_empty", scope: !104, file: !104, line: 672, type: !1465, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!575, !101}
!1467 = !{!1468}
!1468 = !DILocalVariable(name: "srcp", arg: 1, scope: !1464, file: !104, line: 672, type: !101)
!1469 = !DILocation(line: 672, column: 56, scope: !1464)
!1470 = !DILocation(line: 674, column: 22, scope: !1464)
!1471 = !DILocation(line: 674, column: 9, scope: !1464)
!1472 = !DILocation(line: 674, column: 2, scope: !1464)
!1473 = distinct !DISubprogram(name: "tick_broadcast_start_periodic", scope: !3, file: !3, line: 77, type: !57, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1474)
!1474 = !{!1475}
!1475 = !DILocalVariable(name: "bc", arg: 1, scope: !1473, file: !3, line: 77, type: !52)
!1476 = !DILocation(line: 77, column: 70, scope: !1473)
!1477 = !DILocation(line: 79, column: 6, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 79, column: 6)
!1479 = !DILocation(line: 79, column: 6, scope: !1473)
!1480 = !DILocation(line: 80, column: 23, scope: !1478)
!1481 = !DILocation(line: 80, column: 3, scope: !1478)
!1482 = !DILocation(line: 81, column: 1, scope: !1473)
!1483 = distinct !DISubprogram(name: "tick_broadcast_oneshot_active", scope: !3, file: !3, line: 1202, type: !918, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1484 = !DILocation(line: 1204, column: 31, scope: !1483)
!1485 = !DILocation(line: 1204, column: 36, scope: !1483)
!1486 = !DILocation(line: 1204, column: 2, scope: !1483)
!1487 = distinct !DISubprogram(name: "tick_broadcast_switch_to_oneshot", scope: !3, file: !3, line: 1124, type: !1157, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1488)
!1488 = !{!1489, !1490, !1491, !1492, !1495, !1496, !1499}
!1489 = !DILocalVariable(name: "bc", scope: !1487, file: !3, line: 1126, type: !52)
!1490 = !DILocalVariable(name: "oldmode", scope: !1487, file: !3, line: 1127, type: !27)
!1491 = !DILocalVariable(name: "flags", scope: !1487, file: !3, line: 1128, type: !64)
!1492 = !DILocalVariable(name: "__dummy", scope: !1493, file: !3, line: 1130, type: !64)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 1130, column: 2)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 1130, column: 2)
!1495 = !DILocalVariable(name: "__dummy2", scope: !1493, file: !3, line: 1130, type: !64)
!1496 = !DILocalVariable(name: "__dummy", scope: !1497, file: !3, line: 1138, type: !64)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 1138, column: 2)
!1498 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 1138, column: 2)
!1499 = !DILocalVariable(name: "__dummy2", scope: !1497, file: !3, line: 1138, type: !64)
!1500 = !DILocation(line: 1126, column: 2, scope: !1487)
!1501 = !DILocation(line: 1126, column: 29, scope: !1487)
!1502 = !DILocation(line: 1127, column: 2, scope: !1487)
!1503 = !DILocation(line: 1127, column: 24, scope: !1487)
!1504 = !DILocation(line: 1128, column: 2, scope: !1487)
!1505 = !DILocation(line: 1128, column: 16, scope: !1487)
!1506 = !DILocation(line: 1130, column: 2, scope: !1487)
!1507 = !DILocation(line: 1130, column: 2, scope: !1493)
!1508 = !DILocation(line: 1130, column: 2, scope: !1494)
!1509 = !DILocation(line: 1132, column: 34, scope: !1487)
!1510 = !DILocation(line: 1132, column: 10, scope: !1487)
!1511 = !DILocation(line: 1133, column: 29, scope: !1487)
!1512 = !DILocation(line: 1134, column: 29, scope: !1487)
!1513 = !DILocation(line: 1134, column: 5, scope: !1487)
!1514 = !DILocation(line: 1135, column: 6, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 1135, column: 6)
!1516 = !DILocation(line: 1135, column: 6, scope: !1487)
!1517 = !DILocation(line: 1136, column: 32, scope: !1515)
!1518 = !DILocation(line: 1136, column: 36, scope: !1515)
!1519 = !DILocation(line: 1136, column: 44, scope: !1515)
!1520 = !DILocation(line: 1136, column: 3, scope: !1515)
!1521 = !DILocation(line: 1138, column: 2, scope: !1487)
!1522 = !DILocation(line: 1138, column: 2, scope: !1497)
!1523 = !DILocation(line: 1138, column: 2, scope: !1498)
!1524 = !DILocation(line: 1139, column: 1, scope: !1487)
!1525 = !DISubprogram(name: "tick_clock_notify", scope: !1461, file: !1461, line: 109, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1526 = distinct !DISubprogram(name: "tick_is_broadcast_device", scope: !3, file: !3, line: 209, type: !91, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1527)
!1527 = !{!1528}
!1528 = !DILocalVariable(name: "dev", arg: 1, scope: !1526, file: !3, line: 209, type: !52)
!1529 = !DILocation(line: 209, column: 57, scope: !1526)
!1530 = !DILocation(line: 211, column: 10, scope: !1526)
!1531 = !DILocation(line: 211, column: 14, scope: !1526)
!1532 = !DILocation(line: 211, column: 39, scope: !1526)
!1533 = !DILocation(line: 211, column: 49, scope: !1526)
!1534 = !DILocation(line: 211, column: 46, scope: !1526)
!1535 = !DILocation(line: 0, scope: !1526)
!1536 = !DILocation(line: 211, column: 2, scope: !1526)
!1537 = distinct !DISubprogram(name: "tick_broadcast_update_freq", scope: !3, file: !3, line: 214, type: !1538, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1540)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!63, !52, !83}
!1540 = !{!1541, !1542, !1543}
!1541 = !DILocalVariable(name: "dev", arg: 1, scope: !1537, file: !3, line: 214, type: !52)
!1542 = !DILocalVariable(name: "freq", arg: 2, scope: !1537, file: !3, line: 214, type: !83)
!1543 = !DILocalVariable(name: "ret", scope: !1537, file: !3, line: 216, type: !63)
!1544 = !DILocation(line: 214, column: 59, scope: !1537)
!1545 = !DILocation(line: 214, column: 68, scope: !1537)
!1546 = !DILocation(line: 216, column: 2, scope: !1537)
!1547 = !DILocation(line: 216, column: 6, scope: !1537)
!1548 = !DILocation(line: 218, column: 31, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 218, column: 6)
!1550 = !DILocation(line: 218, column: 6, scope: !1549)
!1551 = !DILocation(line: 218, column: 6, scope: !1537)
!1552 = !DILocation(line: 219, column: 3, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 218, column: 37)
!1554 = !DILocation(line: 220, column: 35, scope: !1553)
!1555 = !DILocation(line: 220, column: 40, scope: !1553)
!1556 = !DILocation(line: 220, column: 9, scope: !1553)
!1557 = !DILocation(line: 220, column: 7, scope: !1553)
!1558 = !DILocation(line: 221, column: 3, scope: !1553)
!1559 = !DILocation(line: 222, column: 2, scope: !1553)
!1560 = !DILocation(line: 223, column: 9, scope: !1537)
!1561 = !DILocation(line: 224, column: 1, scope: !1537)
!1562 = !DILocation(line: 223, column: 2, scope: !1537)
!1563 = !DISubprogram(name: "_raw_spin_lock", scope: !1564, file: !1564, line: 22, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1564 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!1568 = !DISubprogram(name: "__clockevents_update_freq", scope: !1461, file: !1461, line: 58, type: !1538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DISubprogram(name: "_raw_spin_unlock", scope: !1564, file: !1564, line: 39, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = distinct !DISubprogram(name: "tick_device_uses_broadcast", scope: !3, file: !3, line: 247, type: !1571, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!63, !52, !63}
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579, !1582, !1583, !1586}
!1574 = !DILocalVariable(name: "dev", arg: 1, scope: !1570, file: !3, line: 247, type: !52)
!1575 = !DILocalVariable(name: "cpu", arg: 2, scope: !1570, file: !3, line: 247, type: !63)
!1576 = !DILocalVariable(name: "bc", scope: !1570, file: !3, line: 249, type: !52)
!1577 = !DILocalVariable(name: "flags", scope: !1570, file: !3, line: 250, type: !64)
!1578 = !DILocalVariable(name: "ret", scope: !1570, file: !3, line: 251, type: !63)
!1579 = !DILocalVariable(name: "__dummy", scope: !1580, file: !3, line: 253, type: !64)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 253, column: 2)
!1581 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 253, column: 2)
!1582 = !DILocalVariable(name: "__dummy2", scope: !1580, file: !3, line: 253, type: !64)
!1583 = !DILocalVariable(name: "__dummy", scope: !1584, file: !3, line: 324, type: !64)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 324, column: 2)
!1585 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 324, column: 2)
!1586 = !DILocalVariable(name: "__dummy2", scope: !1584, file: !3, line: 324, type: !64)
!1587 = !DILocation(line: 247, column: 59, scope: !1570)
!1588 = !DILocation(line: 247, column: 68, scope: !1570)
!1589 = !DILocation(line: 249, column: 2, scope: !1570)
!1590 = !DILocation(line: 249, column: 29, scope: !1570)
!1591 = !DILocation(line: 249, column: 56, scope: !1570)
!1592 = !DILocation(line: 250, column: 2, scope: !1570)
!1593 = !DILocation(line: 250, column: 16, scope: !1570)
!1594 = !DILocation(line: 251, column: 2, scope: !1570)
!1595 = !DILocation(line: 251, column: 6, scope: !1570)
!1596 = !DILocation(line: 253, column: 2, scope: !1570)
!1597 = !DILocation(line: 253, column: 2, scope: !1580)
!1598 = !DILocation(line: 253, column: 2, scope: !1581)
!1599 = !DILocation(line: 261, column: 33, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 261, column: 6)
!1601 = !DILocation(line: 261, column: 7, scope: !1600)
!1602 = !DILocation(line: 261, column: 6, scope: !1570)
!1603 = !DILocation(line: 262, column: 3, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 261, column: 39)
!1605 = !DILocation(line: 262, column: 8, scope: !1604)
!1606 = !DILocation(line: 262, column: 22, scope: !1604)
!1607 = !DILocation(line: 263, column: 36, scope: !1604)
!1608 = !DILocation(line: 263, column: 3, scope: !1604)
!1609 = !DILocation(line: 264, column: 19, scope: !1604)
!1610 = !DILocation(line: 264, column: 3, scope: !1604)
!1611 = !DILocation(line: 265, column: 29, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 265, column: 7)
!1613 = !DILocation(line: 265, column: 34, scope: !1612)
!1614 = !DILocation(line: 265, column: 7, scope: !1604)
!1615 = !DILocation(line: 266, column: 34, scope: !1612)
!1616 = !DILocation(line: 266, column: 4, scope: !1612)
!1617 = !DILocation(line: 268, column: 33, scope: !1612)
!1618 = !DILocation(line: 268, column: 4, scope: !1612)
!1619 = !DILocation(line: 269, column: 7, scope: !1604)
!1620 = !DILocation(line: 270, column: 2, scope: !1604)
!1621 = !DILocation(line: 275, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 275, column: 7)
!1623 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 270, column: 9)
!1624 = !DILocation(line: 275, column: 14, scope: !1622)
!1625 = !DILocation(line: 275, column: 23, scope: !1622)
!1626 = !DILocation(line: 275, column: 7, scope: !1623)
!1627 = !DILocation(line: 276, column: 22, scope: !1622)
!1628 = !DILocation(line: 276, column: 4, scope: !1622)
!1629 = !DILocation(line: 278, column: 37, scope: !1622)
!1630 = !DILocation(line: 278, column: 4, scope: !1622)
!1631 = !DILocation(line: 284, column: 25, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 284, column: 7)
!1633 = !DILocation(line: 284, column: 8, scope: !1632)
!1634 = !DILocation(line: 284, column: 7, scope: !1623)
!1635 = !DILocation(line: 285, column: 22, scope: !1632)
!1636 = !DILocation(line: 285, column: 4, scope: !1632)
!1637 = !DILocation(line: 287, column: 33, scope: !1623)
!1638 = !DILocation(line: 287, column: 3, scope: !1623)
!1639 = !DILocation(line: 297, column: 33, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 287, column: 39)
!1641 = !DILocation(line: 297, column: 4, scope: !1640)
!1642 = !DILocation(line: 298, column: 8, scope: !1640)
!1643 = !DILocation(line: 299, column: 4, scope: !1640)
!1644 = !DILocation(line: 307, column: 8, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 307, column: 8)
!1646 = !DILocation(line: 307, column: 43, scope: !1645)
!1647 = !DILocation(line: 307, column: 46, scope: !1645)
!1648 = !DILocation(line: 307, column: 8, scope: !1640)
!1649 = !DILocation(line: 308, column: 26, scope: !1645)
!1650 = !DILocation(line: 308, column: 5, scope: !1645)
!1651 = !DILocation(line: 317, column: 8, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 317, column: 8)
!1653 = !DILocation(line: 317, column: 11, scope: !1652)
!1654 = !DILocation(line: 317, column: 16, scope: !1652)
!1655 = !DILocation(line: 317, column: 20, scope: !1652)
!1656 = !DILocation(line: 317, column: 29, scope: !1652)
!1657 = !DILocation(line: 317, column: 8, scope: !1640)
!1658 = !DILocation(line: 318, column: 28, scope: !1652)
!1659 = !DILocation(line: 318, column: 11, scope: !1652)
!1660 = !DILocation(line: 318, column: 9, scope: !1652)
!1661 = !DILocation(line: 318, column: 5, scope: !1652)
!1662 = !DILocation(line: 319, column: 4, scope: !1640)
!1663 = !DILocation(line: 321, column: 4, scope: !1640)
!1664 = !DILocation(line: 324, column: 2, scope: !1570)
!1665 = !DILocation(line: 324, column: 2, scope: !1584)
!1666 = !DILocation(line: 324, column: 2, scope: !1585)
!1667 = !DILocation(line: 325, column: 9, scope: !1570)
!1668 = !DILocation(line: 326, column: 1, scope: !1570)
!1669 = !DILocation(line: 325, column: 2, scope: !1570)
!1670 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1564, file: !1564, line: 32, type: !1671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!64, !1567}
!1673 = distinct !DISubprogram(name: "tick_device_is_functional", scope: !1461, file: !1461, line: 34, type: !91, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1674)
!1674 = !{!1675}
!1675 = !DILocalVariable(name: "dev", arg: 1, scope: !1673, file: !1461, line: 34, type: !52)
!1676 = !DILocation(line: 34, column: 72, scope: !1673)
!1677 = !DILocation(line: 36, column: 11, scope: !1673)
!1678 = !DILocation(line: 36, column: 16, scope: !1673)
!1679 = !DILocation(line: 36, column: 25, scope: !1673)
!1680 = !DILocation(line: 36, column: 9, scope: !1673)
!1681 = !DILocation(line: 36, column: 2, scope: !1673)
!1682 = !DILocation(line: 232, column: 73, scope: !1198)
!1683 = !DILocation(line: 234, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 234, column: 6)
!1685 = !DILocation(line: 234, column: 12, scope: !1684)
!1686 = !DILocation(line: 234, column: 6, scope: !1198)
!1687 = !DILocation(line: 235, column: 3, scope: !1684)
!1688 = !DILocation(line: 235, column: 8, scope: !1684)
!1689 = !DILocation(line: 235, column: 18, scope: !1684)
!1690 = !DILocation(line: 236, column: 7, scope: !1204)
!1691 = !DILocation(line: 236, column: 12, scope: !1204)
!1692 = !DILocation(line: 236, column: 6, scope: !1198)
!1693 = !DILocation(line: 237, column: 3, scope: !1202)
!1694 = !DILocation(line: 237, column: 3, scope: !1206)
!1695 = !{i8 0, i8 2}
!1696 = !DILocation(line: 237, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 237, column: 3)
!1698 = !DILocation(line: 0, scope: !1697)
!1699 = !DILocation(line: 237, column: 3, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 237, column: 3)
!1701 = !DILocation(line: 237, column: 3, scope: !1207)
!1702 = !DILocation(line: 237, column: 3, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 237, column: 3)
!1704 = !DILocation(line: 237, column: 3, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 237, column: 3)
!1706 = !DILocation(line: 237, column: 3, scope: !1203)
!1707 = !DILocation(line: 239, column: 3, scope: !1203)
!1708 = !DILocation(line: 239, column: 8, scope: !1203)
!1709 = !DILocation(line: 239, column: 18, scope: !1203)
!1710 = !DILocation(line: 240, column: 2, scope: !1203)
!1711 = !DILocation(line: 241, column: 1, scope: !1198)
!1712 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !104, file: !104, line: 469, type: !1713, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !7, !1163}
!1715 = !{!1716, !1717}
!1716 = !DILocalVariable(name: "cpu", arg: 1, scope: !1712, file: !104, line: 469, type: !7)
!1717 = !DILocalVariable(name: "dstp", arg: 2, scope: !1712, file: !104, line: 469, type: !1163)
!1718 = !DILocation(line: 469, column: 58, scope: !1712)
!1719 = !DILocation(line: 469, column: 79, scope: !1712)
!1720 = !DILocation(line: 471, column: 24, scope: !1712)
!1721 = !DILocation(line: 471, column: 10, scope: !1712)
!1722 = !DILocation(line: 471, column: 30, scope: !1712)
!1723 = !DILocation(line: 471, column: 2, scope: !1712)
!1724 = !DILocation(line: 472, column: 1, scope: !1712)
!1725 = distinct !DISubprogram(name: "tick_broadcast_setup_oneshot", scope: !3, file: !3, line: 1024, type: !1726, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !52, !575}
!1728 = !{!1729, !1730, !1731, !1732, !1735, !1737, !1739}
!1729 = !DILocalVariable(name: "bc", arg: 1, scope: !1725, file: !3, line: 1024, type: !52)
!1730 = !DILocalVariable(name: "from_periodic", arg: 2, scope: !1725, file: !3, line: 1025, type: !575)
!1731 = !DILocalVariable(name: "cpu", scope: !1725, file: !3, line: 1027, type: !63)
!1732 = !DILocalVariable(name: "pscr_ret__", scope: !1733, file: !3, line: 1027, type: !63)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1027, column: 12)
!1734 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1027, column: 12)
!1735 = !DILocalVariable(name: "__vpp_verify", scope: !1736, file: !3, line: 1027, type: !496)
!1736 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 1027, column: 12)
!1737 = !DILocalVariable(name: "pfo_val__", scope: !1738, file: !3, line: 1027, type: !83)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 1027, column: 12)
!1739 = !DILocalVariable(name: "nexttick", scope: !1725, file: !3, line: 1028, type: !69)
!1740 = !DILocation(line: 1024, column: 69, scope: !1725)
!1741 = !DILocation(line: 1025, column: 12, scope: !1725)
!1742 = !DILocation(line: 1027, column: 2, scope: !1725)
!1743 = !DILocation(line: 1027, column: 6, scope: !1725)
!1744 = !DILocation(line: 1027, column: 12, scope: !1734)
!1745 = !DILocation(line: 1027, column: 12, scope: !1733)
!1746 = !DILocation(line: 1027, column: 12, scope: !1736)
!1747 = !DILocation(line: 1027, column: 12, scope: !1738)
!1748 = !{i64 2153046423}
!1749 = !DILocation(line: 1028, column: 2, scope: !1725)
!1750 = !DILocation(line: 1028, column: 10, scope: !1725)
!1751 = !DILocation(line: 1030, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1030, column: 6)
!1753 = !DILocation(line: 1030, column: 6, scope: !1725)
!1754 = !DILocation(line: 1031, column: 3, scope: !1752)
!1755 = !DILocation(line: 1039, column: 6, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1039, column: 6)
!1757 = !DILocation(line: 1039, column: 10, scope: !1756)
!1758 = !DILocation(line: 1039, column: 24, scope: !1756)
!1759 = !DILocation(line: 1039, column: 6, scope: !1725)
!1760 = !DILocation(line: 1058, column: 32, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 1039, column: 58)
!1762 = !DILocation(line: 1058, column: 3, scope: !1761)
!1763 = !DILocation(line: 1059, column: 3, scope: !1761)
!1764 = !DILocation(line: 1063, column: 2, scope: !1725)
!1765 = !DILocation(line: 1063, column: 6, scope: !1725)
!1766 = !DILocation(line: 1063, column: 20, scope: !1725)
!1767 = !DILocation(line: 1064, column: 2, scope: !1725)
!1768 = !DILocation(line: 1064, column: 6, scope: !1725)
!1769 = !DILocation(line: 1064, column: 17, scope: !1725)
!1770 = !DILocation(line: 1078, column: 6, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1078, column: 6)
!1772 = !DILocation(line: 1078, column: 6, scope: !1725)
!1773 = !DILocation(line: 1079, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1078, column: 21)
!1775 = !DILocation(line: 1081, column: 21, scope: !1774)
!1776 = !DILocation(line: 1081, column: 3, scope: !1774)
!1777 = !DILocation(line: 1082, column: 3, scope: !1774)
!1778 = !DILocation(line: 1088, column: 14, scope: !1774)
!1779 = !DILocation(line: 1088, column: 12, scope: !1774)
!1780 = !DILocation(line: 1089, column: 43, scope: !1774)
!1781 = !DILocation(line: 1089, column: 3, scope: !1774)
!1782 = !DILocation(line: 1097, column: 32, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 1097, column: 7)
!1784 = !DILocation(line: 1097, column: 7, scope: !1783)
!1785 = !DILocation(line: 1097, column: 7, scope: !1774)
!1786 = !DILocation(line: 1098, column: 4, scope: !1783)
!1787 = !DILocation(line: 1099, column: 2, scope: !1774)
!1788 = !DILocation(line: 1117, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1117, column: 6)
!1790 = !DILocation(line: 1117, column: 6, scope: !1725)
!1791 = !DILocation(line: 1118, column: 28, scope: !1789)
!1792 = !DILocation(line: 1118, column: 32, scope: !1789)
!1793 = !DILocation(line: 1118, column: 37, scope: !1789)
!1794 = !DILocation(line: 1118, column: 3, scope: !1789)
!1795 = !DILocation(line: 1119, column: 1, scope: !1725)
!1796 = distinct !DISubprogram(name: "cpumask_clear_cpu", scope: !104, file: !104, line: 485, type: !1797, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !63, !1163}
!1799 = !{!1800, !1801}
!1800 = !DILocalVariable(name: "cpu", arg: 1, scope: !1796, file: !104, line: 485, type: !63)
!1801 = !DILocalVariable(name: "dstp", arg: 2, scope: !1796, file: !104, line: 485, type: !1163)
!1802 = !DILocation(line: 485, column: 51, scope: !1796)
!1803 = !DILocation(line: 485, column: 72, scope: !1796)
!1804 = !DILocation(line: 487, column: 26, scope: !1796)
!1805 = !DILocation(line: 487, column: 12, scope: !1796)
!1806 = !DILocation(line: 487, column: 32, scope: !1796)
!1807 = !DILocation(line: 487, column: 2, scope: !1796)
!1808 = !DILocation(line: 488, column: 1, scope: !1796)
!1809 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !104, file: !104, line: 502, type: !1810, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1812)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!575, !63, !101}
!1812 = !{!1813, !1814}
!1813 = !DILocalVariable(name: "cpu", arg: 1, scope: !1809, file: !104, line: 502, type: !63)
!1814 = !DILocalVariable(name: "cpumask", arg: 2, scope: !1809, file: !104, line: 502, type: !101)
!1815 = !DILocation(line: 502, column: 50, scope: !1809)
!1816 = !DILocation(line: 502, column: 77, scope: !1809)
!1817 = !DILocation(line: 504, column: 9, scope: !1809)
!1818 = !DILocation(line: 504, column: 2, scope: !1809)
!1819 = distinct !DISubprogram(name: "tick_broadcast_clear_oneshot", scope: !3, file: !3, line: 986, type: !1820, scopeLine: 987, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null, !63}
!1822 = !{!1823}
!1823 = !DILocalVariable(name: "cpu", arg: 1, scope: !1819, file: !3, line: 986, type: !63)
!1824 = !DILocation(line: 986, column: 46, scope: !1819)
!1825 = !DILocation(line: 988, column: 20, scope: !1819)
!1826 = !DILocation(line: 988, column: 2, scope: !1819)
!1827 = !DILocation(line: 989, column: 20, scope: !1819)
!1828 = !DILocation(line: 989, column: 2, scope: !1819)
!1829 = !DILocation(line: 990, column: 1, scope: !1819)
!1830 = !DISubprogram(name: "clockevents_shutdown", scope: !1461, file: !1461, line: 50, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1831 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1564, file: !1564, line: 43, type: !1832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1567, !64}
!1834 = distinct !DISubprogram(name: "tick_receive_broadcast", scope: !3, file: !3, line: 328, type: !918, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1835 = !{!1836, !1837, !1840, !1842}
!1836 = !DILocalVariable(name: "td", scope: !1834, file: !3, line: 330, type: !48)
!1837 = !DILocalVariable(name: "__vpp_verify", scope: !1838, file: !3, line: 330, type: !496)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 330, column: 27)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 330, column: 27)
!1840 = !DILocalVariable(name: "tcp_ptr__", scope: !1841, file: !3, line: 330, type: !64)
!1841 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 330, column: 27)
!1842 = !DILocalVariable(name: "evt", scope: !1834, file: !3, line: 331, type: !52)
!1843 = !DILocation(line: 330, column: 2, scope: !1834)
!1844 = !DILocation(line: 330, column: 22, scope: !1834)
!1845 = !DILocation(line: 330, column: 27, scope: !1839)
!1846 = !DILocation(line: 330, column: 27, scope: !1838)
!1847 = !DILocation(line: 330, column: 27, scope: !1841)
!1848 = !{i64 2152996899}
!1849 = !DILocation(line: 331, column: 2, scope: !1834)
!1850 = !DILocation(line: 331, column: 29, scope: !1834)
!1851 = !DILocation(line: 331, column: 35, scope: !1834)
!1852 = !DILocation(line: 331, column: 39, scope: !1834)
!1853 = !DILocation(line: 333, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 333, column: 6)
!1855 = !DILocation(line: 333, column: 6, scope: !1834)
!1856 = !DILocation(line: 334, column: 3, scope: !1854)
!1857 = !DILocation(line: 336, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 336, column: 6)
!1859 = !DILocation(line: 336, column: 12, scope: !1858)
!1860 = !DILocation(line: 336, column: 6, scope: !1834)
!1861 = !DILocation(line: 337, column: 3, scope: !1858)
!1862 = !DILocation(line: 339, column: 2, scope: !1834)
!1863 = !DILocation(line: 339, column: 7, scope: !1834)
!1864 = !DILocation(line: 339, column: 21, scope: !1834)
!1865 = !DILocation(line: 340, column: 2, scope: !1834)
!1866 = !DILocation(line: 341, column: 1, scope: !1834)
!1867 = distinct !DISubprogram(name: "tick_broadcast_control", scope: !3, file: !3, line: 438, type: !1868, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !37}
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1881, !1882, !1885, !1887, !1890, !1892, !1894, !1895, !1898}
!1871 = !DILocalVariable(name: "mode", arg: 1, scope: !1867, file: !3, line: 438, type: !37)
!1872 = !DILocalVariable(name: "bc", scope: !1867, file: !3, line: 440, type: !52)
!1873 = !DILocalVariable(name: "dev", scope: !1867, file: !3, line: 440, type: !52)
!1874 = !DILocalVariable(name: "td", scope: !1867, file: !3, line: 441, type: !48)
!1875 = !DILocalVariable(name: "cpu", scope: !1867, file: !3, line: 442, type: !63)
!1876 = !DILocalVariable(name: "bc_stopped", scope: !1867, file: !3, line: 442, type: !63)
!1877 = !DILocalVariable(name: "flags", scope: !1867, file: !3, line: 443, type: !64)
!1878 = !DILocalVariable(name: "__dummy", scope: !1879, file: !3, line: 446, type: !64)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 446, column: 2)
!1880 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 446, column: 2)
!1881 = !DILocalVariable(name: "__dummy2", scope: !1879, file: !3, line: 446, type: !64)
!1882 = !DILocalVariable(name: "__vpp_verify", scope: !1883, file: !3, line: 447, type: !496)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 447, column: 7)
!1884 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 447, column: 7)
!1885 = !DILocalVariable(name: "tcp_ptr__", scope: !1886, file: !3, line: 447, type: !64)
!1886 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 447, column: 7)
!1887 = !DILocalVariable(name: "pscr_ret__", scope: !1888, file: !3, line: 459, type: !63)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 459, column: 8)
!1889 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 459, column: 8)
!1890 = !DILocalVariable(name: "__vpp_verify", scope: !1891, file: !3, line: 459, type: !496)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 459, column: 8)
!1892 = !DILocalVariable(name: "pfo_val__", scope: !1893, file: !3, line: 459, type: !83)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 459, column: 8)
!1894 = !DILabel(scope: !1867, name: "out", file: !3, line: 507)
!1895 = !DILocalVariable(name: "__dummy", scope: !1896, file: !3, line: 508, type: !64)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 508, column: 2)
!1897 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 508, column: 2)
!1898 = !DILocalVariable(name: "__dummy2", scope: !1896, file: !3, line: 508, type: !64)
!1899 = !DILocation(line: 438, column: 54, scope: !1867)
!1900 = !DILocation(line: 440, column: 2, scope: !1867)
!1901 = !DILocation(line: 440, column: 29, scope: !1867)
!1902 = !DILocation(line: 440, column: 34, scope: !1867)
!1903 = !DILocation(line: 441, column: 2, scope: !1867)
!1904 = !DILocation(line: 441, column: 22, scope: !1867)
!1905 = !DILocation(line: 442, column: 2, scope: !1867)
!1906 = !DILocation(line: 442, column: 6, scope: !1867)
!1907 = !DILocation(line: 442, column: 11, scope: !1867)
!1908 = !DILocation(line: 443, column: 2, scope: !1867)
!1909 = !DILocation(line: 443, column: 16, scope: !1867)
!1910 = !DILocation(line: 446, column: 2, scope: !1867)
!1911 = !DILocation(line: 446, column: 2, scope: !1879)
!1912 = !DILocation(line: 446, column: 2, scope: !1880)
!1913 = !DILocation(line: 447, column: 7, scope: !1884)
!1914 = !DILocation(line: 447, column: 7, scope: !1883)
!1915 = !DILocation(line: 447, column: 7, scope: !1886)
!1916 = !{i64 2153007189}
!1917 = !DILocation(line: 447, column: 5, scope: !1867)
!1918 = !DILocation(line: 448, column: 8, scope: !1867)
!1919 = !DILocation(line: 448, column: 12, scope: !1867)
!1920 = !DILocation(line: 448, column: 6, scope: !1867)
!1921 = !DILocation(line: 453, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 453, column: 6)
!1923 = !DILocation(line: 453, column: 11, scope: !1922)
!1924 = !DILocation(line: 453, column: 16, scope: !1922)
!1925 = !DILocation(line: 453, column: 21, scope: !1922)
!1926 = !DILocation(line: 453, column: 30, scope: !1922)
!1927 = !DILocation(line: 453, column: 6, scope: !1867)
!1928 = !DILocation(line: 454, column: 3, scope: !1922)
!1929 = !DILocation(line: 456, column: 33, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 456, column: 6)
!1931 = !DILocation(line: 456, column: 7, scope: !1930)
!1932 = !DILocation(line: 456, column: 6, scope: !1867)
!1933 = !DILocation(line: 457, column: 3, scope: !1930)
!1934 = !DILocation(line: 459, column: 8, scope: !1889)
!1935 = !DILocation(line: 459, column: 8, scope: !1888)
!1936 = !DILocation(line: 459, column: 8, scope: !1891)
!1937 = !DILocation(line: 459, column: 8, scope: !1893)
!1938 = !{i64 2153010123}
!1939 = !DILocation(line: 459, column: 6, scope: !1867)
!1940 = !DILocation(line: 460, column: 29, scope: !1867)
!1941 = !DILocation(line: 460, column: 5, scope: !1867)
!1942 = !DILocation(line: 461, column: 15, scope: !1867)
!1943 = !DILocation(line: 461, column: 13, scope: !1867)
!1944 = !DILocation(line: 463, column: 10, scope: !1867)
!1945 = !DILocation(line: 463, column: 2, scope: !1867)
!1946 = !DILocation(line: 465, column: 25, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 463, column: 16)
!1948 = !DILocation(line: 465, column: 3, scope: !1947)
!1949 = !DILocation(line: 468, column: 19, scope: !1947)
!1950 = !DILocation(line: 468, column: 3, scope: !1947)
!1951 = !DILocation(line: 469, column: 33, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 469, column: 7)
!1953 = !DILocation(line: 469, column: 8, scope: !1952)
!1954 = !DILocation(line: 469, column: 7, scope: !1947)
!1955 = !DILocation(line: 478, column: 8, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 478, column: 8)
!1957 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 469, column: 60)
!1958 = !DILocation(line: 478, column: 11, scope: !1956)
!1959 = !DILocation(line: 478, column: 16, scope: !1956)
!1960 = !DILocation(line: 478, column: 20, scope: !1956)
!1961 = !DILocation(line: 478, column: 29, scope: !1956)
!1962 = !DILocation(line: 478, column: 55, scope: !1956)
!1963 = !DILocation(line: 479, column: 30, scope: !1956)
!1964 = !DILocation(line: 479, column: 35, scope: !1956)
!1965 = !DILocation(line: 478, column: 8, scope: !1957)
!1966 = !DILocation(line: 480, column: 26, scope: !1956)
!1967 = !DILocation(line: 480, column: 5, scope: !1956)
!1968 = !DILocation(line: 481, column: 3, scope: !1957)
!1969 = !DILocation(line: 482, column: 3, scope: !1947)
!1970 = !DILocation(line: 485, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 485, column: 7)
!1972 = !DILocation(line: 485, column: 7, scope: !1947)
!1973 = !DILocation(line: 486, column: 4, scope: !1971)
!1974 = !DILocation(line: 487, column: 21, scope: !1947)
!1975 = !DILocation(line: 487, column: 3, scope: !1947)
!1976 = !DILocation(line: 488, column: 34, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 488, column: 7)
!1978 = !DILocation(line: 488, column: 7, scope: !1977)
!1979 = !DILocation(line: 488, column: 7, scope: !1947)
!1980 = !DILocation(line: 489, column: 30, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 489, column: 8)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 488, column: 61)
!1983 = !DILocation(line: 489, column: 35, scope: !1981)
!1984 = !DILocation(line: 489, column: 8, scope: !1982)
!1985 = !DILocation(line: 491, column: 25, scope: !1981)
!1986 = !DILocation(line: 491, column: 5, scope: !1981)
!1987 = !DILocation(line: 492, column: 3, scope: !1982)
!1988 = !DILocation(line: 493, column: 3, scope: !1947)
!1989 = !DILocation(line: 496, column: 6, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 496, column: 6)
!1991 = !DILocation(line: 496, column: 6, scope: !1867)
!1992 = !DILocation(line: 497, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 497, column: 7)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 496, column: 10)
!1995 = !DILocation(line: 497, column: 7, scope: !1994)
!1996 = !DILocation(line: 498, column: 9, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 498, column: 8)
!1998 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 497, column: 43)
!1999 = !DILocation(line: 498, column: 8, scope: !1998)
!2000 = !DILocation(line: 499, column: 26, scope: !1997)
!2001 = !DILocation(line: 499, column: 5, scope: !1997)
!2002 = !DILocation(line: 500, column: 3, scope: !1998)
!2003 = !DILocation(line: 500, column: 14, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 500, column: 14)
!2005 = !DILocation(line: 500, column: 14, scope: !1993)
!2006 = !DILocation(line: 501, column: 30, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 501, column: 8)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 500, column: 26)
!2009 = !DILocation(line: 501, column: 35, scope: !2007)
!2010 = !DILocation(line: 501, column: 8, scope: !2008)
!2011 = !DILocation(line: 502, column: 35, scope: !2007)
!2012 = !DILocation(line: 502, column: 5, scope: !2007)
!2013 = !DILocation(line: 504, column: 34, scope: !2007)
!2014 = !DILocation(line: 504, column: 5, scope: !2007)
!2015 = !DILocation(line: 505, column: 3, scope: !2008)
!2016 = !DILocation(line: 506, column: 2, scope: !1994)
!2017 = !DILocation(line: 507, column: 1, scope: !1867)
!2018 = !DILocation(line: 508, column: 2, scope: !1867)
!2019 = !DILocation(line: 508, column: 2, scope: !1896)
!2020 = !DILocation(line: 508, column: 2, scope: !1897)
!2021 = !DILocation(line: 509, column: 1, scope: !1867)
!2022 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !2023, file: !2023, line: 313, type: !2024, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2023 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !115}
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "op", arg: 1, scope: !2022, file: !2023, line: 313, type: !115)
!2028 = !DILocation(line: 313, column: 66, scope: !2022)
!2029 = !DILocation(line: 313, column: 72, scope: !2022)
!2030 = distinct !DISubprogram(name: "cpumask_test_and_set_cpu", scope: !104, file: !104, line: 516, type: !2031, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!575, !63, !1163}
!2033 = !{!2034, !2035}
!2034 = !DILocalVariable(name: "cpu", arg: 1, scope: !2030, file: !104, line: 516, type: !63)
!2035 = !DILocalVariable(name: "cpumask", arg: 2, scope: !2030, file: !104, line: 516, type: !1163)
!2036 = !DILocation(line: 516, column: 58, scope: !2030)
!2037 = !DILocation(line: 516, column: 79, scope: !2030)
!2038 = !DILocation(line: 518, column: 40, scope: !2030)
!2039 = !DILocation(line: 518, column: 26, scope: !2030)
!2040 = !DILocation(line: 518, column: 46, scope: !2030)
!2041 = !DILocation(line: 518, column: 9, scope: !2030)
!2042 = !DILocation(line: 518, column: 2, scope: !2030)
!2043 = distinct !DISubprogram(name: "cpumask_test_and_clear_cpu", scope: !104, file: !104, line: 530, type: !2031, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2044 = !{!2045, !2046}
!2045 = !DILocalVariable(name: "cpu", arg: 1, scope: !2043, file: !104, line: 530, type: !63)
!2046 = !DILocalVariable(name: "cpumask", arg: 2, scope: !2043, file: !104, line: 530, type: !1163)
!2047 = !DILocation(line: 530, column: 60, scope: !2043)
!2048 = !DILocation(line: 530, column: 81, scope: !2043)
!2049 = !DILocation(line: 532, column: 42, scope: !2043)
!2050 = !DILocation(line: 532, column: 28, scope: !2043)
!2051 = !DILocation(line: 532, column: 48, scope: !2043)
!2052 = !DILocation(line: 532, column: 9, scope: !2043)
!2053 = !DILocation(line: 532, column: 2, scope: !2043)
!2054 = !DISubprogram(name: "tick_setup_periodic", scope: !1461, file: !1461, line: 20, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2055 = distinct !DISubprogram(name: "tick_set_periodic_handler", scope: !3, file: !3, line: 515, type: !1278, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2056)
!2056 = !{!2057, !2058}
!2057 = !DILocalVariable(name: "dev", arg: 1, scope: !2055, file: !3, line: 515, type: !52)
!2058 = !DILocalVariable(name: "broadcast", arg: 2, scope: !2055, file: !3, line: 515, type: !63)
!2059 = !DILocation(line: 515, column: 59, scope: !2055)
!2060 = !DILocation(line: 515, column: 68, scope: !2055)
!2061 = !DILocation(line: 517, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 517, column: 6)
!2063 = !DILocation(line: 517, column: 6, scope: !2055)
!2064 = !DILocation(line: 518, column: 3, scope: !2062)
!2065 = !DILocation(line: 518, column: 8, scope: !2062)
!2066 = !DILocation(line: 518, column: 22, scope: !2062)
!2067 = !DILocation(line: 520, column: 3, scope: !2062)
!2068 = !DILocation(line: 520, column: 8, scope: !2062)
!2069 = !DILocation(line: 520, column: 22, scope: !2062)
!2070 = !DILocation(line: 521, column: 1, scope: !2055)
!2071 = distinct !DISubprogram(name: "tick_handle_periodic_broadcast", scope: !3, file: !3, line: 400, type: !57, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2072 = !{!2073, !2074, !2075, !2078, !2080, !2081}
!2073 = !DILocalVariable(name: "dev", arg: 1, scope: !2071, file: !3, line: 400, type: !52)
!2074 = !DILocalVariable(name: "td", scope: !2071, file: !3, line: 402, type: !48)
!2075 = !DILocalVariable(name: "__vpp_verify", scope: !2076, file: !3, line: 402, type: !496)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 402, column: 27)
!2077 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 402, column: 27)
!2078 = !DILocalVariable(name: "tcp_ptr__", scope: !2079, file: !3, line: 402, type: !64)
!2079 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 402, column: 27)
!2080 = !DILocalVariable(name: "bc_local", scope: !2071, file: !3, line: 403, type: !575)
!2081 = !DILocalVariable(name: "next", scope: !2082, file: !3, line: 416, type: !69)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 415, column: 37)
!2083 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 415, column: 6)
!2084 = !DILocation(line: 400, column: 71, scope: !2071)
!2085 = !DILocation(line: 402, column: 2, scope: !2071)
!2086 = !DILocation(line: 402, column: 22, scope: !2071)
!2087 = !DILocation(line: 402, column: 27, scope: !2077)
!2088 = !DILocation(line: 402, column: 27, scope: !2076)
!2089 = !DILocation(line: 402, column: 27, scope: !2079)
!2090 = !{i64 2153006029}
!2091 = !DILocation(line: 403, column: 2, scope: !2071)
!2092 = !DILocation(line: 403, column: 7, scope: !2071)
!2093 = !DILocation(line: 405, column: 2, scope: !2071)
!2094 = !DILocation(line: 408, column: 54, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 408, column: 6)
!2096 = !DILocation(line: 408, column: 6, scope: !2095)
!2097 = !DILocation(line: 408, column: 6, scope: !2071)
!2098 = !DILocation(line: 409, column: 3, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 408, column: 63)
!2100 = !DILocation(line: 410, column: 3, scope: !2099)
!2101 = !DILocation(line: 413, column: 13, scope: !2071)
!2102 = !DILocation(line: 413, column: 11, scope: !2071)
!2103 = !DILocation(line: 415, column: 31, scope: !2083)
!2104 = !DILocation(line: 415, column: 6, scope: !2083)
!2105 = !DILocation(line: 415, column: 6, scope: !2071)
!2106 = !DILocation(line: 416, column: 3, scope: !2082)
!2107 = !DILocation(line: 416, column: 11, scope: !2082)
!2108 = !DILocation(line: 416, column: 18, scope: !2082)
!2109 = !DILocation(line: 418, column: 29, scope: !2082)
!2110 = !DILocation(line: 418, column: 34, scope: !2082)
!2111 = !DILocation(line: 418, column: 3, scope: !2082)
!2112 = !DILocation(line: 419, column: 2, scope: !2083)
!2113 = !DILocation(line: 419, column: 2, scope: !2082)
!2114 = !DILocation(line: 420, column: 2, scope: !2071)
!2115 = !DILocation(line: 427, column: 6, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 427, column: 6)
!2117 = !DILocation(line: 427, column: 6, scope: !2071)
!2118 = !DILocation(line: 428, column: 3, scope: !2116)
!2119 = !DILocation(line: 428, column: 7, scope: !2116)
!2120 = !DILocation(line: 428, column: 15, scope: !2116)
!2121 = !DILocation(line: 428, column: 29, scope: !2116)
!2122 = !DILocation(line: 428, column: 33, scope: !2116)
!2123 = !DILocation(line: 429, column: 1, scope: !2071)
!2124 = distinct !DISubprogram(name: "tick_broadcast_offline", scope: !3, file: !3, line: 537, type: !2125, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !7}
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "cpu", arg: 1, scope: !2124, file: !3, line: 537, type: !7)
!2129 = !DILocation(line: 537, column: 42, scope: !2124)
!2130 = !DILocation(line: 539, column: 2, scope: !2124)
!2131 = !DILocation(line: 540, column: 20, scope: !2124)
!2132 = !DILocation(line: 540, column: 2, scope: !2124)
!2133 = !DILocation(line: 541, column: 20, scope: !2124)
!2134 = !DILocation(line: 541, column: 2, scope: !2124)
!2135 = !DILocation(line: 542, column: 33, scope: !2124)
!2136 = !DILocation(line: 542, column: 2, scope: !2124)
!2137 = !DILocation(line: 543, column: 2, scope: !2124)
!2138 = !DILocation(line: 544, column: 2, scope: !2124)
!2139 = !DILocation(line: 545, column: 1, scope: !2124)
!2140 = distinct !DISubprogram(name: "tick_broadcast_oneshot_offline", scope: !3, file: !3, line: 1184, type: !2125, scopeLine: 1185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2141)
!2141 = !{!2142}
!2142 = !DILocalVariable(name: "cpu", arg: 1, scope: !2140, file: !3, line: 1184, type: !7)
!2143 = !DILocation(line: 1184, column: 57, scope: !2140)
!2144 = !DILocation(line: 1186, column: 37, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 1186, column: 6)
!2146 = !DILocation(line: 1186, column: 6, scope: !2145)
!2147 = !DILocation(line: 1186, column: 6, scope: !2140)
!2148 = !DILocation(line: 1187, column: 40, scope: !2145)
!2149 = !DILocation(line: 1187, column: 3, scope: !2145)
!2150 = !DILocation(line: 1193, column: 20, scope: !2140)
!2151 = !DILocation(line: 1193, column: 2, scope: !2140)
!2152 = !DILocation(line: 1194, column: 20, scope: !2140)
!2153 = !DILocation(line: 1194, column: 2, scope: !2140)
!2154 = !DILocation(line: 1195, column: 20, scope: !2140)
!2155 = !DILocation(line: 1195, column: 2, scope: !2140)
!2156 = !DILocation(line: 1196, column: 1, scope: !2140)
!2157 = distinct !DISubprogram(name: "tick_shutdown_broadcast", scope: !3, file: !3, line: 524, type: !1157, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2158 = !{!2159}
!2159 = !DILocalVariable(name: "bc", scope: !2157, file: !3, line: 526, type: !52)
!2160 = !DILocation(line: 526, column: 2, scope: !2157)
!2161 = !DILocation(line: 526, column: 29, scope: !2157)
!2162 = !DILocation(line: 526, column: 56, scope: !2157)
!2163 = !DILocation(line: 528, column: 28, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 528, column: 6)
!2165 = !DILocation(line: 528, column: 33, scope: !2164)
!2166 = !DILocation(line: 528, column: 6, scope: !2157)
!2167 = !DILocation(line: 529, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 529, column: 7)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 528, column: 59)
!2170 = !DILocation(line: 529, column: 10, scope: !2168)
!2171 = !DILocation(line: 529, column: 13, scope: !2168)
!2172 = !DILocation(line: 529, column: 7, scope: !2169)
!2173 = !DILocation(line: 530, column: 25, scope: !2168)
!2174 = !DILocation(line: 530, column: 4, scope: !2168)
!2175 = !DILocation(line: 531, column: 2, scope: !2169)
!2176 = !DILocation(line: 532, column: 1, scope: !2157)
!2177 = distinct !DISubprogram(name: "tick_suspend_broadcast", scope: !3, file: !3, line: 549, type: !1157, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2178)
!2178 = !{!2179, !2180, !2181, !2184, !2185, !2188}
!2179 = !DILocalVariable(name: "bc", scope: !2177, file: !3, line: 551, type: !52)
!2180 = !DILocalVariable(name: "flags", scope: !2177, file: !3, line: 552, type: !64)
!2181 = !DILocalVariable(name: "__dummy", scope: !2182, file: !3, line: 554, type: !64)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 554, column: 2)
!2183 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 554, column: 2)
!2184 = !DILocalVariable(name: "__dummy2", scope: !2182, file: !3, line: 554, type: !64)
!2185 = !DILocalVariable(name: "__dummy", scope: !2186, file: !3, line: 560, type: !64)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 560, column: 2)
!2187 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 560, column: 2)
!2188 = !DILocalVariable(name: "__dummy2", scope: !2186, file: !3, line: 560, type: !64)
!2189 = !DILocation(line: 551, column: 2, scope: !2177)
!2190 = !DILocation(line: 551, column: 29, scope: !2177)
!2191 = !DILocation(line: 552, column: 2, scope: !2177)
!2192 = !DILocation(line: 552, column: 16, scope: !2177)
!2193 = !DILocation(line: 554, column: 2, scope: !2177)
!2194 = !DILocation(line: 554, column: 2, scope: !2182)
!2195 = !DILocation(line: 554, column: 2, scope: !2183)
!2196 = !DILocation(line: 556, column: 29, scope: !2177)
!2197 = !DILocation(line: 556, column: 5, scope: !2177)
!2198 = !DILocation(line: 557, column: 6, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 557, column: 6)
!2200 = !DILocation(line: 557, column: 6, scope: !2177)
!2201 = !DILocation(line: 558, column: 24, scope: !2199)
!2202 = !DILocation(line: 558, column: 3, scope: !2199)
!2203 = !DILocation(line: 560, column: 2, scope: !2177)
!2204 = !DILocation(line: 560, column: 2, scope: !2186)
!2205 = !DILocation(line: 560, column: 2, scope: !2187)
!2206 = !DILocation(line: 561, column: 1, scope: !2177)
!2207 = distinct !DISubprogram(name: "tick_resume_check_broadcast", scope: !3, file: !3, line: 571, type: !622, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2208 = !{!2209, !2213, !2215}
!2209 = !DILocalVariable(name: "pscr_ret__", scope: !2210, file: !3, line: 576, type: !63)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 576, column: 27)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 576, column: 27)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 573, column: 6)
!2213 = !DILocalVariable(name: "__vpp_verify", scope: !2214, file: !3, line: 576, type: !496)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 576, column: 27)
!2215 = !DILocalVariable(name: "pfo_val__", scope: !2216, file: !3, line: 576, type: !83)
!2216 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 576, column: 27)
!2217 = !DILocation(line: 573, column: 28, scope: !2212)
!2218 = !DILocation(line: 573, column: 33, scope: !2212)
!2219 = !DILocation(line: 573, column: 6, scope: !2207)
!2220 = !DILocation(line: 574, column: 3, scope: !2212)
!2221 = !DILocation(line: 576, column: 27, scope: !2211)
!2222 = !DILocation(line: 576, column: 27, scope: !2210)
!2223 = !DILocation(line: 576, column: 27, scope: !2214)
!2224 = !DILocation(line: 576, column: 27, scope: !2216)
!2225 = !{i64 2153016337}
!2226 = !DILocation(line: 576, column: 10, scope: !2212)
!2227 = !DILocation(line: 576, column: 3, scope: !2212)
!2228 = !DILocation(line: 577, column: 1, scope: !2207)
!2229 = distinct !DISubprogram(name: "tick_resume_broadcast", scope: !3, file: !3, line: 579, type: !1157, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2230 = !{!2231, !2232, !2233, !2236, !2237, !2240}
!2231 = !DILocalVariable(name: "bc", scope: !2229, file: !3, line: 581, type: !52)
!2232 = !DILocalVariable(name: "flags", scope: !2229, file: !3, line: 582, type: !64)
!2233 = !DILocalVariable(name: "__dummy", scope: !2234, file: !3, line: 584, type: !64)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 584, column: 2)
!2235 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 584, column: 2)
!2236 = !DILocalVariable(name: "__dummy2", scope: !2234, file: !3, line: 584, type: !64)
!2237 = !DILocalVariable(name: "__dummy", scope: !2238, file: !3, line: 602, type: !64)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 602, column: 2)
!2239 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 602, column: 2)
!2240 = !DILocalVariable(name: "__dummy2", scope: !2238, file: !3, line: 602, type: !64)
!2241 = !DILocation(line: 581, column: 2, scope: !2229)
!2242 = !DILocation(line: 581, column: 29, scope: !2229)
!2243 = !DILocation(line: 582, column: 2, scope: !2229)
!2244 = !DILocation(line: 582, column: 16, scope: !2229)
!2245 = !DILocation(line: 584, column: 2, scope: !2229)
!2246 = !DILocation(line: 584, column: 2, scope: !2234)
!2247 = !DILocation(line: 584, column: 2, scope: !2235)
!2248 = !DILocation(line: 586, column: 29, scope: !2229)
!2249 = !DILocation(line: 586, column: 5, scope: !2229)
!2250 = !DILocation(line: 588, column: 6, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 588, column: 6)
!2252 = !DILocation(line: 588, column: 6, scope: !2229)
!2253 = !DILocation(line: 589, column: 27, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 588, column: 10)
!2255 = !DILocation(line: 589, column: 3, scope: !2254)
!2256 = !DILocation(line: 591, column: 33, scope: !2254)
!2257 = !DILocation(line: 591, column: 3, scope: !2254)
!2258 = !DILocation(line: 593, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 593, column: 8)
!2260 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 591, column: 39)
!2261 = !DILocation(line: 593, column: 8, scope: !2260)
!2262 = !DILocation(line: 594, column: 35, scope: !2259)
!2263 = !DILocation(line: 594, column: 5, scope: !2259)
!2264 = !DILocation(line: 595, column: 4, scope: !2260)
!2265 = !DILocation(line: 597, column: 9, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 597, column: 8)
!2267 = !DILocation(line: 597, column: 8, scope: !2260)
!2268 = !DILocation(line: 598, column: 35, scope: !2266)
!2269 = !DILocation(line: 598, column: 5, scope: !2266)
!2270 = !DILocation(line: 599, column: 4, scope: !2260)
!2271 = !DILocation(line: 601, column: 2, scope: !2254)
!2272 = !DILocation(line: 602, column: 2, scope: !2229)
!2273 = !DILocation(line: 602, column: 2, scope: !2238)
!2274 = !DILocation(line: 602, column: 2, scope: !2239)
!2275 = !DILocation(line: 603, column: 1, scope: !2229)
!2276 = !DISubprogram(name: "clockevents_tick_resume", scope: !1461, file: !1461, line: 32, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2277 = distinct !DISubprogram(name: "tick_resume_broadcast_oneshot", scope: !3, file: !3, line: 661, type: !57, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2278 = !{!2279}
!2279 = !DILocalVariable(name: "bc", arg: 1, scope: !2277, file: !3, line: 661, type: !52)
!2280 = !DILocation(line: 661, column: 70, scope: !2277)
!2281 = !DILocation(line: 663, column: 27, scope: !2277)
!2282 = !DILocation(line: 663, column: 2, scope: !2277)
!2283 = !DILocation(line: 664, column: 1, scope: !2277)
!2284 = distinct !DISubprogram(name: "tick_get_broadcast_oneshot_mask", scope: !3, file: !3, line: 614, type: !1247, scopeLine: 615, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2285 = !DILocation(line: 616, column: 2, scope: !2284)
!2286 = distinct !DISubprogram(name: "tick_check_broadcast_expired", scope: !3, file: !3, line: 626, type: !918, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2287 = !{!2288, !2291, !2293}
!2288 = !DILocalVariable(name: "pscr_ret__", scope: !2289, file: !3, line: 629, type: !63)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 629, column: 23)
!2290 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 629, column: 23)
!2291 = !DILocalVariable(name: "__vpp_verify", scope: !2292, file: !3, line: 629, type: !496)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 629, column: 23)
!2293 = !DILocalVariable(name: "pfo_val__", scope: !2294, file: !3, line: 629, type: !83)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 629, column: 23)
!2295 = !DILocation(line: 629, column: 23, scope: !2290)
!2296 = !DILocation(line: 629, column: 23, scope: !2289)
!2297 = !DILocation(line: 629, column: 23, scope: !2292)
!2298 = !DILocation(line: 629, column: 23, scope: !2294)
!2299 = !{i64 2153020567}
!2300 = !DILocation(line: 629, column: 23, scope: !2286)
!2301 = !DILocation(line: 629, column: 9, scope: !2286)
!2302 = !DILocation(line: 629, column: 2, scope: !2286)
!2303 = distinct !DISubprogram(name: "arch_test_bit", scope: !2304, file: !2304, line: 237, type: !2305, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2304 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!575, !64, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2309)
!2309 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!2310 = !{!2311, !2312}
!2311 = !DILocalVariable(name: "nr", arg: 1, scope: !2303, file: !2304, line: 237, type: !64)
!2312 = !DILocalVariable(name: "addr", arg: 2, scope: !2303, file: !2304, line: 237, type: !2307)
!2313 = !DILocation(line: 237, column: 29, scope: !2303)
!2314 = !DILocation(line: 237, column: 63, scope: !2303)
!2315 = !DILocation(line: 239, column: 30, scope: !2303)
!2316 = !DILocation(line: 239, column: 9, scope: !2303)
!2317 = !DILocation(line: 239, column: 54, scope: !2303)
!2318 = !DILocation(line: 239, column: 58, scope: !2303)
!2319 = !DILocation(line: 239, column: 36, scope: !2303)
!2320 = !DILocation(line: 240, column: 26, scope: !2303)
!2321 = !DILocation(line: 240, column: 30, scope: !2303)
!2322 = !DILocation(line: 240, column: 8, scope: !2303)
!2323 = !DILocation(line: 239, column: 2, scope: !2303)
!2324 = distinct !DISubprogram(name: "tick_check_oneshot_broadcast_this_cpu", scope: !3, file: !3, line: 670, type: !1157, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2325)
!2325 = !{!2326, !2330, !2332, !2334, !2336, !2339}
!2326 = !DILocalVariable(name: "pscr_ret__", scope: !2327, file: !3, line: 672, type: !63)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 672, column: 23)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 672, column: 23)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 672, column: 6)
!2330 = !DILocalVariable(name: "__vpp_verify", scope: !2331, file: !3, line: 672, type: !496)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 672, column: 23)
!2332 = !DILocalVariable(name: "pfo_val__", scope: !2333, file: !3, line: 672, type: !83)
!2333 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 672, column: 23)
!2334 = !DILocalVariable(name: "td", scope: !2335, file: !3, line: 673, type: !48)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 672, column: 73)
!2336 = !DILocalVariable(name: "__vpp_verify", scope: !2337, file: !3, line: 673, type: !496)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 673, column: 28)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 673, column: 28)
!2339 = !DILocalVariable(name: "tcp_ptr__", scope: !2340, file: !3, line: 673, type: !64)
!2340 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 673, column: 28)
!2341 = !DILocation(line: 672, column: 23, scope: !2328)
!2342 = !DILocation(line: 672, column: 23, scope: !2327)
!2343 = !DILocation(line: 672, column: 23, scope: !2331)
!2344 = !DILocation(line: 672, column: 23, scope: !2333)
!2345 = !{i64 2153024055}
!2346 = !DILocation(line: 672, column: 6, scope: !2329)
!2347 = !DILocation(line: 672, column: 6, scope: !2324)
!2348 = !DILocation(line: 673, column: 3, scope: !2335)
!2349 = !DILocation(line: 673, column: 23, scope: !2335)
!2350 = !DILocation(line: 673, column: 28, scope: !2338)
!2351 = !DILocation(line: 673, column: 28, scope: !2337)
!2352 = !DILocation(line: 673, column: 28, scope: !2340)
!2353 = !{i64 2153025195}
!2354 = !DILocation(line: 680, column: 7, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 680, column: 7)
!2356 = !DILocation(line: 680, column: 11, scope: !2355)
!2357 = !DILocation(line: 680, column: 16, scope: !2355)
!2358 = !DILocation(line: 680, column: 7, scope: !2335)
!2359 = !DILocation(line: 681, column: 29, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 680, column: 41)
!2361 = !DILocation(line: 681, column: 33, scope: !2360)
!2362 = !DILocation(line: 681, column: 4, scope: !2360)
!2363 = !DILocation(line: 683, column: 3, scope: !2360)
!2364 = !DILocation(line: 684, column: 2, scope: !2329)
!2365 = !DILocation(line: 684, column: 2, scope: !2335)
!2366 = !DILocation(line: 685, column: 1, scope: !2324)
!2367 = !DISubprogram(name: "clockevents_switch_state", scope: !1461, file: !1461, line: 53, type: !2368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !52, !5}
!2370 = distinct !DISubprogram(name: "__tick_broadcast_oneshot_control", scope: !3, file: !3, line: 963, type: !2371, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!63, !43}
!2373 = !{!2374, !2375, !2376, !2379, !2381, !2382, !2385, !2387}
!2374 = !DILocalVariable(name: "state", arg: 1, scope: !2370, file: !3, line: 963, type: !43)
!2375 = !DILocalVariable(name: "td", scope: !2370, file: !3, line: 965, type: !48)
!2376 = !DILocalVariable(name: "__vpp_verify", scope: !2377, file: !3, line: 965, type: !496)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 965, column: 27)
!2378 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 965, column: 27)
!2379 = !DILocalVariable(name: "tcp_ptr__", scope: !2380, file: !3, line: 965, type: !64)
!2380 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 965, column: 27)
!2381 = !DILocalVariable(name: "cpu", scope: !2370, file: !3, line: 966, type: !63)
!2382 = !DILocalVariable(name: "pscr_ret__", scope: !2383, file: !3, line: 966, type: !63)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 966, column: 12)
!2384 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 966, column: 12)
!2385 = !DILocalVariable(name: "__vpp_verify", scope: !2386, file: !3, line: 966, type: !496)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 966, column: 12)
!2387 = !DILocalVariable(name: "pfo_val__", scope: !2388, file: !3, line: 966, type: !83)
!2388 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 966, column: 12)
!2389 = !DILocation(line: 963, column: 64, scope: !2370)
!2390 = !DILocation(line: 965, column: 2, scope: !2370)
!2391 = !DILocation(line: 965, column: 22, scope: !2370)
!2392 = !DILocation(line: 965, column: 27, scope: !2378)
!2393 = !DILocation(line: 965, column: 27, scope: !2377)
!2394 = !DILocation(line: 965, column: 27, scope: !2380)
!2395 = !{i64 2153038681}
!2396 = !DILocation(line: 966, column: 2, scope: !2370)
!2397 = !DILocation(line: 966, column: 6, scope: !2370)
!2398 = !DILocation(line: 966, column: 12, scope: !2384)
!2399 = !DILocation(line: 966, column: 12, scope: !2383)
!2400 = !DILocation(line: 966, column: 12, scope: !2386)
!2401 = !DILocation(line: 966, column: 12, scope: !2388)
!2402 = !{i64 2153041606}
!2403 = !DILocation(line: 968, column: 35, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 968, column: 6)
!2405 = !DILocation(line: 968, column: 42, scope: !2404)
!2406 = !DILocation(line: 968, column: 46, scope: !2404)
!2407 = !DILocation(line: 968, column: 7, scope: !2404)
!2408 = !DILocation(line: 968, column: 6, scope: !2370)
!2409 = !DILocation(line: 969, column: 3, scope: !2404)
!2410 = !DILocation(line: 971, column: 28, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 971, column: 6)
!2412 = !DILocation(line: 971, column: 6, scope: !2411)
!2413 = !DILocation(line: 971, column: 6, scope: !2370)
!2414 = !DILocation(line: 972, column: 44, scope: !2411)
!2415 = !DILocation(line: 972, column: 51, scope: !2411)
!2416 = !DILocation(line: 972, column: 55, scope: !2411)
!2417 = !DILocation(line: 972, column: 10, scope: !2411)
!2418 = !DILocation(line: 972, column: 3, scope: !2411)
!2419 = !DILocation(line: 978, column: 2, scope: !2370)
!2420 = !DILocation(line: 979, column: 1, scope: !2370)
!2421 = distinct !DISubprogram(name: "tick_oneshot_wakeup_control", scope: !3, file: !3, line: 934, type: !2422, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!63, !43, !48, !63}
!2424 = !{!2425, !2426, !2427, !2428, !2429}
!2425 = !DILocalVariable(name: "state", arg: 1, scope: !2421, file: !3, line: 934, type: !43)
!2426 = !DILocalVariable(name: "td", arg: 2, scope: !2421, file: !3, line: 935, type: !48)
!2427 = !DILocalVariable(name: "cpu", arg: 3, scope: !2421, file: !3, line: 936, type: !63)
!2428 = !DILocalVariable(name: "dev", scope: !2421, file: !3, line: 938, type: !52)
!2429 = !DILocalVariable(name: "wd", scope: !2421, file: !3, line: 938, type: !52)
!2430 = !DILocation(line: 934, column: 66, scope: !2421)
!2431 = !DILocation(line: 935, column: 32, scope: !2421)
!2432 = !DILocation(line: 936, column: 16, scope: !2421)
!2433 = !DILocation(line: 938, column: 2, scope: !2421)
!2434 = !DILocation(line: 938, column: 29, scope: !2421)
!2435 = !DILocation(line: 938, column: 35, scope: !2421)
!2436 = !DILocation(line: 940, column: 8, scope: !2421)
!2437 = !DILocation(line: 940, column: 12, scope: !2421)
!2438 = !DILocation(line: 940, column: 6, scope: !2421)
!2439 = !DILocation(line: 941, column: 6, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 941, column: 6)
!2441 = !DILocation(line: 941, column: 10, scope: !2440)
!2442 = !DILocation(line: 941, column: 15, scope: !2440)
!2443 = !DILocation(line: 941, column: 6, scope: !2421)
!2444 = !DILocation(line: 942, column: 3, scope: !2440)
!2445 = !DILocation(line: 944, column: 38, scope: !2421)
!2446 = !DILocation(line: 944, column: 7, scope: !2421)
!2447 = !DILocation(line: 944, column: 5, scope: !2421)
!2448 = !DILocation(line: 945, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 945, column: 6)
!2450 = !DILocation(line: 945, column: 6, scope: !2421)
!2451 = !DILocation(line: 946, column: 3, scope: !2449)
!2452 = !DILocation(line: 948, column: 10, scope: !2421)
!2453 = !DILocation(line: 948, column: 2, scope: !2421)
!2454 = !DILocation(line: 950, column: 28, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 948, column: 17)
!2456 = !DILocation(line: 950, column: 3, scope: !2455)
!2457 = !DILocation(line: 951, column: 28, scope: !2455)
!2458 = !DILocation(line: 951, column: 3, scope: !2455)
!2459 = !DILocation(line: 952, column: 29, scope: !2455)
!2460 = !DILocation(line: 952, column: 33, scope: !2455)
!2461 = !DILocation(line: 952, column: 38, scope: !2455)
!2462 = !DILocation(line: 952, column: 3, scope: !2455)
!2463 = !DILocation(line: 953, column: 3, scope: !2455)
!2464 = !DILocation(line: 956, column: 28, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 956, column: 7)
!2466 = !DILocation(line: 956, column: 7, scope: !2465)
!2467 = !DILocation(line: 956, column: 32, scope: !2465)
!2468 = !DILocation(line: 956, column: 7, scope: !2455)
!2469 = !DILocation(line: 957, column: 4, scope: !2465)
!2470 = !DILocation(line: 958, column: 2, scope: !2455)
!2471 = !DILocation(line: 960, column: 2, scope: !2421)
!2472 = !DILocation(line: 961, column: 1, scope: !2421)
!2473 = distinct !DISubprogram(name: "___tick_broadcast_oneshot_control", scope: !3, file: !3, line: 796, type: !2422, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2474)
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2488, !2491}
!2475 = !DILocalVariable(name: "state", arg: 1, scope: !2473, file: !3, line: 796, type: !43)
!2476 = !DILocalVariable(name: "td", arg: 2, scope: !2473, file: !3, line: 797, type: !48)
!2477 = !DILocalVariable(name: "cpu", arg: 3, scope: !2473, file: !3, line: 798, type: !63)
!2478 = !DILocalVariable(name: "bc", scope: !2473, file: !3, line: 800, type: !52)
!2479 = !DILocalVariable(name: "dev", scope: !2473, file: !3, line: 800, type: !52)
!2480 = !DILocalVariable(name: "ret", scope: !2473, file: !3, line: 801, type: !63)
!2481 = !DILocalVariable(name: "now", scope: !2473, file: !3, line: 802, type: !69)
!2482 = !DILocalVariable(name: "__ret_warn_on", scope: !2483, file: !3, line: 831, type: !63)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 831, column: 4)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 830, column: 68)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 830, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 807, column: 37)
!2487 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 807, column: 6)
!2488 = !DILocalVariable(name: "__flags", scope: !2489, file: !3, line: 831, type: !63)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 831, column: 4)
!2490 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 831, column: 4)
!2491 = !DILabel(scope: !2473, name: "out", file: !3, line: 929)
!2492 = !DILocation(line: 796, column: 72, scope: !2473)
!2493 = !DILocation(line: 797, column: 31, scope: !2473)
!2494 = !DILocation(line: 798, column: 15, scope: !2473)
!2495 = !DILocation(line: 800, column: 2, scope: !2473)
!2496 = !DILocation(line: 800, column: 29, scope: !2473)
!2497 = !DILocation(line: 800, column: 34, scope: !2473)
!2498 = !DILocation(line: 800, column: 40, scope: !2473)
!2499 = !DILocation(line: 800, column: 44, scope: !2473)
!2500 = !DILocation(line: 801, column: 2, scope: !2473)
!2501 = !DILocation(line: 801, column: 6, scope: !2473)
!2502 = !DILocation(line: 802, column: 2, scope: !2473)
!2503 = !DILocation(line: 802, column: 10, scope: !2473)
!2504 = !DILocation(line: 804, column: 2, scope: !2473)
!2505 = !DILocation(line: 805, column: 29, scope: !2473)
!2506 = !DILocation(line: 805, column: 5, scope: !2473)
!2507 = !DILocation(line: 807, column: 6, scope: !2487)
!2508 = !DILocation(line: 807, column: 12, scope: !2487)
!2509 = !DILocation(line: 807, column: 6, scope: !2473)
!2510 = !DILocation(line: 815, column: 29, scope: !2486)
!2511 = !DILocation(line: 815, column: 33, scope: !2486)
!2512 = !DILocation(line: 815, column: 9, scope: !2486)
!2513 = !DILocation(line: 815, column: 7, scope: !2486)
!2514 = !DILocation(line: 816, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 816, column: 7)
!2516 = !DILocation(line: 816, column: 7, scope: !2486)
!2517 = !DILocation(line: 817, column: 4, scope: !2515)
!2518 = !DILocation(line: 823, column: 29, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 823, column: 7)
!2520 = !DILocation(line: 823, column: 34, scope: !2519)
!2521 = !DILocation(line: 823, column: 7, scope: !2486)
!2522 = !DILocation(line: 825, column: 8, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 825, column: 8)
!2524 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 823, column: 60)
!2525 = !DILocation(line: 825, column: 12, scope: !2523)
!2526 = !DILocation(line: 825, column: 21, scope: !2523)
!2527 = !DILocation(line: 825, column: 8, scope: !2524)
!2528 = !DILocation(line: 826, column: 9, scope: !2523)
!2529 = !DILocation(line: 826, column: 5, scope: !2523)
!2530 = !DILocation(line: 827, column: 4, scope: !2524)
!2531 = !DILocation(line: 830, column: 33, scope: !2485)
!2532 = !DILocation(line: 830, column: 8, scope: !2485)
!2533 = !DILocation(line: 830, column: 7, scope: !2486)
!2534 = !DILocation(line: 831, column: 4, scope: !2483)
!2535 = !DILocation(line: 831, column: 4, scope: !2490)
!2536 = !DILocation(line: 831, column: 4, scope: !2489)
!2537 = !DILocation(line: 831, column: 4, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 831, column: 4)
!2539 = !DILocation(line: 831, column: 4, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 831, column: 4)
!2541 = !{i64 2153037248, i64 2153037277, i64 2153037323, i64 2153037381, i64 2153037435, i64 2153037489, i64 2153037544, i64 2153037575, i64 2153037883, i64 2153037889, i64 2153037936, i64 2153037959, i64 2153037985}
!2542 = !DILocation(line: 831, column: 4, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 831, column: 4)
!2544 = !DILocation(line: 831, column: 4, scope: !2484)
!2545 = !DILocation(line: 834, column: 29, scope: !2484)
!2546 = !DILocation(line: 834, column: 33, scope: !2484)
!2547 = !DILocation(line: 834, column: 4, scope: !2484)
!2548 = !DILocation(line: 846, column: 25, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 846, column: 8)
!2550 = !DILocation(line: 846, column: 8, scope: !2549)
!2551 = !DILocation(line: 846, column: 8, scope: !2484)
!2552 = !DILocation(line: 847, column: 9, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 846, column: 58)
!2554 = !DILocation(line: 848, column: 4, scope: !2553)
!2555 = !DILocation(line: 848, column: 15, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 848, column: 15)
!2557 = !DILocation(line: 848, column: 20, scope: !2556)
!2558 = !DILocation(line: 848, column: 33, scope: !2556)
!2559 = !DILocation(line: 848, column: 37, scope: !2556)
!2560 = !DILocation(line: 848, column: 31, scope: !2556)
!2561 = !DILocation(line: 848, column: 15, scope: !2549)
!2562 = !DILocation(line: 849, column: 30, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 848, column: 49)
!2564 = !DILocation(line: 849, column: 34, scope: !2563)
!2565 = !DILocation(line: 849, column: 39, scope: !2563)
!2566 = !DILocation(line: 849, column: 44, scope: !2563)
!2567 = !DILocation(line: 849, column: 5, scope: !2563)
!2568 = !DILocation(line: 857, column: 31, scope: !2563)
!2569 = !DILocation(line: 857, column: 35, scope: !2563)
!2570 = !DILocation(line: 857, column: 11, scope: !2563)
!2571 = !DILocation(line: 857, column: 9, scope: !2563)
!2572 = !DILocation(line: 858, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 858, column: 9)
!2574 = !DILocation(line: 858, column: 9, scope: !2563)
!2575 = !DILocation(line: 859, column: 24, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 858, column: 14)
!2577 = !DILocation(line: 859, column: 6, scope: !2576)
!2578 = !DILocation(line: 861, column: 5, scope: !2576)
!2579 = !DILocation(line: 862, column: 4, scope: !2563)
!2580 = !DILocation(line: 863, column: 3, scope: !2484)
!2581 = !DILocation(line: 864, column: 2, scope: !2486)
!2582 = !DILocation(line: 865, column: 34, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 865, column: 7)
!2584 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 864, column: 9)
!2585 = !DILocation(line: 865, column: 7, scope: !2583)
!2586 = !DILocation(line: 865, column: 7, scope: !2584)
!2587 = !DILocation(line: 866, column: 29, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 865, column: 69)
!2589 = !DILocation(line: 866, column: 4, scope: !2588)
!2590 = !DILocation(line: 876, column: 35, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 876, column: 8)
!2592 = !DILocation(line: 876, column: 8, scope: !2591)
!2593 = !DILocation(line: 876, column: 8, scope: !2588)
!2594 = !DILocation(line: 878, column: 5, scope: !2591)
!2595 = !DILocation(line: 883, column: 8, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 883, column: 8)
!2597 = !DILocation(line: 883, column: 13, scope: !2596)
!2598 = !DILocation(line: 883, column: 24, scope: !2596)
!2599 = !DILocation(line: 883, column: 8, scope: !2588)
!2600 = !DILocation(line: 884, column: 5, scope: !2596)
!2601 = !DILocation(line: 917, column: 10, scope: !2588)
!2602 = !DILocation(line: 917, column: 8, scope: !2588)
!2603 = !DILocation(line: 918, column: 8, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 918, column: 8)
!2605 = !DILocation(line: 918, column: 13, scope: !2604)
!2606 = !DILocation(line: 918, column: 27, scope: !2604)
!2607 = !DILocation(line: 918, column: 24, scope: !2604)
!2608 = !DILocation(line: 918, column: 8, scope: !2588)
!2609 = !DILocation(line: 919, column: 21, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 918, column: 32)
!2611 = !DILocation(line: 919, column: 5, scope: !2610)
!2612 = !DILocation(line: 920, column: 5, scope: !2610)
!2613 = !DILocation(line: 926, column: 23, scope: !2588)
!2614 = !DILocation(line: 926, column: 28, scope: !2588)
!2615 = !DILocation(line: 926, column: 4, scope: !2588)
!2616 = !DILocation(line: 927, column: 3, scope: !2588)
!2617 = !DILocation(line: 807, column: 15, scope: !2487)
!2618 = !DILocation(line: 929, column: 1, scope: !2473)
!2619 = !DILocation(line: 930, column: 2, scope: !2473)
!2620 = !DILocation(line: 931, column: 9, scope: !2473)
!2621 = !DILocation(line: 932, column: 1, scope: !2473)
!2622 = !DILocation(line: 931, column: 2, scope: !2473)
!2623 = distinct !DISubprogram(name: "hotplug_cpu__broadcast_tick_pull", scope: !3, file: !3, line: 1142, type: !1820, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2631, !2632, !2637, !2640, !2642, !2645, !2647, !2649, !2652}
!2625 = !DILocalVariable(name: "deadcpu", arg: 1, scope: !2623, file: !3, line: 1142, type: !63)
!2626 = !DILocalVariable(name: "bc", scope: !2623, file: !3, line: 1144, type: !52)
!2627 = !DILocalVariable(name: "flags", scope: !2623, file: !3, line: 1145, type: !64)
!2628 = !DILocalVariable(name: "__dummy", scope: !2629, file: !3, line: 1147, type: !64)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 1147, column: 2)
!2630 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1147, column: 2)
!2631 = !DILocalVariable(name: "__dummy2", scope: !2629, file: !3, line: 1147, type: !64)
!2632 = !DILocalVariable(name: "td", scope: !2633, file: !3, line: 1169, type: !48)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1168, column: 39)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 1168, column: 7)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 1150, column: 46)
!2636 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1150, column: 6)
!2637 = !DILocalVariable(name: "__vpp_verify", scope: !2638, file: !3, line: 1169, type: !496)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1169, column: 29)
!2639 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 1169, column: 29)
!2640 = !DILocalVariable(name: "tcp_ptr__", scope: !2641, file: !3, line: 1169, type: !64)
!2641 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1169, column: 29)
!2642 = !DILocalVariable(name: "pscr_ret__", scope: !2643, file: !3, line: 1171, type: !63)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1171, column: 22)
!2644 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 1171, column: 22)
!2645 = !DILocalVariable(name: "__vpp_verify", scope: !2646, file: !3, line: 1171, type: !496)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 1171, column: 22)
!2647 = !DILocalVariable(name: "pfo_val__", scope: !2648, file: !3, line: 1171, type: !83)
!2648 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 1171, column: 22)
!2649 = !DILocalVariable(name: "__dummy", scope: !2650, file: !3, line: 1178, type: !64)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1178, column: 2)
!2651 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1178, column: 2)
!2652 = !DILocalVariable(name: "__dummy2", scope: !2650, file: !3, line: 1178, type: !64)
!2653 = !DILocation(line: 1142, column: 43, scope: !2623)
!2654 = !DILocation(line: 1144, column: 2, scope: !2623)
!2655 = !DILocation(line: 1144, column: 29, scope: !2623)
!2656 = !DILocation(line: 1145, column: 2, scope: !2623)
!2657 = !DILocation(line: 1145, column: 16, scope: !2623)
!2658 = !DILocation(line: 1147, column: 2, scope: !2623)
!2659 = !DILocation(line: 1147, column: 2, scope: !2629)
!2660 = !DILocation(line: 1147, column: 2, scope: !2630)
!2661 = !DILocation(line: 1148, column: 29, scope: !2623)
!2662 = !DILocation(line: 1148, column: 5, scope: !2623)
!2663 = !DILocation(line: 1150, column: 6, scope: !2636)
!2664 = !DILocation(line: 1150, column: 9, scope: !2636)
!2665 = !DILocation(line: 1150, column: 32, scope: !2636)
!2666 = !DILocation(line: 1150, column: 36, scope: !2636)
!2667 = !DILocation(line: 1150, column: 12, scope: !2636)
!2668 = !DILocation(line: 1150, column: 6, scope: !2623)
!2669 = !DILocation(line: 1168, column: 7, scope: !2634)
!2670 = !DILocation(line: 1168, column: 7, scope: !2635)
!2671 = !DILocation(line: 1169, column: 4, scope: !2633)
!2672 = !DILocation(line: 1169, column: 24, scope: !2633)
!2673 = !DILocation(line: 1169, column: 29, scope: !2639)
!2674 = !DILocation(line: 1169, column: 29, scope: !2638)
!2675 = !DILocation(line: 1169, column: 29, scope: !2641)
!2676 = !{i64 2153048324}
!2677 = !DILocation(line: 1171, column: 22, scope: !2644)
!2678 = !DILocation(line: 1171, column: 22, scope: !2643)
!2679 = !DILocation(line: 1171, column: 22, scope: !2646)
!2680 = !DILocation(line: 1171, column: 22, scope: !2648)
!2681 = !{i64 2153051249}
!2682 = !DILocation(line: 1171, column: 4, scope: !2633)
!2683 = !DILocation(line: 1172, column: 23, scope: !2633)
!2684 = !DILocation(line: 1172, column: 27, scope: !2633)
!2685 = !DILocation(line: 1172, column: 35, scope: !2633)
!2686 = !DILocation(line: 1172, column: 4, scope: !2633)
!2687 = !DILocation(line: 1173, column: 3, scope: !2634)
!2688 = !DILocation(line: 1173, column: 3, scope: !2633)
!2689 = !DILocation(line: 1176, column: 29, scope: !2635)
!2690 = !DILocation(line: 1176, column: 33, scope: !2635)
!2691 = !DILocation(line: 1176, column: 37, scope: !2635)
!2692 = !DILocation(line: 1176, column: 3, scope: !2635)
!2693 = !DILocation(line: 1177, column: 2, scope: !2635)
!2694 = !DILocation(line: 1178, column: 2, scope: !2623)
!2695 = !DILocation(line: 1178, column: 2, scope: !2650)
!2696 = !DILocation(line: 1178, column: 2, scope: !2651)
!2697 = !DILocation(line: 1179, column: 1, scope: !2623)
!2698 = distinct !DISubprogram(name: "broadcast_needs_cpu", scope: !3, file: !3, line: 770, type: !1571, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2699 = !{!2700, !2701}
!2700 = !DILocalVariable(name: "bc", arg: 1, scope: !2698, file: !3, line: 770, type: !52)
!2701 = !DILocalVariable(name: "cpu", arg: 2, scope: !2698, file: !3, line: 770, type: !63)
!2702 = !DILocation(line: 770, column: 59, scope: !2698)
!2703 = !DILocation(line: 770, column: 67, scope: !2698)
!2704 = !DILocation(line: 772, column: 8, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 772, column: 6)
!2706 = !DILocation(line: 772, column: 12, scope: !2705)
!2707 = !DILocation(line: 772, column: 21, scope: !2705)
!2708 = !DILocation(line: 772, column: 6, scope: !2698)
!2709 = !DILocation(line: 773, column: 3, scope: !2705)
!2710 = !DILocation(line: 774, column: 6, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 774, column: 6)
!2712 = !DILocation(line: 774, column: 10, scope: !2711)
!2713 = !DILocation(line: 774, column: 21, scope: !2711)
!2714 = !DILocation(line: 774, column: 6, scope: !2698)
!2715 = !DILocation(line: 775, column: 3, scope: !2711)
!2716 = !DILocation(line: 776, column: 9, scope: !2698)
!2717 = !DILocation(line: 776, column: 13, scope: !2698)
!2718 = !DILocation(line: 776, column: 25, scope: !2698)
!2719 = !DILocation(line: 776, column: 22, scope: !2698)
!2720 = !DILocation(line: 776, column: 2, scope: !2698)
!2721 = !DILocation(line: 777, column: 1, scope: !2698)
!2722 = !DISubprogram(name: "tick_program_event", scope: !1461, file: !1461, line: 103, type: !2723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!63, !69, !63}
!2725 = !DISubprogram(name: "clockevents_program_event", scope: !1461, file: !1461, line: 55, type: !2726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!63, !52, !69, !575}
!2728 = distinct !DISubprogram(name: "tick_broadcast_oneshot_available", scope: !3, file: !3, line: 1210, type: !622, scopeLine: 1211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "bc", scope: !2728, file: !3, line: 1212, type: !52)
!2731 = !DILocation(line: 1212, column: 2, scope: !2728)
!2732 = !DILocation(line: 1212, column: 29, scope: !2728)
!2733 = !DILocation(line: 1212, column: 56, scope: !2728)
!2734 = !DILocation(line: 1214, column: 9, scope: !2728)
!2735 = !DILocation(line: 1214, column: 14, scope: !2728)
!2736 = !DILocation(line: 1214, column: 18, scope: !2728)
!2737 = !DILocation(line: 1214, column: 27, scope: !2728)
!2738 = !DILocation(line: 1215, column: 1, scope: !2728)
!2739 = !DILocation(line: 1214, column: 2, scope: !2728)
!2740 = distinct !DISubprogram(name: "tick_broadcast_init", scope: !3, file: !3, line: 1229, type: !1157, scopeLine: 1230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2741 = !DILocation(line: 1231, column: 2, scope: !2740)
!2742 = !DILocation(line: 1232, column: 2, scope: !2740)
!2743 = !DILocation(line: 1233, column: 2, scope: !2740)
!2744 = !DILocation(line: 1235, column: 2, scope: !2740)
!2745 = !DILocation(line: 1236, column: 2, scope: !2740)
!2746 = !DILocation(line: 1237, column: 2, scope: !2740)
!2747 = !DILocation(line: 1239, column: 1, scope: !2740)
!2748 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !104, file: !104, line: 929, type: !2749, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2752)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!575, !2751, !1161}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!2752 = !{!2753, !2754}
!2753 = !DILocalVariable(name: "mask", arg: 1, scope: !2748, file: !104, line: 929, type: !2751)
!2754 = !DILocalVariable(name: "flags", arg: 2, scope: !2748, file: !104, line: 929, type: !1161)
!2755 = !DILocation(line: 929, column: 54, scope: !2748)
!2756 = !DILocation(line: 929, column: 66, scope: !2748)
!2757 = !DILocation(line: 931, column: 17, scope: !2748)
!2758 = !DILocation(line: 931, column: 16, scope: !2748)
!2759 = !DILocation(line: 931, column: 2, scope: !2748)
!2760 = !DILocation(line: 932, column: 2, scope: !2748)
!2761 = distinct !DISubprogram(name: "cpumask_equal", scope: !104, file: !104, line: 621, type: !2762, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!575, !101, !101}
!2764 = !{!2765, !2766}
!2765 = !DILocalVariable(name: "src1p", arg: 1, scope: !2761, file: !104, line: 621, type: !101)
!2766 = !DILocalVariable(name: "src2p", arg: 2, scope: !2761, file: !104, line: 622, type: !101)
!2767 = !DILocation(line: 621, column: 56, scope: !2761)
!2768 = !DILocation(line: 622, column: 27, scope: !2761)
!2769 = !DILocation(line: 624, column: 22, scope: !2761)
!2770 = !DILocation(line: 624, column: 43, scope: !2761)
!2771 = !DILocation(line: 624, column: 9, scope: !2761)
!2772 = !DILocation(line: 624, column: 2, scope: !2761)
!2773 = distinct !DISubprogram(name: "get_cpu_mask", scope: !104, file: !104, line: 1056, type: !2774, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!101, !7}
!2776 = !{!2777, !2778}
!2777 = !DILocalVariable(name: "cpu", arg: 1, scope: !2773, file: !104, line: 1056, type: !7)
!2778 = !DILocalVariable(name: "p", scope: !2773, file: !104, line: 1058, type: !2779)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2781 = !DILocation(line: 1056, column: 63, scope: !2773)
!2782 = !DILocation(line: 1058, column: 2, scope: !2773)
!2783 = !DILocation(line: 1058, column: 23, scope: !2773)
!2784 = !DILocation(line: 1058, column: 46, scope: !2773)
!2785 = !DILocation(line: 1058, column: 50, scope: !2773)
!2786 = !DILocation(line: 1058, column: 44, scope: !2773)
!2787 = !DILocation(line: 1058, column: 27, scope: !2773)
!2788 = !DILocation(line: 1059, column: 7, scope: !2773)
!2789 = !DILocation(line: 1059, column: 11, scope: !2773)
!2790 = !DILocation(line: 1059, column: 4, scope: !2773)
!2791 = !DILocation(line: 1060, column: 9, scope: !2773)
!2792 = !DILocation(line: 1061, column: 1, scope: !2773)
!2793 = !DILocation(line: 1060, column: 2, scope: !2773)
!2794 = distinct !DISubprogram(name: "tick_oneshot_wakeup_handler", scope: !3, file: !3, line: 107, type: !57, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2795)
!2795 = !{!2796}
!2796 = !DILocalVariable(name: "wd", arg: 1, scope: !2794, file: !3, line: 107, type: !52)
!2797 = !DILocation(line: 107, column: 68, scope: !2794)
!2798 = !DILocation(line: 113, column: 2, scope: !2794)
!2799 = !DILocation(line: 114, column: 1, scope: !2794)
!2800 = distinct !DISubprogram(name: "bitmap_equal", scope: !2801, file: !2801, line: 386, type: !2802, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2804)
!2801 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!575, !2779, !2779, !7}
!2804 = !{!2805, !2806, !2807}
!2805 = !DILocalVariable(name: "src1", arg: 1, scope: !2800, file: !2801, line: 386, type: !2779)
!2806 = !DILocalVariable(name: "src2", arg: 2, scope: !2800, file: !2801, line: 387, type: !2779)
!2807 = !DILocalVariable(name: "nbits", arg: 3, scope: !2800, file: !2801, line: 387, type: !7)
!2808 = !DILocation(line: 386, column: 54, scope: !2800)
!2809 = !DILocation(line: 387, column: 26, scope: !2800)
!2810 = !DILocation(line: 387, column: 45, scope: !2800)
!2811 = !DILocation(line: 389, column: 6, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2800, file: !2801, line: 389, column: 6)
!2813 = !DILocation(line: 389, column: 6, scope: !2800)
!2814 = !DILocation(line: 390, column: 14, scope: !2812)
!2815 = !DILocation(line: 390, column: 13, scope: !2812)
!2816 = !DILocation(line: 390, column: 22, scope: !2812)
!2817 = !DILocation(line: 390, column: 21, scope: !2812)
!2818 = !DILocation(line: 390, column: 19, scope: !2812)
!2819 = !DILocation(line: 390, column: 30, scope: !2812)
!2820 = !DILocation(line: 390, column: 28, scope: !2812)
!2821 = !DILocation(line: 390, column: 10, scope: !2812)
!2822 = !DILocation(line: 390, column: 3, scope: !2812)
!2823 = !DILocation(line: 391, column: 27, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2800, file: !2801, line: 391, column: 6)
!2825 = !DILocation(line: 391, column: 33, scope: !2824)
!2826 = !DILocation(line: 391, column: 6, scope: !2824)
!2827 = !DILocation(line: 391, column: 52, scope: !2824)
!2828 = !DILocation(line: 392, column: 6, scope: !2824)
!2829 = !DILocation(line: 391, column: 6, scope: !2800)
!2830 = !DILocation(line: 393, column: 18, scope: !2824)
!2831 = !DILocation(line: 393, column: 24, scope: !2824)
!2832 = !DILocation(line: 393, column: 30, scope: !2824)
!2833 = !DILocation(line: 393, column: 36, scope: !2824)
!2834 = !DILocation(line: 393, column: 11, scope: !2824)
!2835 = !DILocation(line: 393, column: 10, scope: !2824)
!2836 = !DILocation(line: 393, column: 3, scope: !2824)
!2837 = !DILocation(line: 394, column: 24, scope: !2800)
!2838 = !DILocation(line: 394, column: 30, scope: !2800)
!2839 = !DILocation(line: 394, column: 36, scope: !2800)
!2840 = !DILocation(line: 394, column: 9, scope: !2800)
!2841 = !DILocation(line: 394, column: 2, scope: !2800)
!2842 = !DILocation(line: 395, column: 1, scope: !2800)
!2843 = !DISubprogram(name: "memcmp", scope: !2844, file: !2844, line: 196, type: !2845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2844 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!63, !496, !496, !272}
!2847 = !DISubprogram(name: "__bitmap_equal", scope: !2801, file: !2801, line: 142, type: !2802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2848 = distinct !DISubprogram(name: "bitmap_empty", scope: !2801, file: !2801, line: 436, type: !2849, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!575, !2779, !7}
!2851 = !{!2852, !2853}
!2852 = !DILocalVariable(name: "src", arg: 1, scope: !2848, file: !2801, line: 436, type: !2779)
!2853 = !DILocalVariable(name: "nbits", arg: 2, scope: !2848, file: !2801, line: 436, type: !7)
!2854 = !DILocation(line: 436, column: 54, scope: !2848)
!2855 = !DILocation(line: 436, column: 68, scope: !2848)
!2856 = !DILocation(line: 438, column: 6, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2848, file: !2801, line: 438, column: 6)
!2858 = !DILocation(line: 438, column: 6, scope: !2848)
!2859 = !DILocation(line: 439, column: 14, scope: !2857)
!2860 = !DILocation(line: 439, column: 13, scope: !2857)
!2861 = !DILocation(line: 439, column: 20, scope: !2857)
!2862 = !DILocation(line: 439, column: 18, scope: !2857)
!2863 = !DILocation(line: 439, column: 10, scope: !2857)
!2864 = !DILocation(line: 439, column: 3, scope: !2857)
!2865 = !DILocation(line: 441, column: 24, scope: !2848)
!2866 = !DILocation(line: 441, column: 29, scope: !2848)
!2867 = !DILocation(line: 441, column: 9, scope: !2848)
!2868 = !DILocation(line: 441, column: 39, scope: !2848)
!2869 = !DILocation(line: 441, column: 36, scope: !2848)
!2870 = !DILocation(line: 441, column: 2, scope: !2848)
!2871 = !DILocation(line: 442, column: 1, scope: !2848)
!2872 = distinct !DISubprogram(name: "find_first_bit", scope: !2873, file: !2873, line: 200, type: !2874, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2876)
!2873 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!64, !2779, !64}
!2876 = !{!2877, !2878, !2879}
!2877 = !DILocalVariable(name: "addr", arg: 1, scope: !2872, file: !2873, line: 200, type: !2779)
!2878 = !DILocalVariable(name: "size", arg: 2, scope: !2872, file: !2873, line: 200, type: !64)
!2879 = !DILocalVariable(name: "val", scope: !2880, file: !2873, line: 203, type: !64)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !2873, line: 202, column: 31)
!2881 = distinct !DILexicalBlock(scope: !2872, file: !2873, line: 202, column: 6)
!2882 = !DILocation(line: 200, column: 51, scope: !2872)
!2883 = !DILocation(line: 200, column: 71, scope: !2872)
!2884 = !DILocation(line: 202, column: 6, scope: !2881)
!2885 = !DILocation(line: 202, column: 6, scope: !2872)
!2886 = !DILocation(line: 203, column: 3, scope: !2880)
!2887 = !DILocation(line: 203, column: 17, scope: !2880)
!2888 = !DILocation(line: 203, column: 24, scope: !2880)
!2889 = !DILocation(line: 203, column: 23, scope: !2880)
!2890 = !DILocation(line: 203, column: 31, scope: !2880)
!2891 = !DILocation(line: 203, column: 29, scope: !2880)
!2892 = !DILocation(line: 205, column: 10, scope: !2880)
!2893 = !DILocation(line: 205, column: 16, scope: !2880)
!2894 = !DILocation(line: 205, column: 29, scope: !2880)
!2895 = !DILocation(line: 205, column: 3, scope: !2880)
!2896 = !DILocation(line: 206, column: 2, scope: !2881)
!2897 = !DILocation(line: 208, column: 25, scope: !2872)
!2898 = !DILocation(line: 208, column: 31, scope: !2872)
!2899 = !DILocation(line: 208, column: 9, scope: !2872)
!2900 = !DILocation(line: 208, column: 2, scope: !2872)
!2901 = !DILocation(line: 209, column: 1, scope: !2872)
!2902 = distinct !DISubprogram(name: "variable__ffs", scope: !2304, file: !2304, line: 250, type: !2903, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!64, !64}
!2905 = !{!2906}
!2906 = !DILocalVariable(name: "word", arg: 1, scope: !2902, file: !2304, line: 250, type: !64)
!2907 = !DILocation(line: 250, column: 66, scope: !2902)
!2908 = !DILocation(line: 254, column: 11, scope: !2902)
!2909 = !DILocation(line: 252, column: 2, scope: !2902)
!2910 = !{i64 535274}
!2911 = !DILocation(line: 255, column: 9, scope: !2902)
!2912 = !DILocation(line: 255, column: 2, scope: !2902)
!2913 = !DISubprogram(name: "_find_first_bit", scope: !2873, file: !2873, line: 21, type: !2874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2914 = !DISubprogram(name: "_printk", scope: !2915, file: !2915, line: 153, type: !2916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2915 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!63, !115, null}
!2918 = !DILocation(line: 227, column: 49, scope: !1214)
!2919 = !DILocation(line: 229, column: 2, scope: !1218)
!2920 = !DILocation(line: 229, column: 2, scope: !1220)
!2921 = !DILocation(line: 229, column: 2, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 229, column: 2)
!2923 = !DILocation(line: 0, scope: !2922)
!2924 = !DILocation(line: 229, column: 2, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 229, column: 2)
!2926 = !DILocation(line: 229, column: 2, scope: !1221)
!2927 = !DILocation(line: 229, column: 2, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 229, column: 2)
!2929 = !DILocation(line: 229, column: 2, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 229, column: 2)
!2931 = !DILocation(line: 229, column: 2, scope: !1214)
!2932 = !DILocation(line: 230, column: 1, scope: !1214)
!2933 = distinct !DISubprogram(name: "set_bit", scope: !2934, file: !2934, line: 26, type: !2935, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2938)
!2934 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !260, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2938 = !{!2939, !2940}
!2939 = !DILocalVariable(name: "nr", arg: 1, scope: !2933, file: !2934, line: 26, type: !260)
!2940 = !DILocalVariable(name: "addr", arg: 2, scope: !2933, file: !2934, line: 26, type: !2937)
!2941 = !DILocation(line: 26, column: 42, scope: !2933)
!2942 = !DILocation(line: 26, column: 70, scope: !2933)
!2943 = !DILocation(line: 28, column: 26, scope: !2933)
!2944 = !DILocation(line: 28, column: 33, scope: !2933)
!2945 = !DILocation(line: 28, column: 31, scope: !2933)
!2946 = !DILocation(line: 28, column: 2, scope: !2933)
!2947 = !DILocation(line: 29, column: 15, scope: !2933)
!2948 = !DILocation(line: 29, column: 19, scope: !2933)
!2949 = !DILocation(line: 29, column: 2, scope: !2933)
!2950 = !DILocation(line: 30, column: 1, scope: !2933)
!2951 = distinct !DISubprogram(name: "cpumask_check", scope: !104, file: !104, line: 148, type: !2952, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!7, !7}
!2954 = !{!2955}
!2955 = !DILocalVariable(name: "cpu", arg: 1, scope: !2951, file: !104, line: 148, type: !7)
!2956 = !DILocation(line: 148, column: 64, scope: !2951)
!2957 = !DILocation(line: 150, column: 20, scope: !2951)
!2958 = !DILocation(line: 150, column: 2, scope: !2951)
!2959 = !DILocation(line: 151, column: 9, scope: !2951)
!2960 = !DILocation(line: 151, column: 2, scope: !2951)
!2961 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2962, file: !2962, line: 80, type: !2963, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2968)
!2962 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2965, !271}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2967)
!2967 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2968 = !{!2969, !2970}
!2969 = !DILocalVariable(name: "v", arg: 1, scope: !2961, file: !2962, line: 80, type: !2965)
!2970 = !DILocalVariable(name: "size", arg: 2, scope: !2961, file: !2962, line: 80, type: !271)
!2971 = !DILocation(line: 80, column: 74, scope: !2961)
!2972 = !DILocation(line: 80, column: 84, scope: !2961)
!2973 = !DILocation(line: 82, column: 20, scope: !2961)
!2974 = !DILocation(line: 82, column: 23, scope: !2961)
!2975 = !DILocation(line: 82, column: 2, scope: !2961)
!2976 = !DILocation(line: 83, column: 2, scope: !2961)
!2977 = !DILocation(line: 84, column: 1, scope: !2961)
!2978 = distinct !DISubprogram(name: "arch_set_bit", scope: !2304, file: !2304, line: 52, type: !2935, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "nr", arg: 1, scope: !2978, file: !2304, line: 52, type: !260)
!2981 = !DILocalVariable(name: "addr", arg: 2, scope: !2978, file: !2304, line: 52, type: !2937)
!2982 = !DILocation(line: 52, column: 19, scope: !2978)
!2983 = !DILocation(line: 52, column: 47, scope: !2978)
!2984 = !DILocation(line: 54, column: 27, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2978, file: !2304, line: 54, column: 6)
!2986 = !DILocation(line: 54, column: 6, scope: !2985)
!2987 = !DILocation(line: 54, column: 6, scope: !2978)
!2988 = !DILocation(line: 56, column: 6, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !2304, line: 54, column: 32)
!2990 = !DILocation(line: 57, column: 12, scope: !2989)
!2991 = !DILocation(line: 55, column: 3, scope: !2989)
!2992 = !{i64 2148026587, i64 2148026626, i64 2148026647, i64 2148026684, i64 2148026707, i64 2148026577}
!2993 = !DILocation(line: 59, column: 2, scope: !2989)
!2994 = !DILocation(line: 61, column: 8, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2985, file: !2304, line: 59, column: 9)
!2996 = !DILocation(line: 61, column: 32, scope: !2995)
!2997 = !DILocation(line: 60, column: 3, scope: !2995)
!2998 = !{i64 2148026872, i64 2148026911, i64 2148026932, i64 2148026969, i64 2148026992, i64 2148026862}
!2999 = !DILocation(line: 63, column: 1, scope: !2978)
!3000 = distinct !DISubprogram(name: "kasan_check_write", scope: !3001, file: !3001, line: 44, type: !3002, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3001 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!575, !2965, !7}
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "p", arg: 1, scope: !3000, file: !3001, line: 44, type: !2965)
!3006 = !DILocalVariable(name: "size", arg: 2, scope: !3000, file: !3001, line: 44, type: !7)
!3007 = !DILocation(line: 44, column: 59, scope: !3000)
!3008 = !DILocation(line: 44, column: 75, scope: !3000)
!3009 = !DILocation(line: 46, column: 2, scope: !3000)
!3010 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3011, file: !3011, line: 229, type: !3012, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3014)
!3011 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2965, !271, !63}
!3014 = !{!3015, !3016, !3017}
!3015 = !DILocalVariable(name: "ptr", arg: 1, scope: !3010, file: !3011, line: 229, type: !2965)
!3016 = !DILocalVariable(name: "size", arg: 2, scope: !3010, file: !3011, line: 229, type: !271)
!3017 = !DILocalVariable(name: "type", arg: 3, scope: !3010, file: !3011, line: 230, type: !63)
!3018 = !DILocation(line: 229, column: 60, scope: !3010)
!3019 = !DILocation(line: 229, column: 72, scope: !3010)
!3020 = !DILocation(line: 230, column: 15, scope: !3010)
!3021 = !DILocation(line: 230, column: 23, scope: !3010)
!3022 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !104, file: !104, line: 140, type: !3023, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !7, !7}
!3025 = !{!3026, !3027}
!3026 = !DILocalVariable(name: "cpu", arg: 1, scope: !3022, file: !104, line: 140, type: !7)
!3027 = !DILocalVariable(name: "bits", arg: 2, scope: !3022, file: !104, line: 140, type: !7)
!3028 = !DILocation(line: 140, column: 60, scope: !3022)
!3029 = !DILocation(line: 140, column: 78, scope: !3022)
!3030 = !DILocation(line: 145, column: 1, scope: !3022)
!3031 = distinct !DISubprogram(name: "clear_bit", scope: !2934, file: !2934, line: 39, type: !2935, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3032)
!3032 = !{!3033, !3034}
!3033 = !DILocalVariable(name: "nr", arg: 1, scope: !3031, file: !2934, line: 39, type: !260)
!3034 = !DILocalVariable(name: "addr", arg: 2, scope: !3031, file: !2934, line: 39, type: !2937)
!3035 = !DILocation(line: 39, column: 44, scope: !3031)
!3036 = !DILocation(line: 39, column: 72, scope: !3031)
!3037 = !DILocation(line: 41, column: 26, scope: !3031)
!3038 = !DILocation(line: 41, column: 33, scope: !3031)
!3039 = !DILocation(line: 41, column: 31, scope: !3031)
!3040 = !DILocation(line: 41, column: 2, scope: !3031)
!3041 = !DILocation(line: 42, column: 17, scope: !3031)
!3042 = !DILocation(line: 42, column: 21, scope: !3031)
!3043 = !DILocation(line: 42, column: 2, scope: !3031)
!3044 = !DILocation(line: 43, column: 1, scope: !3031)
!3045 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2304, file: !2304, line: 72, type: !2935, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3046)
!3046 = !{!3047, !3048}
!3047 = !DILocalVariable(name: "nr", arg: 1, scope: !3045, file: !2304, line: 72, type: !260)
!3048 = !DILocalVariable(name: "addr", arg: 2, scope: !3045, file: !2304, line: 72, type: !2937)
!3049 = !DILocation(line: 72, column: 21, scope: !3045)
!3050 = !DILocation(line: 72, column: 49, scope: !3045)
!3051 = !DILocation(line: 74, column: 27, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3045, file: !2304, line: 74, column: 6)
!3053 = !DILocation(line: 74, column: 6, scope: !3052)
!3054 = !DILocation(line: 74, column: 6, scope: !3045)
!3055 = !DILocation(line: 76, column: 6, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !2304, line: 74, column: 32)
!3057 = !DILocation(line: 77, column: 13, scope: !3056)
!3058 = !DILocation(line: 77, column: 12, scope: !3056)
!3059 = !DILocation(line: 75, column: 3, scope: !3056)
!3060 = !{i64 2148027875, i64 2148027914, i64 2148027935, i64 2148027972, i64 2148027995, i64 2148027865}
!3061 = !DILocation(line: 78, column: 2, scope: !3056)
!3062 = !DILocation(line: 80, column: 8, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3052, file: !2304, line: 78, column: 9)
!3064 = !DILocation(line: 80, column: 32, scope: !3063)
!3065 = !DILocation(line: 79, column: 3, scope: !3063)
!3066 = !{i64 2148028160, i64 2148028199, i64 2148028220, i64 2148028257, i64 2148028280, i64 2148028150}
!3067 = !DILocation(line: 82, column: 1, scope: !3045)
!3068 = distinct !DISubprogram(name: "_test_bit", scope: !3069, file: !3069, line: 139, type: !2305, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3070)
!3069 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3070 = !{!3071, !3072}
!3071 = !DILocalVariable(name: "nr", arg: 1, scope: !3068, file: !3069, line: 139, type: !64)
!3072 = !DILocalVariable(name: "addr", arg: 2, scope: !3068, file: !3069, line: 139, type: !2307)
!3073 = !DILocation(line: 139, column: 25, scope: !3068)
!3074 = !DILocation(line: 139, column: 59, scope: !3068)
!3075 = !DILocation(line: 141, column: 25, scope: !3068)
!3076 = !DILocation(line: 141, column: 32, scope: !3068)
!3077 = !DILocation(line: 141, column: 30, scope: !3068)
!3078 = !DILocation(line: 141, column: 2, scope: !3068)
!3079 = !DILocation(line: 142, column: 23, scope: !3068)
!3080 = !DILocation(line: 142, column: 27, scope: !3068)
!3081 = !DILocation(line: 142, column: 9, scope: !3068)
!3082 = !DILocation(line: 142, column: 2, scope: !3068)
!3083 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2962, file: !2962, line: 66, type: !2963, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3084)
!3084 = !{!3085, !3086}
!3085 = !DILocalVariable(name: "v", arg: 1, scope: !3083, file: !2962, line: 66, type: !2965)
!3086 = !DILocalVariable(name: "size", arg: 2, scope: !3083, file: !2962, line: 66, type: !271)
!3087 = !DILocation(line: 66, column: 73, scope: !3083)
!3088 = !DILocation(line: 66, column: 83, scope: !3083)
!3089 = !DILocation(line: 68, column: 19, scope: !3083)
!3090 = !DILocation(line: 68, column: 22, scope: !3083)
!3091 = !DILocation(line: 68, column: 2, scope: !3083)
!3092 = !DILocation(line: 69, column: 2, scope: !3083)
!3093 = !DILocation(line: 70, column: 1, scope: !3083)
!3094 = distinct !DISubprogram(name: "kasan_check_read", scope: !3001, file: !3001, line: 40, type: !3002, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3095)
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "p", arg: 1, scope: !3094, file: !3001, line: 40, type: !2965)
!3097 = !DILocalVariable(name: "size", arg: 2, scope: !3094, file: !3001, line: 40, type: !7)
!3098 = !DILocation(line: 40, column: 58, scope: !3094)
!3099 = !DILocation(line: 40, column: 74, scope: !3094)
!3100 = !DILocation(line: 42, column: 2, scope: !3094)
!3101 = distinct !DISubprogram(name: "test_and_set_bit", scope: !2934, file: !2934, line: 68, type: !3102, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!575, !260, !2937}
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "nr", arg: 1, scope: !3101, file: !2934, line: 68, type: !260)
!3106 = !DILocalVariable(name: "addr", arg: 2, scope: !3101, file: !2934, line: 68, type: !2937)
!3107 = !DILocation(line: 68, column: 51, scope: !3101)
!3108 = !DILocation(line: 68, column: 79, scope: !3101)
!3109 = !DILocation(line: 70, column: 2, scope: !3101)
!3110 = !DILocation(line: 70, column: 2, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3101, file: !2934, line: 70, column: 2)
!3112 = !DILocation(line: 71, column: 31, scope: !3101)
!3113 = !DILocation(line: 71, column: 38, scope: !3101)
!3114 = !DILocation(line: 71, column: 36, scope: !3101)
!3115 = !DILocation(line: 71, column: 2, scope: !3101)
!3116 = !DILocation(line: 72, column: 31, scope: !3101)
!3117 = !DILocation(line: 72, column: 35, scope: !3101)
!3118 = !DILocation(line: 72, column: 9, scope: !3101)
!3119 = !DILocation(line: 72, column: 2, scope: !3101)
!3120 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2962, file: !2962, line: 94, type: !2963, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3121)
!3121 = !{!3122, !3123}
!3122 = !DILocalVariable(name: "v", arg: 1, scope: !3120, file: !2962, line: 94, type: !2965)
!3123 = !DILocalVariable(name: "size", arg: 2, scope: !3120, file: !2962, line: 94, type: !271)
!3124 = !DILocation(line: 94, column: 79, scope: !3120)
!3125 = !DILocation(line: 94, column: 89, scope: !3120)
!3126 = !DILocation(line: 96, column: 20, scope: !3120)
!3127 = !DILocation(line: 96, column: 23, scope: !3120)
!3128 = !DILocation(line: 96, column: 2, scope: !3120)
!3129 = !DILocation(line: 97, column: 2, scope: !3120)
!3130 = !DILocation(line: 98, column: 1, scope: !3120)
!3131 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !2304, file: !2304, line: 136, type: !3102, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3132)
!3132 = !{!3133, !3134, !3135}
!3133 = !DILocalVariable(name: "nr", arg: 1, scope: !3131, file: !2304, line: 136, type: !260)
!3134 = !DILocalVariable(name: "addr", arg: 2, scope: !3131, file: !2304, line: 136, type: !2937)
!3135 = !DILocalVariable(name: "c", scope: !3136, file: !2304, line: 138, type: !575)
!3136 = distinct !DILexicalBlock(scope: !3131, file: !2304, line: 138, column: 9)
!3137 = !DILocation(line: 136, column: 28, scope: !3131)
!3138 = !DILocation(line: 136, column: 56, scope: !3131)
!3139 = !DILocation(line: 138, column: 9, scope: !3136)
!3140 = !{i64 2148033038, i64 2148033077, i64 2148033098, i64 2148033135, i64 2148033158, i64 2148033167, i64 2148033270}
!3141 = !DILocation(line: 138, column: 9, scope: !3131)
!3142 = !DILocation(line: 138, column: 2, scope: !3131)
!3143 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !2934, file: !2934, line: 82, type: !3102, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "nr", arg: 1, scope: !3143, file: !2934, line: 82, type: !260)
!3146 = !DILocalVariable(name: "addr", arg: 2, scope: !3143, file: !2934, line: 82, type: !2937)
!3147 = !DILocation(line: 82, column: 53, scope: !3143)
!3148 = !DILocation(line: 82, column: 81, scope: !3143)
!3149 = !DILocation(line: 84, column: 2, scope: !3143)
!3150 = !DILocation(line: 84, column: 2, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3143, file: !2934, line: 84, column: 2)
!3152 = !DILocation(line: 85, column: 31, scope: !3143)
!3153 = !DILocation(line: 85, column: 38, scope: !3143)
!3154 = !DILocation(line: 85, column: 36, scope: !3143)
!3155 = !DILocation(line: 85, column: 2, scope: !3143)
!3156 = !DILocation(line: 86, column: 33, scope: !3143)
!3157 = !DILocation(line: 86, column: 37, scope: !3143)
!3158 = !DILocation(line: 86, column: 9, scope: !3143)
!3159 = !DILocation(line: 86, column: 2, scope: !3143)
!3160 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !2304, file: !2304, line: 160, type: !3102, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3161)
!3161 = !{!3162, !3163, !3164}
!3162 = !DILocalVariable(name: "nr", arg: 1, scope: !3160, file: !2304, line: 160, type: !260)
!3163 = !DILocalVariable(name: "addr", arg: 2, scope: !3160, file: !2304, line: 160, type: !2937)
!3164 = !DILocalVariable(name: "c", scope: !3165, file: !2304, line: 162, type: !575)
!3165 = distinct !DILexicalBlock(scope: !3160, file: !2304, line: 162, column: 9)
!3166 = !DILocation(line: 160, column: 30, scope: !3160)
!3167 = !DILocation(line: 160, column: 58, scope: !3160)
!3168 = !DILocation(line: 162, column: 9, scope: !3165)
!3169 = !{i64 2148035940, i64 2148035979, i64 2148036000, i64 2148036037, i64 2148036060, i64 2148036069, i64 2148036172}
!3170 = !DILocation(line: 162, column: 9, scope: !3160)
!3171 = !DILocation(line: 162, column: 2, scope: !3160)
!3172 = distinct !DISubprogram(name: "clockevent_state_shutdown", scope: !6, file: !6, line: 140, type: !3173, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!575, !52}
!3175 = !{!3176}
!3176 = !DILocalVariable(name: "dev", arg: 1, scope: !3172, file: !6, line: 140, type: !52)
!3177 = !DILocation(line: 140, column: 73, scope: !3172)
!3178 = !DILocation(line: 142, column: 9, scope: !3172)
!3179 = !DILocation(line: 142, column: 14, scope: !3172)
!3180 = !DILocation(line: 142, column: 34, scope: !3172)
!3181 = !DILocation(line: 142, column: 2, scope: !3172)
!3182 = distinct !DISubprogram(name: "tick_do_periodic_broadcast", scope: !3, file: !3, line: 391, type: !622, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3183 = !DILocation(line: 393, column: 2, scope: !3182)
!3184 = !DILocation(line: 394, column: 9, scope: !3182)
!3185 = !DILocation(line: 394, column: 2, scope: !3182)
!3186 = distinct !DISubprogram(name: "clockevent_state_oneshot", scope: !6, file: !6, line: 150, type: !3173, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3187)
!3187 = !{!3188}
!3188 = !DILocalVariable(name: "dev", arg: 1, scope: !3186, file: !6, line: 150, type: !52)
!3189 = !DILocation(line: 150, column: 72, scope: !3186)
!3190 = !DILocation(line: 152, column: 9, scope: !3186)
!3191 = !DILocation(line: 152, column: 14, scope: !3186)
!3192 = !DILocation(line: 152, column: 34, scope: !3186)
!3193 = !DILocation(line: 152, column: 2, scope: !3186)
!3194 = distinct !DISubprogram(name: "cpumask_and", scope: !104, file: !104, line: 565, type: !3195, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!575, !1163, !101, !101}
!3197 = !{!3198, !3199, !3200}
!3198 = !DILocalVariable(name: "dstp", arg: 1, scope: !3194, file: !104, line: 565, type: !1163)
!3199 = !DILocalVariable(name: "src1p", arg: 2, scope: !3194, file: !104, line: 566, type: !101)
!3200 = !DILocalVariable(name: "src2p", arg: 3, scope: !3194, file: !104, line: 567, type: !101)
!3201 = !DILocation(line: 565, column: 48, scope: !3194)
!3202 = !DILocation(line: 566, column: 33, scope: !3194)
!3203 = !DILocation(line: 567, column: 33, scope: !3194)
!3204 = !DILocation(line: 569, column: 20, scope: !3194)
!3205 = !DILocation(line: 569, column: 40, scope: !3194)
!3206 = !DILocation(line: 570, column: 12, scope: !3194)
!3207 = !DILocation(line: 569, column: 9, scope: !3194)
!3208 = !DILocation(line: 569, column: 2, scope: !3194)
!3209 = distinct !DISubprogram(name: "tick_do_broadcast", scope: !3, file: !3, line: 346, type: !3210, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!575, !1163}
!3212 = !{!3213, !3214, !3215, !3218, !3220, !3222, !3223, !3224, !3227, !3232}
!3213 = !DILocalVariable(name: "mask", arg: 1, scope: !3209, file: !3, line: 346, type: !1163)
!3214 = !DILocalVariable(name: "cpu", scope: !3209, file: !3, line: 348, type: !63)
!3215 = !DILocalVariable(name: "pscr_ret__", scope: !3216, file: !3, line: 348, type: !63)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 348, column: 12)
!3217 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 348, column: 12)
!3218 = !DILocalVariable(name: "__vpp_verify", scope: !3219, file: !3, line: 348, type: !496)
!3219 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 348, column: 12)
!3220 = !DILocalVariable(name: "pfo_val__", scope: !3221, file: !3, line: 348, type: !83)
!3221 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 348, column: 12)
!3222 = !DILocalVariable(name: "td", scope: !3209, file: !3, line: 349, type: !48)
!3223 = !DILocalVariable(name: "local", scope: !3209, file: !3, line: 350, type: !575)
!3224 = !DILocalVariable(name: "bc", scope: !3225, file: !3, line: 356, type: !52)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 355, column: 35)
!3226 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 355, column: 6)
!3227 = !DILocalVariable(name: "__vpp_verify", scope: !3228, file: !3, line: 381, type: !496)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 381, column: 9)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 381, column: 9)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 374, column: 28)
!3231 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 374, column: 6)
!3232 = !DILocalVariable(name: "__ptr", scope: !3233, file: !3, line: 381, type: !64)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 381, column: 9)
!3234 = !DILocation(line: 346, column: 47, scope: !3209)
!3235 = !DILocation(line: 348, column: 2, scope: !3209)
!3236 = !DILocation(line: 348, column: 6, scope: !3209)
!3237 = !DILocation(line: 348, column: 12, scope: !3217)
!3238 = !DILocation(line: 348, column: 12, scope: !3216)
!3239 = !DILocation(line: 348, column: 12, scope: !3219)
!3240 = !DILocation(line: 348, column: 12, scope: !3221)
!3241 = !{i64 2153003891}
!3242 = !DILocation(line: 349, column: 2, scope: !3209)
!3243 = !DILocation(line: 349, column: 22, scope: !3209)
!3244 = !DILocation(line: 350, column: 2, scope: !3209)
!3245 = !DILocation(line: 350, column: 7, scope: !3209)
!3246 = !DILocation(line: 355, column: 23, scope: !3226)
!3247 = !DILocation(line: 355, column: 28, scope: !3226)
!3248 = !DILocation(line: 355, column: 6, scope: !3226)
!3249 = !DILocation(line: 355, column: 6, scope: !3209)
!3250 = !DILocation(line: 356, column: 3, scope: !3225)
!3251 = !DILocation(line: 356, column: 30, scope: !3225)
!3252 = !DILocation(line: 356, column: 57, scope: !3225)
!3253 = !DILocation(line: 358, column: 21, scope: !3225)
!3254 = !DILocation(line: 358, column: 26, scope: !3225)
!3255 = !DILocation(line: 358, column: 3, scope: !3225)
!3256 = !DILocation(line: 371, column: 13, scope: !3225)
!3257 = !DILocation(line: 371, column: 17, scope: !3225)
!3258 = !DILocation(line: 371, column: 26, scope: !3225)
!3259 = !DILocation(line: 371, column: 11, scope: !3225)
!3260 = !DILocation(line: 371, column: 9, scope: !3225)
!3261 = !DILocation(line: 372, column: 2, scope: !3226)
!3262 = !DILocation(line: 372, column: 2, scope: !3225)
!3263 = !DILocation(line: 374, column: 21, scope: !3231)
!3264 = !DILocation(line: 374, column: 7, scope: !3231)
!3265 = !DILocation(line: 374, column: 6, scope: !3209)
!3266 = !DILocation(line: 381, column: 9, scope: !3229)
!3267 = !DILocation(line: 381, column: 9, scope: !3228)
!3268 = !DILocation(line: 381, column: 9, scope: !3233)
!3269 = !DILocation(line: 381, column: 6, scope: !3230)
!3270 = !DILocation(line: 382, column: 3, scope: !3230)
!3271 = !DILocation(line: 382, column: 7, scope: !3230)
!3272 = !DILocation(line: 382, column: 15, scope: !3230)
!3273 = !DILocation(line: 382, column: 25, scope: !3230)
!3274 = !DILocation(line: 383, column: 2, scope: !3230)
!3275 = !DILocation(line: 384, column: 9, scope: !3209)
!3276 = !DILocation(line: 385, column: 1, scope: !3209)
!3277 = !DILocation(line: 384, column: 2, scope: !3209)
!3278 = distinct !DISubprogram(name: "bitmap_and", scope: !2801, file: !2801, line: 336, type: !3279, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!575, !1143, !2779, !2779, !7}
!3281 = !{!3282, !3283, !3284, !3285}
!3282 = !DILocalVariable(name: "dst", arg: 1, scope: !3278, file: !2801, line: 336, type: !1143)
!3283 = !DILocalVariable(name: "src1", arg: 2, scope: !3278, file: !2801, line: 336, type: !2779)
!3284 = !DILocalVariable(name: "src2", arg: 3, scope: !3278, file: !2801, line: 337, type: !2779)
!3285 = !DILocalVariable(name: "nbits", arg: 4, scope: !3278, file: !2801, line: 337, type: !7)
!3286 = !DILocation(line: 336, column: 46, scope: !3278)
!3287 = !DILocation(line: 336, column: 72, scope: !3278)
!3288 = !DILocation(line: 337, column: 25, scope: !3278)
!3289 = !DILocation(line: 337, column: 44, scope: !3278)
!3290 = !DILocation(line: 339, column: 6, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3278, file: !2801, line: 339, column: 6)
!3292 = !DILocation(line: 339, column: 6, scope: !3278)
!3293 = !DILocation(line: 340, column: 19, scope: !3291)
!3294 = !DILocation(line: 340, column: 18, scope: !3291)
!3295 = !DILocation(line: 340, column: 27, scope: !3291)
!3296 = !DILocation(line: 340, column: 26, scope: !3291)
!3297 = !DILocation(line: 340, column: 24, scope: !3291)
!3298 = !DILocation(line: 340, column: 34, scope: !3291)
!3299 = !DILocation(line: 340, column: 32, scope: !3291)
!3300 = !DILocation(line: 340, column: 12, scope: !3291)
!3301 = !DILocation(line: 340, column: 16, scope: !3291)
!3302 = !DILocation(line: 340, column: 64, scope: !3291)
!3303 = !DILocation(line: 340, column: 3, scope: !3291)
!3304 = !DILocation(line: 341, column: 22, scope: !3278)
!3305 = !DILocation(line: 341, column: 27, scope: !3278)
!3306 = !DILocation(line: 341, column: 33, scope: !3278)
!3307 = !DILocation(line: 341, column: 39, scope: !3278)
!3308 = !DILocation(line: 341, column: 9, scope: !3278)
!3309 = !DILocation(line: 341, column: 2, scope: !3278)
!3310 = !DILocation(line: 342, column: 1, scope: !3278)
!3311 = !DISubprogram(name: "__bitmap_and", scope: !2801, file: !2801, line: 156, type: !3279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3312 = distinct !DISubprogram(name: "cpumask_first", scope: !104, file: !104, line: 160, type: !3313, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!7, !101}
!3315 = !{!3316}
!3316 = !DILocalVariable(name: "srcp", arg: 1, scope: !3312, file: !104, line: 160, type: !101)
!3317 = !DILocation(line: 160, column: 64, scope: !3312)
!3318 = !DILocation(line: 162, column: 24, scope: !3312)
!3319 = !DILocation(line: 162, column: 9, scope: !3312)
!3320 = !DILocation(line: 162, column: 2, scope: !3312)
!3321 = distinct !DISubprogram(name: "constant_test_bit", scope: !2304, file: !2304, line: 204, type: !3322, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!575, !260, !2307}
!3324 = !{!3325, !3326}
!3325 = !DILocalVariable(name: "nr", arg: 1, scope: !3321, file: !2304, line: 204, type: !260)
!3326 = !DILocalVariable(name: "addr", arg: 2, scope: !3321, file: !2304, line: 204, type: !2307)
!3327 = !DILocation(line: 204, column: 52, scope: !3321)
!3328 = !DILocation(line: 204, column: 86, scope: !3321)
!3329 = !DILocation(line: 206, column: 19, scope: !3321)
!3330 = !DILocation(line: 206, column: 22, scope: !3321)
!3331 = !DILocation(line: 206, column: 15, scope: !3321)
!3332 = !DILocation(line: 207, column: 4, scope: !3321)
!3333 = !DILocation(line: 207, column: 9, scope: !3321)
!3334 = !DILocation(line: 207, column: 12, scope: !3321)
!3335 = !DILocation(line: 206, column: 44, scope: !3321)
!3336 = !DILocation(line: 207, column: 37, scope: !3321)
!3337 = !DILocation(line: 206, column: 2, scope: !3321)
!3338 = distinct !DISubprogram(name: "variable_test_bit", scope: !2304, file: !2304, line: 224, type: !3322, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3339)
!3339 = !{!3340, !3341, !3342}
!3340 = !DILocalVariable(name: "nr", arg: 1, scope: !3338, file: !2304, line: 224, type: !260)
!3341 = !DILocalVariable(name: "addr", arg: 2, scope: !3338, file: !2304, line: 224, type: !2307)
!3342 = !DILocalVariable(name: "oldbit", scope: !3338, file: !2304, line: 226, type: !575)
!3343 = !DILocation(line: 224, column: 52, scope: !3338)
!3344 = !DILocation(line: 224, column: 86, scope: !3338)
!3345 = !DILocation(line: 226, column: 2, scope: !3338)
!3346 = !DILocation(line: 226, column: 7, scope: !3338)
!3347 = !DILocation(line: 231, column: 33, scope: !3338)
!3348 = !DILocation(line: 231, column: 46, scope: !3338)
!3349 = !DILocation(line: 228, column: 2, scope: !3338)
!3350 = !{i64 2148040199, i64 2148040273}
!3351 = !DILocation(line: 233, column: 9, scope: !3338)
!3352 = !DILocation(line: 234, column: 1, scope: !3338)
!3353 = !DILocation(line: 233, column: 2, scope: !3338)
!3354 = distinct !DISubprogram(name: "clockevent_get_state", scope: !1461, file: !1461, line: 39, type: !3355, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!5, !52}
!3357 = !{!3358}
!3358 = !DILocalVariable(name: "dev", arg: 1, scope: !3354, file: !1461, line: 39, type: !52)
!3359 = !DILocation(line: 39, column: 86, scope: !3354)
!3360 = !DILocation(line: 41, column: 9, scope: !3354)
!3361 = !DILocation(line: 41, column: 14, scope: !3354)
!3362 = !DILocation(line: 41, column: 2, scope: !3354)
!3363 = distinct !DISubprogram(name: "broadcast_shutdown_local", scope: !3, file: !3, line: 779, type: !1462, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3364)
!3364 = !{!3365, !3366, !3367, !3373, !3375}
!3365 = !DILocalVariable(name: "bc", arg: 1, scope: !3363, file: !3, line: 779, type: !52)
!3366 = !DILocalVariable(name: "dev", arg: 2, scope: !3363, file: !3, line: 780, type: !52)
!3367 = !DILocalVariable(name: "pscr_ret__", scope: !3368, file: !3, line: 788, type: !63)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 788, column: 31)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 788, column: 31)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 788, column: 7)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 787, column: 45)
!3372 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 787, column: 6)
!3373 = !DILocalVariable(name: "__vpp_verify", scope: !3374, file: !3, line: 788, type: !496)
!3374 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 788, column: 31)
!3375 = !DILocalVariable(name: "pfo_val__", scope: !3376, file: !3, line: 788, type: !83)
!3376 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 788, column: 31)
!3377 = !DILocation(line: 779, column: 65, scope: !3363)
!3378 = !DILocation(line: 780, column: 37, scope: !3363)
!3379 = !DILocation(line: 787, column: 6, scope: !3372)
!3380 = !DILocation(line: 787, column: 10, scope: !3372)
!3381 = !DILocation(line: 787, column: 19, scope: !3372)
!3382 = !DILocation(line: 787, column: 6, scope: !3363)
!3383 = !DILocation(line: 788, column: 27, scope: !3370)
!3384 = !DILocation(line: 788, column: 31, scope: !3369)
!3385 = !DILocation(line: 788, column: 31, scope: !3368)
!3386 = !DILocation(line: 788, column: 31, scope: !3374)
!3387 = !DILocation(line: 788, column: 31, scope: !3376)
!3388 = !{i64 2153035838}
!3389 = !DILocation(line: 788, column: 7, scope: !3370)
!3390 = !DILocation(line: 788, column: 7, scope: !3371)
!3391 = !DILocation(line: 789, column: 4, scope: !3370)
!3392 = !DILocation(line: 790, column: 7, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 790, column: 7)
!3394 = !DILocation(line: 790, column: 12, scope: !3393)
!3395 = !DILocation(line: 790, column: 25, scope: !3393)
!3396 = !DILocation(line: 790, column: 29, scope: !3393)
!3397 = !DILocation(line: 790, column: 23, scope: !3393)
!3398 = !DILocation(line: 790, column: 7, scope: !3371)
!3399 = !DILocation(line: 791, column: 4, scope: !3393)
!3400 = !DILocation(line: 792, column: 2, scope: !3371)
!3401 = !DILocation(line: 793, column: 27, scope: !3363)
!3402 = !DILocation(line: 793, column: 2, scope: !3363)
!3403 = !DILocation(line: 794, column: 1, scope: !3363)
!3404 = distinct !DISubprogram(name: "tick_broadcast_set_event", scope: !3, file: !3, line: 651, type: !3405, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !52, !63, !69}
!3407 = !{!3408, !3409, !3410}
!3408 = !DILocalVariable(name: "bc", arg: 1, scope: !3404, file: !3, line: 651, type: !52)
!3409 = !DILocalVariable(name: "cpu", arg: 2, scope: !3404, file: !3, line: 651, type: !63)
!3410 = !DILocalVariable(name: "expires", arg: 3, scope: !3404, file: !3, line: 652, type: !69)
!3411 = !DILocation(line: 651, column: 65, scope: !3404)
!3412 = !DILocation(line: 651, column: 73, scope: !3404)
!3413 = !DILocation(line: 652, column: 18, scope: !3404)
!3414 = !DILocation(line: 654, column: 32, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 654, column: 6)
!3416 = !DILocation(line: 654, column: 7, scope: !3415)
!3417 = !DILocation(line: 654, column: 6, scope: !3404)
!3418 = !DILocation(line: 655, column: 28, scope: !3415)
!3419 = !DILocation(line: 655, column: 3, scope: !3415)
!3420 = !DILocation(line: 657, column: 28, scope: !3404)
!3421 = !DILocation(line: 657, column: 32, scope: !3404)
!3422 = !DILocation(line: 657, column: 2, scope: !3404)
!3423 = !DILocation(line: 658, column: 30, scope: !3404)
!3424 = !DILocation(line: 658, column: 34, scope: !3404)
!3425 = !DILocation(line: 658, column: 2, scope: !3404)
!3426 = !DILocation(line: 659, column: 1, scope: !3404)
!3427 = !DISubprogram(name: "ktime_get", scope: !3428, file: !3428, line: 67, type: !3429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3428 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!69}
!3431 = distinct !DISubprogram(name: "tick_broadcast_set_affinity", scope: !3, file: !3, line: 638, type: !3432, scopeLine: 640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{null, !52, !101}
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "bc", arg: 1, scope: !3431, file: !3, line: 638, type: !52)
!3436 = !DILocalVariable(name: "cpumask", arg: 2, scope: !3431, file: !3, line: 639, type: !101)
!3437 = !DILocation(line: 638, column: 68, scope: !3431)
!3438 = !DILocation(line: 639, column: 28, scope: !3431)
!3439 = !DILocation(line: 641, column: 8, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 641, column: 6)
!3441 = !DILocation(line: 641, column: 12, scope: !3440)
!3442 = !DILocation(line: 641, column: 21, scope: !3440)
!3443 = !DILocation(line: 641, column: 6, scope: !3431)
!3444 = !DILocation(line: 642, column: 3, scope: !3440)
!3445 = !DILocation(line: 644, column: 20, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 644, column: 6)
!3447 = !DILocation(line: 644, column: 24, scope: !3446)
!3448 = !DILocation(line: 644, column: 33, scope: !3446)
!3449 = !DILocation(line: 644, column: 6, scope: !3446)
!3450 = !DILocation(line: 644, column: 6, scope: !3431)
!3451 = !DILocation(line: 645, column: 3, scope: !3446)
!3452 = !DILocation(line: 647, column: 16, scope: !3431)
!3453 = !DILocation(line: 647, column: 2, scope: !3431)
!3454 = !DILocation(line: 647, column: 6, scope: !3431)
!3455 = !DILocation(line: 647, column: 14, scope: !3431)
!3456 = !DILocation(line: 648, column: 19, scope: !3431)
!3457 = !DILocation(line: 648, column: 23, scope: !3431)
!3458 = !DILocation(line: 648, column: 28, scope: !3431)
!3459 = !DILocation(line: 648, column: 32, scope: !3431)
!3460 = !DILocation(line: 648, column: 2, scope: !3431)
!3461 = !DILocation(line: 649, column: 1, scope: !3431)
!3462 = !DISubprogram(name: "irq_set_affinity", scope: !3463, file: !3463, line: 308, type: !3464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3463 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!63, !7, !101}
!3466 = distinct !DISubprogram(name: "tick_handle_oneshot_broadcast", scope: !3, file: !3, line: 690, type: !57, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3467)
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3481, !3483, !3486, !3488, !3490, !3493, !3496, !3501}
!3468 = !DILocalVariable(name: "dev", arg: 1, scope: !3466, file: !3, line: 690, type: !52)
!3469 = !DILocalVariable(name: "td", scope: !3466, file: !3, line: 692, type: !48)
!3470 = !DILocalVariable(name: "now", scope: !3466, file: !3, line: 693, type: !69)
!3471 = !DILocalVariable(name: "next_event", scope: !3466, file: !3, line: 693, type: !69)
!3472 = !DILocalVariable(name: "cpu", scope: !3466, file: !3, line: 694, type: !63)
!3473 = !DILocalVariable(name: "next_cpu", scope: !3466, file: !3, line: 694, type: !63)
!3474 = !DILocalVariable(name: "bc_local", scope: !3466, file: !3, line: 695, type: !575)
!3475 = !DILocalVariable(name: "__vpp_verify", scope: !3476, file: !3, line: 712, type: !496)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 712, column: 9)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 712, column: 9)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 703, column: 49)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 703, column: 2)
!3480 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 703, column: 2)
!3481 = !DILocalVariable(name: "__ptr", scope: !3482, file: !3, line: 712, type: !64)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 712, column: 9)
!3483 = !DILocalVariable(name: "pscr_ret__", scope: !3484, file: !3, line: 731, type: !63)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 731, column: 20)
!3485 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 731, column: 20)
!3486 = !DILocalVariable(name: "__vpp_verify", scope: !3487, file: !3, line: 731, type: !496)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 731, column: 20)
!3488 = !DILocalVariable(name: "pfo_val__", scope: !3489, file: !3, line: 731, type: !83)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 731, column: 20)
!3490 = !DILocalVariable(name: "__ret_warn_on", scope: !3491, file: !3, line: 741, type: !63)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 741, column: 6)
!3492 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 741, column: 6)
!3493 = !DILocalVariable(name: "__flags", scope: !3494, file: !3, line: 741, type: !63)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 741, column: 6)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 741, column: 6)
!3496 = !DILocalVariable(name: "__vpp_verify", scope: !3497, file: !3, line: 765, type: !496)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 765, column: 8)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 765, column: 8)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 764, column: 16)
!3500 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 764, column: 6)
!3501 = !DILocalVariable(name: "tcp_ptr__", scope: !3502, file: !3, line: 765, type: !64)
!3502 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 765, column: 8)
!3503 = !DILocation(line: 690, column: 70, scope: !3466)
!3504 = !DILocation(line: 692, column: 2, scope: !3466)
!3505 = !DILocation(line: 692, column: 22, scope: !3466)
!3506 = !DILocation(line: 693, column: 2, scope: !3466)
!3507 = !DILocation(line: 693, column: 10, scope: !3466)
!3508 = !DILocation(line: 693, column: 15, scope: !3466)
!3509 = !DILocation(line: 694, column: 2, scope: !3466)
!3510 = !DILocation(line: 694, column: 6, scope: !3466)
!3511 = !DILocation(line: 694, column: 11, scope: !3466)
!3512 = !DILocation(line: 695, column: 2, scope: !3466)
!3513 = !DILocation(line: 695, column: 7, scope: !3466)
!3514 = !DILocation(line: 697, column: 2, scope: !3466)
!3515 = !DILocation(line: 698, column: 2, scope: !3466)
!3516 = !DILocation(line: 698, column: 7, scope: !3466)
!3517 = !DILocation(line: 698, column: 18, scope: !3466)
!3518 = !DILocation(line: 699, column: 13, scope: !3466)
!3519 = !DILocation(line: 700, column: 2, scope: !3466)
!3520 = !DILocation(line: 701, column: 8, scope: !3466)
!3521 = !DILocation(line: 701, column: 6, scope: !3466)
!3522 = !DILocation(line: 703, column: 2, scope: !3480)
!3523 = !DILocation(line: 703, column: 2, scope: !3479)
!3524 = !DILocation(line: 712, column: 9, scope: !3477)
!3525 = !DILocation(line: 712, column: 9, scope: !3476)
!3526 = !DILocation(line: 712, column: 9, scope: !3482)
!3527 = !DILocation(line: 712, column: 6, scope: !3478)
!3528 = !DILocation(line: 713, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 713, column: 7)
!3530 = !DILocation(line: 713, column: 11, scope: !3529)
!3531 = !DILocation(line: 713, column: 19, scope: !3529)
!3532 = !DILocation(line: 713, column: 33, scope: !3529)
!3533 = !DILocation(line: 713, column: 30, scope: !3529)
!3534 = !DILocation(line: 713, column: 7, scope: !3478)
!3535 = !DILocation(line: 714, column: 20, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 713, column: 38)
!3537 = !DILocation(line: 714, column: 4, scope: !3536)
!3538 = !DILocation(line: 720, column: 20, scope: !3536)
!3539 = !DILocation(line: 720, column: 4, scope: !3536)
!3540 = !DILocation(line: 721, column: 3, scope: !3536)
!3541 = !DILocation(line: 721, column: 14, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 721, column: 14)
!3543 = !DILocation(line: 721, column: 18, scope: !3542)
!3544 = !DILocation(line: 721, column: 26, scope: !3542)
!3545 = !DILocation(line: 721, column: 39, scope: !3542)
!3546 = !DILocation(line: 721, column: 37, scope: !3542)
!3547 = !DILocation(line: 721, column: 14, scope: !3529)
!3548 = !DILocation(line: 722, column: 17, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 721, column: 51)
!3550 = !DILocation(line: 722, column: 21, scope: !3549)
!3551 = !DILocation(line: 722, column: 29, scope: !3549)
!3552 = !DILocation(line: 722, column: 15, scope: !3549)
!3553 = !DILocation(line: 723, column: 15, scope: !3549)
!3554 = !DILocation(line: 723, column: 13, scope: !3549)
!3555 = !DILocation(line: 724, column: 3, scope: !3549)
!3556 = !DILocation(line: 725, column: 2, scope: !3478)
!3557 = distinct !{!3557, !3522, !3558, !3559, !3560}
!3558 = !DILocation(line: 725, column: 2, scope: !3480)
!3559 = !{!"llvm.loop.mustprogress"}
!3560 = !{!"llvm.loop.unroll.disable"}
!3561 = !DILocation(line: 731, column: 20, scope: !3485)
!3562 = !DILocation(line: 731, column: 20, scope: !3484)
!3563 = !DILocation(line: 731, column: 20, scope: !3487)
!3564 = !DILocation(line: 731, column: 20, scope: !3489)
!3565 = !{i64 2153029981}
!3566 = !DILocation(line: 731, column: 2, scope: !3466)
!3567 = !DILocation(line: 734, column: 2, scope: !3466)
!3568 = !DILocation(line: 735, column: 2, scope: !3466)
!3569 = !DILocation(line: 741, column: 6, scope: !3491)
!3570 = !DILocation(line: 741, column: 6, scope: !3495)
!3571 = !DILocation(line: 741, column: 6, scope: !3494)
!3572 = !DILocation(line: 741, column: 6, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 741, column: 6)
!3574 = !DILocation(line: 741, column: 6, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 741, column: 6)
!3576 = !{i64 2153031403, i64 2153031432, i64 2153031478, i64 2153031536, i64 2153031590, i64 2153031644, i64 2153031699, i64 2153031730, i64 2153032038, i64 2153032044, i64 2153032091, i64 2153032114, i64 2153032140}
!3577 = !DILocation(line: 741, column: 6, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 741, column: 6)
!3579 = !DILocation(line: 741, column: 6, scope: !3492)
!3580 = !DILocation(line: 741, column: 6, scope: !3466)
!3581 = !DILocation(line: 742, column: 3, scope: !3492)
!3582 = !DILocation(line: 747, column: 13, scope: !3466)
!3583 = !DILocation(line: 747, column: 11, scope: !3466)
!3584 = !DILocation(line: 759, column: 6, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 759, column: 6)
!3586 = !DILocation(line: 759, column: 17, scope: !3585)
!3587 = !DILocation(line: 759, column: 6, scope: !3466)
!3588 = !DILocation(line: 760, column: 28, scope: !3585)
!3589 = !DILocation(line: 760, column: 33, scope: !3585)
!3590 = !DILocation(line: 760, column: 43, scope: !3585)
!3591 = !DILocation(line: 760, column: 3, scope: !3585)
!3592 = !DILocation(line: 762, column: 2, scope: !3466)
!3593 = !DILocation(line: 764, column: 6, scope: !3500)
!3594 = !DILocation(line: 764, column: 6, scope: !3466)
!3595 = !DILocation(line: 765, column: 8, scope: !3498)
!3596 = !DILocation(line: 765, column: 8, scope: !3497)
!3597 = !DILocation(line: 765, column: 8, scope: !3502)
!3598 = !{i64 2153032869}
!3599 = !DILocation(line: 765, column: 6, scope: !3499)
!3600 = !DILocation(line: 766, column: 3, scope: !3499)
!3601 = !DILocation(line: 766, column: 7, scope: !3499)
!3602 = !DILocation(line: 766, column: 15, scope: !3499)
!3603 = !DILocation(line: 766, column: 29, scope: !3499)
!3604 = !DILocation(line: 766, column: 33, scope: !3499)
!3605 = !DILocation(line: 767, column: 2, scope: !3499)
!3606 = !DILocation(line: 768, column: 1, scope: !3466)
!3607 = distinct !DISubprogram(name: "cpumask_copy", scope: !104, file: !104, line: 737, type: !3608, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3610)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !1163, !101}
!3610 = !{!3611, !3612}
!3611 = !DILocalVariable(name: "dstp", arg: 1, scope: !3607, file: !104, line: 737, type: !1163)
!3612 = !DILocalVariable(name: "srcp", arg: 2, scope: !3607, file: !104, line: 738, type: !101)
!3613 = !DILocation(line: 737, column: 49, scope: !3607)
!3614 = !DILocation(line: 738, column: 27, scope: !3607)
!3615 = !DILocation(line: 740, column: 14, scope: !3607)
!3616 = !DILocation(line: 740, column: 34, scope: !3607)
!3617 = !DILocation(line: 740, column: 2, scope: !3607)
!3618 = !DILocation(line: 741, column: 1, scope: !3607)
!3619 = distinct !DISubprogram(name: "cpumask_or", scope: !104, file: !104, line: 579, type: !3620, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3622)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{null, !1163, !101, !101}
!3622 = !{!3623, !3624, !3625}
!3623 = !DILocalVariable(name: "dstp", arg: 1, scope: !3619, file: !104, line: 579, type: !1163)
!3624 = !DILocalVariable(name: "src1p", arg: 2, scope: !3619, file: !104, line: 579, type: !101)
!3625 = !DILocalVariable(name: "src2p", arg: 3, scope: !3619, file: !104, line: 580, type: !101)
!3626 = !DILocation(line: 579, column: 47, scope: !3619)
!3627 = !DILocation(line: 579, column: 75, scope: !3619)
!3628 = !DILocation(line: 580, column: 32, scope: !3619)
!3629 = !DILocation(line: 582, column: 12, scope: !3619)
!3630 = !DILocation(line: 582, column: 32, scope: !3619)
!3631 = !DILocation(line: 583, column: 11, scope: !3619)
!3632 = !DILocation(line: 582, column: 2, scope: !3619)
!3633 = !DILocation(line: 584, column: 1, scope: !3619)
!3634 = distinct !DISubprogram(name: "tick_get_next_period", scope: !3, file: !3, line: 1005, type: !3429, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3635)
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "next", scope: !3634, file: !3, line: 1007, type: !69)
!3637 = !DILocation(line: 1007, column: 2, scope: !3634)
!3638 = !DILocation(line: 1007, column: 10, scope: !3634)
!3639 = !DILocation(line: 1015, column: 2, scope: !3634)
!3640 = !DILocation(line: 1016, column: 9, scope: !3634)
!3641 = !DILocation(line: 1016, column: 7, scope: !3634)
!3642 = !DILocation(line: 1017, column: 2, scope: !3634)
!3643 = !DILocation(line: 1018, column: 9, scope: !3634)
!3644 = !DILocation(line: 1019, column: 1, scope: !3634)
!3645 = !DILocation(line: 1018, column: 2, scope: !3634)
!3646 = distinct !DISubprogram(name: "tick_broadcast_init_next_event", scope: !3, file: !3, line: 992, type: !3647, scopeLine: 994, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !1163, !69}
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3660}
!3650 = !DILocalVariable(name: "mask", arg: 1, scope: !3646, file: !3, line: 992, type: !1163)
!3651 = !DILocalVariable(name: "expires", arg: 2, scope: !3646, file: !3, line: 993, type: !69)
!3652 = !DILocalVariable(name: "td", scope: !3646, file: !3, line: 995, type: !48)
!3653 = !DILocalVariable(name: "cpu", scope: !3646, file: !3, line: 996, type: !63)
!3654 = !DILocalVariable(name: "__vpp_verify", scope: !3655, file: !3, line: 999, type: !496)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 999, column: 9)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 999, column: 9)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 998, column: 26)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 998, column: 2)
!3659 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 998, column: 2)
!3660 = !DILocalVariable(name: "__ptr", scope: !3661, file: !3, line: 999, type: !64)
!3661 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 999, column: 9)
!3662 = !DILocation(line: 992, column: 60, scope: !3646)
!3663 = !DILocation(line: 993, column: 17, scope: !3646)
!3664 = !DILocation(line: 995, column: 2, scope: !3646)
!3665 = !DILocation(line: 995, column: 22, scope: !3646)
!3666 = !DILocation(line: 996, column: 2, scope: !3646)
!3667 = !DILocation(line: 996, column: 6, scope: !3646)
!3668 = !DILocation(line: 998, column: 2, scope: !3659)
!3669 = !DILocation(line: 998, column: 2, scope: !3658)
!3670 = !DILocation(line: 999, column: 9, scope: !3656)
!3671 = !DILocation(line: 999, column: 9, scope: !3655)
!3672 = !DILocation(line: 999, column: 9, scope: !3661)
!3673 = !DILocation(line: 999, column: 6, scope: !3657)
!3674 = !DILocation(line: 1000, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 1000, column: 7)
!3676 = !DILocation(line: 1000, column: 11, scope: !3675)
!3677 = !DILocation(line: 1000, column: 7, scope: !3657)
!3678 = !DILocation(line: 1001, column: 29, scope: !3675)
!3679 = !DILocation(line: 1001, column: 4, scope: !3675)
!3680 = !DILocation(line: 1001, column: 8, scope: !3675)
!3681 = !DILocation(line: 1001, column: 16, scope: !3675)
!3682 = !DILocation(line: 1001, column: 27, scope: !3675)
!3683 = !DILocation(line: 1002, column: 2, scope: !3657)
!3684 = distinct !{!3684, !3668, !3685, !3559, !3560}
!3685 = !DILocation(line: 1002, column: 2, scope: !3659)
!3686 = !DILocation(line: 1003, column: 1, scope: !3646)
!3687 = distinct !DISubprogram(name: "cpumask_clear", scope: !104, file: !104, line: 552, type: !3688, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !1163}
!3690 = !{!3691}
!3691 = !DILocalVariable(name: "dstp", arg: 1, scope: !3687, file: !104, line: 552, type: !1163)
!3692 = !DILocation(line: 552, column: 50, scope: !3687)
!3693 = !DILocation(line: 554, column: 14, scope: !3687)
!3694 = !DILocation(line: 554, column: 2, scope: !3687)
!3695 = !DILocation(line: 555, column: 1, scope: !3687)
!3696 = distinct !DISubprogram(name: "find_next_bit", scope: !2873, file: !2873, line: 54, type: !3697, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!64, !2779, !64, !64}
!3699 = !{!3700, !3701, !3702, !3703}
!3700 = !DILocalVariable(name: "addr", arg: 1, scope: !3696, file: !2873, line: 54, type: !2779)
!3701 = !DILocalVariable(name: "size", arg: 2, scope: !3696, file: !2873, line: 54, type: !64)
!3702 = !DILocalVariable(name: "offset", arg: 3, scope: !3696, file: !2873, line: 55, type: !64)
!3703 = !DILocalVariable(name: "val", scope: !3704, file: !2873, line: 58, type: !64)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !2873, line: 57, column: 31)
!3705 = distinct !DILexicalBlock(scope: !3696, file: !2873, line: 57, column: 6)
!3706 = !DILocation(line: 54, column: 50, scope: !3696)
!3707 = !DILocation(line: 54, column: 70, scope: !3696)
!3708 = !DILocation(line: 55, column: 22, scope: !3696)
!3709 = !DILocation(line: 57, column: 6, scope: !3705)
!3710 = !DILocation(line: 57, column: 6, scope: !3696)
!3711 = !DILocation(line: 58, column: 3, scope: !3704)
!3712 = !DILocation(line: 58, column: 17, scope: !3704)
!3713 = !DILocation(line: 60, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3704, file: !2873, line: 60, column: 7)
!3715 = !DILocation(line: 60, column: 7, scope: !3704)
!3716 = !DILocation(line: 61, column: 11, scope: !3714)
!3717 = !DILocation(line: 61, column: 4, scope: !3714)
!3718 = !DILocation(line: 63, column: 10, scope: !3704)
!3719 = !DILocation(line: 63, column: 9, scope: !3704)
!3720 = !DILocation(line: 63, column: 17, scope: !3704)
!3721 = !DILocation(line: 63, column: 15, scope: !3704)
!3722 = !DILocation(line: 63, column: 7, scope: !3704)
!3723 = !DILocation(line: 64, column: 10, scope: !3704)
!3724 = !DILocation(line: 64, column: 16, scope: !3704)
!3725 = !DILocation(line: 64, column: 29, scope: !3704)
!3726 = !DILocation(line: 64, column: 3, scope: !3704)
!3727 = !DILocation(line: 65, column: 2, scope: !3705)
!3728 = !DILocation(line: 67, column: 24, scope: !3696)
!3729 = !DILocation(line: 67, column: 30, scope: !3696)
!3730 = !DILocation(line: 67, column: 36, scope: !3696)
!3731 = !DILocation(line: 67, column: 9, scope: !3696)
!3732 = !DILocation(line: 67, column: 2, scope: !3696)
!3733 = !DILocation(line: 68, column: 1, scope: !3696)
!3734 = distinct !DISubprogram(name: "cpumask_subset", scope: !104, file: !104, line: 661, type: !2762, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3735)
!3735 = !{!3736, !3737}
!3736 = !DILocalVariable(name: "src1p", arg: 1, scope: !3734, file: !104, line: 661, type: !101)
!3737 = !DILocalVariable(name: "src2p", arg: 2, scope: !3734, file: !104, line: 662, type: !101)
!3738 = !DILocation(line: 661, column: 57, scope: !3734)
!3739 = !DILocation(line: 662, column: 28, scope: !3734)
!3740 = !DILocation(line: 664, column: 23, scope: !3734)
!3741 = !DILocation(line: 664, column: 44, scope: !3734)
!3742 = !DILocation(line: 664, column: 9, scope: !3734)
!3743 = !DILocation(line: 664, column: 2, scope: !3734)
!3744 = distinct !DISubprogram(name: "bitmap_zero", scope: !2801, file: !2801, line: 246, type: !3745, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !1143, !7}
!3747 = !{!3748, !3749, !3750}
!3748 = !DILocalVariable(name: "dst", arg: 1, scope: !3744, file: !2801, line: 246, type: !1143)
!3749 = !DILocalVariable(name: "nbits", arg: 2, scope: !3744, file: !2801, line: 246, type: !7)
!3750 = !DILocalVariable(name: "len", scope: !3744, file: !2801, line: 248, type: !7)
!3751 = !DILocation(line: 246, column: 47, scope: !3744)
!3752 = !DILocation(line: 246, column: 65, scope: !3744)
!3753 = !DILocation(line: 248, column: 2, scope: !3744)
!3754 = !DILocation(line: 248, column: 15, scope: !3744)
!3755 = !DILocation(line: 248, column: 21, scope: !3744)
!3756 = !DILocation(line: 250, column: 6, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3744, file: !2801, line: 250, column: 6)
!3758 = !DILocation(line: 250, column: 6, scope: !3744)
!3759 = !DILocation(line: 251, column: 4, scope: !3757)
!3760 = !DILocation(line: 251, column: 8, scope: !3757)
!3761 = !DILocation(line: 251, column: 3, scope: !3757)
!3762 = !DILocation(line: 253, column: 10, scope: !3757)
!3763 = !DILocation(line: 253, column: 18, scope: !3757)
!3764 = !DILocation(line: 253, column: 3, scope: !3757)
!3765 = !DILocation(line: 254, column: 1, scope: !3744)
!3766 = !DISubprogram(name: "_find_next_bit", scope: !2873, file: !2873, line: 11, type: !3697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3767 = distinct !DISubprogram(name: "bitmap_subset", scope: !2801, file: !2801, line: 427, type: !2802, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3768)
!3768 = !{!3769, !3770, !3771}
!3769 = !DILocalVariable(name: "src1", arg: 1, scope: !3767, file: !2801, line: 427, type: !2779)
!3770 = !DILocalVariable(name: "src2", arg: 2, scope: !3767, file: !2801, line: 428, type: !2779)
!3771 = !DILocalVariable(name: "nbits", arg: 3, scope: !3767, file: !2801, line: 428, type: !7)
!3772 = !DILocation(line: 427, column: 55, scope: !3767)
!3773 = !DILocation(line: 428, column: 27, scope: !3767)
!3774 = !DILocation(line: 428, column: 46, scope: !3767)
!3775 = !DILocation(line: 430, column: 6, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3767, file: !2801, line: 430, column: 6)
!3777 = !DILocation(line: 430, column: 6, scope: !3767)
!3778 = !DILocation(line: 431, column: 15, scope: !3776)
!3779 = !DILocation(line: 431, column: 14, scope: !3776)
!3780 = !DILocation(line: 431, column: 25, scope: !3776)
!3781 = !DILocation(line: 431, column: 24, scope: !3776)
!3782 = !DILocation(line: 431, column: 22, scope: !3776)
!3783 = !DILocation(line: 431, column: 20, scope: !3776)
!3784 = !DILocation(line: 431, column: 34, scope: !3776)
!3785 = !DILocation(line: 431, column: 32, scope: !3776)
!3786 = !DILocation(line: 431, column: 10, scope: !3776)
!3787 = !DILocation(line: 431, column: 3, scope: !3776)
!3788 = !DILocation(line: 433, column: 26, scope: !3776)
!3789 = !DILocation(line: 433, column: 32, scope: !3776)
!3790 = !DILocation(line: 433, column: 38, scope: !3776)
!3791 = !DILocation(line: 433, column: 10, scope: !3776)
!3792 = !DILocation(line: 433, column: 3, scope: !3776)
!3793 = !DILocation(line: 434, column: 1, scope: !3767)
!3794 = !DISubprogram(name: "__bitmap_subset", scope: !2801, file: !2801, line: 169, type: !2802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3795 = distinct !DISubprogram(name: "bitmap_copy", scope: !2801, file: !2801, line: 266, type: !3796, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !1143, !2779, !7}
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "dst", arg: 1, scope: !3795, file: !2801, line: 266, type: !1143)
!3800 = !DILocalVariable(name: "src", arg: 2, scope: !3795, file: !2801, line: 266, type: !2779)
!3801 = !DILocalVariable(name: "nbits", arg: 3, scope: !3795, file: !2801, line: 267, type: !7)
!3802 = !DILocalVariable(name: "len", scope: !3795, file: !2801, line: 269, type: !7)
!3803 = !DILocation(line: 266, column: 47, scope: !3795)
!3804 = !DILocation(line: 266, column: 73, scope: !3795)
!3805 = !DILocation(line: 267, column: 17, scope: !3795)
!3806 = !DILocation(line: 269, column: 2, scope: !3795)
!3807 = !DILocation(line: 269, column: 15, scope: !3795)
!3808 = !DILocation(line: 269, column: 21, scope: !3795)
!3809 = !DILocation(line: 271, column: 6, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3795, file: !2801, line: 271, column: 6)
!3811 = !DILocation(line: 271, column: 6, scope: !3795)
!3812 = !DILocation(line: 272, column: 11, scope: !3810)
!3813 = !DILocation(line: 272, column: 10, scope: !3810)
!3814 = !DILocation(line: 272, column: 4, scope: !3810)
!3815 = !DILocation(line: 272, column: 8, scope: !3810)
!3816 = !DILocation(line: 272, column: 3, scope: !3810)
!3817 = !DILocation(line: 274, column: 10, scope: !3810)
!3818 = !DILocation(line: 274, column: 15, scope: !3810)
!3819 = !DILocation(line: 274, column: 20, scope: !3810)
!3820 = !DILocation(line: 274, column: 3, scope: !3810)
!3821 = !DILocation(line: 275, column: 1, scope: !3795)
!3822 = distinct !DISubprogram(name: "bitmap_or", scope: !2801, file: !2801, line: 344, type: !3823, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !1143, !2779, !2779, !7}
!3825 = !{!3826, !3827, !3828, !3829}
!3826 = !DILocalVariable(name: "dst", arg: 1, scope: !3822, file: !2801, line: 344, type: !1143)
!3827 = !DILocalVariable(name: "src1", arg: 2, scope: !3822, file: !2801, line: 344, type: !2779)
!3828 = !DILocalVariable(name: "src2", arg: 3, scope: !3822, file: !2801, line: 345, type: !2779)
!3829 = !DILocalVariable(name: "nbits", arg: 4, scope: !3822, file: !2801, line: 345, type: !7)
!3830 = !DILocation(line: 344, column: 45, scope: !3822)
!3831 = !DILocation(line: 344, column: 71, scope: !3822)
!3832 = !DILocation(line: 345, column: 25, scope: !3822)
!3833 = !DILocation(line: 345, column: 44, scope: !3822)
!3834 = !DILocation(line: 347, column: 6, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3822, file: !2801, line: 347, column: 6)
!3836 = !DILocation(line: 347, column: 6, scope: !3822)
!3837 = !DILocation(line: 348, column: 11, scope: !3835)
!3838 = !DILocation(line: 348, column: 10, scope: !3835)
!3839 = !DILocation(line: 348, column: 19, scope: !3835)
!3840 = !DILocation(line: 348, column: 18, scope: !3835)
!3841 = !DILocation(line: 348, column: 16, scope: !3835)
!3842 = !DILocation(line: 348, column: 4, scope: !3835)
!3843 = !DILocation(line: 348, column: 8, scope: !3835)
!3844 = !DILocation(line: 348, column: 3, scope: !3835)
!3845 = !DILocation(line: 350, column: 15, scope: !3835)
!3846 = !DILocation(line: 350, column: 20, scope: !3835)
!3847 = !DILocation(line: 350, column: 26, scope: !3835)
!3848 = !DILocation(line: 350, column: 32, scope: !3835)
!3849 = !DILocation(line: 350, column: 3, scope: !3835)
!3850 = !DILocation(line: 351, column: 1, scope: !3822)
!3851 = !DISubprogram(name: "__bitmap_or", scope: !2801, file: !2801, line: 158, type: !3823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
