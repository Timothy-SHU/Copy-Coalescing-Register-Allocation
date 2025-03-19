; ModuleID = 'drivers/cpuidle/governor.c'
source_filename = "drivers/cpuidle/governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, ptr, ptr, ptr }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }

@cpuidle_governors = hidden global %struct.list_head { ptr @cpuidle_governors, ptr @cpuidle_governors }, align 8, !dbg !0
@cpuidle_curr_governor = hidden global ptr null, align 8, !dbg !1264
@cpuidle_detected_devices = external dso_local global %struct.list_head, align 8
@.str = private unnamed_addr constant [30 x i8] c"\016cpuidle: using governor %s\0A\00", align 1, !dbg !1257
@cpuidle_lock = external dso_local global %struct.mutex, align 8
@param_governor = hidden global [16 x i8] zeroinitializer, align 16, !dbg !1262
@cpuidle_prev_governor = hidden global ptr null, align 8, !dbg !1266

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @cpuidle_find_governor(ptr noundef %str) #0 align 16 !dbg !1277 {
entry:
  %retval = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %gov = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !1281, metadata !DIExpression()), !dbg !1289
  call void @llvm.lifetime.start.p0(i64 8, ptr %gov) #7, !dbg !1290
  call void @llvm.dbg.declare(metadata ptr %gov, metadata !1282, metadata !DIExpression()), !dbg !1291
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1292
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1283, metadata !DIExpression()), !dbg !1292
  %0 = load ptr, ptr @cpuidle_governors, align 8, !dbg !1292
  store ptr %0, ptr %__mptr, align 8, !dbg !1292
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1292
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !1292
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1292
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !1293
  %2 = load ptr, ptr %tmp, align 8, !dbg !1292
  store ptr %2, ptr %gov, align 8, !dbg !1293
  br label %for.cond, !dbg !1293

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %gov, align 8, !dbg !1294
  %governor_list = getelementptr inbounds %struct.cpuidle_governor, ptr %3, i32 0, i32 1, !dbg !1294
  %cmp = icmp eq ptr %governor_list, @cpuidle_governors, !dbg !1294
  %lnot = xor i1 %cmp, true, !dbg !1294
  br i1 %lnot, label %for.body, label %for.end, !dbg !1293

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %str.addr, align 8, !dbg !1295
  %5 = load ptr, ptr %gov, align 8, !dbg !1297
  %name = getelementptr inbounds %struct.cpuidle_governor, ptr %5, i32 0, i32 0, !dbg !1298
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !1297
  %call = call i32 @strncasecmp(ptr noundef %4, ptr noundef %arraydecay, i64 noundef 16) #8, !dbg !1299
  %tobool = icmp ne i32 %call, 0, !dbg !1299
  br i1 %tobool, label %if.end, label %if.then, !dbg !1300

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %gov, align 8, !dbg !1301
  store ptr %6, ptr %retval, align 8, !dbg !1302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1302

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1303

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #7, !dbg !1304
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1286, metadata !DIExpression()), !dbg !1304
  %7 = load ptr, ptr %gov, align 8, !dbg !1304
  %governor_list2 = getelementptr inbounds %struct.cpuidle_governor, ptr %7, i32 0, i32 1, !dbg !1304
  %next = getelementptr inbounds %struct.list_head, ptr %governor_list2, i32 0, i32 0, !dbg !1304
  %8 = load ptr, ptr %next, align 8, !dbg !1304
  store ptr %8, ptr %__mptr1, align 8, !dbg !1304
  %9 = load ptr, ptr %__mptr1, align 8, !dbg !1304
  %add.ptr4 = getelementptr i8, ptr %9, i64 -16, !dbg !1304
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !1304
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #7, !dbg !1294
  %10 = load ptr, ptr %tmp3, align 8, !dbg !1304
  store ptr %10, ptr %gov, align 8, !dbg !1294
  br label %for.cond, !dbg !1294, !llvm.loop !1305

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1309

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gov) #7, !dbg !1310
  %11 = load ptr, ptr %retval, align 8, !dbg !1310
  ret ptr %11, !dbg !1310
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1311 dso_local i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpuidle_switch_governor(ptr noundef %gov) #0 align 16 !dbg !1315 {
entry:
  %retval = alloca i32, align 4
  %gov.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %tmp26 = alloca i32, align 4
  store ptr %gov, ptr %gov.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gov.addr, metadata !1319, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #7, !dbg !1336
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1320, metadata !DIExpression()), !dbg !1337
  %0 = load ptr, ptr %gov.addr, align 8, !dbg !1338
  %tobool = icmp ne ptr %0, null, !dbg !1338
  br i1 %tobool, label %if.end, label %if.then, !dbg !1340

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1341

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gov.addr, align 8, !dbg !1342
  %2 = load ptr, ptr @cpuidle_curr_governor, align 8, !dbg !1344
  %cmp = icmp eq ptr %1, %2, !dbg !1345
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1346

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1347

if.end2:                                          ; preds = %if.end
  call void @cpuidle_uninstall_idle_handler() #8, !dbg !1348
  %3 = load ptr, ptr @cpuidle_curr_governor, align 8, !dbg !1349
  %tobool3 = icmp ne ptr %3, null, !dbg !1349
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !1350

if.then4:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1321, metadata !DIExpression()), !dbg !1351
  %4 = load ptr, ptr @cpuidle_detected_devices, align 8, !dbg !1351
  store ptr %4, ptr %__mptr, align 8, !dbg !1351
  %5 = load ptr, ptr %__mptr, align 8, !dbg !1351
  %add.ptr = getelementptr i8, ptr %5, i64 -784, !dbg !1351
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !1352
  %6 = load ptr, ptr %tmp, align 8, !dbg !1351
  store ptr %6, ptr %dev, align 8, !dbg !1352
  br label %for.cond, !dbg !1352

for.cond:                                         ; preds = %for.inc, %if.then4
  %7 = load ptr, ptr %dev, align 8, !dbg !1353
  %device_list = getelementptr inbounds %struct.cpuidle_device, ptr %7, i32 0, i32 11, !dbg !1353
  %cmp5 = icmp eq ptr %device_list, @cpuidle_detected_devices, !dbg !1353
  %lnot = xor i1 %cmp5, true, !dbg !1353
  br i1 %lnot, label %for.body, label %for.end, !dbg !1352

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dev, align 8, !dbg !1354
  call void @cpuidle_disable_device(ptr noundef %8) #8, !dbg !1355
  br label %for.inc, !dbg !1355

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #7, !dbg !1356
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !1326, metadata !DIExpression()), !dbg !1356
  %9 = load ptr, ptr %dev, align 8, !dbg !1356
  %device_list7 = getelementptr inbounds %struct.cpuidle_device, ptr %9, i32 0, i32 11, !dbg !1356
  %next = getelementptr inbounds %struct.list_head, ptr %device_list7, i32 0, i32 0, !dbg !1356
  %10 = load ptr, ptr %next, align 8, !dbg !1356
  store ptr %10, ptr %__mptr6, align 8, !dbg !1356
  %11 = load ptr, ptr %__mptr6, align 8, !dbg !1356
  %add.ptr9 = getelementptr i8, ptr %11, i64 -784, !dbg !1356
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #7, !dbg !1353
  %12 = load ptr, ptr %tmp8, align 8, !dbg !1356
  store ptr %12, ptr %dev, align 8, !dbg !1353
  br label %for.cond, !dbg !1353, !llvm.loop !1357

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !1359

if.end10:                                         ; preds = %for.end, %if.end2
  %13 = load ptr, ptr %gov.addr, align 8, !dbg !1360
  store ptr %13, ptr @cpuidle_curr_governor, align 8, !dbg !1361
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #7, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !1329, metadata !DIExpression()), !dbg !1362
  %14 = load ptr, ptr @cpuidle_detected_devices, align 8, !dbg !1362
  store ptr %14, ptr %__mptr11, align 8, !dbg !1362
  %15 = load ptr, ptr %__mptr11, align 8, !dbg !1362
  %add.ptr13 = getelementptr i8, ptr %15, i64 -784, !dbg !1362
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !1362
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #7, !dbg !1363
  %16 = load ptr, ptr %tmp12, align 8, !dbg !1362
  store ptr %16, ptr %dev, align 8, !dbg !1363
  br label %for.cond14, !dbg !1363

for.cond14:                                       ; preds = %for.inc19, %if.end10
  %17 = load ptr, ptr %dev, align 8, !dbg !1364
  %device_list15 = getelementptr inbounds %struct.cpuidle_device, ptr %17, i32 0, i32 11, !dbg !1364
  %cmp16 = icmp eq ptr %device_list15, @cpuidle_detected_devices, !dbg !1364
  %lnot17 = xor i1 %cmp16, true, !dbg !1364
  br i1 %lnot17, label %for.body18, label %for.end25, !dbg !1363

for.body18:                                       ; preds = %for.cond14
  %18 = load ptr, ptr %dev, align 8, !dbg !1365
  %call = call i32 @cpuidle_enable_device(ptr noundef %18) #8, !dbg !1366
  br label %for.inc19, !dbg !1366

for.inc19:                                        ; preds = %for.body18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #7, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !1332, metadata !DIExpression()), !dbg !1367
  %19 = load ptr, ptr %dev, align 8, !dbg !1367
  %device_list21 = getelementptr inbounds %struct.cpuidle_device, ptr %19, i32 0, i32 11, !dbg !1367
  %next22 = getelementptr inbounds %struct.list_head, ptr %device_list21, i32 0, i32 0, !dbg !1367
  %20 = load ptr, ptr %next22, align 8, !dbg !1367
  store ptr %20, ptr %__mptr20, align 8, !dbg !1367
  %21 = load ptr, ptr %__mptr20, align 8, !dbg !1367
  %add.ptr24 = getelementptr i8, ptr %21, i64 -784, !dbg !1367
  store ptr %add.ptr24, ptr %tmp23, align 8, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #7, !dbg !1364
  %22 = load ptr, ptr %tmp23, align 8, !dbg !1367
  store ptr %22, ptr %dev, align 8, !dbg !1364
  br label %for.cond14, !dbg !1364, !llvm.loop !1368

for.end25:                                        ; preds = %for.cond14
  call void @cpuidle_install_idle_handler() #8, !dbg !1370
  br label %do.body, !dbg !1371

do.body:                                          ; preds = %for.end25
  br label %do.cond, !dbg !1373

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1373

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %gov.addr, align 8, !dbg !1371
  %name = getelementptr inbounds %struct.cpuidle_governor, ptr %23, i32 0, i32 0, !dbg !1371
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !1371
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %arraydecay) #9, !dbg !1371
  store i32 %call27, ptr %tmp26, align 4, !dbg !1373
  %24 = load i32, ptr %tmp26, align 4, !dbg !1371
  store i32 0, ptr %retval, align 4, !dbg !1375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1375

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #7, !dbg !1376
  %25 = load i32, ptr %retval, align 4, !dbg !1376
  ret i32 %25, !dbg !1376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1377 dso_local void @cpuidle_uninstall_idle_handler() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1379 dso_local void @cpuidle_disable_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1382 dso_local i32 @cpuidle_enable_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1385 dso_local void @cpuidle_install_idle_handler() #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1386 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpuidle_register_governor(ptr noundef %gov) #0 align 16 !dbg !1390 {
entry:
  %retval = alloca i32, align 4
  %gov.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gov, ptr %gov.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gov.addr, metadata !1392, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1395
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1393, metadata !DIExpression()), !dbg !1396
  store i32 -17, ptr %ret, align 4, !dbg !1396
  %0 = load ptr, ptr %gov.addr, align 8, !dbg !1397
  %tobool = icmp ne ptr %0, null, !dbg !1397
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1399

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %gov.addr, align 8, !dbg !1400
  %select = getelementptr inbounds %struct.cpuidle_governor, ptr %1, i32 0, i32 5, !dbg !1401
  %2 = load ptr, ptr %select, align 8, !dbg !1401
  %tobool1 = icmp ne ptr %2, null, !dbg !1400
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1402

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !1403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1403

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @cpuidle_disabled() #8, !dbg !1404
  %tobool2 = icmp ne i32 %call, 0, !dbg !1404
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1406

if.then3:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !1407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1407

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @cpuidle_lock) #8, !dbg !1408
  %3 = load ptr, ptr %gov.addr, align 8, !dbg !1409
  %name = getelementptr inbounds %struct.cpuidle_governor, ptr %3, i32 0, i32 0, !dbg !1411
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !1409
  %call5 = call ptr @cpuidle_find_governor(ptr noundef %arraydecay) #8, !dbg !1412
  %cmp = icmp eq ptr %call5, null, !dbg !1413
  br i1 %cmp, label %if.then6, label %if.end23, !dbg !1414

if.then6:                                         ; preds = %if.end4
  store i32 0, ptr %ret, align 4, !dbg !1415
  %4 = load ptr, ptr %gov.addr, align 8, !dbg !1417
  %governor_list = getelementptr inbounds %struct.cpuidle_governor, ptr %4, i32 0, i32 1, !dbg !1418
  call void @list_add_tail(ptr noundef %governor_list, ptr noundef @cpuidle_governors) #8, !dbg !1419
  %5 = load ptr, ptr @cpuidle_curr_governor, align 8, !dbg !1420
  %tobool7 = icmp ne ptr %5, null, !dbg !1420
  br i1 %tobool7, label %lor.lhs.false8, label %if.then20, !dbg !1422

lor.lhs.false8:                                   ; preds = %if.then6
  %6 = load ptr, ptr %gov.addr, align 8, !dbg !1423
  %name9 = getelementptr inbounds %struct.cpuidle_governor, ptr %6, i32 0, i32 0, !dbg !1424
  %arraydecay10 = getelementptr inbounds [16 x i8], ptr %name9, i64 0, i64 0, !dbg !1423
  %call11 = call i32 @strncasecmp(ptr noundef @param_governor, ptr noundef %arraydecay10, i64 noundef 16) #8, !dbg !1425
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1425
  br i1 %tobool12, label %lor.lhs.false13, label %if.then20, !dbg !1426

lor.lhs.false13:                                  ; preds = %lor.lhs.false8
  %7 = load ptr, ptr @cpuidle_curr_governor, align 8, !dbg !1427
  %rating = getelementptr inbounds %struct.cpuidle_governor, ptr %7, i32 0, i32 2, !dbg !1428
  %8 = load i32, ptr %rating, align 8, !dbg !1428
  %9 = load ptr, ptr %gov.addr, align 8, !dbg !1429
  %rating14 = getelementptr inbounds %struct.cpuidle_governor, ptr %9, i32 0, i32 2, !dbg !1430
  %10 = load i32, ptr %rating14, align 8, !dbg !1430
  %cmp15 = icmp ult i32 %8, %10, !dbg !1431
  br i1 %cmp15, label %land.lhs.true, label %if.end22, !dbg !1432

land.lhs.true:                                    ; preds = %lor.lhs.false13
  %11 = load ptr, ptr @cpuidle_curr_governor, align 8, !dbg !1433
  %name16 = getelementptr inbounds %struct.cpuidle_governor, ptr %11, i32 0, i32 0, !dbg !1434
  %arraydecay17 = getelementptr inbounds [16 x i8], ptr %name16, i64 0, i64 0, !dbg !1433
  %call18 = call i32 @strncasecmp(ptr noundef @param_governor, ptr noundef %arraydecay17, i64 noundef 16) #8, !dbg !1435
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1435
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !1436

if.then20:                                        ; preds = %land.lhs.true, %lor.lhs.false8, %if.then6
  %12 = load ptr, ptr %gov.addr, align 8, !dbg !1437
  %call21 = call i32 @cpuidle_switch_governor(ptr noundef %12) #8, !dbg !1438
  br label %if.end22, !dbg !1438

if.end22:                                         ; preds = %if.then20, %land.lhs.true, %lor.lhs.false13
  br label %if.end23, !dbg !1439

if.end23:                                         ; preds = %if.end22, %if.end4
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #8, !dbg !1440
  %13 = load i32, ptr %ret, align 4, !dbg !1441
  store i32 %13, ptr %retval, align 4, !dbg !1442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1442

cleanup:                                          ; preds = %if.end23, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1443
  %14 = load i32, ptr %retval, align 4, !dbg !1443
  ret i32 %14, !dbg !1443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1444 dso_local i32 @cpuidle_disabled() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1445 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !1449 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1454, metadata !DIExpression()), !dbg !1456
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1455, metadata !DIExpression()), !dbg !1457
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1458
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1459
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1460
  %2 = load ptr, ptr %prev, align 8, !dbg !1460
  %3 = load ptr, ptr %head.addr, align 8, !dbg !1461
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #8, !dbg !1462
  ret void, !dbg !1463
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1464 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @cpuidle_governor_latency_req(i32 noundef %cpu) #0 align 16 !dbg !1465 {
entry:
  %cpu.addr = alloca i32, align 4
  %device = alloca ptr, align 8
  %device_req = alloca i32, align 4
  %global_req = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1469, metadata !DIExpression()), !dbg !1972
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #7, !dbg !1973
  call void @llvm.dbg.declare(metadata ptr %device, metadata !1470, metadata !DIExpression()), !dbg !1974
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1975
  %call = call ptr @get_cpu_device(i32 noundef %0) #8, !dbg !1976
  store ptr %call, ptr %device, align 8, !dbg !1974
  call void @llvm.lifetime.start.p0(i64 4, ptr %device_req) #7, !dbg !1977
  call void @llvm.dbg.declare(metadata ptr %device_req, metadata !1970, metadata !DIExpression()), !dbg !1978
  %1 = load ptr, ptr %device, align 8, !dbg !1979
  %call1 = call i32 @dev_pm_qos_raw_resume_latency(ptr noundef %1) #8, !dbg !1980
  store i32 %call1, ptr %device_req, align 4, !dbg !1978
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_req) #7, !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %global_req, metadata !1971, metadata !DIExpression()), !dbg !1982
  %call2 = call i32 @cpu_latency_qos_limit() #8, !dbg !1983
  store i32 %call2, ptr %global_req, align 4, !dbg !1982
  %2 = load i32, ptr %device_req, align 4, !dbg !1984
  %3 = load i32, ptr %global_req, align 4, !dbg !1986
  %cmp = icmp sgt i32 %2, %3, !dbg !1987
  br i1 %cmp, label %if.then, label %if.end, !dbg !1988

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %global_req, align 4, !dbg !1989
  store i32 %4, ptr %device_req, align 4, !dbg !1990
  br label %if.end, !dbg !1991

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %device_req, align 4, !dbg !1992
  %conv = sext i32 %5 to i64, !dbg !1993
  %mul = mul i64 %conv, 1000, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_req) #7, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 4, ptr %device_req) #7, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #7, !dbg !1995
  ret i64 %mul, !dbg !1996
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1997 dso_local ptr @get_cpu_device(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_pm_qos_raw_resume_latency(ptr noundef %dev) #5 align 16 !dbg !2001 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2005, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2007
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2008
  %qos = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 28, !dbg !2009
  %1 = load ptr, ptr %qos, align 8, !dbg !2009
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %1) #8, !dbg !2010
  br i1 %call, label %cond.true, label %cond.false, !dbg !2010

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2010

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2011
  %power1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, !dbg !2012
  %qos2 = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 28, !dbg !2013
  %3 = load ptr, ptr %qos2, align 8, !dbg !2013
  %resume_latency = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 0, !dbg !2014
  %call3 = call i32 @pm_qos_read_value(ptr noundef %resume_latency) #8, !dbg !2015
  br label %cond.end, !dbg !2010

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2147483647, %cond.true ], [ %call3, %cond.false ], !dbg !2010
  ret i32 %cond, !dbg !2016
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2017 dso_local i32 @cpu_latency_qos_limit() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !2020 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2024, metadata !DIExpression()), !dbg !2027
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2025, metadata !DIExpression()), !dbg !2028
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2026, metadata !DIExpression()), !dbg !2029
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2030
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2032
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2033
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8, !dbg !2034
  br i1 %call, label %if.end, label %if.then, !dbg !2035

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2036

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2037
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2038
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2039
  store ptr %3, ptr %prev1, align 8, !dbg !2040
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2041
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2042
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2043
  store ptr %5, ptr %next2, align 8, !dbg !2044
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2045
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2046
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2047
  store ptr %7, ptr %prev3, align 8, !dbg !2048
  br label %do.body, !dbg !2049

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2050

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2052

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2050

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2054
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2054
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2054
  store volatile ptr %9, ptr %next6, align 8, !dbg !2054
  br label %do.end7, !dbg !2054

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2050

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !2057 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2061, metadata !DIExpression()), !dbg !2064
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2062, metadata !DIExpression()), !dbg !2065
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2063, metadata !DIExpression()), !dbg !2066
  ret i1 true, !dbg !2067
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #5 align 16 !dbg !2068 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2073, metadata !DIExpression()), !dbg !2074
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2075
  %tobool = icmp ne ptr %0, null, !dbg !2075
  %lnot = xor i1 %tobool, true, !dbg !2075
  %lnot1 = xor i1 %lnot, true, !dbg !2075
  %lnot2 = xor i1 %lnot1, true, !dbg !2075
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2075
  %conv = sext i32 %lnot.ext to i64, !dbg !2075
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2075
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2075
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2076

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !2077
  %2 = ptrtoint ptr %1 to i64, !dbg !2077
  %3 = inttoptr i64 %2 to ptr, !dbg !2077
  %4 = ptrtoint ptr %3 to i64, !dbg !2077
  %cmp = icmp uge i64 %4, -4095, !dbg !2077
  %lnot5 = xor i1 %cmp, true, !dbg !2077
  %lnot7 = xor i1 %lnot5, true, !dbg !2077
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2077
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2077
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !2077
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !2076
  br label %lor.end, !dbg !2076

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !2078
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2079 dso_local i32 @pm_qos_read_value(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!llvm.ident = !{!1276}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpuidle_governors", scope: !2, file: !3, line: 21, type: !112, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpuidle/.governor.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpuidle/governor\22 -D KBUILD_BASENAME=\22governor\22 -D KBUILD_MODNAME=\22governor\22 -D __KBUILD_MODNAME=kmod_governor -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpuidle/governor.ll drivers/cpuidle/governor.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !100, globals: !1256, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/governor.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a482043748796d5b67682f754cdf86cb")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !59, !66, !70, !79, !84, !89, !95}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !54, line: 41, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!57 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!58 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !54, line: 99, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!62 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!63 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!64 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!65 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !54, line: 80, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!69 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!73 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!74 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!75 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!76 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!77 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!78 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!82 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!83 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!87 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!88 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!92 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!93 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!94 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 10, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!97 = !{!98, !99}
!98 = !DIEnumerator(name: "false", value: 0)
!99 = !DIEnumerator(name: "true", value: 1)
!100 = !{!101, !102, !1185, !401, !1254, !462, !1067, !276}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_governor", file: !104, line: 288, size: 576, elements: !105)
!104 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4e37910f6e1ee8771b4e96ef73e2ef7")
!105 = !{!106, !111, !118, !119, !1241, !1245, !1250}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !104, line: 289, baseType: !107, size: 128)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !109)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !{!110}
!110 = !DISubrange(count: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !103, file: !104, line: 290, baseType: !112, size: 128, offset: 128)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !113, line: 190, size: 128, elements: !114)
!113 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !113, line: 191, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !113, line: 191, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !103, file: !104, line: 291, baseType: !7, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !103, file: !104, line: 293, baseType: !120, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!46, !123, !1185}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !104, line: 152, size: 8704, elements: !125)
!125 = !{!126, !129, !1165, !1166, !1229, !1230, !1231, !1240}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !104, line: 153, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !124, file: !104, line: 154, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !132)
!132 = !{!133, !134, !135, !139, !818, !844, !845, !846, !847, !851, !854, !855, !856, !909, !910, !911, !912, !913, !914, !915, !916, !919, !923, !943, !961, !962, !963, !964, !973, !997, !998, !1001, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1015, !1016, !1123, !1131, !1132, !1133, !1135, !1139, !1140, !1144, !1145, !1146, !1147, !1149, !1150, !1151, !1158, !1159, !1160, !1164}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !131, file: !6, line: 403, baseType: !5, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !131, file: !6, line: 406, baseType: !112, size: 128, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !6, line: 409, baseType: !136, size: 448, offset: 192)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 448, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 56)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !131, file: !6, line: 417, baseType: !140, size: 768, offset: 640)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !141)
!141 = !{!142, !801, !802, !803, !806}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !140, file: !6, line: 46, baseType: !143, size: 512)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !144, line: 64, size: 512, elements: !145)
!144 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!145 = !{!146, !147, !148, !150, !239, !672, !786, !796, !797, !798, !799, !800}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 65, baseType: !127, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !143, file: !144, line: 66, baseType: !112, size: 128, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !144, line: 67, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !143, file: !144, line: 68, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !144, line: 168, size: 768, elements: !153)
!153 = !{!154, !155, !198, !199}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !152, file: !144, line: 169, baseType: !112, size: 128)
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
!174 = !{!175, !180, !190}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !169, line: 16, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !113, line: 174, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 172, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !177, file: !113, line: 173, baseType: !46, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !169, line: 24, baseType: !181, size: 16)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !169, line: 24, size: 16, elements: !182)
!182 = !{!183, !189}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !181, file: !169, line: 25, baseType: !184, size: 8)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !185, line: 17, baseType: !186)
!185 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !187, line: 21, baseType: !188)
!187 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!188 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !181, file: !169, line: 26, baseType: !184, size: 8, offset: 8)
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !169, line: 28, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !169, line: 28, size: 32, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !191, file: !169, line: 29, baseType: !194, size: 16)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !185, line: 19, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !187, line: 24, baseType: !196)
!196 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !191, file: !169, line: 30, baseType: !194, size: 16, offset: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !152, file: !144, line: 171, baseType: !143, size: 512, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !152, file: !144, line: 172, baseType: !200, size: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !144, line: 133, size: 192, elements: !203)
!203 = !{!204, !211, !216}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !202, file: !144, line: 134, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!46, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !144, line: 135, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!127, !209}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !202, file: !144, line: 136, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!46, !209, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !144, line: 125, size: 20736, elements: !223)
!223 = !{!224, !229, !233, !234, !238}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !222, file: !144, line: 126, baseType: !225, size: 192)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 192, elements: !227)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!227 = !{!228}
!228 = !DISubrange(count: 3)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !222, file: !144, line: 127, baseType: !230, size: 4096, offset: 192)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 4096, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !222, file: !144, line: 128, baseType: !46, size: 32, offset: 4288)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !222, file: !144, line: 129, baseType: !235, size: 16384, offset: 4320)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16384, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 2048)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !222, file: !144, line: 130, baseType: !46, size: 32, offset: 20704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !143, file: !144, line: 69, baseType: !240, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !144, line: 116, size: 384, elements: !243)
!243 = !{!244, !248, !277, !619, !650, !654}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !242, file: !144, line: 117, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !149}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !242, file: !144, line: 118, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !252, line: 254, size: 128, elements: !253)
!252 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!253 = !{!254, !269}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !251, file: !252, line: 255, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !149, !263, !226}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !113, line: 66, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !260, line: 73, baseType: !261)
!260 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !260, line: 15, baseType: !262)
!262 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !252, line: 30, size: 128, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !252, line: 31, baseType: !127, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !264, file: !252, line: 32, baseType: !268, size: 16, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !113, line: 24, baseType: !196)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !251, file: !252, line: 256, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!258, !149, !263, !127, !273}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 61, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !260, line: 72, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !260, line: 16, baseType: !276)
!276 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !242, file: !144, line: 119, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !252, line: 84, size: 320, elements: !282)
!282 = !{!283, !284, !288, !615, !617}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !252, line: 85, baseType: !127, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !281, file: !252, line: 86, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!268, !149, !263, !46}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !281, file: !252, line: 88, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!268, !149, !292, !46}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !252, line: 175, size: 512, elements: !294)
!294 = !{!295, !296, !297, !298, !305, !315, !316}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !293, file: !252, line: 176, baseType: !264, size: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !293, file: !252, line: 177, baseType: !273, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !293, file: !252, line: 178, baseType: !101, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !293, file: !252, line: 179, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !304, line: 32, flags: DIFlagFwdDecl)
!304 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!305 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !293, file: !252, line: 180, baseType: !306, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!258, !309, !149, !292, !226, !312, !273}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !311, line: 537, flags: DIFlagFwdDecl)
!311 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !113, line: 52, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !260, line: 88, baseType: !314)
!314 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !293, file: !252, line: 182, baseType: !306, size: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !293, file: !252, line: 184, baseType: !317, size: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!46, !309, !149, !292, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !304, line: 625, size: 1344, elements: !322)
!322 = !{!323, !340, !563, !569, !576, !577, !582, !585, !597, !598, !601, !605, !606, !607, !608, !609, !613}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !304, line: 628, baseType: !324, size: 128)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !304, line: 628, size: 128, elements: !325)
!325 = !{!326, !331}
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !304, line: 629, baseType: !327, size: 128)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !304, line: 629, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !327, file: !304, line: 631, baseType: !276, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !327, file: !304, line: 632, baseType: !276, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !324, file: !304, line: 635, baseType: !332, size: 128, align: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !113, line: 232, size: 128, align: 64, elements: !333)
!333 = !{!334, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !113, line: 233, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !332, file: !113, line: 234, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !335}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !321, file: !304, line: 639, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !304, line: 733, size: 10240, elements: !343)
!343 = !{!344, !559}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !304, line: 734, baseType: !345, size: 10240)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !304, line: 734, size: 10240, elements: !346)
!346 = !{!347, !351, !365, !369, !370, !371, !372, !373, !374, !382, !383, !384, !393, !394, !403, !404, !405, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !452, !466, !469, !524, !525, !526, !529, !533, !534, !537, !538, !539, !546, !547}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !304, line: 739, baseType: !348, size: 512, align: 512)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !304, line: 739, size: 512, align: 512, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !348, file: !304, line: 747, baseType: !176, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !345, file: !304, line: 750, baseType: !352, size: 128, offset: 512)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !353, line: 218, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!354 = !{!355, !363, !364}
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !353, line: 219, baseType: !356, size: 32)
!356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !353, line: 219, size: 32, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !356, file: !353, line: 220, baseType: !156, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !356, file: !353, line: 221, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !353, line: 197, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 197, elements: !362)
!362 = !{}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !352, file: !353, line: 223, baseType: !7, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !352, file: !353, line: 224, baseType: !101, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !345, file: !304, line: 752, baseType: !366, size: 64, offset: 640)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!276, !309, !276, !276, !276, !276}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !345, file: !304, line: 756, baseType: !276, size: 64, offset: 704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !345, file: !304, line: 757, baseType: !276, size: 64, offset: 768)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !345, file: !304, line: 760, baseType: !276, size: 64, offset: 832)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !345, file: !304, line: 761, baseType: !276, size: 64, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !345, file: !304, line: 763, baseType: !276, size: 64, offset: 960)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !345, file: !304, line: 764, baseType: !375, size: 64, offset: 1024)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !311, line: 299, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 299, size: 64, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !377, file: !311, line: 299, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !381, line: 18, baseType: !276)
!381 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!382 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !345, file: !304, line: 773, baseType: !176, size: 32, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !345, file: !304, line: 785, baseType: !176, size: 32, offset: 1120)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !345, file: !304, line: 795, baseType: !385, size: 64, offset: 1152)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !304, line: 726, size: 128, elements: !387)
!387 = !{!388, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !386, file: !304, line: 727, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !185, line: 23, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !187, line: 31, baseType: !391)
!391 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !386, file: !304, line: 728, baseType: !46, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !345, file: !304, line: 801, baseType: !276, size: 64, offset: 1216)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !345, file: !304, line: 804, baseType: !395, size: 64, offset: 1280)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !396, line: 13, baseType: !397)
!396 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !113, line: 181, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 179, size: 64, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !398, file: !113, line: 180, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !185, line: 22, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !187, line: 30, baseType: !314)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !345, file: !304, line: 806, baseType: !46, size: 32, offset: 1344)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !345, file: !304, line: 808, baseType: !156, size: 32, offset: 1376)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !345, file: !304, line: 823, baseType: !406, size: 320, offset: 1408)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !407, line: 48, size: 320, elements: !408)
!407 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!408 = !{!409, !410, !411, !416, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !406, file: !407, line: 49, baseType: !395, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !406, file: !407, line: 55, baseType: !395, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !406, file: !407, line: 57, baseType: !412, size: 32, offset: 128)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !413, line: 15, size: 32, elements: !414)
!413 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !412, file: !413, line: 20, baseType: !176, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !406, file: !407, line: 59, baseType: !417, size: 32, offset: 160)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !165, line: 23, baseType: !164)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !406, file: !407, line: 60, baseType: !112, size: 128, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !345, file: !304, line: 825, baseType: !112, size: 128, offset: 1728)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !345, file: !304, line: 845, baseType: !46, size: 32, offset: 1856)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !345, file: !304, line: 849, baseType: !276, size: 64, offset: 1920)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !345, file: !304, line: 850, baseType: !276, size: 64, offset: 1984)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !345, file: !304, line: 852, baseType: !276, size: 64, offset: 2048)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !345, file: !304, line: 853, baseType: !276, size: 64, offset: 2112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !345, file: !304, line: 854, baseType: !397, size: 64, offset: 2176)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !345, file: !304, line: 855, baseType: !276, size: 64, offset: 2240)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !345, file: !304, line: 856, baseType: !276, size: 64, offset: 2304)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !345, file: !304, line: 857, baseType: !276, size: 64, offset: 2368)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !345, file: !304, line: 858, baseType: !276, size: 64, offset: 2432)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !345, file: !304, line: 865, baseType: !431, size: 32, offset: 2496)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !432, line: 69, baseType: !433)
!432 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !432, line: 64, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !433, file: !432, line: 65, baseType: !7, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !345, file: !304, line: 867, baseType: !156, size: 32, offset: 2528)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !345, file: !304, line: 869, baseType: !276, size: 64, offset: 2560)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !345, file: !304, line: 869, baseType: !276, size: 64, offset: 2624)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !345, file: !304, line: 869, baseType: !276, size: 64, offset: 2688)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !345, file: !304, line: 869, baseType: !276, size: 64, offset: 2752)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !345, file: !304, line: 870, baseType: !276, size: 64, offset: 2816)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !345, file: !304, line: 870, baseType: !276, size: 64, offset: 2880)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !345, file: !304, line: 870, baseType: !276, size: 64, offset: 2944)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !345, file: !304, line: 871, baseType: !276, size: 64, offset: 3008)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !345, file: !304, line: 871, baseType: !276, size: 64, offset: 3072)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !345, file: !304, line: 871, baseType: !276, size: 64, offset: 3136)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !345, file: !304, line: 871, baseType: !276, size: 64, offset: 3200)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !345, file: !304, line: 873, baseType: !449, size: 3328, offset: 3264)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 3328, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 52)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !345, file: !304, line: 875, baseType: !453, size: 1280, offset: 6592)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 1280, elements: !464)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !455, line: 22, size: 320, elements: !456)
!455 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!456 = !{!457, !458, !459, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !454, file: !455, line: 23, baseType: !417, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !454, file: !455, line: 24, baseType: !401, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !454, file: !455, line: 26, baseType: !112, size: 128, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !454, file: !455, line: 28, baseType: !461, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !185, line: 20, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !187, line: 26, baseType: !46)
!464 = !{!465}
!465 = !DISubrange(count: 4)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !345, file: !304, line: 877, baseType: !467, size: 64, offset: 7872)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !304, line: 877, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !345, file: !304, line: 880, baseType: !470, size: 1088, offset: 7936)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !471, line: 72, baseType: !472)
!471 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 23, size: 1088, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !481, !482, !490, !491, !518, !519, !520}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !472, file: !471, line: 28, baseType: !389, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !472, file: !471, line: 38, baseType: !397, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !472, file: !471, line: 40, baseType: !276, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !472, file: !471, line: 43, baseType: !406, size: 320, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !472, file: !471, line: 44, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !471, line: 44, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !471, line: 48, baseType: !276, size: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !471, line: 59, baseType: !483, size: 256, offset: 640)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !484, line: 66, size: 256, elements: !485)
!484 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !483, file: !484, line: 67, baseType: !395, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !483, file: !484, line: 68, baseType: !417, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !483, file: !484, line: 70, baseType: !412, size: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !483, file: !484, line: 72, baseType: !112, size: 128, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !472, file: !471, line: 60, baseType: !101, size: 64, offset: 896)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !472, file: !471, line: 61, baseType: !492, size: 64, offset: 960)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !495, line: 13, size: 1216, elements: !496)
!495 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!496 = !{!497, !498, !499, !500, !501, !502, !503, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !494, file: !495, line: 14, baseType: !101, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !494, file: !495, line: 15, baseType: !276, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !494, file: !495, line: 17, baseType: !276, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !494, file: !495, line: 17, baseType: !276, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !494, file: !495, line: 18, baseType: !276, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !494, file: !495, line: 18, baseType: !276, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !494, file: !495, line: 19, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !494, file: !495, line: 21, baseType: !262, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !494, file: !495, line: 23, baseType: !262, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !494, file: !495, line: 24, baseType: !262, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !494, file: !495, line: 25, baseType: !262, size: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !494, file: !495, line: 26, baseType: !262, size: 64, offset: 704)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !494, file: !495, line: 27, baseType: !262, size: 64, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !494, file: !495, line: 28, baseType: !262, size: 64, offset: 832)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !494, file: !495, line: 29, baseType: !262, size: 64, offset: 896)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !494, file: !495, line: 30, baseType: !262, size: 64, offset: 960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !494, file: !495, line: 31, baseType: !262, size: 64, offset: 1024)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !494, file: !495, line: 32, baseType: !262, size: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !494, file: !495, line: 33, baseType: !262, size: 64, offset: 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !472, file: !471, line: 63, baseType: !176, size: 32, offset: 1024)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !472, file: !471, line: 69, baseType: !194, size: 16, offset: 1056)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !472, file: !471, line: 70, baseType: !521, size: 16, offset: 1072)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !185, line: 18, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !187, line: 23, baseType: !523)
!523 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !304, line: 882, baseType: !276, size: 64, offset: 9024)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !345, file: !304, line: 885, baseType: !156, size: 32, offset: 9088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !345, file: !304, line: 886, baseType: !527, size: 64, offset: 9152)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !304, line: 732, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !345, file: !304, line: 901, baseType: !530, size: 64, offset: 9216)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !532, line: 18, flags: DIFlagFwdDecl)
!532 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !345, file: !304, line: 904, baseType: !309, size: 64, offset: 9280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !345, file: !304, line: 906, baseType: !535, size: 64, offset: 9344)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !304, line: 906, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !345, file: !304, line: 930, baseType: !176, size: 32, offset: 9408)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !345, file: !304, line: 933, baseType: !176, size: 32, offset: 9440)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !345, file: !304, line: 935, baseType: !540, size: 64, offset: 9472)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !541, line: 103, size: 64, elements: !542)
!541 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !540, file: !541, line: 104, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !541, line: 101, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !345, file: !304, line: 940, baseType: !395, size: 64, offset: 9536)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !345, file: !304, line: 942, baseType: !548, size: 256, offset: 9600)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !549, line: 98, size: 256, elements: !550)
!549 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !548, file: !549, line: 99, baseType: !395, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !548, file: !549, line: 100, baseType: !112, size: 128, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !548, file: !549, line: 101, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !549, line: 21, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !342, file: !304, line: 986, baseType: !560, offset: 10240)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: -1)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !321, file: !304, line: 640, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !311, line: 297, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !311, line: 297, size: 64, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !565, file: !311, line: 297, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !381, line: 19, baseType: !276)
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !304, line: 646, baseType: !570, size: 64, offset: 256)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !304, line: 646, size: 64, elements: !571)
!571 = !{!572, !575}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !570, file: !304, line: 647, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !304, line: 542, baseType: !276)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !570, file: !304, line: 648, baseType: !574, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !321, file: !304, line: 666, baseType: !46, size: 32, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !321, file: !304, line: 667, baseType: !578, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !304, line: 579, size: 320, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !579, file: !304, line: 580, baseType: !406, size: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !321, file: !304, line: 670, baseType: !583, size: 8, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !113, line: 35, baseType: !584)
!584 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !321, file: !304, line: 681, baseType: !586, size: 256, offset: 512)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !304, line: 678, size: 256, elements: !587)
!587 = !{!588, !596}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !586, file: !304, line: 679, baseType: !589, size: 192, align: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !590, line: 5, size: 192, align: 64, elements: !591)
!590 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!591 = !{!592, !593, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !589, file: !590, line: 6, baseType: !276, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !589, file: !590, line: 7, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !589, file: !590, line: 8, baseType: !594, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !586, file: !304, line: 680, baseType: !276, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !321, file: !304, line: 689, baseType: !112, size: 128, offset: 768)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !321, file: !304, line: 691, baseType: !599, size: 64, offset: 896)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !304, line: 691, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !321, file: !304, line: 694, baseType: !602, size: 64, offset: 960)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !304, line: 694, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !321, file: !304, line: 697, baseType: !276, size: 64, offset: 1024)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !321, file: !304, line: 699, baseType: !309, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !321, file: !304, line: 700, baseType: !101, size: 64, offset: 1152)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !321, file: !304, line: 711, baseType: !395, size: 64, offset: 1216)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !321, file: !304, line: 717, baseType: !610, size: 64, offset: 1280)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !612, line: 54, flags: DIFlagFwdDecl)
!612 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !321, file: !304, line: 722, baseType: !614, offset: 1344)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !304, line: 570, elements: !362)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !281, file: !252, line: 90, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !281, file: !252, line: 91, baseType: !618, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !242, file: !144, line: 120, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!623, !209}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !626)
!626 = !{!627, !628, !632, !636, !642, !646}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !625, file: !14, line: 40, baseType: !13, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !625, file: !14, line: 41, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!583}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !625, file: !14, line: 42, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!101}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !625, file: !14, line: 43, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!504, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !625, file: !14, line: 44, baseType: !643, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!504}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !625, file: !14, line: 45, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !101}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !242, file: !144, line: 121, baseType: !651, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!504, !209}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !242, file: !144, line: 122, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !209, !658, !665}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !532, line: 23, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 21, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !660, file: !532, line: 22, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !113, line: 37, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !260, line: 49, baseType: !7)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !532, line: 28, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 26, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !667, file: !532, line: 27, baseType: !670, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !113, line: 38, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !260, line: 50, baseType: !7)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !143, file: !144, line: 70, baseType: !673, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !675, line: 190, size: 1152, elements: !676)
!675 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !778, !779, !780, !781, !782, !785}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !674, file: !675, line: 191, baseType: !176, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !674, file: !675, line: 192, baseType: !176, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !674, file: !675, line: 202, baseType: !673, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !674, file: !675, line: 203, baseType: !127, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !674, file: !675, line: 205, baseType: !589, size: 192, align: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !674, file: !675, line: 207, baseType: !504, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !674, file: !675, line: 208, baseType: !7, size: 32, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !675, line: 209, baseType: !685, size: 256, offset: 512)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !675, line: 209, size: 256, elements: !686)
!686 = !{!687, !699, !703}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !685, file: !675, line: 210, baseType: !688, size: 256)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !675, line: 153, size: 256, elements: !689)
!689 = !{!690, !691, !695, !698}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !688, file: !675, line: 154, baseType: !276, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !688, file: !675, line: 156, baseType: !692, size: 64, offset: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !590, line: 12, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !692, file: !590, line: 13, baseType: !594, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !688, file: !675, line: 162, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !675, line: 162, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !688, file: !675, line: 167, baseType: !276, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !685, file: !675, line: 211, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !675, line: 170, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !700, file: !675, line: 171, baseType: !673, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !685, file: !675, line: 212, baseType: !704, size: 256)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !675, line: 174, size: 256, elements: !705)
!705 = !{!706, !773, !776, !777}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !704, file: !675, line: 175, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !675, line: 271, size: 768, elements: !710)
!710 = !{!711, !733, !737, !741, !746, !750, !754, !758, !759, !760, !761, !769}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !709, file: !675, line: 276, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!46, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !675, line: 251, size: 1216, elements: !717)
!717 = !{!718, !719, !720, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !716, file: !675, line: 253, baseType: !673, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !716, file: !675, line: 254, baseType: !309, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !716, file: !675, line: 255, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !612, line: 66, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !716, file: !675, line: 256, baseType: !101, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !716, file: !675, line: 259, baseType: !483, size: 256, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !716, file: !675, line: 260, baseType: !483, size: 256, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !716, file: !675, line: 261, baseType: !46, size: 32, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !716, file: !675, line: 262, baseType: !112, size: 128, offset: 832)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !716, file: !675, line: 263, baseType: !226, size: 64, offset: 960)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !716, file: !675, line: 265, baseType: !273, size: 64, offset: 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !716, file: !675, line: 266, baseType: !583, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !716, file: !675, line: 267, baseType: !583, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !716, file: !675, line: 268, baseType: !602, size: 64, offset: 1152)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !709, file: !675, line: 277, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !715}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !709, file: !675, line: 290, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!46, !721, !101}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !709, file: !675, line: 292, baseType: !742, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!101, !721, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !709, file: !675, line: 293, baseType: !747, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!101, !721, !101, !745}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !709, file: !675, line: 294, baseType: !751, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !721, !101}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !709, file: !675, line: 296, baseType: !755, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!258, !715, !226, !273, !312}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !709, file: !675, line: 306, baseType: !273, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !709, file: !675, line: 313, baseType: !583, size: 8, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !709, file: !675, line: 314, baseType: !755, size: 64, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !709, file: !675, line: 317, baseType: !762, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!765, !715, !767}
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !766, line: 59, baseType: !7)
!766 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !675, line: 31, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !709, file: !675, line: 320, baseType: !770, size: 64, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!46, !715, !320}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !704, file: !675, line: 176, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !675, line: 35, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !704, file: !675, line: 177, baseType: !312, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !704, file: !675, line: 178, baseType: !673, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !674, file: !675, line: 215, baseType: !101, size: 64, offset: 768)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !674, file: !675, line: 221, baseType: !389, size: 64, offset: 832)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !675, line: 223, baseType: !196, size: 16, offset: 896)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !674, file: !675, line: 224, baseType: !268, size: 16, offset: 912)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !674, file: !675, line: 225, baseType: !783, size: 64, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !675, line: 36, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !674, file: !675, line: 227, baseType: !332, size: 128, align: 64, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !143, file: !144, line: 71, baseType: !787, size: 32, offset: 448)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !788, line: 19, size: 32, elements: !789)
!788 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !787, file: !788, line: 20, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !792, line: 113, baseType: !793)
!792 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !792, line: 111, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !793, file: !792, line: 112, baseType: !176, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !143, file: !144, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !143, file: !144, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !143, file: !144, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !143, file: !144, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !143, file: !144, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !140, file: !6, line: 47, baseType: !130, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !140, file: !6, line: 48, baseType: !149, size: 64, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !140, file: !6, line: 49, baseType: !804, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !140, file: !6, line: 50, baseType: !807, size: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !809, line: 26, size: 256, elements: !810)
!809 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !808, file: !809, line: 27, baseType: !7, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !808, file: !809, line: 28, baseType: !813, size: 192, offset: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !814, line: 43, size: 192, elements: !815)
!814 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !813, file: !814, line: 44, baseType: !417, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !813, file: !814, line: 45, baseType: !112, size: 128, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !131, file: !6, line: 418, baseType: !819, size: 64, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !821)
!821 = !{!822, !823, !828, !832, !836, !840}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !820, file: !6, line: 54, baseType: !264, size: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !820, file: !6, line: 55, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!258, !819, !827, !226}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !820, file: !6, line: 57, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!258, !819, !827, !127, !273}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !820, file: !6, line: 59, baseType: !833, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !130, !127}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !820, file: !6, line: 60, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!46, !130}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !820, file: !6, line: 61, baseType: !841, size: 64, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !130}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !131, file: !6, line: 419, baseType: !127, size: 64, offset: 1472)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !131, file: !6, line: 420, baseType: !127, size: 64, offset: 1536)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !131, file: !6, line: 421, baseType: !149, size: 64, offset: 1600)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !131, file: !6, line: 424, baseType: !848, size: 64, offset: 1664)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !131, file: !6, line: 425, baseType: !852, size: 64, offset: 1728)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !131, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !131, file: !6, line: 435, baseType: !483, size: 256, offset: 1856)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !131, file: !6, line: 437, baseType: !857, size: 64, offset: 2112)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !859, line: 69, size: 320, elements: !860)
!859 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!860 = !{!861, !862, !863, !880, !882, !886, !887}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !859, line: 70, baseType: !127, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !858, file: !859, line: 71, baseType: !130, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !858, file: !859, line: 72, baseType: !864, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !859, line: 47, size: 256, elements: !867)
!867 = !{!868, !869, !875, !879}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !866, file: !859, line: 49, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !866, file: !859, line: 51, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!46, !127, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !866, file: !859, line: 53, baseType: !876, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!46, !226, !873}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !866, file: !859, line: 55, baseType: !647, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !858, file: !859, line: 73, baseType: !881, size: 16, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !858, file: !859, line: 74, baseType: !883, size: 8, offset: 208)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !185, line: 16, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !187, line: 20, baseType: !885)
!885 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !858, file: !859, line: 75, baseType: !184, size: 8, offset: 216)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !859, line: 76, baseType: !888, size: 64, offset: 256)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !859, line: 76, size: 64, elements: !889)
!889 = !{!890, !891, !898}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !888, file: !859, line: 77, baseType: !101, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !888, file: !859, line: 78, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !859, line: 86, size: 128, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !894, file: !859, line: 87, baseType: !7, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !894, file: !859, line: 88, baseType: !226, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !888, file: !859, line: 79, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !859, line: 92, size: 256, elements: !902)
!902 = !{!903, !904, !905, !907, !908}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !901, file: !859, line: 94, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !901, file: !859, line: 95, baseType: !7, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !901, file: !859, line: 96, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !901, file: !859, line: 97, baseType: !864, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !901, file: !859, line: 98, baseType: !101, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !131, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !131, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !131, file: !6, line: 442, baseType: !848, size: 64, offset: 2240)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !131, file: !6, line: 443, baseType: !852, size: 64, offset: 2304)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !131, file: !6, line: 444, baseType: !583, size: 8, offset: 2368)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !131, file: !6, line: 451, baseType: !583, size: 8, offset: 2376)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !131, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !131, file: !6, line: 455, baseType: !917, size: 64, offset: 2432)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !131, file: !6, line: 458, baseType: !920, size: 64, offset: 2496)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!46}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !131, file: !6, line: 460, baseType: !924, size: 4032, align: 512, offset: 2560)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 4032, elements: !941)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !925, file: !6, line: 363, baseType: !101, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !925, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !925, file: !6, line: 367, baseType: !930, size: 448, offset: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !930, file: !6, line: 320, baseType: !130, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !930, file: !6, line: 321, baseType: !934, size: 384, offset: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !935, line: 40, size: 384, elements: !936)
!935 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!936 = !{!937}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !934, file: !935, line: 41, baseType: !938, size: 384, align: 64)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 384, align: 64, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 2)
!941 = !{!942}
!942 = !DISubrange(count: 7)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !131, file: !6, line: 463, baseType: !944, size: 192, offset: 6592)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !945, line: 8, size: 192, elements: !946)
!945 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!946 = !{!947, !948, !950}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !944, file: !945, line: 10, baseType: !7, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !944, file: !945, line: 11, baseType: !949, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !944, file: !945, line: 12, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !953, line: 59, size: 48, elements: !954)
!953 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!954 = !{!955, !956, !957, !958, !959, !960}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !952, file: !953, line: 60, baseType: !521, size: 16)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !952, file: !953, line: 61, baseType: !521, size: 16, offset: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !952, file: !953, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !952, file: !953, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !953, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !952, file: !953, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !131, file: !6, line: 465, baseType: !276, size: 64, offset: 6784)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !131, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !131, file: !6, line: 470, baseType: !112, size: 128, offset: 6912)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !131, file: !6, line: 471, baseType: !965, size: 64, offset: 7040)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !967, line: 33, size: 96, elements: !968)
!967 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!968 = !{!969, !970, !971, !972}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !966, file: !967, line: 37, baseType: !46, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !966, file: !967, line: 43, baseType: !46, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !966, file: !967, line: 45, baseType: !196, size: 16, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 47, baseType: !196, size: 16, offset: 80)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !131, file: !6, line: 476, baseType: !974, size: 64, offset: 7104)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !976)
!976 = !{!977, !994, !995, !996}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !975, file: !6, line: 379, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !980, line: 204, baseType: !981)
!980 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !980, line: 197, size: 192, elements: !982)
!982 = !{!983, !986, !987, !988, !990, !992}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !981, file: !980, line: 198, baseType: !984, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !980, line: 21, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !187, line: 27, baseType: !7)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !981, file: !980, line: 199, baseType: !188, size: 8, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !981, file: !980, line: 200, baseType: !188, size: 8, offset: 40)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !981, file: !980, line: 201, baseType: !989, size: 16, offset: 48)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !980, line: 17, baseType: !195)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !981, file: !980, line: 202, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !980, line: 16, baseType: !390)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !981, file: !980, line: 203, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !980, line: 22, baseType: !390)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !975, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !975, file: !6, line: 381, baseType: !226, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !975, file: !6, line: 382, baseType: !226, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !131, file: !6, line: 477, baseType: !975, size: 256, offset: 7168)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !131, file: !6, line: 480, baseType: !999, size: 64, offset: 7424)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !131, file: !6, line: 483, baseType: !1002, size: 64, offset: 7488)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !131, file: !6, line: 488, baseType: !226, size: 64, offset: 7552)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !131, file: !6, line: 492, baseType: !101, size: 64, offset: 7616)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !131, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !131, file: !6, line: 495, baseType: !101, size: 64, offset: 7744)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !131, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !131, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !131, file: !6, line: 500, baseType: !1011, size: 64, offset: 7872)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1013, line: 45, baseType: !1014)
!1013 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !131, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !131, file: !6, line: 504, baseType: !1017, size: 64, offset: 8000)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1020, line: 96, size: 192, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1021 = !{!1022, !1023, !1084, !1087}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1019, file: !1020, line: 97, baseType: !7, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1019, file: !1020, line: 98, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1020, line: 24, size: 3072, elements: !1026)
!1026 = !{!1027, !1029, !1030, !1031, !1032, !1046, !1047, !1048, !1049, !1068, !1069, !1070, !1081, !1082, !1083}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1025, file: !1020, line: 26, baseType: !1028, size: 128)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 128, elements: !939)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1025, file: !1020, line: 27, baseType: !1028, size: 128, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1025, file: !1020, line: 28, baseType: !46, size: 32, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1025, file: !1020, line: 31, baseType: !156, size: 32, align: 512, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1025, file: !1020, line: 32, baseType: !1033, size: 960, offset: 576)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1034, line: 206, size: 960, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1035 = !{!1036, !1037, !1040, !1042, !1043, !1045}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1033, file: !1034, line: 207, baseType: !335, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1033, file: !1034, line: 208, baseType: !1038, size: 256, offset: 64)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 256, elements: !464)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1033, file: !1034, line: 209, baseType: !1041, size: 256, offset: 320)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 256, elements: !464)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1033, file: !1034, line: 213, baseType: !262, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1033, file: !1034, line: 215, baseType: !1044, size: 256, offset: 640)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !464)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !1034, line: 216, baseType: !184, size: 8, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1025, file: !1020, line: 33, baseType: !276, size: 64, offset: 1536)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1025, file: !1020, line: 34, baseType: !276, size: 64, offset: 1600)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1025, file: !1020, line: 35, baseType: !583, size: 8, offset: 1664)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1025, file: !1020, line: 36, baseType: !1050, size: 320, offset: 1728)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1051, line: 11, size: 320, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1052 = !{!1053, !1060, !1061, !1066}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1050, file: !1051, line: 16, baseType: !1054, size: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !113, line: 198, size: 128, elements: !1055)
!1055 = !{!1056, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1054, file: !113, line: 199, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1054, file: !113, line: 199, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1050, file: !1051, line: 17, baseType: !276, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1050, file: !1051, line: 18, baseType: !1062, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !1051, line: 19, baseType: !1067, size: 32, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !185, line: 21, baseType: !985)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1025, file: !1020, line: 37, baseType: !548, size: 256, offset: 2048)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1025, file: !1020, line: 38, baseType: !332, size: 128, align: 64, offset: 2304)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1025, file: !1020, line: 39, baseType: !1071, size: 64, offset: 2432)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1020, line: 49, size: 768, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1072, file: !1020, line: 50, baseType: !156, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1072, file: !1020, line: 51, baseType: !1041, size: 256, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1072, file: !1020, line: 53, baseType: !1041, size: 256, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1072, file: !1020, line: 54, baseType: !276, size: 64, offset: 576)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1072, file: !1020, line: 55, baseType: !1071, size: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1072, file: !1020, line: 56, baseType: !46, size: 32, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1072, file: !1020, line: 57, baseType: !46, size: 32, offset: 736)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1025, file: !1020, line: 40, baseType: !276, size: 64, offset: 2496)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1025, file: !1020, line: 42, baseType: !46, size: 32, offset: 2560)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1025, file: !1020, line: 43, baseType: !1018, size: 64, offset: 2624)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1019, file: !1020, line: 99, baseType: !1085, offset: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1086, line: 211, elements: !362)
!1086 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1019, file: !1020, line: 100, baseType: !1088, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1020, line: 63, size: 3008, elements: !1090)
!1090 = !{!1091, !1092, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1122}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1089, file: !1020, line: 64, baseType: !1071, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1089, file: !1020, line: 65, baseType: !1093, size: 192, offset: 64)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 192, elements: !227)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1089, file: !1020, line: 67, baseType: !46, size: 32, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1089, file: !1020, line: 68, baseType: !483, size: 256, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1089, file: !1020, line: 69, baseType: !156, size: 32, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1089, file: !1020, line: 70, baseType: !483, size: 256, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1089, file: !1020, line: 71, baseType: !276, size: 64, offset: 896)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1089, file: !1020, line: 72, baseType: !276, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1089, file: !1020, line: 73, baseType: !276, size: 64, offset: 1024)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1089, file: !1020, line: 74, baseType: !276, size: 64, offset: 1088)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1089, file: !1020, line: 75, baseType: !276, size: 64, offset: 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1089, file: !1020, line: 76, baseType: !276, size: 64, offset: 1216)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1089, file: !1020, line: 77, baseType: !276, size: 64, offset: 1280)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1089, file: !1020, line: 78, baseType: !276, size: 64, offset: 1344)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1089, file: !1020, line: 79, baseType: !583, size: 8, offset: 1408)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1089, file: !1020, line: 80, baseType: !276, size: 64, offset: 1472)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1089, file: !1020, line: 81, baseType: !483, size: 256, offset: 1536)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1089, file: !1020, line: 82, baseType: !808, size: 256, offset: 1792)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1089, file: !1020, line: 84, baseType: !176, size: 32, offset: 2048)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1089, file: !1020, line: 87, baseType: !276, size: 64, offset: 2112)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1089, file: !1020, line: 88, baseType: !276, size: 64, offset: 2176)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1089, file: !1020, line: 89, baseType: !1114, size: 704, offset: 2240)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !549, line: 111, size: 704, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1121}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1114, file: !549, line: 112, baseType: !548, size: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1114, file: !549, line: 113, baseType: !1050, size: 320, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1114, file: !549, line: 116, baseType: !1119, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !549, line: 18, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1114, file: !549, line: 117, baseType: !46, size: 32, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1089, file: !1020, line: 90, baseType: !1018, size: 64, offset: 2944)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !131, file: !6, line: 515, baseType: !1124, size: 64, offset: 8064)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1126, line: 117, size: 128, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1125, file: !1126, line: 118, baseType: !462, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1125, file: !1126, line: 119, baseType: !462, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1125, file: !1126, line: 120, baseType: !262, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !131, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !131, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !131, file: !6, line: 520, baseType: !1134, size: 64, offset: 8192)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !131, file: !6, line: 523, baseType: !1136, size: 64, offset: 8256)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !131, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !131, file: !6, line: 525, baseType: !1141, size: 64, offset: 8384)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !131, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !131, file: !6, line: 533, baseType: !101, size: 64, offset: 8512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !131, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !131, file: !6, line: 535, baseType: !1148, size: 64, offset: 8640)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !131, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !131, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !131, file: !6, line: 540, baseType: !1152, size: 64, offset: 8768)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1154, line: 32, size: 64, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1153, file: !1154, line: 33, baseType: !462, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1153, file: !1154, line: 34, baseType: !462, size: 32, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !131, file: !6, line: 563, baseType: !112, size: 128, offset: 8832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !131, file: !6, line: 565, baseType: !112, size: 128, offset: 8960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !131, file: !6, line: 568, baseType: !1161, size: 64, offset: 9088)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !131, file: !6, line: 570, baseType: !176, size: 32, offset: 9152)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !124, file: !104, line: 157, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !124, file: !104, line: 159, baseType: !1167, size: 8320, offset: 192)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1168, size: 8320, elements: !1211)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !104, line: 49, size: 832, elements: !1169)
!1169 = !{!1170, !1171, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1224, !1228}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1168, file: !104, line: 50, baseType: !107, size: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1168, file: !104, line: 51, baseType: !1172, size: 256, offset: 128)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !1168, file: !104, line: 53, baseType: !401, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !1168, file: !104, line: 54, baseType: !401, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1168, file: !104, line: 55, baseType: !7, size: 32, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !1168, file: !104, line: 56, baseType: !7, size: 32, offset: 544)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !1168, file: !104, line: 57, baseType: !46, size: 32, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !1168, file: !104, line: 58, baseType: !7, size: 32, offset: 608)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !1168, file: !104, line: 60, baseType: !1182, size: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!46, !1185, !123, !46}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !104, line: 93, size: 6400, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1195, !1196, !1197, !1198, !1199, !1213, !1217, !1220, !1223}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1186, file: !104, line: 94, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1186, file: !104, line: 95, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !1186, file: !104, line: 96, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1186, file: !104, line: 97, baseType: !7, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !1186, file: !104, line: 98, baseType: !1193, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1194, line: 29, baseType: !401)
!1194 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !1186, file: !104, line: 100, baseType: !46, size: 32, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !1186, file: !104, line: 101, baseType: !389, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !1186, file: !104, line: 102, baseType: !389, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !1186, file: !104, line: 103, baseType: !389, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !1186, file: !104, line: 104, baseType: !1200, size: 5120, offset: 384)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1201, size: 5120, elements: !1211)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !104, line: 36, size: 512, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1201, file: !104, line: 37, baseType: !391, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1201, file: !104, line: 38, baseType: !391, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1201, file: !104, line: 39, baseType: !389, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !1201, file: !104, line: 40, baseType: !391, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !1201, file: !104, line: 41, baseType: !391, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !1201, file: !104, line: 42, baseType: !391, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !1201, file: !104, line: 44, baseType: !391, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !1201, file: !104, line: 45, baseType: !391, size: 64, offset: 448)
!1211 = !{!1212}
!1212 = !DISubrange(count: 10)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !1186, file: !104, line: 105, baseType: !1214, size: 640, offset: 5504)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 640, elements: !1211)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !104, line: 90, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !1186, file: !104, line: 106, baseType: !1218, size: 64, offset: 6144)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !104, line: 91, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !1186, file: !104, line: 107, baseType: !1221, size: 64, offset: 6208)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !104, line: 89, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !1186, file: !104, line: 108, baseType: !112, size: 128, offset: 6272)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !1168, file: !104, line: 64, baseType: !1225, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!46, !1185, !46}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !1168, file: !104, line: 74, baseType: !1182, size: 64, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !124, file: !104, line: 160, baseType: !46, size: 32, offset: 8512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !124, file: !104, line: 161, baseType: !46, size: 32, offset: 8544)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !124, file: !104, line: 164, baseType: !1232, size: 64, offset: 8576)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1234, line: 19, size: 64, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1233, file: !1234, line: 19, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 64, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 1)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !124, file: !104, line: 167, baseType: !127, size: 64, offset: 8640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !103, file: !104, line: 295, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !123, !1185}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !103, file: !104, line: 298, baseType: !1246, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!46, !123, !1185, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "reflect", scope: !103, file: !104, line: 301, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !1185, !46}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!1256 = !{!0, !1257, !1262, !1264, !1266}
!1257 = !DIGlobalVariableExpression(var: !1258, expr: !DIExpression())
!1258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !1259, isLocal: true, isDefinition: true)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 240, elements: !1260)
!1260 = !{!1261}
!1261 = !DISubrange(count: 30)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(name: "param_governor", scope: !2, file: !3, line: 19, type: !107, isLocal: false, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(name: "cpuidle_curr_governor", scope: !2, file: !3, line: 22, type: !102, isLocal: false, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(name: "cpuidle_prev_governor", scope: !2, file: !3, line: 23, type: !102, isLocal: false, isDefinition: true)
!1268 = !{i32 7, !"Dwarf Version", i32 5}
!1269 = !{i32 2, !"Debug Info Version", i32 3}
!1270 = !{i32 1, !"wchar_size", i32 2}
!1271 = !{i32 8, !"cf-protection-branch", i32 1}
!1272 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1273 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1274 = !{i32 1, !"Code Model", i32 2}
!1275 = !{i32 1, !"override-stack-alignment", i32 8}
!1276 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1277 = distinct !DISubprogram(name: "cpuidle_find_governor", scope: !3, file: !3, line: 31, type: !1278, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!102, !127}
!1280 = !{!1281, !1282, !1283, !1286}
!1281 = !DILocalVariable(name: "str", arg: 1, scope: !1277, file: !3, line: 31, type: !127)
!1282 = !DILocalVariable(name: "gov", scope: !1277, file: !3, line: 33, type: !102)
!1283 = !DILocalVariable(name: "__mptr", scope: !1284, file: !3, line: 35, type: !101)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 35, column: 2)
!1285 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 35, column: 2)
!1286 = !DILocalVariable(name: "__mptr", scope: !1287, file: !3, line: 35, type: !101)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 35, column: 2)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 35, column: 2)
!1289 = !DILocation(line: 31, column: 60, scope: !1277)
!1290 = !DILocation(line: 33, column: 2, scope: !1277)
!1291 = !DILocation(line: 33, column: 27, scope: !1277)
!1292 = !DILocation(line: 35, column: 2, scope: !1284)
!1293 = !DILocation(line: 35, column: 2, scope: !1285)
!1294 = !DILocation(line: 35, column: 2, scope: !1288)
!1295 = !DILocation(line: 36, column: 20, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 36, column: 7)
!1297 = !DILocation(line: 36, column: 25, scope: !1296)
!1298 = !DILocation(line: 36, column: 30, scope: !1296)
!1299 = !DILocation(line: 36, column: 8, scope: !1296)
!1300 = !DILocation(line: 36, column: 7, scope: !1288)
!1301 = !DILocation(line: 37, column: 11, scope: !1296)
!1302 = !DILocation(line: 37, column: 4, scope: !1296)
!1303 = !DILocation(line: 36, column: 52, scope: !1296)
!1304 = !DILocation(line: 35, column: 2, scope: !1287)
!1305 = distinct !{!1305, !1293, !1306, !1307, !1308}
!1306 = !DILocation(line: 37, column: 11, scope: !1285)
!1307 = !{!"llvm.loop.mustprogress"}
!1308 = !{!"llvm.loop.unroll.disable"}
!1309 = !DILocation(line: 39, column: 2, scope: !1277)
!1310 = !DILocation(line: 40, column: 1, scope: !1277)
!1311 = !DISubprogram(name: "strncasecmp", scope: !1312, file: !1312, line: 97, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1312 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!46, !127, !127, !273}
!1315 = distinct !DISubprogram(name: "cpuidle_switch_governor", scope: !3, file: !3, line: 47, type: !1316, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!46, !102}
!1318 = !{!1319, !1320, !1321, !1326, !1329, !1332}
!1319 = !DILocalVariable(name: "gov", arg: 1, scope: !1315, file: !3, line: 47, type: !102)
!1320 = !DILocalVariable(name: "dev", scope: !1315, file: !3, line: 49, type: !1185)
!1321 = !DILocalVariable(name: "__mptr", scope: !1322, file: !3, line: 60, type: !101)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 60, column: 3)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 60, column: 3)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 59, column: 29)
!1325 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 59, column: 6)
!1326 = !DILocalVariable(name: "__mptr", scope: !1327, file: !3, line: 60, type: !101)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 60, column: 3)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 60, column: 3)
!1329 = !DILocalVariable(name: "__mptr", scope: !1330, file: !3, line: 66, type: !101)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 66, column: 2)
!1331 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 66, column: 2)
!1332 = !DILocalVariable(name: "__mptr", scope: !1333, file: !3, line: 66, type: !101)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 66, column: 2)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 66, column: 2)
!1335 = !DILocation(line: 47, column: 54, scope: !1315)
!1336 = !DILocation(line: 49, column: 2, scope: !1315)
!1337 = !DILocation(line: 49, column: 25, scope: !1315)
!1338 = !DILocation(line: 51, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 51, column: 6)
!1340 = !DILocation(line: 51, column: 6, scope: !1315)
!1341 = !DILocation(line: 52, column: 3, scope: !1339)
!1342 = !DILocation(line: 54, column: 6, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 54, column: 6)
!1344 = !DILocation(line: 54, column: 13, scope: !1343)
!1345 = !DILocation(line: 54, column: 10, scope: !1343)
!1346 = !DILocation(line: 54, column: 6, scope: !1315)
!1347 = !DILocation(line: 55, column: 3, scope: !1343)
!1348 = !DILocation(line: 57, column: 2, scope: !1315)
!1349 = !DILocation(line: 59, column: 6, scope: !1325)
!1350 = !DILocation(line: 59, column: 6, scope: !1315)
!1351 = !DILocation(line: 60, column: 3, scope: !1322)
!1352 = !DILocation(line: 60, column: 3, scope: !1323)
!1353 = !DILocation(line: 60, column: 3, scope: !1328)
!1354 = !DILocation(line: 61, column: 27, scope: !1328)
!1355 = !DILocation(line: 61, column: 4, scope: !1328)
!1356 = !DILocation(line: 60, column: 3, scope: !1327)
!1357 = distinct !{!1357, !1352, !1358, !1307, !1308}
!1358 = !DILocation(line: 61, column: 30, scope: !1323)
!1359 = !DILocation(line: 62, column: 2, scope: !1324)
!1360 = !DILocation(line: 64, column: 26, scope: !1315)
!1361 = !DILocation(line: 64, column: 24, scope: !1315)
!1362 = !DILocation(line: 66, column: 2, scope: !1330)
!1363 = !DILocation(line: 66, column: 2, scope: !1331)
!1364 = !DILocation(line: 66, column: 2, scope: !1334)
!1365 = !DILocation(line: 67, column: 25, scope: !1334)
!1366 = !DILocation(line: 67, column: 3, scope: !1334)
!1367 = !DILocation(line: 66, column: 2, scope: !1333)
!1368 = distinct !{!1368, !1363, !1369, !1307, !1308}
!1369 = !DILocation(line: 67, column: 28, scope: !1331)
!1370 = !DILocation(line: 69, column: 2, scope: !1315)
!1371 = !DILocation(line: 70, column: 2, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 70, column: 2)
!1373 = !DILocation(line: 70, column: 2, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 70, column: 2)
!1375 = !DILocation(line: 72, column: 2, scope: !1315)
!1376 = !DILocation(line: 73, column: 1, scope: !1315)
!1377 = !DISubprogram(name: "cpuidle_uninstall_idle_handler", scope: !1378, file: !1378, line: 23, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1378 = !DIFile(filename: "drivers/cpuidle/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e9136cca38c1e0b4e01e3bdc92d79e5")
!1379 = !DISubprogram(name: "cpuidle_disable_device", scope: !104, file: !104, line: 199, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1185}
!1382 = !DISubprogram(name: "cpuidle_enable_device", scope: !104, file: !104, line: 198, type: !1383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!46, !1185}
!1385 = !DISubprogram(name: "cpuidle_install_idle_handler", scope: !1378, file: !1378, line: 22, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DISubprogram(name: "_printk", scope: !1387, file: !1387, line: 153, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1387 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!46, !127, null}
!1390 = distinct !DISubprogram(name: "cpuidle_register_governor", scope: !3, file: !3, line: 79, type: !1316, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1391)
!1391 = !{!1392, !1393}
!1392 = !DILocalVariable(name: "gov", arg: 1, scope: !1390, file: !3, line: 79, type: !102)
!1393 = !DILocalVariable(name: "ret", scope: !1390, file: !3, line: 81, type: !46)
!1394 = !DILocation(line: 79, column: 56, scope: !1390)
!1395 = !DILocation(line: 81, column: 2, scope: !1390)
!1396 = !DILocation(line: 81, column: 6, scope: !1390)
!1397 = !DILocation(line: 83, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 83, column: 6)
!1399 = !DILocation(line: 83, column: 11, scope: !1398)
!1400 = !DILocation(line: 83, column: 15, scope: !1398)
!1401 = !DILocation(line: 83, column: 20, scope: !1398)
!1402 = !DILocation(line: 83, column: 6, scope: !1390)
!1403 = !DILocation(line: 84, column: 3, scope: !1398)
!1404 = !DILocation(line: 86, column: 6, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 86, column: 6)
!1406 = !DILocation(line: 86, column: 6, scope: !1390)
!1407 = !DILocation(line: 87, column: 3, scope: !1405)
!1408 = !DILocation(line: 89, column: 2, scope: !1390)
!1409 = !DILocation(line: 90, column: 28, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 90, column: 6)
!1411 = !DILocation(line: 90, column: 33, scope: !1410)
!1412 = !DILocation(line: 90, column: 6, scope: !1410)
!1413 = !DILocation(line: 90, column: 39, scope: !1410)
!1414 = !DILocation(line: 90, column: 6, scope: !1390)
!1415 = !DILocation(line: 91, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 90, column: 48)
!1417 = !DILocation(line: 92, column: 18, scope: !1416)
!1418 = !DILocation(line: 92, column: 23, scope: !1416)
!1419 = !DILocation(line: 92, column: 3, scope: !1416)
!1420 = !DILocation(line: 93, column: 8, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 93, column: 7)
!1422 = !DILocation(line: 93, column: 30, scope: !1421)
!1423 = !DILocation(line: 94, column: 36, scope: !1421)
!1424 = !DILocation(line: 94, column: 41, scope: !1421)
!1425 = !DILocation(line: 94, column: 8, scope: !1421)
!1426 = !DILocation(line: 94, column: 65, scope: !1421)
!1427 = !DILocation(line: 95, column: 8, scope: !1421)
!1428 = !DILocation(line: 95, column: 31, scope: !1421)
!1429 = !DILocation(line: 95, column: 40, scope: !1421)
!1430 = !DILocation(line: 95, column: 45, scope: !1421)
!1431 = !DILocation(line: 95, column: 38, scope: !1421)
!1432 = !DILocation(line: 95, column: 52, scope: !1421)
!1433 = !DILocation(line: 96, column: 36, scope: !1421)
!1434 = !DILocation(line: 96, column: 59, scope: !1421)
!1435 = !DILocation(line: 96, column: 8, scope: !1421)
!1436 = !DILocation(line: 93, column: 7, scope: !1416)
!1437 = !DILocation(line: 98, column: 28, scope: !1421)
!1438 = !DILocation(line: 98, column: 4, scope: !1421)
!1439 = !DILocation(line: 99, column: 2, scope: !1416)
!1440 = !DILocation(line: 100, column: 2, scope: !1390)
!1441 = !DILocation(line: 102, column: 9, scope: !1390)
!1442 = !DILocation(line: 102, column: 2, scope: !1390)
!1443 = !DILocation(line: 103, column: 1, scope: !1390)
!1444 = !DISubprogram(name: "cpuidle_disabled", scope: !1378, file: !1378, line: 17, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1445 = !DISubprogram(name: "mutex_lock", scope: !484, file: !484, line: 227, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!1449 = distinct !DISubprogram(name: "list_add_tail", scope: !1450, file: !1450, line: 181, type: !1451, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1453)
!1450 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !116, !116}
!1453 = !{!1454, !1455}
!1454 = !DILocalVariable(name: "new", arg: 1, scope: !1449, file: !1450, line: 181, type: !116)
!1455 = !DILocalVariable(name: "head", arg: 2, scope: !1449, file: !1450, line: 181, type: !116)
!1456 = !DILocation(line: 181, column: 52, scope: !1449)
!1457 = !DILocation(line: 181, column: 75, scope: !1449)
!1458 = !DILocation(line: 183, column: 13, scope: !1449)
!1459 = !DILocation(line: 183, column: 18, scope: !1449)
!1460 = !DILocation(line: 183, column: 24, scope: !1449)
!1461 = !DILocation(line: 183, column: 30, scope: !1449)
!1462 = !DILocation(line: 183, column: 2, scope: !1449)
!1463 = !DILocation(line: 184, column: 1, scope: !1449)
!1464 = !DISubprogram(name: "mutex_unlock", scope: !484, file: !484, line: 246, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1465 = distinct !DISubprogram(name: "cpuidle_governor_latency_req", scope: !3, file: !3, line: 109, type: !1466, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!401, !7}
!1468 = !{!1469, !1470, !1970, !1971}
!1469 = !DILocalVariable(name: "cpu", arg: 1, scope: !1465, file: !3, line: 109, type: !7)
!1470 = !DILocalVariable(name: "device", scope: !1465, file: !3, line: 111, type: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1479, !1480, !1533, !1603, !1604, !1605, !1606, !1607, !1614, !1854, !1867, !1877, !1881, !1883, !1884, !1885, !1889, !1896, !1897, !1900, !1903, !1907, !1910, !1911, !1914, !1915, !1916, !1917, !1947, !1948, !1949, !1952, !1955, !1964, !1965, !1966, !1967, !1968, !1969}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1472, file: !26, line: 706, baseType: !143, size: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1472, file: !26, line: 707, baseType: !1471, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1472, file: !26, line: 709, baseType: !1477, size: 64, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1472, file: !26, line: 711, baseType: !127, size: 64, offset: 640)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1472, file: !26, line: 712, baseType: !1481, size: 64, offset: 704)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1493, !1498, !1502}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1483, file: !26, line: 90, baseType: !127, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1483, file: !26, line: 91, baseType: !278, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1483, file: !26, line: 92, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!46, !1491, !221}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1483, file: !26, line: 93, baseType: !1494, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!226, !1491, !1497, !658, !665}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1483, file: !26, line: 95, baseType: !1499, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !1471}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1483, file: !26, line: 97, baseType: !1503, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1506)
!1506 = !{!1507, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1505, file: !38, line: 287, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!46, !1471}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1505, file: !38, line: 288, baseType: !1499, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1505, file: !38, line: 289, baseType: !1508, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1505, file: !38, line: 290, baseType: !1508, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1505, file: !38, line: 291, baseType: !1508, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1505, file: !38, line: 292, baseType: !1508, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1505, file: !38, line: 293, baseType: !1508, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1505, file: !38, line: 294, baseType: !1508, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1505, file: !38, line: 295, baseType: !1508, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1505, file: !38, line: 296, baseType: !1508, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1505, file: !38, line: 297, baseType: !1508, size: 64, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1505, file: !38, line: 298, baseType: !1508, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1505, file: !38, line: 299, baseType: !1508, size: 64, offset: 768)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1505, file: !38, line: 300, baseType: !1508, size: 64, offset: 832)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1505, file: !38, line: 301, baseType: !1508, size: 64, offset: 896)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1505, file: !38, line: 302, baseType: !1508, size: 64, offset: 960)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1505, file: !38, line: 303, baseType: !1508, size: 64, offset: 1024)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1505, file: !38, line: 304, baseType: !1508, size: 64, offset: 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1505, file: !38, line: 305, baseType: !1508, size: 64, offset: 1152)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1505, file: !38, line: 306, baseType: !1508, size: 64, offset: 1216)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1505, file: !38, line: 307, baseType: !1508, size: 64, offset: 1280)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1505, file: !38, line: 308, baseType: !1508, size: 64, offset: 1344)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1505, file: !38, line: 309, baseType: !1508, size: 64, offset: 1408)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1472, file: !26, line: 714, baseType: !1534, size: 64, offset: 768)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1537, line: 80, size: 1344, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1602}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1536, file: !1537, line: 81, baseType: !127, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1536, file: !1537, line: 82, baseType: !127, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1536, file: !1537, line: 83, baseType: !278, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1536, file: !1537, line: 84, baseType: !278, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1536, file: !1537, line: 85, baseType: !278, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1536, file: !1537, line: 87, baseType: !1545, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!46, !1471, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1561, !1565, !1566, !1567, !1568, !1569, !1577, !1578, !1579, !1580, !1581, !1582}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1549, file: !20, line: 97, baseType: !127, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1549, file: !20, line: 98, baseType: !1534, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1549, file: !20, line: 100, baseType: !130, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1549, file: !20, line: 101, baseType: !127, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1549, file: !20, line: 103, baseType: !583, size: 8, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1549, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1549, file: !20, line: 106, baseType: !1558, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1549, file: !20, line: 107, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1549, file: !20, line: 109, baseType: !1508, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1549, file: !20, line: 110, baseType: !1499, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1549, file: !20, line: 111, baseType: !1508, size: 64, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1549, file: !20, line: 112, baseType: !1499, size: 64, offset: 640)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1549, file: !20, line: 113, baseType: !1570, size: 64, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!46, !1471, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1575)
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1574, file: !38, line: 59, baseType: !46, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1549, file: !20, line: 114, baseType: !1508, size: 64, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1549, file: !20, line: 115, baseType: !278, size: 64, offset: 832)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1549, file: !20, line: 116, baseType: !278, size: 64, offset: 896)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1549, file: !20, line: 118, baseType: !1503, size: 64, offset: 960)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1549, file: !20, line: 119, baseType: !1499, size: 64, offset: 1024)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1549, file: !20, line: 121, baseType: !1583, size: 64, offset: 1088)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1536, file: !1537, line: 88, baseType: !1488, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1536, file: !1537, line: 89, baseType: !1508, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1536, file: !1537, line: 90, baseType: !1499, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1536, file: !1537, line: 91, baseType: !1499, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1536, file: !1537, line: 92, baseType: !1499, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1536, file: !1537, line: 94, baseType: !1508, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1536, file: !1537, line: 95, baseType: !1508, size: 64, offset: 768)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1536, file: !1537, line: 97, baseType: !1570, size: 64, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1536, file: !1537, line: 98, baseType: !1508, size: 64, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1536, file: !1537, line: 100, baseType: !1508, size: 64, offset: 960)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1536, file: !1537, line: 102, baseType: !1508, size: 64, offset: 1024)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1536, file: !1537, line: 103, baseType: !1499, size: 64, offset: 1088)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1536, file: !1537, line: 105, baseType: !1503, size: 64, offset: 1152)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1536, file: !1537, line: 107, baseType: !1599, size: 64, offset: 1216)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1537, line: 107, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1536, file: !1537, line: 109, baseType: !583, size: 8, offset: 1280)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1472, file: !26, line: 715, baseType: !1548, size: 64, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1472, file: !26, line: 717, baseType: !101, size: 64, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1472, file: !26, line: 719, baseType: !101, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1472, file: !26, line: 721, baseType: !483, size: 256, offset: 1024)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1472, file: !26, line: 725, baseType: !1608, size: 448, offset: 1280)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1608, file: !26, line: 518, baseType: !112, size: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1608, file: !26, line: 519, baseType: !112, size: 128, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1608, file: !26, line: 520, baseType: !112, size: 128, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1608, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1472, file: !26, line: 726, baseType: !1615, size: 2496, offset: 1728)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1659, !1660, !1661, !1662, !1663, !1664, !1735, !1736, !1737, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1775, !1779}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1615, file: !38, line: 664, baseType: !1573, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1615, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1615, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1615, file: !38, line: 667, baseType: !583, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1615, file: !38, line: 668, baseType: !583, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1615, file: !38, line: 669, baseType: !583, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1615, file: !38, line: 670, baseType: !583, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1615, file: !38, line: 671, baseType: !583, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1615, file: !38, line: 672, baseType: !583, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1615, file: !38, line: 673, baseType: !583, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1615, file: !38, line: 674, baseType: !583, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1615, file: !38, line: 675, baseType: !1067, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1615, file: !38, line: 676, baseType: !156, size: 32, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1615, file: !38, line: 678, baseType: !112, size: 128, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1615, file: !38, line: 679, baseType: !808, size: 256, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1615, file: !38, line: 680, baseType: !1633, size: 64, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1635, line: 43, size: 1536, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1634, file: !1635, line: 44, baseType: !127, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1634, file: !1635, line: 45, baseType: !46, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1634, file: !1635, line: 46, baseType: !112, size: 128, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1634, file: !1635, line: 47, baseType: !156, size: 32, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1634, file: !1635, line: 48, baseType: !1642, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1634, file: !1635, line: 49, baseType: !1050, size: 320, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1634, file: !1635, line: 50, baseType: !276, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1634, file: !1635, line: 51, baseType: !1193, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1634, file: !1635, line: 52, baseType: !1193, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1634, file: !1635, line: 53, baseType: !1193, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1634, file: !1635, line: 54, baseType: !1193, size: 64, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1634, file: !1635, line: 55, baseType: !1193, size: 64, offset: 1024)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1634, file: !1635, line: 56, baseType: !276, size: 64, offset: 1088)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1634, file: !1635, line: 57, baseType: !276, size: 64, offset: 1152)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1634, file: !1635, line: 58, baseType: !276, size: 64, offset: 1216)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1634, file: !1635, line: 59, baseType: !276, size: 64, offset: 1280)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1634, file: !1635, line: 60, baseType: !276, size: 64, offset: 1344)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1634, file: !1635, line: 61, baseType: !1471, size: 64, offset: 1408)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1634, file: !1635, line: 62, baseType: !583, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1634, file: !1635, line: 63, baseType: !583, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1615, file: !38, line: 681, baseType: !583, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1615, file: !38, line: 682, baseType: !583, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1615, file: !38, line: 683, baseType: !583, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1615, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1615, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1615, file: !38, line: 690, baseType: !1665, size: 512, offset: 640)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1666)
!1666 = !{!1667, !1673, !1674, !1679, !1731, !1732, !1733, !1734}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1665, file: !33, line: 119, baseType: !1668, size: 256)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1669, line: 9, size: 256, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1668, file: !1669, line: 10, baseType: !589, size: 192, align: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1668, file: !1669, line: 11, baseType: !1193, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1665, file: !33, line: 120, baseType: !1193, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1665, file: !33, line: 121, baseType: !1675, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!32, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1665, file: !33, line: 122, baseType: !1680, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1682)
!1682 = !{!1683, !1708, !1709, !1712, !1717, !1718, !1726, !1730}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1681, file: !33, line: 160, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1685, file: !33, line: 216, baseType: !417, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1685, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1685, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1685, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1685, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1685, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1685, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1685, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1685, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1685, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1685, file: !33, line: 227, baseType: !196, size: 16, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1685, file: !33, line: 228, baseType: !196, size: 16, offset: 208)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1685, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1685, file: !33, line: 235, baseType: !1193, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1685, file: !33, line: 236, baseType: !1678, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1685, file: !33, line: 237, baseType: !1193, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1685, file: !33, line: 238, baseType: !1678, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1685, file: !33, line: 239, baseType: !1705, size: 4096, align: 512, offset: 512)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1681, size: 4096, align: 512, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 8)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1681, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1681, file: !33, line: 162, baseType: !1710, size: 32, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !113, line: 32, baseType: !1711)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !260, line: 96, baseType: !46)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1681, file: !33, line: 163, baseType: !1713, size: 32, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !432, line: 274, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !432, line: 274, size: 32, elements: !1715)
!1715 = !{!1716}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1714, file: !432, line: 274, baseType: !431, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1681, file: !33, line: 164, baseType: !1678, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1681, file: !33, line: 165, baseType: !1719, size: 128, offset: 256)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1669, line: 14, size: 128, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1719, file: !1669, line: 15, baseType: !1722, size: 128)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !590, line: 26, size: 128, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1722, file: !590, line: 27, baseType: !692, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1722, file: !590, line: 28, baseType: !594, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1681, file: !33, line: 166, baseType: !1727, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!1193}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1681, file: !33, line: 167, baseType: !1193, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1665, file: !33, line: 123, baseType: !184, size: 8, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1665, file: !33, line: 124, baseType: !184, size: 8, offset: 456)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1665, file: !33, line: 125, baseType: !184, size: 8, offset: 464)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1665, file: !33, line: 126, baseType: !184, size: 8, offset: 472)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1615, file: !38, line: 691, baseType: !389, size: 64, offset: 1152)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1615, file: !38, line: 692, baseType: !548, size: 256, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1615, file: !38, line: 693, baseType: !1738, size: 192, offset: 1472)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1739, line: 41, baseType: !1740)
!1739 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1739, line: 37, size: 192, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !1739, line: 38, baseType: !156, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1740, file: !1739, line: 39, baseType: !112, size: 128, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1615, file: !38, line: 694, baseType: !1642, size: 64, offset: 1664)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1615, file: !38, line: 695, baseType: !176, size: 32, offset: 1728)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1615, file: !38, line: 696, baseType: !176, size: 32, offset: 1760)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1615, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1615, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1615, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1615, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1615, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1615, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1615, file: !38, line: 703, baseType: !583, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1615, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1615, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1615, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1615, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1615, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1615, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1615, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1615, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1615, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1615, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1615, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1615, file: !38, line: 715, baseType: !389, size: 64, offset: 2048)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1615, file: !38, line: 716, baseType: !389, size: 64, offset: 2112)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1615, file: !38, line: 717, baseType: !389, size: 64, offset: 2176)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1615, file: !38, line: 718, baseType: !389, size: 64, offset: 2240)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1615, file: !38, line: 720, baseType: !1770, size: 64, offset: 2304)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !38, line: 633, baseType: !156, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1771, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1615, file: !38, line: 721, baseType: !1776, size: 64, offset: 2368)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1471, !462}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1615, file: !38, line: 722, baseType: !1780, size: 64, offset: 2432)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1782)
!1782 = !{!1783, !1812, !1813, !1820, !1825, !1852, !1853}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1781, file: !54, line: 118, baseType: !1784, size: 320)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1785)
!1785 = !{!1786, !1791, !1792, !1793, !1794, !1795}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1784, file: !54, line: 53, baseType: !1787, size: 128)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1788, line: 82, size: 128, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1787, file: !1788, line: 83, baseType: !112, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1784, file: !54, line: 54, baseType: !462, size: 32, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1784, file: !54, line: 55, baseType: !462, size: 32, offset: 160)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1784, file: !54, line: 56, baseType: !462, size: 32, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1784, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1784, file: !54, line: 58, baseType: !1796, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1798, line: 65, size: 384, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1797, file: !1798, line: 66, baseType: !406, size: 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1797, file: !1798, line: 67, baseType: !1802, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1798, line: 54, size: 192, elements: !1804)
!1804 = !{!1805, !1810, !1811}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1803, file: !1798, line: 55, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1798, line: 51, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!46, !1802, !276, !101}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1803, file: !1798, line: 56, baseType: !1802, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1803, file: !1798, line: 57, baseType: !46, size: 32, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1781, file: !54, line: 119, baseType: !1784, size: 320, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1781, file: !54, line: 120, baseType: !1814, size: 1408, offset: 640)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1819}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1814, file: !54, line: 86, baseType: !1784, size: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1814, file: !54, line: 87, baseType: !1797, size: 384, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1814, file: !54, line: 88, baseType: !1784, size: 320, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1814, file: !54, line: 89, baseType: !1797, size: 384, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !54, line: 121, baseType: !1821, size: 192, offset: 2048)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1821, file: !54, line: 72, baseType: !112, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1821, file: !54, line: 73, baseType: !462, size: 32, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1781, file: !54, line: 122, baseType: !1826, size: 64, offset: 2240)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1828)
!1828 = !{!1829, !1830, !1851}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1827, file: !54, line: 108, baseType: !59, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1827, file: !54, line: 113, baseType: !1831, size: 448, offset: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1827, file: !54, line: 109, size: 448, elements: !1832)
!1832 = !{!1833, !1839, !1844}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1831, file: !54, line: 110, baseType: !1834, size: 320)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1788, line: 86, size: 320, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1834, file: !1788, line: 87, baseType: !46, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1834, file: !1788, line: 88, baseType: !112, size: 128, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1834, file: !1788, line: 89, baseType: !112, size: 128, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1831, file: !54, line: 111, baseType: !1840, size: 192)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1840, file: !54, line: 67, baseType: !112, size: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1840, file: !54, line: 68, baseType: !462, size: 32, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1831, file: !54, line: 112, baseType: !1845, size: 448)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1845, file: !54, line: 93, baseType: !66, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1845, file: !54, line: 94, baseType: !1834, size: 320, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1845, file: !54, line: 95, baseType: !1850, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1827, file: !54, line: 114, baseType: !1471, size: 64, offset: 512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1781, file: !54, line: 123, baseType: !1826, size: 64, offset: 2304)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1781, file: !54, line: 124, baseType: !1826, size: 64, offset: 2368)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1472, file: !26, line: 727, baseType: !1855, size: 64, offset: 4224)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1864, !1865, !1866}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1856, file: !38, line: 743, baseType: !1505, size: 1472)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1856, file: !38, line: 744, baseType: !1508, size: 64, offset: 1472)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1856, file: !38, line: 745, baseType: !1861, size: 64, offset: 1536)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1471, !583}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1856, file: !38, line: 746, baseType: !1508, size: 64, offset: 1600)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1856, file: !38, line: 747, baseType: !1499, size: 64, offset: 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1856, file: !38, line: 748, baseType: !1499, size: 64, offset: 1728)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1472, file: !26, line: 736, baseType: !1868, size: 128, offset: 4288)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1869)
!1869 = !{!1870, !1874}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1868, file: !26, line: 531, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1873, line: 13, flags: DIFlagFwdDecl)
!1873 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1868, file: !26, line: 532, baseType: !1875, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1472, file: !26, line: 738, baseType: !1878, size: 64, offset: 4416)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1472, file: !26, line: 740, baseType: !1882, size: 64, offset: 4480)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1472, file: !26, line: 741, baseType: !389, size: 64, offset: 4544)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1472, file: !26, line: 746, baseType: !389, size: 64, offset: 4608)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1472, file: !26, line: 747, baseType: !1886, size: 64, offset: 4672)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1472, file: !26, line: 749, baseType: !1890, size: 64, offset: 4736)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1892)
!1892 = !{!1893, !1894, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1891, file: !26, line: 433, baseType: !7, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1891, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1891, file: !26, line: 435, baseType: !276, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1472, file: !26, line: 751, baseType: !112, size: 128, offset: 4800)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1472, file: !26, line: 762, baseType: !1898, size: 64, offset: 4928)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1472, file: !26, line: 770, baseType: !1901, offset: 4992)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1902, line: 5, elements: !362)
!1902 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1472, file: !26, line: 772, baseType: !1904, size: 64, offset: 4992)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1906, line: 18, flags: DIFlagFwdDecl)
!1906 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1472, file: !26, line: 773, baseType: !1908, size: 64, offset: 5056)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1537, line: 22, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1472, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1472, file: !26, line: 778, baseType: !1912, size: 32, offset: 5152)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !113, line: 21, baseType: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !113, line: 18, baseType: !1067)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1472, file: !26, line: 779, baseType: !1067, size: 32, offset: 5184)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1472, file: !26, line: 781, baseType: !156, size: 32, offset: 5216)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1472, file: !26, line: 782, baseType: !112, size: 128, offset: 5248)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1472, file: !26, line: 784, baseType: !1918, size: 64, offset: 5376)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1921, line: 52, size: 768, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1931, !1935, !1936, !1937, !1938, !1942, !1946}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1920, file: !1921, line: 53, baseType: !127, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1920, file: !1921, line: 55, baseType: !278, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1920, file: !1921, line: 56, baseType: !278, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1920, file: !1921, line: 58, baseType: !1488, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1920, file: !1921, line: 59, baseType: !1928, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!226, !1491, !1497}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1920, file: !1921, line: 61, baseType: !1932, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !1918}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1920, file: !1921, line: 62, baseType: !1499, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1920, file: !1921, line: 64, baseType: !1508, size: 64, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1920, file: !1921, line: 66, baseType: !623, size: 64, offset: 512)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1920, file: !1921, line: 67, baseType: !1939, size: 64, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!504, !1491}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1920, file: !1921, line: 69, baseType: !1943, size: 64, offset: 640)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1491, !658, !665}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1920, file: !1921, line: 71, baseType: !1503, size: 64, offset: 704)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1472, file: !26, line: 785, baseType: !278, size: 64, offset: 5440)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1472, file: !26, line: 787, baseType: !1499, size: 64, offset: 5504)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1472, file: !26, line: 788, baseType: !1950, size: 64, offset: 5568)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1472, file: !26, line: 789, baseType: !1953, size: 64, offset: 5632)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1472, file: !26, line: 791, baseType: !1956, size: 64, offset: 5696)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1957, file: !26, line: 598, baseType: !70, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1957, file: !26, line: 599, baseType: !79, size: 32, offset: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1957, file: !26, line: 600, baseType: !84, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1957, file: !26, line: 601, baseType: !583, size: 8, offset: 96)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1957, file: !26, line: 602, baseType: !583, size: 8, offset: 104)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1472, file: !26, line: 793, baseType: !89, size: 32, offset: 5760)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1472, file: !26, line: 795, baseType: !583, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1472, file: !26, line: 796, baseType: !583, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1472, file: !26, line: 797, baseType: !583, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1472, file: !26, line: 798, baseType: !583, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1472, file: !26, line: 799, baseType: !583, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1970 = !DILocalVariable(name: "device_req", scope: !1465, file: !3, line: 112, type: !46)
!1971 = !DILocalVariable(name: "global_req", scope: !1465, file: !3, line: 113, type: !46)
!1972 = !DILocation(line: 109, column: 47, scope: !1465)
!1973 = !DILocation(line: 111, column: 2, scope: !1465)
!1974 = !DILocation(line: 111, column: 17, scope: !1465)
!1975 = !DILocation(line: 111, column: 41, scope: !1465)
!1976 = !DILocation(line: 111, column: 26, scope: !1465)
!1977 = !DILocation(line: 112, column: 2, scope: !1465)
!1978 = !DILocation(line: 112, column: 6, scope: !1465)
!1979 = !DILocation(line: 112, column: 49, scope: !1465)
!1980 = !DILocation(line: 112, column: 19, scope: !1465)
!1981 = !DILocation(line: 113, column: 2, scope: !1465)
!1982 = !DILocation(line: 113, column: 6, scope: !1465)
!1983 = !DILocation(line: 113, column: 19, scope: !1465)
!1984 = !DILocation(line: 115, column: 6, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 115, column: 6)
!1986 = !DILocation(line: 115, column: 19, scope: !1985)
!1987 = !DILocation(line: 115, column: 17, scope: !1985)
!1988 = !DILocation(line: 115, column: 6, scope: !1465)
!1989 = !DILocation(line: 116, column: 16, scope: !1985)
!1990 = !DILocation(line: 116, column: 14, scope: !1985)
!1991 = !DILocation(line: 116, column: 3, scope: !1985)
!1992 = !DILocation(line: 118, column: 14, scope: !1465)
!1993 = !DILocation(line: 118, column: 9, scope: !1465)
!1994 = !DILocation(line: 118, column: 25, scope: !1465)
!1995 = !DILocation(line: 119, column: 1, scope: !1465)
!1996 = !DILocation(line: 118, column: 2, scope: !1465)
!1997 = !DISubprogram(name: "get_cpu_device", scope: !1998, file: !1998, line: 39, type: !1999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1998 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!1471, !7}
!2001 = distinct !DISubprogram(name: "dev_pm_qos_raw_resume_latency", scope: !54, file: !54, line: 205, type: !2002, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!462, !1471}
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "dev", arg: 1, scope: !2001, file: !54, line: 205, type: !1471)
!2006 = !DILocation(line: 205, column: 64, scope: !2001)
!2007 = !DILocation(line: 207, column: 24, scope: !2001)
!2008 = !DILocation(line: 207, column: 29, scope: !2001)
!2009 = !DILocation(line: 207, column: 35, scope: !2001)
!2010 = !DILocation(line: 207, column: 9, scope: !2001)
!2011 = !DILocation(line: 209, column: 22, scope: !2001)
!2012 = !DILocation(line: 209, column: 27, scope: !2001)
!2013 = !DILocation(line: 209, column: 33, scope: !2001)
!2014 = !DILocation(line: 209, column: 38, scope: !2001)
!2015 = !DILocation(line: 209, column: 3, scope: !2001)
!2016 = !DILocation(line: 207, column: 2, scope: !2001)
!2017 = !DISubprogram(name: "cpu_latency_qos_limit", scope: !54, file: !54, line: 147, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!462}
!2020 = distinct !DISubprogram(name: "__list_add", scope: !1450, file: !1450, line: 146, type: !2021, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !116, !116, !116}
!2023 = !{!2024, !2025, !2026}
!2024 = !DILocalVariable(name: "new", arg: 1, scope: !2020, file: !1450, line: 146, type: !116)
!2025 = !DILocalVariable(name: "prev", arg: 2, scope: !2020, file: !1450, line: 147, type: !116)
!2026 = !DILocalVariable(name: "next", arg: 3, scope: !2020, file: !1450, line: 148, type: !116)
!2027 = !DILocation(line: 146, column: 49, scope: !2020)
!2028 = !DILocation(line: 147, column: 28, scope: !2020)
!2029 = !DILocation(line: 148, column: 28, scope: !2020)
!2030 = !DILocation(line: 150, column: 24, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2020, file: !1450, line: 150, column: 6)
!2032 = !DILocation(line: 150, column: 29, scope: !2031)
!2033 = !DILocation(line: 150, column: 35, scope: !2031)
!2034 = !DILocation(line: 150, column: 7, scope: !2031)
!2035 = !DILocation(line: 150, column: 6, scope: !2020)
!2036 = !DILocation(line: 151, column: 3, scope: !2031)
!2037 = !DILocation(line: 153, column: 15, scope: !2020)
!2038 = !DILocation(line: 153, column: 2, scope: !2020)
!2039 = !DILocation(line: 153, column: 8, scope: !2020)
!2040 = !DILocation(line: 153, column: 13, scope: !2020)
!2041 = !DILocation(line: 154, column: 14, scope: !2020)
!2042 = !DILocation(line: 154, column: 2, scope: !2020)
!2043 = !DILocation(line: 154, column: 7, scope: !2020)
!2044 = !DILocation(line: 154, column: 12, scope: !2020)
!2045 = !DILocation(line: 155, column: 14, scope: !2020)
!2046 = !DILocation(line: 155, column: 2, scope: !2020)
!2047 = !DILocation(line: 155, column: 7, scope: !2020)
!2048 = !DILocation(line: 155, column: 12, scope: !2020)
!2049 = !DILocation(line: 156, column: 2, scope: !2020)
!2050 = !DILocation(line: 156, column: 2, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2020, file: !1450, line: 156, column: 2)
!2052 = !DILocation(line: 156, column: 2, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2051, file: !1450, line: 156, column: 2)
!2054 = !DILocation(line: 156, column: 2, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !1450, line: 156, column: 2)
!2056 = !DILocation(line: 157, column: 1, scope: !2020)
!2057 = distinct !DISubprogram(name: "__list_add_valid", scope: !1450, file: !1450, line: 128, type: !2058, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!583, !116, !116, !116}
!2060 = !{!2061, !2062, !2063}
!2061 = !DILocalVariable(name: "new", arg: 1, scope: !2057, file: !1450, line: 128, type: !116)
!2062 = !DILocalVariable(name: "prev", arg: 2, scope: !2057, file: !1450, line: 129, type: !116)
!2063 = !DILocalVariable(name: "next", arg: 3, scope: !2057, file: !1450, line: 130, type: !116)
!2064 = !DILocation(line: 128, column: 55, scope: !2057)
!2065 = !DILocation(line: 129, column: 23, scope: !2057)
!2066 = !DILocation(line: 130, column: 23, scope: !2057)
!2067 = !DILocation(line: 132, column: 2, scope: !2057)
!2068 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2069, file: !2069, line: 70, type: !2070, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2069 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!583, !504}
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "ptr", arg: 1, scope: !2068, file: !2069, line: 70, type: !504)
!2074 = !DILocation(line: 70, column: 68, scope: !2068)
!2075 = !DILocation(line: 72, column: 9, scope: !2068)
!2076 = !DILocation(line: 72, column: 24, scope: !2068)
!2077 = !DILocation(line: 72, column: 27, scope: !2068)
!2078 = !DILocation(line: 72, column: 2, scope: !2068)
!2079 = !DISubprogram(name: "pm_qos_read_value", scope: !54, file: !54, line: 139, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!462, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
