; ModuleID = 'drivers/cpuidle/driver.c'
source_filename = "drivers/cpuidle/driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpuidle_register_driver: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpuidle_register_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpuidle_unregister_driver: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpuidle_unregister_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpuidle_get_driver: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpuidle_get_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpuidle_get_cpu_driver: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpuidle_get_cpu_driver ; .previous"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@cpuidle_driver_lock = hidden global %struct.spinlock zeroinitializer, align 4, !dbg !0
@param_governor = external dso_local global [0 x i8], align 1
@cpuidle_lock = external dso_local global %struct.mutex, align 8
@cpuidle_curr_governor = external dso_local global ptr, align 8
@cpuidle_prev_governor = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_cpuidle_register_driver207 = internal global ptr @cpuidle_register_driver, section ".discard.addressable", align 8, !dbg !98
@__UNIQUE_ID___addressable_cpuidle_unregister_driver208 = internal global ptr @cpuidle_unregister_driver, section ".discard.addressable", align 8, !dbg !100
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !102
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@cpuidle_get_driver.__UNIQUE_ID___addressable___SCK__preempt_schedule209 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !108
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__UNIQUE_ID___addressable_cpuidle_get_driver210 = internal global ptr @cpuidle_get_driver, section ".discard.addressable", align 8, !dbg !1186
@__UNIQUE_ID___addressable_cpuidle_get_cpu_driver211 = internal global ptr @cpuidle_get_cpu_driver, section ".discard.addressable", align 8, !dbg !1188
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@cpuidle_curr_driver = internal global ptr null, align 8, !dbg !1190
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_cpuidle_register_driver207, ptr @__UNIQUE_ID___addressable_cpuidle_unregister_driver208, ptr @cpuidle_get_driver.__UNIQUE_ID___addressable___SCK__preempt_schedule209, ptr @__UNIQUE_ID___addressable_cpuidle_get_driver210, ptr @__UNIQUE_ID___addressable_cpuidle_get_cpu_driver211], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpuidle_register_driver(ptr noundef %drv) #0 align 16 !dbg !1202 {
entry:
  %drv.addr = alloca ptr, align 8
  %gov = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1206, metadata !DIExpression()), !dbg !1232
  call void @llvm.lifetime.start.p0(i64 8, ptr %gov) #11, !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %gov, metadata !1207, metadata !DIExpression()), !dbg !1234
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1231, metadata !DIExpression()), !dbg !1236
  call void @spin_lock(ptr noundef @cpuidle_driver_lock) #12, !dbg !1237
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1238
  %call = call i32 @__cpuidle_register_driver(ptr noundef %0) #12, !dbg !1239
  store i32 %call, ptr %ret, align 4, !dbg !1240
  call void @spin_unlock(ptr noundef @cpuidle_driver_lock) #12, !dbg !1241
  %1 = load i32, ptr %ret, align 4, !dbg !1242
  %tobool = icmp ne i32 %1, 0, !dbg !1242
  br i1 %tobool, label %if.end15, label %land.lhs.true, !dbg !1244

land.lhs.true:                                    ; preds = %entry
  %call1 = call i64 @strlen(ptr noundef @param_governor) #12, !dbg !1245
  %tobool2 = icmp ne i64 %call1, 0, !dbg !1245
  br i1 %tobool2, label %if.end15, label %land.lhs.true3, !dbg !1246

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !1247
  %governor = getelementptr inbounds %struct.cpuidle_driver, ptr %2, i32 0, i32 7, !dbg !1248
  %3 = load ptr, ptr %governor, align 8, !dbg !1248
  %tobool4 = icmp ne ptr %3, null, !dbg !1247
  br i1 %tobool4, label %land.lhs.true5, label %if.end15, !dbg !1249

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %call6 = call ptr @cpuidle_get_driver() #12, !dbg !1250
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !1251
  %cmp = icmp eq ptr %call6, %4, !dbg !1252
  br i1 %cmp, label %if.then, label %if.end15, !dbg !1253

if.then:                                          ; preds = %land.lhs.true5
  call void @mutex_lock(ptr noundef @cpuidle_lock) #12, !dbg !1254
  %5 = load ptr, ptr %drv.addr, align 8, !dbg !1256
  %governor7 = getelementptr inbounds %struct.cpuidle_driver, ptr %5, i32 0, i32 7, !dbg !1257
  %6 = load ptr, ptr %governor7, align 8, !dbg !1257
  %call8 = call ptr @cpuidle_find_governor(ptr noundef %6) #12, !dbg !1258
  store ptr %call8, ptr %gov, align 8, !dbg !1259
  %7 = load ptr, ptr %gov, align 8, !dbg !1260
  %tobool9 = icmp ne ptr %7, null, !dbg !1260
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !1262

if.then10:                                        ; preds = %if.then
  %8 = load ptr, ptr @cpuidle_curr_governor, align 8, !dbg !1263
  store ptr %8, ptr @cpuidle_prev_governor, align 8, !dbg !1265
  %9 = load ptr, ptr %gov, align 8, !dbg !1266
  %call11 = call i32 @cpuidle_switch_governor(ptr noundef %9) #12, !dbg !1268
  %cmp12 = icmp slt i32 %call11, 0, !dbg !1269
  br i1 %cmp12, label %if.then13, label %if.end, !dbg !1270

if.then13:                                        ; preds = %if.then10
  store ptr null, ptr @cpuidle_prev_governor, align 8, !dbg !1271
  br label %if.end, !dbg !1272

if.end:                                           ; preds = %if.then13, %if.then10
  br label %if.end14, !dbg !1273

if.end14:                                         ; preds = %if.end, %if.then
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #12, !dbg !1274
  br label %if.end15, !dbg !1275

if.end15:                                         ; preds = %if.end14, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  %10 = load i32, ptr %ret, align 4, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1277
  call void @llvm.lifetime.end.p0(i64 8, ptr %gov) #11, !dbg !1277
  ret i32 %10, !dbg !1278
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !1279 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1285, metadata !DIExpression()), !dbg !1286
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1287
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1287
  call void @_raw_spin_lock(ptr noundef %1) #12, !dbg !1287
  ret void, !dbg !1288
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__cpuidle_register_driver(ptr noundef %drv) #0 align 16 !dbg !1289 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1291, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1292, metadata !DIExpression()), !dbg !1295
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1296
  %tobool = icmp ne ptr %0, null, !dbg !1296
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1298

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1299
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %1, i32 0, i32 4, !dbg !1300
  %2 = load i32, ptr %state_count, align 8, !dbg !1300
  %tobool1 = icmp ne i32 %2, 0, !dbg !1299
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1301

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !1302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1302

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !1303
  %call = call i32 @cpuidle_coupled_state_verify(ptr noundef %3) #12, !dbg !1304
  store i32 %call, ptr %ret, align 4, !dbg !1305
  %4 = load i32, ptr %ret, align 4, !dbg !1306
  %tobool2 = icmp ne i32 %4, 0, !dbg !1306
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1308

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !1309
  store i32 %5, ptr %retval, align 4, !dbg !1310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1310

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @cpuidle_disabled() #12, !dbg !1311
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1311
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1313

if.then7:                                         ; preds = %if.end4
  store i32 -19, ptr %retval, align 4, !dbg !1314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1314

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !1315
  call void @__cpuidle_driver_init(ptr noundef %6) #12, !dbg !1316
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !1317
  %call9 = call i32 @__cpuidle_set_driver(ptr noundef %7) #12, !dbg !1318
  store i32 %call9, ptr %ret, align 4, !dbg !1319
  %8 = load i32, ptr %ret, align 4, !dbg !1320
  %tobool10 = icmp ne i32 %8, 0, !dbg !1320
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1322

if.then11:                                        ; preds = %if.end8
  %9 = load i32, ptr %ret, align 4, !dbg !1323
  store i32 %9, ptr %retval, align 4, !dbg !1324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1324

if.end12:                                         ; preds = %if.end8
  %10 = load ptr, ptr %drv.addr, align 8, !dbg !1325
  %bctimer = getelementptr inbounds %struct.cpuidle_driver, ptr %10, i32 0, i32 2, !dbg !1327
  %bf.load = load i8, ptr %bctimer, align 8, !dbg !1327
  %bf.clear = and i8 %bf.load, 1, !dbg !1327
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1327
  %tobool13 = icmp ne i32 %bf.cast, 0, !dbg !1325
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1328

if.then14:                                        ; preds = %if.end12
  %11 = load ptr, ptr %drv.addr, align 8, !dbg !1329
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, ptr %11, i32 0, i32 6, !dbg !1330
  %12 = load ptr, ptr %cpumask, align 8, !dbg !1330
  call void @on_each_cpu_mask(ptr noundef %12, ptr noundef @cpuidle_setup_broadcast_timer, ptr noundef inttoptr (i64 1 to ptr), i1 noundef zeroext true) #12, !dbg !1331
  br label %if.end15, !dbg !1331

if.end15:                                         ; preds = %if.then14, %if.end12
  store i32 0, ptr %retval, align 4, !dbg !1332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1332

cleanup:                                          ; preds = %if.end15, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1333
  %13 = load i32, ptr %retval, align 4, !dbg !1333
  ret i32 %13, !dbg !1333
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !1334 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1336, metadata !DIExpression()), !dbg !1337
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1338
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1338
  call void @_raw_spin_unlock(ptr noundef %1) #12, !dbg !1338
  ret void, !dbg !1339
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1340 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @cpuidle_get_driver() #0 align 16 !dbg !110 {
entry:
  %drv = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #11, !dbg !1344
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !1176, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #11, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1177, metadata !DIExpression()), !dbg !1347
  br label %do.body, !dbg !1348

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !1349
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1349, !srcloc !1351
  br label %do.cond, !dbg !1349

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1349

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str) #12, !dbg !1352
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !1353
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1178, metadata !DIExpression()), !dbg !1353
  br label %do.body2, !dbg !1353

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1182, metadata !DIExpression()), !dbg !1354
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1354
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1353
  br label %do.cond3, !dbg !1354

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1354

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1184, metadata !DIExpression()), !dbg !1355
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !1355, !srcloc !1356
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1355
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1355
  %conv = zext i32 %2 to i64, !dbg !1355
  %conv6 = trunc i64 %conv to i32, !dbg !1355
  store i32 %conv6, ptr %tmp5, align 4, !dbg !1355
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !1353
  %3 = load i32, ptr %tmp5, align 4, !dbg !1355
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1353
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1353
  store i32 %4, ptr %tmp7, align 4, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !1352
  %5 = load i32, ptr %tmp7, align 4, !dbg !1353
  store i32 %5, ptr %tmp1, align 4, !dbg !1352
  %6 = load i32, ptr %tmp1, align 4, !dbg !1352
  store i32 %6, ptr %tmp, align 4, !dbg !1349
  %7 = load i32, ptr %tmp, align 4, !dbg !1348
  store i32 %7, ptr %cpu, align 4, !dbg !1357
  %8 = load i32, ptr %cpu, align 4, !dbg !1358
  %call = call ptr @__cpuidle_get_cpu_driver(i32 noundef %8) #12, !dbg !1359
  store ptr %call, ptr %drv, align 8, !dbg !1360
  br label %do.body8, !dbg !1361

do.body8:                                         ; preds = %do.end4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1362, !srcloc !1364
  %call9 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !1365
  %lnot = xor i1 %call9, true, !dbg !1365
  %lnot10 = xor i1 %lnot, true, !dbg !1365
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !1365
  %conv11 = sext i32 %lnot.ext to i64, !dbg !1365
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !1365
  %tobool = icmp ne i64 %expval, 0, !dbg !1365
  br i1 %tobool, label %if.then, label %if.end, !dbg !1362

if.then:                                          ; preds = %do.body8
  br label %do.body12, !dbg !1365

do.body12:                                        ; preds = %if.then
  %9 = call i64 @llvm.read_register.i64(metadata !1192), !dbg !1367
  %10 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %9) #11, !dbg !1367, !srcloc !1369
  call void @llvm.write_register.i64(metadata !1192, i64 %10), !dbg !1367
  br label %do.cond13, !dbg !1367

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1367

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !1367

if.end:                                           ; preds = %do.end14, %do.body8
  br label %do.cond15, !dbg !1362

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !1362

do.end16:                                         ; preds = %do.cond15
  %11 = load ptr, ptr %drv, align 8, !dbg !1370
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #11, !dbg !1371
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #11, !dbg !1371
  ret ptr %11, !dbg !1372
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1373 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1377 dso_local ptr @cpuidle_find_governor(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1381 dso_local i32 @cpuidle_switch_governor(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1384 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpuidle_unregister_driver(ptr noundef %drv) #0 align 16 !dbg !1385 {
entry:
  %drv.addr = alloca ptr, align 8
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1389, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #11, !dbg !1392
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !1390, metadata !DIExpression()), !dbg !1393
  %call = call ptr @cpuidle_get_driver() #12, !dbg !1394
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1395
  %cmp = icmp eq ptr %call, %0, !dbg !1396
  %frombool = zext i1 %cmp to i8, !dbg !1393
  store i8 %frombool, ptr %enabled, align 1, !dbg !1393
  call void @spin_lock(ptr noundef @cpuidle_driver_lock) #12, !dbg !1397
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1398
  call void @__cpuidle_unregister_driver(ptr noundef %1) #12, !dbg !1399
  call void @spin_unlock(ptr noundef @cpuidle_driver_lock) #12, !dbg !1400
  %2 = load i8, ptr %enabled, align 1, !dbg !1401, !range !1403, !noundef !348
  %tobool = trunc i8 %2 to i1, !dbg !1401
  br i1 %tobool, label %if.end, label %if.then, !dbg !1404

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1405

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @cpuidle_lock) #12, !dbg !1406
  %3 = load ptr, ptr @cpuidle_prev_governor, align 8, !dbg !1407
  %tobool1 = icmp ne ptr %3, null, !dbg !1407
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !1409

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr @cpuidle_prev_governor, align 8, !dbg !1410
  %call3 = call i32 @cpuidle_switch_governor(ptr noundef %4) #12, !dbg !1413
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1413
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1414

if.then5:                                         ; preds = %if.then2
  store ptr null, ptr @cpuidle_prev_governor, align 8, !dbg !1415
  br label %if.end6, !dbg !1416

if.end6:                                          ; preds = %if.then5, %if.then2
  br label %if.end7, !dbg !1417

if.end7:                                          ; preds = %if.end6, %if.end
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #12, !dbg !1418
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1419
  br label %cleanup, !dbg !1419

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #11, !dbg !1419
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1419

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__cpuidle_unregister_driver(ptr noundef %drv) #0 align 16 !dbg !1420 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1422, metadata !DIExpression()), !dbg !1423
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1424
  %bctimer = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 2, !dbg !1426
  %bf.load = load i8, ptr %bctimer, align 8, !dbg !1426
  %bf.clear = and i8 %bf.load, 1, !dbg !1426
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1426
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !1424
  br i1 %tobool, label %if.then, label %if.end, !dbg !1427

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1428
  %bctimer1 = getelementptr inbounds %struct.cpuidle_driver, ptr %1, i32 0, i32 2, !dbg !1430
  %bf.load2 = load i8, ptr %bctimer1, align 8, !dbg !1431
  %bf.clear3 = and i8 %bf.load2, -2, !dbg !1431
  %bf.set = or i8 %bf.clear3, 0, !dbg !1431
  store i8 %bf.set, ptr %bctimer1, align 8, !dbg !1431
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !1432
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, ptr %2, i32 0, i32 6, !dbg !1433
  %3 = load ptr, ptr %cpumask, align 8, !dbg !1433
  call void @on_each_cpu_mask(ptr noundef %3, ptr noundef @cpuidle_setup_broadcast_timer, ptr noundef null, i1 noundef zeroext true) #12, !dbg !1434
  br label %if.end, !dbg !1435

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !1436
  call void @__cpuidle_unset_driver(ptr noundef %4) #12, !dbg !1437
  ret void, !dbg !1438
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !1439 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1444, metadata !DIExpression()), !dbg !1451
  br label %do.body, !dbg !1452

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1445, metadata !DIExpression()), !dbg !1453
  %0 = load i32, ptr %val.addr, align 4, !dbg !1453
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1453
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1453

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1453
  %cmp = icmp eq i32 %2, 1, !dbg !1453
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1453

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1453
  %cmp1 = icmp eq i32 %3, -1, !dbg !1453
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1453

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1453
  br label %cond.end, !dbg !1453

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1453

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1453
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1453
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1454
  %cmp2 = icmp eq i32 %5, 1, !dbg !1454
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1453

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !1455, !srcloc !1457
  br label %if.end8, !dbg !1454

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1458
  %cmp3 = icmp eq i32 %6, -1, !dbg !1458
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1454

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !1459, !srcloc !1461
  br label %if.end, !dbg !1458

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1458

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !1462
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1447, metadata !DIExpression()), !dbg !1462
  %7 = load i32, ptr %val.addr, align 4, !dbg !1462
  %conv = sext i32 %7 to i64, !dbg !1462
  %and = and i64 %conv, 4294967295, !dbg !1462
  %conv7 = trunc i64 %and to i32, !dbg !1462
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1462
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1462
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !1462, !srcloc !1463
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !1458
  br label %do.cond, !dbg !1462

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1462

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !1452
  br label %do.end10, !dbg !1453

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1464
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !1465 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1470, metadata !DIExpression()), !dbg !1471
  ret void, !dbg !1472
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__cpuidle_get_cpu_driver(i32 noundef %cpu) #5 align 16 !dbg !1473 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1477, metadata !DIExpression()), !dbg !1478
  %0 = load ptr, ptr @cpuidle_curr_driver, align 8, !dbg !1479
  ret ptr %0, !dbg !1480
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !1481 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !1485
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1483, metadata !DIExpression()), !dbg !1485
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !1485, !srcloc !1486
  %1 = icmp ult i8 %0, 2, !dbg !1485
  call void @llvm.assume(i1 %1), !dbg !1485
  store i8 %0, ptr %c, align 1, !dbg !1485
  %2 = load i8, ptr %c, align 1, !dbg !1485, !range !1403, !noundef !348
  %tobool = trunc i8 %2 to i1, !dbg !1485
  %frombool = zext i1 %tobool to i8, !dbg !1485
  store i8 %frombool, ptr %tmp, align 1, !dbg !1485
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !1487
  %3 = load i8, ptr %tmp, align 1, !dbg !1485, !range !1403, !noundef !348
  %tobool1 = trunc i8 %3 to i1, !dbg !1485
  ret i1 %tobool1, !dbg !1488
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @cpuidle_get_cpu_driver(ptr noundef %dev) #0 align 16 !dbg !1489 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1493, metadata !DIExpression()), !dbg !1494
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1495
  %tobool = icmp ne ptr %0, null, !dbg !1495
  br i1 %tobool, label %if.end, label %if.then, !dbg !1497

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1498
  br label %return, !dbg !1498

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1499
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 1, !dbg !1500
  %2 = load i32, ptr %cpu, align 4, !dbg !1500
  %call = call ptr @__cpuidle_get_cpu_driver(i32 noundef %2) #12, !dbg !1501
  store ptr %call, ptr %retval, align 8, !dbg !1502
  br label %return, !dbg !1502

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1503
  ret ptr %3, !dbg !1503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpuidle_driver_state_disabled(ptr noundef %drv, i32 noundef %idx, i1 noundef zeroext %disable) #0 align 16 !dbg !1504 {
entry:
  %drv.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %disable.addr = alloca i8, align 1
  %cpu = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1508, metadata !DIExpression()), !dbg !1522
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1509, metadata !DIExpression()), !dbg !1523
  %frombool = zext i1 %disable to i8
  store i8 %frombool, ptr %disable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %disable.addr, metadata !1510, metadata !DIExpression()), !dbg !1524
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #11, !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1511, metadata !DIExpression()), !dbg !1526
  call void @mutex_lock(ptr noundef @cpuidle_lock) #12, !dbg !1527
  call void @spin_lock(ptr noundef @cpuidle_driver_lock) #12, !dbg !1528
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1529
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6, !dbg !1531
  %1 = load ptr, ptr %cpumask, align 8, !dbg !1531
  %tobool = icmp ne ptr %1, null, !dbg !1529
  br i1 %tobool, label %if.end, label %if.then, !dbg !1532

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !1533
  %states = getelementptr inbounds %struct.cpuidle_driver, ptr %2, i32 0, i32 3, !dbg !1535
  %3 = load i32, ptr %idx.addr, align 4, !dbg !1536
  %idxprom = sext i32 %3 to i64, !dbg !1533
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], ptr %states, i64 0, i64 %idxprom, !dbg !1533
  %flags = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx, i32 0, i32 4, !dbg !1537
  %4 = load i32, ptr %flags, align 8, !dbg !1538
  %conv = zext i32 %4 to i64, !dbg !1538
  %or = or i64 %conv, 8, !dbg !1538
  %conv1 = trunc i64 %or to i32, !dbg !1538
  store i32 %conv1, ptr %flags, align 8, !dbg !1538
  br label %unlock, !dbg !1539

if.end:                                           ; preds = %entry
  store i32 0, ptr %cpu, align 4, !dbg !1540
  br label %for.cond, !dbg !1540

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %drv.addr, align 8, !dbg !1541
  %cpumask2 = getelementptr inbounds %struct.cpuidle_driver, ptr %5, i32 0, i32 6, !dbg !1541
  %6 = load ptr, ptr %cpumask2, align 8, !dbg !1541
  %bits = getelementptr inbounds %struct.cpumask, ptr %6, i32 0, i32 0, !dbg !1541
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1541
  %7 = load i32, ptr %cpu, align 4, !dbg !1541
  %conv3 = zext i32 %7 to i64, !dbg !1541
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv3) #12, !dbg !1541
  %conv4 = trunc i64 %call to i32, !dbg !1541
  store i32 %conv4, ptr %cpu, align 4, !dbg !1541
  %8 = load i32, ptr %cpu, align 4, !dbg !1541
  %cmp = icmp ult i32 %8, 64, !dbg !1541
  br i1 %cmp, label %for.body, label %for.end, !dbg !1540

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #11, !dbg !1542
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1512, metadata !DIExpression()), !dbg !1543
  br label %do.body, !dbg !1544

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1545
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1516, metadata !DIExpression()), !dbg !1545
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1545
  %9 = load ptr, ptr %__vpp_verify, align 8, !dbg !1545
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1544
  br label %do.cond, !dbg !1545

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1545

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1519, metadata !DIExpression()), !dbg !1546
  store i64 ptrtoint (ptr @cpuidle_devices to i64), ptr %__ptr, align 8, !dbg !1546
  %10 = load i64, ptr %__ptr, align 8, !dbg !1546
  %11 = load i32, ptr %cpu, align 4, !dbg !1546
  %idxprom7 = zext i32 %11 to i64, !dbg !1546
  %arrayidx8 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom7, !dbg !1546
  %12 = load i64, ptr %arrayidx8, align 8, !dbg !1546
  %add = add i64 %10, %12, !dbg !1546
  %13 = inttoptr i64 %add to ptr, !dbg !1546
  store ptr %13, ptr %tmp6, align 8, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !1544
  %14 = load ptr, ptr %tmp6, align 8, !dbg !1546
  store ptr %14, ptr %tmp, align 8, !dbg !1545
  %15 = load ptr, ptr %tmp, align 8, !dbg !1544
  %16 = load ptr, ptr %15, align 8, !dbg !1547
  store ptr %16, ptr %dev, align 8, !dbg !1543
  %17 = load ptr, ptr %dev, align 8, !dbg !1548
  %tobool9 = icmp ne ptr %17, null, !dbg !1548
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1550

if.then10:                                        ; preds = %do.end
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1551

if.end11:                                         ; preds = %do.end
  %18 = load i8, ptr %disable.addr, align 1, !dbg !1552, !range !1403, !noundef !348
  %tobool12 = trunc i8 %18 to i1, !dbg !1552
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !1554

if.then13:                                        ; preds = %if.end11
  %19 = load ptr, ptr %dev, align 8, !dbg !1555
  %states_usage = getelementptr inbounds %struct.cpuidle_device, ptr %19, i32 0, i32 7, !dbg !1556
  %20 = load i32, ptr %idx.addr, align 4, !dbg !1557
  %idxprom14 = sext i32 %20 to i64, !dbg !1555
  %arrayidx15 = getelementptr [10 x %struct.cpuidle_state_usage], ptr %states_usage, i64 0, i64 %idxprom14, !dbg !1555
  %disable16 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %arrayidx15, i32 0, i32 0, !dbg !1558
  %21 = load i64, ptr %disable16, align 8, !dbg !1559
  %or17 = or i64 %21, 2, !dbg !1559
  store i64 %or17, ptr %disable16, align 8, !dbg !1559
  br label %if.end22, !dbg !1555

if.else:                                          ; preds = %if.end11
  %22 = load ptr, ptr %dev, align 8, !dbg !1560
  %states_usage18 = getelementptr inbounds %struct.cpuidle_device, ptr %22, i32 0, i32 7, !dbg !1561
  %23 = load i32, ptr %idx.addr, align 4, !dbg !1562
  %idxprom19 = sext i32 %23 to i64, !dbg !1560
  %arrayidx20 = getelementptr [10 x %struct.cpuidle_state_usage], ptr %states_usage18, i64 0, i64 %idxprom19, !dbg !1560
  %disable21 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %arrayidx20, i32 0, i32 0, !dbg !1563
  %24 = load i64, ptr %disable21, align 8, !dbg !1564
  %and = and i64 %24, -3, !dbg !1564
  store i64 %and, ptr %disable21, align 8, !dbg !1564
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1565
  br label %cleanup, !dbg !1565

cleanup:                                          ; preds = %if.end22, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #11, !dbg !1565
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1566

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %25 = load i32, ptr %cpu, align 4, !dbg !1541
  %inc = add i32 %25, 1, !dbg !1541
  store i32 %inc, ptr %cpu, align 4, !dbg !1541
  br label %for.cond, !dbg !1541, !llvm.loop !1567

for.end:                                          ; preds = %for.cond
  br label %unlock, !dbg !1568

unlock:                                           ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !1521), !dbg !1571
  call void @spin_unlock(ptr noundef @cpuidle_driver_lock) #12, !dbg !1572
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #12, !dbg !1573
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #11, !dbg !1574
  ret void, !dbg !1574

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !1575 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1582, metadata !DIExpression()), !dbg !1588
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1583, metadata !DIExpression()), !dbg !1589
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1584, metadata !DIExpression()), !dbg !1590
  %0 = load i64, ptr %size.addr, align 8, !dbg !1591
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1591
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !1591

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1591
  %cmp = icmp ule i64 %2, 64, !dbg !1591
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !1591

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1591
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1591
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !1592

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1593
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1585, metadata !DIExpression()), !dbg !1594
  %4 = load i64, ptr %offset.addr, align 8, !dbg !1595
  %5 = load i64, ptr %size.addr, align 8, !dbg !1595
  %cmp3 = icmp uge i64 %4, %5, !dbg !1595
  %lnot = xor i1 %cmp3, true, !dbg !1595
  %lnot4 = xor i1 %lnot, true, !dbg !1595
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1595
  %conv = sext i32 %lnot.ext to i64, !dbg !1595
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1595
  %tobool = icmp ne i64 %expval, 0, !dbg !1595
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1597

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1598
  store i64 %6, ptr %retval, align 8, !dbg !1599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1599

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1600
  %8 = load i64, ptr %7, align 8, !dbg !1601
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1602
  %shl = shl i64 1, %9, !dbg !1602
  %sub = sub i64 -1, %shl, !dbg !1602
  %add = add i64 %sub, 1, !dbg !1602
  %10 = load i64, ptr %size.addr, align 8, !dbg !1602
  %sub6 = sub i64 %10, 1, !dbg !1602
  %sub7 = sub i64 63, %sub6, !dbg !1602
  %shr = lshr i64 -1, %sub7, !dbg !1602
  %and = and i64 %add, %shr, !dbg !1602
  %add8 = add i64 0, %and, !dbg !1602
  %and9 = and i64 %8, %add8, !dbg !1603
  store i64 %and9, ptr %val, align 8, !dbg !1604
  %11 = load i64, ptr %val, align 8, !dbg !1605
  %tobool10 = icmp ne i64 %11, 0, !dbg !1605
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !1605

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !1606
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1606
  br i1 %13, label %cond.true11, label %cond.false, !dbg !1606

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !1606
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !1606
  %cast = trunc i64 %15 to i32, !dbg !1606
  %conv12 = sext i32 %cast to i64, !dbg !1606
  br label %cond.end, !dbg !1606

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !1606
  %call = call i64 @variable__ffs(i64 noundef %16) #12, !dbg !1606
  br label %cond.end, !dbg !1606

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !1606
  br label %cond.end14, !dbg !1605

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !1607
  br label %cond.end14, !dbg !1605

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !1605
  store i64 %cond15, ptr %retval, align 8, !dbg !1608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1608

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1609
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1610
  %19 = load i64, ptr %size.addr, align 8, !dbg !1611
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1612
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #12, !dbg !1613
  store i64 %call17, ptr %retval, align 8, !dbg !1614
  br label %return, !dbg !1614

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1615
  ret i64 %21, !dbg !1615
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1616 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuidle_coupled_state_verify(ptr noundef %drv) #5 align 16 !dbg !1621 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1623, metadata !DIExpression()), !dbg !1624
  ret i32 0, !dbg !1625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1626 dso_local i32 @cpuidle_disabled() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__cpuidle_driver_init(ptr noundef %drv) #0 align 16 !dbg !1627 {
entry:
  %drv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1629, metadata !DIExpression()), !dbg !1636
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !1637
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1630, metadata !DIExpression()), !dbg !1638
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1639
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6, !dbg !1641
  %1 = load ptr, ptr %cpumask, align 8, !dbg !1641
  %tobool = icmp ne ptr %1, null, !dbg !1639
  br i1 %tobool, label %if.end, label %if.then, !dbg !1642

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !1643
  %cpumask1 = getelementptr inbounds %struct.cpuidle_driver, ptr %2, i32 0, i32 6, !dbg !1644
  store ptr @__cpu_possible_mask, ptr %cpumask1, align 8, !dbg !1645
  br label %if.end, !dbg !1643

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !1646
  br label %for.cond, !dbg !1647

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !1648
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !1649
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %4, i32 0, i32 4, !dbg !1650
  %5 = load i32, ptr %state_count, align 8, !dbg !1650
  %cmp = icmp slt i32 %3, %5, !dbg !1651
  br i1 %cmp, label %for.body, label %for.end, !dbg !1652

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !1653
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1631, metadata !DIExpression()), !dbg !1654
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !1655
  %states = getelementptr inbounds %struct.cpuidle_driver, ptr %6, i32 0, i32 3, !dbg !1656
  %7 = load i32, ptr %i, align 4, !dbg !1657
  %idxprom = sext i32 %7 to i64, !dbg !1655
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], ptr %states, i64 0, i64 %idxprom, !dbg !1655
  store ptr %arrayidx, ptr %s, align 8, !dbg !1654
  %8 = load ptr, ptr %s, align 8, !dbg !1658
  %flags = getelementptr inbounds %struct.cpuidle_state, ptr %8, i32 0, i32 4, !dbg !1660
  %9 = load i32, ptr %flags, align 8, !dbg !1660
  %conv = zext i32 %9 to i64, !dbg !1658
  %and = and i64 %conv, 4, !dbg !1661
  %tobool2 = icmp ne i64 %and, 0, !dbg !1661
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1662

if.then3:                                         ; preds = %for.body
  %10 = load ptr, ptr %drv.addr, align 8, !dbg !1663
  %bctimer = getelementptr inbounds %struct.cpuidle_driver, ptr %10, i32 0, i32 2, !dbg !1664
  %bf.load = load i8, ptr %bctimer, align 8, !dbg !1665
  %bf.clear = and i8 %bf.load, -2, !dbg !1665
  %bf.set = or i8 %bf.clear, 1, !dbg !1665
  store i8 %bf.set, ptr %bctimer, align 8, !dbg !1665
  br label %if.end4, !dbg !1663

if.end4:                                          ; preds = %if.then3, %for.body
  %11 = load ptr, ptr %s, align 8, !dbg !1666
  %target_residency = getelementptr inbounds %struct.cpuidle_state, ptr %11, i32 0, i32 7, !dbg !1668
  %12 = load i32, ptr %target_residency, align 4, !dbg !1668
  %cmp5 = icmp ugt i32 %12, 0, !dbg !1669
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !1670

if.then7:                                         ; preds = %if.end4
  %13 = load ptr, ptr %s, align 8, !dbg !1671
  %target_residency8 = getelementptr inbounds %struct.cpuidle_state, ptr %13, i32 0, i32 7, !dbg !1672
  %14 = load i32, ptr %target_residency8, align 4, !dbg !1672
  %conv9 = zext i32 %14 to i64, !dbg !1671
  %mul = mul i64 %conv9, 1000, !dbg !1673
  %15 = load ptr, ptr %s, align 8, !dbg !1674
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %15, i32 0, i32 3, !dbg !1675
  store i64 %mul, ptr %target_residency_ns, align 8, !dbg !1676
  br label %if.end20, !dbg !1674

if.else:                                          ; preds = %if.end4
  %16 = load ptr, ptr %s, align 8, !dbg !1677
  %target_residency_ns10 = getelementptr inbounds %struct.cpuidle_state, ptr %16, i32 0, i32 3, !dbg !1679
  %17 = load i64, ptr %target_residency_ns10, align 8, !dbg !1679
  %cmp11 = icmp slt i64 %17, 0, !dbg !1680
  br i1 %cmp11, label %if.then13, label %if.else15, !dbg !1681

if.then13:                                        ; preds = %if.else
  %18 = load ptr, ptr %s, align 8, !dbg !1682
  %target_residency_ns14 = getelementptr inbounds %struct.cpuidle_state, ptr %18, i32 0, i32 3, !dbg !1683
  store i64 0, ptr %target_residency_ns14, align 8, !dbg !1684
  br label %if.end19, !dbg !1682

if.else15:                                        ; preds = %if.else
  %19 = load ptr, ptr %s, align 8, !dbg !1685
  %target_residency_ns16 = getelementptr inbounds %struct.cpuidle_state, ptr %19, i32 0, i32 3, !dbg !1686
  %20 = load i64, ptr %target_residency_ns16, align 8, !dbg !1686
  %call = call i64 @div_u64(i64 noundef %20, i32 noundef 1000) #12, !dbg !1687
  %conv17 = trunc i64 %call to i32, !dbg !1687
  %21 = load ptr, ptr %s, align 8, !dbg !1688
  %target_residency18 = getelementptr inbounds %struct.cpuidle_state, ptr %21, i32 0, i32 7, !dbg !1689
  store i32 %conv17, ptr %target_residency18, align 4, !dbg !1690
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then7
  %22 = load ptr, ptr %s, align 8, !dbg !1691
  %exit_latency = getelementptr inbounds %struct.cpuidle_state, ptr %22, i32 0, i32 5, !dbg !1693
  %23 = load i32, ptr %exit_latency, align 4, !dbg !1693
  %cmp21 = icmp ugt i32 %23, 0, !dbg !1694
  br i1 %cmp21, label %if.then23, label %if.else26, !dbg !1695

if.then23:                                        ; preds = %if.end20
  %24 = load ptr, ptr %s, align 8, !dbg !1696
  %exit_latency24 = getelementptr inbounds %struct.cpuidle_state, ptr %24, i32 0, i32 5, !dbg !1697
  %25 = load i32, ptr %exit_latency24, align 4, !dbg !1697
  %call25 = call i64 @mul_u32_u32(i32 noundef %25, i32 noundef 1000) #12, !dbg !1698
  %26 = load ptr, ptr %s, align 8, !dbg !1699
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %26, i32 0, i32 2, !dbg !1700
  store i64 %call25, ptr %exit_latency_ns, align 8, !dbg !1701
  br label %if.end38, !dbg !1699

if.else26:                                        ; preds = %if.end20
  %27 = load ptr, ptr %s, align 8, !dbg !1702
  %exit_latency_ns27 = getelementptr inbounds %struct.cpuidle_state, ptr %27, i32 0, i32 2, !dbg !1704
  %28 = load i64, ptr %exit_latency_ns27, align 8, !dbg !1704
  %cmp28 = icmp slt i64 %28, 0, !dbg !1705
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !1706

if.then30:                                        ; preds = %if.else26
  %29 = load ptr, ptr %s, align 8, !dbg !1707
  %exit_latency_ns31 = getelementptr inbounds %struct.cpuidle_state, ptr %29, i32 0, i32 2, !dbg !1708
  store i64 0, ptr %exit_latency_ns31, align 8, !dbg !1709
  br label %if.end37, !dbg !1707

if.else32:                                        ; preds = %if.else26
  %30 = load ptr, ptr %s, align 8, !dbg !1710
  %exit_latency_ns33 = getelementptr inbounds %struct.cpuidle_state, ptr %30, i32 0, i32 2, !dbg !1711
  %31 = load i64, ptr %exit_latency_ns33, align 8, !dbg !1711
  %call34 = call i64 @div_u64(i64 noundef %31, i32 noundef 1000) #12, !dbg !1712
  %conv35 = trunc i64 %call34 to i32, !dbg !1712
  %32 = load ptr, ptr %s, align 8, !dbg !1713
  %exit_latency36 = getelementptr inbounds %struct.cpuidle_state, ptr %32, i32 0, i32 5, !dbg !1714
  store i32 %conv35, ptr %exit_latency36, align 4, !dbg !1715
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then30
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !1716
  br label %for.inc, !dbg !1717

for.inc:                                          ; preds = %if.end38
  %33 = load i32, ptr %i, align 4, !dbg !1718
  %inc = add i32 %33, 1, !dbg !1718
  store i32 %inc, ptr %i, align 4, !dbg !1718
  br label %for.cond, !dbg !1719, !llvm.loop !1720

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1722
  ret void, !dbg !1722
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__cpuidle_set_driver(ptr noundef %drv) #5 align 16 !dbg !1723 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1725, metadata !DIExpression()), !dbg !1726
  %0 = load ptr, ptr @cpuidle_curr_driver, align 8, !dbg !1727
  %tobool = icmp ne ptr %0, null, !dbg !1727
  br i1 %tobool, label %if.then, label %if.end, !dbg !1729

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !1730
  br label %return, !dbg !1730

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1731
  store ptr %1, ptr @cpuidle_curr_driver, align 8, !dbg !1732
  store i32 0, ptr %retval, align 4, !dbg !1733
  br label %return, !dbg !1733

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1734
  ret i32 %2, !dbg !1734
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @on_each_cpu_mask(ptr noundef %mask, ptr noundef %func, ptr noundef %info, i1 noundef zeroext %wait) #5 align 16 !dbg !1735 {
entry:
  %mask.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %wait.addr = alloca i8, align 1
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1741, metadata !DIExpression()), !dbg !1745
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1742, metadata !DIExpression()), !dbg !1746
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1743, metadata !DIExpression()), !dbg !1747
  %frombool = zext i1 %wait to i8
  store i8 %frombool, ptr %wait.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !1744, metadata !DIExpression()), !dbg !1748
  %0 = load ptr, ptr %func.addr, align 8, !dbg !1749
  %1 = load ptr, ptr %info.addr, align 8, !dbg !1750
  %2 = load i8, ptr %wait.addr, align 1, !dbg !1751, !range !1403, !noundef !348
  %tobool = trunc i8 %2 to i1, !dbg !1751
  %3 = load ptr, ptr %mask.addr, align 8, !dbg !1752
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool, ptr noundef %3) #12, !dbg !1753
  ret void, !dbg !1754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuidle_setup_broadcast_timer(ptr noundef %arg) #0 align 16 !dbg !1755 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1757, metadata !DIExpression()), !dbg !1758
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !1759
  %tobool = icmp ne ptr %0, null, !dbg !1759
  br i1 %tobool, label %if.then, label %if.else, !dbg !1761

if.then:                                          ; preds = %entry
  call void @tick_broadcast_enable() #12, !dbg !1762
  br label %if.end, !dbg !1762

if.else:                                          ; preds = %entry
  call void @tick_broadcast_disable() #12, !dbg !1763
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1764
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #5 align 16 !dbg !1765 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1770, metadata !DIExpression()), !dbg !1773
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1771, metadata !DIExpression()), !dbg !1774
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #11, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !1772, metadata !DIExpression()), !dbg !1776
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1777
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1778
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #12, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #11, !dbg !1780
  ret i64 %call, !dbg !1781
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mul_u32_u32(i32 noundef %a, i32 noundef %b) #5 align 16 !dbg !1782 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1786, metadata !DIExpression()), !dbg !1788
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1787, metadata !DIExpression()), !dbg !1789
  %0 = load i32, ptr %a.addr, align 4, !dbg !1790
  %conv = zext i32 %0 to i64, !dbg !1791
  %1 = load i32, ptr %b.addr, align 4, !dbg !1792
  %conv1 = zext i32 %1 to i64, !dbg !1792
  %mul = mul i64 %conv, %conv1, !dbg !1793
  ret i64 %mul, !dbg !1794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #5 align 16 !dbg !1795 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1800, metadata !DIExpression()), !dbg !1803
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1801, metadata !DIExpression()), !dbg !1804
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !1802, metadata !DIExpression()), !dbg !1805
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1806
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1807
  %conv = zext i32 %1 to i64, !dbg !1807
  %rem = urem i64 %0, %conv, !dbg !1808
  %conv1 = trunc i64 %rem to i32, !dbg !1806
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !1809
  store i32 %conv1, ptr %2, align 4, !dbg !1810
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !1811
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !1812
  %conv2 = zext i32 %4 to i64, !dbg !1812
  %div = udiv i64 %3, %conv2, !dbg !1813
  ret i64 %div, !dbg !1814
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1815 dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_enable() #5 align 16 !dbg !1822 {
entry:
  call void @tick_broadcast_control(i32 noundef 1) #12, !dbg !1823
  ret void, !dbg !1824
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_broadcast_disable() #5 align 16 !dbg !1825 {
entry:
  call void @tick_broadcast_control(i32 noundef 0) #12, !dbg !1826
  ret void, !dbg !1827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1828 dso_local void @tick_broadcast_control(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1831 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__cpuidle_unset_driver(ptr noundef %drv) #5 align 16 !dbg !1832 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1834, metadata !DIExpression()), !dbg !1835
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1836
  %1 = load ptr, ptr @cpuidle_curr_driver, align 8, !dbg !1838
  %cmp = icmp eq ptr %0, %1, !dbg !1839
  br i1 %cmp, label %if.then, label %if.end, !dbg !1840

if.then:                                          ; preds = %entry
  store ptr null, ptr @cpuidle_curr_driver, align 8, !dbg !1841
  br label %if.end, !dbg !1842

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1843
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #3 align 16 !dbg !1844 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1849, metadata !DIExpression()), !dbg !1850
  %0 = load i64, ptr %word.addr, align 8, !dbg !1851
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !1852, !srcloc !1853
  store i64 %1, ptr %word.addr, align 8, !dbg !1852
  %2 = load i64, ptr %word.addr, align 8, !dbg !1854
  ret i64 %2, !dbg !1855
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1856 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1192}
!llvm.module.flags = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200}
!llvm.ident = !{!1201}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpuidle_driver_lock", scope: !2, file: !3, line: 23, type: !146, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpuidle/.driver.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpuidle/driver\22 -D KBUILD_BASENAME=\22driver\22 -D KBUILD_MODNAME=\22driver\22 -D __KBUILD_MODNAME=kmod_driver -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpuidle/driver.ll drivers/cpuidle/driver.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !97, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/driver.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a60d46c7ad08e66f971d77689678f79f")
!4 = !{!5, !13, !19}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_broadcast_mode", file: !20, line: 55, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e1e58d669c75211497f9e6bb3ab6476")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "TICK_BROADCAST_OFF", value: 0)
!23 = !DIEnumerator(name: "TICK_BROADCAST_ON", value: 1)
!24 = !DIEnumerator(name: "TICK_BROADCAST_FORCE", value: 2)
!25 = !{!26, !27, !28, !29, !7, !30, !85, !93, !49, !95}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !33, line: 93, size: 6400, elements: !34)
!33 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4e37910f6e1ee8771b4e96ef73e2ef7")
!34 = !{!35, !36, !37, !38, !39, !47, !48, !52, !53, !54, !68, !72, !75, !78}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !32, file: !33, line: 94, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !32, file: !33, line: 95, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !32, file: !33, line: 96, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !32, file: !33, line: 97, baseType: !7, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !32, file: !33, line: 98, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !41, line: 29, baseType: !42)
!41 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !43, line: 22, baseType: !44)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !45, line: 30, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !32, file: !33, line: 100, baseType: !28, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !32, file: !33, line: 101, baseType: !49, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !43, line: 23, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !51)
!51 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !32, file: !33, line: 102, baseType: !49, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !32, file: !33, line: 103, baseType: !49, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !32, file: !33, line: 104, baseType: !55, size: 5120, offset: 384)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 5120, elements: !66)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !33, line: 36, size: 512, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !56, file: !33, line: 37, baseType: !51, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !56, file: !33, line: 38, baseType: !51, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !56, file: !33, line: 39, baseType: !49, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !56, file: !33, line: 40, baseType: !51, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !56, file: !33, line: 41, baseType: !51, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !56, file: !33, line: 42, baseType: !51, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !56, file: !33, line: 44, baseType: !51, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !56, file: !33, line: 45, baseType: !51, size: 64, offset: 448)
!66 = !{!67}
!67 = !DISubrange(count: 10)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !32, file: !33, line: 105, baseType: !69, size: 640, offset: 5504)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !66)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !33, line: 90, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !32, file: !33, line: 106, baseType: !73, size: 64, offset: 6144)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !33, line: 91, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !32, file: !33, line: 107, baseType: !76, size: 64, offset: 6208)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !33, line: 89, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !32, file: !33, line: 108, baseType: !79, size: 128, offset: 6272)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !80, line: 190, size: 128, elements: !81)
!80 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !80, line: 191, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !79, file: !80, line: 191, baseType: !83, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !87, line: 19, size: 64, elements: !88)
!87 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !86, file: !87, line: 19, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !43, line: 21, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !45, line: 27, baseType: !7)
!97 = !{!0, !98, !100, !102, !108, !1186, !1188, !1190}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpuidle_register_driver207", scope: !2, file: !3, line: 292, type: !26, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpuidle_unregister_driver208", scope: !2, file: !3, line: 320, type: !26, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 332, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 40, elements: !106)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !{!107}
!107 = !DISubrange(count: 5)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule209", scope: !110, file: !3, line: 334, type: !26, isLocal: true, isDefinition: true)
!110 = distinct !DISubprogram(name: "cpuidle_get_driver", scope: !3, file: !3, line: 327, type: !111, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1175)
!111 = !DISubroutineType(types: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !33, line: 152, size: 8704, elements: !115)
!115 = !{!116, !119, !1143, !1144, !1171, !1172, !1173, !1174}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !33, line: 153, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !114, file: !33, line: 154, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !122)
!122 = !{!123, !124, !125, !129, !799, !825, !826, !827, !828, !832, !835, !836, !837, !890, !891, !892, !893, !894, !895, !896, !897, !900, !904, !924, !941, !942, !943, !944, !953, !976, !977, !980, !983, !984, !985, !986, !987, !988, !989, !994, !995, !1101, !1109, !1110, !1111, !1113, !1117, !1118, !1122, !1123, !1124, !1125, !1127, !1128, !1129, !1136, !1137, !1138, !1142}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !121, file: !6, line: 403, baseType: !5, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !121, file: !6, line: 406, baseType: !79, size: 128, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !6, line: 409, baseType: !126, size: 448, offset: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 448, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 56)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !121, file: !6, line: 417, baseType: !130, size: 768, offset: 640)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !131)
!131 = !{!132, !782, !783, !784, !787}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !130, file: !6, line: 46, baseType: !133, size: 512)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !134, line: 64, size: 512, elements: !135)
!134 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!135 = !{!136, !137, !138, !140, !227, !652, !767, !777, !778, !779, !780, !781}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !134, line: 65, baseType: !117, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !133, file: !134, line: 66, baseType: !79, size: 128, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !134, line: 67, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !133, file: !134, line: 68, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !134, line: 168, size: 768, elements: !143)
!143 = !{!144, !145, !186, !187}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !142, file: !134, line: 169, baseType: !79, size: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !142, file: !134, line: 170, baseType: !146, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !147, line: 29, baseType: !148)
!147 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !147, line: 17, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !147, line: 18, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !147, line: 18, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !151, file: !147, line: 19, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !155, line: 14, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !154, file: !155, line: 15, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !159, line: 44, baseType: !160)
!159 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !159, line: 14, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 15, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 15, size: 32, elements: !164)
!164 = !{!165, !170, !178}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !159, line: 16, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !80, line: 174, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 172, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !167, file: !80, line: 173, baseType: !28, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !159, line: 24, baseType: !171, size: 16)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !159, line: 24, size: 16, elements: !172)
!172 = !{!173, !177}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !171, file: !159, line: 25, baseType: !174, size: 8)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !43, line: 17, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !176)
!176 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !171, file: !159, line: 26, baseType: !174, size: 8, offset: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !159, line: 28, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !159, line: 28, size: 32, elements: !180)
!180 = !{!181, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !179, file: !159, line: 29, baseType: !182, size: 16)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !43, line: 19, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !184)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !179, file: !159, line: 30, baseType: !182, size: 16, offset: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !142, file: !134, line: 171, baseType: !133, size: 512, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !142, file: !134, line: 172, baseType: !188, size: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !134, line: 133, size: 192, elements: !191)
!191 = !{!192, !199, !204}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !190, file: !134, line: 134, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!28, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !134, line: 135, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!117, !197}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !190, file: !134, line: 136, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!28, !197, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !134, line: 125, size: 20736, elements: !211)
!211 = !{!212, !217, !221, !222, !226}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !210, file: !134, line: 126, baseType: !213, size: 192)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 192, elements: !215)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!215 = !{!216}
!216 = !DISubrange(count: 3)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !210, file: !134, line: 127, baseType: !218, size: 4096, offset: 192)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 4096, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !210, file: !134, line: 128, baseType: !28, size: 32, offset: 4288)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !210, file: !134, line: 129, baseType: !223, size: 16384, offset: 4320)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 16384, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 2048)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !210, file: !134, line: 130, baseType: !28, size: 32, offset: 20704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !133, file: !134, line: 69, baseType: !228, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !134, line: 116, size: 384, elements: !231)
!231 = !{!232, !236, !264, !599, !630, !634}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !230, file: !134, line: 117, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !139}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !230, file: !134, line: 118, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !240, line: 254, size: 128, elements: !241)
!240 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!241 = !{!242, !257}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !239, file: !240, line: 255, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !139, !251, !214}
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !80, line: 66, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !248, line: 73, baseType: !249)
!248 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !248, line: 15, baseType: !250)
!250 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !240, line: 30, size: 128, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !240, line: 31, baseType: !117, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !252, file: !240, line: 32, baseType: !256, size: 16, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !80, line: 24, baseType: !184)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !239, file: !240, line: 256, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!246, !139, !251, !117, !261}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 61, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !248, line: 72, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !248, line: 16, baseType: !29)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !230, file: !134, line: 119, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !240, line: 84, size: 320, elements: !269)
!269 = !{!270, !271, !275, !595, !597}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !240, line: 85, baseType: !117, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !268, file: !240, line: 86, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!256, !139, !251, !28}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !268, file: !240, line: 88, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!256, !139, !279, !28}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !240, line: 175, size: 512, elements: !281)
!281 = !{!282, !283, !284, !285, !292, !301, !302}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !280, file: !240, line: 176, baseType: !252, size: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !280, file: !240, line: 177, baseType: !261, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !280, file: !240, line: 178, baseType: !26, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !280, file: !240, line: 179, baseType: !286, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !291, line: 32, flags: DIFlagFwdDecl)
!291 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!292 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !280, file: !240, line: 180, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!246, !296, !139, !279, !214, !299, !261}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !298, line: 537, flags: DIFlagFwdDecl)
!298 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !80, line: 52, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !248, line: 88, baseType: !46)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !280, file: !240, line: 182, baseType: !293, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !280, file: !240, line: 184, baseType: !303, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!28, !296, !139, !279, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !291, line: 625, size: 1344, elements: !308)
!308 = !{!309, !326, !544, !550, !557, !558, !563, !566, !578, !579, !582, !586, !587, !588, !589, !590, !593}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !291, line: 628, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !291, line: 628, size: 128, elements: !311)
!311 = !{!312, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !291, line: 629, baseType: !313, size: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !291, line: 629, size: 128, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !313, file: !291, line: 631, baseType: !29, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !313, file: !291, line: 632, baseType: !29, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !310, file: !291, line: 635, baseType: !318, size: 128, align: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !80, line: 232, size: 128, align: 64, elements: !319)
!319 = !{!320, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !80, line: 233, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !318, file: !80, line: 234, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !321}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !307, file: !291, line: 639, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !291, line: 733, size: 10240, elements: !329)
!329 = !{!330, !540}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !291, line: 734, baseType: !331, size: 10240)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !291, line: 734, size: 10240, elements: !332)
!332 = !{!333, !337, !351, !355, !356, !357, !358, !359, !360, !368, !369, !370, !376, !377, !384, !385, !386, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !433, !447, !450, !505, !506, !507, !510, !514, !515, !518, !519, !520, !527, !528}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !291, line: 739, baseType: !334, size: 512, align: 512)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !291, line: 739, size: 512, align: 512, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !334, file: !291, line: 747, baseType: !166, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !331, file: !291, line: 750, baseType: !338, size: 128, offset: 512)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !339, line: 218, size: 128, elements: !340)
!339 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!340 = !{!341, !349, !350}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !339, line: 219, baseType: !342, size: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !339, line: 219, size: 32, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !342, file: !339, line: 220, baseType: !146, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !342, file: !339, line: 221, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !339, line: 197, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 197, elements: !348)
!348 = !{}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !338, file: !339, line: 223, baseType: !7, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !338, file: !339, line: 224, baseType: !26, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !331, file: !291, line: 752, baseType: !352, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!29, !296, !29, !29, !29, !29}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !331, file: !291, line: 756, baseType: !29, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !331, file: !291, line: 757, baseType: !29, size: 64, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !331, file: !291, line: 760, baseType: !29, size: 64, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !331, file: !291, line: 761, baseType: !29, size: 64, offset: 896)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !331, file: !291, line: 763, baseType: !29, size: 64, offset: 960)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !331, file: !291, line: 764, baseType: !361, size: 64, offset: 1024)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !298, line: 299, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 299, size: 64, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !363, file: !298, line: 299, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !367, line: 18, baseType: !29)
!367 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !331, file: !291, line: 773, baseType: !166, size: 32, offset: 1088)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !331, file: !291, line: 785, baseType: !166, size: 32, offset: 1120)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !331, file: !291, line: 795, baseType: !371, size: 64, offset: 1152)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !291, line: 726, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !372, file: !291, line: 727, baseType: !49, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !372, file: !291, line: 728, baseType: !28, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !331, file: !291, line: 801, baseType: !29, size: 64, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !331, file: !291, line: 804, baseType: !378, size: 64, offset: 1280)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !379, line: 13, baseType: !380)
!379 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !80, line: 181, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 179, size: 64, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !381, file: !80, line: 180, baseType: !42, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !331, file: !291, line: 806, baseType: !28, size: 32, offset: 1344)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !331, file: !291, line: 808, baseType: !146, size: 32, offset: 1376)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !331, file: !291, line: 823, baseType: !387, size: 320, offset: 1408)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !388, line: 48, size: 320, elements: !389)
!388 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!389 = !{!390, !391, !392, !397, !399}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !387, file: !388, line: 49, baseType: !378, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !387, file: !388, line: 55, baseType: !378, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !387, file: !388, line: 57, baseType: !393, size: 32, offset: 128)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !394, line: 15, size: 32, elements: !395)
!394 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !393, file: !394, line: 20, baseType: !166, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !387, file: !388, line: 59, baseType: !398, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !155, line: 23, baseType: !154)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !387, file: !388, line: 60, baseType: !79, size: 128, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !331, file: !291, line: 825, baseType: !79, size: 128, offset: 1728)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !331, file: !291, line: 845, baseType: !28, size: 32, offset: 1856)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !331, file: !291, line: 849, baseType: !29, size: 64, offset: 1920)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !331, file: !291, line: 850, baseType: !29, size: 64, offset: 1984)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !331, file: !291, line: 852, baseType: !29, size: 64, offset: 2048)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !331, file: !291, line: 853, baseType: !29, size: 64, offset: 2112)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !331, file: !291, line: 854, baseType: !380, size: 64, offset: 2176)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !331, file: !291, line: 855, baseType: !29, size: 64, offset: 2240)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !331, file: !291, line: 856, baseType: !29, size: 64, offset: 2304)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !331, file: !291, line: 857, baseType: !29, size: 64, offset: 2368)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !331, file: !291, line: 858, baseType: !29, size: 64, offset: 2432)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !331, file: !291, line: 865, baseType: !412, size: 32, offset: 2496)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !413, line: 69, baseType: !414)
!413 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !413, line: 64, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !414, file: !413, line: 65, baseType: !7, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !331, file: !291, line: 867, baseType: !146, size: 32, offset: 2528)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !331, file: !291, line: 869, baseType: !29, size: 64, offset: 2560)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !331, file: !291, line: 869, baseType: !29, size: 64, offset: 2624)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !331, file: !291, line: 869, baseType: !29, size: 64, offset: 2688)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !331, file: !291, line: 869, baseType: !29, size: 64, offset: 2752)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !331, file: !291, line: 870, baseType: !29, size: 64, offset: 2816)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !331, file: !291, line: 870, baseType: !29, size: 64, offset: 2880)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !331, file: !291, line: 870, baseType: !29, size: 64, offset: 2944)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !331, file: !291, line: 871, baseType: !29, size: 64, offset: 3008)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !331, file: !291, line: 871, baseType: !29, size: 64, offset: 3072)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !331, file: !291, line: 871, baseType: !29, size: 64, offset: 3136)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !331, file: !291, line: 871, baseType: !29, size: 64, offset: 3200)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !331, file: !291, line: 873, baseType: !430, size: 3328, offset: 3264)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 3328, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 52)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !331, file: !291, line: 875, baseType: !434, size: 1280, offset: 6592)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 1280, elements: !445)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !436, line: 22, size: 320, elements: !437)
!436 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!437 = !{!438, !439, !440, !441}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !435, file: !436, line: 23, baseType: !398, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !435, file: !436, line: 24, baseType: !42, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !435, file: !436, line: 26, baseType: !79, size: 128, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !435, file: !436, line: 28, baseType: !442, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !43, line: 20, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !45, line: 26, baseType: !28)
!445 = !{!446}
!446 = !DISubrange(count: 4)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !331, file: !291, line: 877, baseType: !448, size: 64, offset: 7872)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !291, line: 877, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !331, file: !291, line: 880, baseType: !451, size: 1088, offset: 7936)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !452, line: 72, baseType: !453)
!452 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 23, size: 1088, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !462, !463, !471, !472, !499, !500, !501}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !453, file: !452, line: 28, baseType: !49, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !453, file: !452, line: 38, baseType: !380, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !453, file: !452, line: 40, baseType: !29, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !453, file: !452, line: 43, baseType: !387, size: 320, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !453, file: !452, line: 44, baseType: !460, size: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !452, line: 44, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !452, line: 48, baseType: !29, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !453, file: !452, line: 59, baseType: !464, size: 256, offset: 640)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !465, line: 66, size: 256, elements: !466)
!465 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!466 = !{!467, !468, !469, !470}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !464, file: !465, line: 67, baseType: !378, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !464, file: !465, line: 68, baseType: !398, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !464, file: !465, line: 70, baseType: !393, size: 32, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !464, file: !465, line: 72, baseType: !79, size: 128, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !453, file: !452, line: 60, baseType: !26, size: 64, offset: 896)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !453, file: !452, line: 61, baseType: !473, size: 64, offset: 960)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !476, line: 13, size: 1216, elements: !477)
!476 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!477 = !{!478, !479, !480, !481, !482, !483, !484, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !475, file: !476, line: 14, baseType: !26, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !475, file: !476, line: 15, baseType: !29, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !475, file: !476, line: 17, baseType: !29, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !475, file: !476, line: 17, baseType: !29, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !475, file: !476, line: 18, baseType: !29, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !475, file: !476, line: 18, baseType: !29, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !475, file: !476, line: 19, baseType: !485, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !475, file: !476, line: 21, baseType: !250, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !475, file: !476, line: 23, baseType: !250, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !475, file: !476, line: 24, baseType: !250, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !475, file: !476, line: 25, baseType: !250, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !475, file: !476, line: 26, baseType: !250, size: 64, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !475, file: !476, line: 27, baseType: !250, size: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !475, file: !476, line: 28, baseType: !250, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !475, file: !476, line: 29, baseType: !250, size: 64, offset: 896)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !475, file: !476, line: 30, baseType: !250, size: 64, offset: 960)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !475, file: !476, line: 31, baseType: !250, size: 64, offset: 1024)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !475, file: !476, line: 32, baseType: !250, size: 64, offset: 1088)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !475, file: !476, line: 33, baseType: !250, size: 64, offset: 1152)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !453, file: !452, line: 63, baseType: !166, size: 32, offset: 1024)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !453, file: !452, line: 69, baseType: !182, size: 16, offset: 1056)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !453, file: !452, line: 70, baseType: !502, size: 16, offset: 1072)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !43, line: 18, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !45, line: 23, baseType: !504)
!504 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !291, line: 882, baseType: !29, size: 64, offset: 9024)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !331, file: !291, line: 885, baseType: !146, size: 32, offset: 9088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !331, file: !291, line: 886, baseType: !508, size: 64, offset: 9152)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !291, line: 732, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !331, file: !291, line: 901, baseType: !511, size: 64, offset: 9216)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !513, line: 18, flags: DIFlagFwdDecl)
!513 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!514 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !331, file: !291, line: 904, baseType: !296, size: 64, offset: 9280)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !331, file: !291, line: 906, baseType: !516, size: 64, offset: 9344)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !291, line: 906, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !331, file: !291, line: 930, baseType: !166, size: 32, offset: 9408)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !331, file: !291, line: 933, baseType: !166, size: 32, offset: 9440)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !331, file: !291, line: 935, baseType: !521, size: 64, offset: 9472)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !522, line: 103, size: 64, elements: !523)
!522 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !521, file: !522, line: 104, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !522, line: 101, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !331, file: !291, line: 940, baseType: !378, size: 64, offset: 9536)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !331, file: !291, line: 942, baseType: !529, size: 256, offset: 9600)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !530, line: 98, size: 256, elements: !531)
!530 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!531 = !{!532, !533, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !529, file: !530, line: 99, baseType: !378, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !529, file: !530, line: 100, baseType: !79, size: 128, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !529, file: !530, line: 101, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !530, line: 21, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !328, file: !291, line: 986, baseType: !541, offset: 10240)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: -1)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !307, file: !291, line: 640, baseType: !545, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !298, line: 297, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !298, line: 297, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !546, file: !298, line: 297, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !367, line: 19, baseType: !29)
!550 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !291, line: 646, baseType: !551, size: 64, offset: 256)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !291, line: 646, size: 64, elements: !552)
!552 = !{!553, !556}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !551, file: !291, line: 647, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !291, line: 542, baseType: !29)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !551, file: !291, line: 648, baseType: !555, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !307, file: !291, line: 666, baseType: !28, size: 32, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !307, file: !291, line: 667, baseType: !559, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !291, line: 579, size: 320, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !291, line: 580, baseType: !387, size: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !307, file: !291, line: 670, baseType: !564, size: 8, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !80, line: 35, baseType: !565)
!565 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !307, file: !291, line: 681, baseType: !567, size: 256, offset: 512)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !291, line: 678, size: 256, elements: !568)
!568 = !{!569, !577}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !567, file: !291, line: 679, baseType: !570, size: 192, align: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !571, line: 5, size: 192, align: 64, elements: !572)
!571 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!572 = !{!573, !574, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !570, file: !571, line: 6, baseType: !29, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !570, file: !571, line: 7, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !570, file: !571, line: 8, baseType: !575, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !567, file: !291, line: 680, baseType: !29, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !307, file: !291, line: 689, baseType: !79, size: 128, offset: 768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !307, file: !291, line: 691, baseType: !580, size: 64, offset: 896)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !291, line: 691, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !307, file: !291, line: 694, baseType: !583, size: 64, offset: 960)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !291, line: 694, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !307, file: !291, line: 697, baseType: !29, size: 64, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !307, file: !291, line: 699, baseType: !296, size: 64, offset: 1088)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !307, file: !291, line: 700, baseType: !26, size: 64, offset: 1152)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !307, file: !291, line: 711, baseType: !378, size: 64, offset: 1216)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !307, file: !291, line: 717, baseType: !591, size: 64, offset: 1280)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !291, line: 717, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !307, file: !291, line: 722, baseType: !594, offset: 1344)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !291, line: 570, elements: !348)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !268, file: !240, line: 90, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !268, file: !240, line: 91, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !230, file: !134, line: 120, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!603, !197}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !606)
!606 = !{!607, !608, !612, !616, !622, !626}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !14, line: 40, baseType: !13, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !605, file: !14, line: 41, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!564}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !605, file: !14, line: 42, baseType: !613, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!26}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !605, file: !14, line: 43, baseType: !617, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!485, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !605, file: !14, line: 44, baseType: !623, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!485}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !605, file: !14, line: 45, baseType: !627, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !26}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !230, file: !134, line: 121, baseType: !631, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!485, !197}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !230, file: !134, line: 122, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !197, !638, !645}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !513, line: 23, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 21, size: 32, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !640, file: !513, line: 22, baseType: !643, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !80, line: 37, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !248, line: 49, baseType: !7)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !513, line: 28, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 26, size: 32, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !647, file: !513, line: 27, baseType: !650, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !80, line: 38, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !248, line: 50, baseType: !7)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !133, file: !134, line: 70, baseType: !653, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !655, line: 190, size: 1152, elements: !656)
!655 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !759, !760, !761, !762, !763, !766}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !654, file: !655, line: 191, baseType: !166, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !654, file: !655, line: 192, baseType: !166, size: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !654, file: !655, line: 202, baseType: !653, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !655, line: 203, baseType: !117, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !654, file: !655, line: 205, baseType: !570, size: 192, align: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !654, file: !655, line: 207, baseType: !485, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !654, file: !655, line: 208, baseType: !7, size: 32, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !655, line: 209, baseType: !665, size: 256, offset: 512)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !655, line: 209, size: 256, elements: !666)
!666 = !{!667, !679, !683}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !665, file: !655, line: 210, baseType: !668, size: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !655, line: 153, size: 256, elements: !669)
!669 = !{!670, !671, !675, !678}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !668, file: !655, line: 154, baseType: !29, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !668, file: !655, line: 156, baseType: !672, size: 64, offset: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !571, line: 12, size: 64, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !672, file: !571, line: 13, baseType: !575, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !668, file: !655, line: 162, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !655, line: 162, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !668, file: !655, line: 167, baseType: !29, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !665, file: !655, line: 211, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !655, line: 170, size: 64, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !680, file: !655, line: 171, baseType: !653, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !665, file: !655, line: 212, baseType: !684, size: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !655, line: 174, size: 256, elements: !685)
!685 = !{!686, !754, !757, !758}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !684, file: !655, line: 175, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !655, line: 271, size: 768, elements: !690)
!690 = !{!691, !714, !718, !722, !727, !731, !735, !739, !740, !741, !742, !750}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !689, file: !655, line: 276, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!28, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !655, line: 251, size: 1216, elements: !697)
!697 = !{!698, !699, !700, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !696, file: !655, line: 253, baseType: !653, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !696, file: !655, line: 254, baseType: !296, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !696, file: !655, line: 255, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !703, line: 66, flags: DIFlagFwdDecl)
!703 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!704 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !696, file: !655, line: 256, baseType: !26, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !696, file: !655, line: 259, baseType: !464, size: 256, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !696, file: !655, line: 260, baseType: !464, size: 256, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !696, file: !655, line: 261, baseType: !28, size: 32, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !696, file: !655, line: 262, baseType: !79, size: 128, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !696, file: !655, line: 263, baseType: !214, size: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !696, file: !655, line: 265, baseType: !261, size: 64, offset: 1024)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !696, file: !655, line: 266, baseType: !564, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !696, file: !655, line: 267, baseType: !564, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !696, file: !655, line: 268, baseType: !583, size: 64, offset: 1152)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !689, file: !655, line: 277, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !695}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !689, file: !655, line: 290, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!28, !701, !26}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !689, file: !655, line: 292, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!26, !701, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !689, file: !655, line: 293, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!26, !701, !26, !726}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !689, file: !655, line: 294, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !701, !26}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !689, file: !655, line: 296, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!246, !695, !214, !261, !299}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !689, file: !655, line: 306, baseType: !261, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !689, file: !655, line: 313, baseType: !564, size: 8, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !689, file: !655, line: 314, baseType: !736, size: 64, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !689, file: !655, line: 317, baseType: !743, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!746, !695, !748}
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !747, line: 59, baseType: !7)
!747 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !655, line: 31, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !689, file: !655, line: 320, baseType: !751, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!28, !695, !306}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !684, file: !655, line: 176, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !655, line: 35, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !684, file: !655, line: 177, baseType: !299, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !684, file: !655, line: 178, baseType: !653, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !654, file: !655, line: 215, baseType: !26, size: 64, offset: 768)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !654, file: !655, line: 221, baseType: !49, size: 64, offset: 832)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !655, line: 223, baseType: !184, size: 16, offset: 896)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !654, file: !655, line: 224, baseType: !256, size: 16, offset: 912)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !654, file: !655, line: 225, baseType: !764, size: 64, offset: 960)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !655, line: 36, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !654, file: !655, line: 227, baseType: !318, size: 128, align: 64, offset: 1024)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !133, file: !134, line: 71, baseType: !768, size: 32, offset: 448)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !769, line: 19, size: 32, elements: !770)
!769 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !768, file: !769, line: 20, baseType: !772, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !773, line: 113, baseType: !774)
!773 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !773, line: 111, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !774, file: !773, line: 112, baseType: !166, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !133, file: !134, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !133, file: !134, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !133, file: !134, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !133, file: !134, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !133, file: !134, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !130, file: !6, line: 47, baseType: !120, size: 64, offset: 512)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !130, file: !6, line: 48, baseType: !139, size: 64, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !130, file: !6, line: 49, baseType: !785, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !130, file: !6, line: 50, baseType: !788, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !790, line: 26, size: 256, elements: !791)
!790 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !789, file: !790, line: 27, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !789, file: !790, line: 28, baseType: !794, size: 192, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !795, line: 43, size: 192, elements: !796)
!795 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !795, line: 44, baseType: !398, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !794, file: !795, line: 45, baseType: !79, size: 128, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !121, file: !6, line: 418, baseType: !800, size: 64, offset: 1408)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !802)
!802 = !{!803, !804, !809, !813, !817, !821}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !801, file: !6, line: 54, baseType: !252, size: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !801, file: !6, line: 55, baseType: !805, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!246, !800, !808, !214}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !801, file: !6, line: 57, baseType: !810, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!246, !800, !808, !117, !261}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !801, file: !6, line: 59, baseType: !814, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !120, !117}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !801, file: !6, line: 60, baseType: !818, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!28, !120}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !801, file: !6, line: 61, baseType: !822, size: 64, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !120}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !121, file: !6, line: 419, baseType: !117, size: 64, offset: 1472)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !121, file: !6, line: 420, baseType: !117, size: 64, offset: 1536)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !121, file: !6, line: 421, baseType: !139, size: 64, offset: 1600)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !121, file: !6, line: 424, baseType: !829, size: 64, offset: 1664)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !121, file: !6, line: 425, baseType: !833, size: 64, offset: 1728)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !121, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !121, file: !6, line: 435, baseType: !464, size: 256, offset: 1856)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !121, file: !6, line: 437, baseType: !838, size: 64, offset: 2112)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !840, line: 69, size: 320, elements: !841)
!840 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!841 = !{!842, !843, !844, !861, !863, !867, !868}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !839, file: !840, line: 70, baseType: !117, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !839, file: !840, line: 71, baseType: !120, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !839, file: !840, line: 72, baseType: !845, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !840, line: 47, size: 256, elements: !848)
!848 = !{!849, !850, !856, !860}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !840, line: 49, baseType: !7, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !847, file: !840, line: 51, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!28, !117, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !847, file: !840, line: 53, baseType: !857, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!28, !214, !854}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !847, file: !840, line: 55, baseType: !627, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !839, file: !840, line: 73, baseType: !862, size: 16, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !839, file: !840, line: 74, baseType: !864, size: 8, offset: 208)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !43, line: 16, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !45, line: 20, baseType: !866)
!866 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !840, line: 75, baseType: !174, size: 8, offset: 216)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !840, line: 76, baseType: !869, size: 64, offset: 256)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !840, line: 76, size: 64, elements: !870)
!870 = !{!871, !872, !879}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !869, file: !840, line: 77, baseType: !26, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !869, file: !840, line: 78, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !840, line: 86, size: 128, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !875, file: !840, line: 87, baseType: !7, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !875, file: !840, line: 88, baseType: !214, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !869, file: !840, line: 79, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !840, line: 92, size: 256, elements: !883)
!883 = !{!884, !885, !886, !888, !889}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !882, file: !840, line: 94, baseType: !7, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !882, file: !840, line: 95, baseType: !7, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !882, file: !840, line: 96, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !882, file: !840, line: 97, baseType: !845, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !882, file: !840, line: 98, baseType: !26, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !121, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !121, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !121, file: !6, line: 442, baseType: !829, size: 64, offset: 2240)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !121, file: !6, line: 443, baseType: !833, size: 64, offset: 2304)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !121, file: !6, line: 444, baseType: !564, size: 8, offset: 2368)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !121, file: !6, line: 451, baseType: !564, size: 8, offset: 2376)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !121, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !121, file: !6, line: 455, baseType: !898, size: 64, offset: 2432)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !121, file: !6, line: 458, baseType: !901, size: 64, offset: 2496)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!28}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !121, file: !6, line: 460, baseType: !905, size: 4032, align: 512, offset: 2560)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 4032, elements: !922)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !906, file: !6, line: 363, baseType: !26, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !906, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !906, file: !6, line: 367, baseType: !911, size: 448, offset: 128)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !911, file: !6, line: 320, baseType: !120, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !911, file: !6, line: 321, baseType: !915, size: 384, offset: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !916, line: 40, size: 384, elements: !917)
!916 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !915, file: !916, line: 41, baseType: !919, size: 384, align: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 384, align: 64, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 2)
!922 = !{!923}
!923 = !DISubrange(count: 7)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !121, file: !6, line: 463, baseType: !925, size: 192, offset: 6592)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !926, line: 8, size: 192, elements: !927)
!926 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !925, file: !926, line: 10, baseType: !7, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !925, file: !926, line: 11, baseType: !27, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !925, file: !926, line: 12, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !933, line: 59, size: 48, elements: !934)
!933 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!934 = !{!935, !936, !937, !938, !939, !940}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !932, file: !933, line: 60, baseType: !502, size: 16)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !932, file: !933, line: 61, baseType: !502, size: 16, offset: 16)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !932, file: !933, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !932, file: !933, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !932, file: !933, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !932, file: !933, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !121, file: !6, line: 465, baseType: !29, size: 64, offset: 6784)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !121, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !121, file: !6, line: 470, baseType: !79, size: 128, offset: 6912)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !121, file: !6, line: 471, baseType: !945, size: 64, offset: 7040)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !947, line: 33, size: 96, elements: !948)
!947 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!948 = !{!949, !950, !951, !952}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !946, file: !947, line: 37, baseType: !28, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !946, file: !947, line: 43, baseType: !28, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !946, file: !947, line: 45, baseType: !184, size: 16, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !947, line: 47, baseType: !184, size: 16, offset: 80)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !121, file: !6, line: 476, baseType: !954, size: 64, offset: 7104)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !956)
!956 = !{!957, !973, !974, !975}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !955, file: !6, line: 379, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !960, line: 204, baseType: !961)
!960 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !960, line: 197, size: 192, elements: !962)
!962 = !{!963, !965, !966, !967, !969, !971}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !961, file: !960, line: 198, baseType: !964, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !960, line: 21, baseType: !96)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !961, file: !960, line: 199, baseType: !176, size: 8, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !961, file: !960, line: 200, baseType: !176, size: 8, offset: 40)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !961, file: !960, line: 201, baseType: !968, size: 16, offset: 48)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !960, line: 17, baseType: !183)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !961, file: !960, line: 202, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !960, line: 16, baseType: !50)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !961, file: !960, line: 203, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !960, line: 22, baseType: !50)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !955, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !955, file: !6, line: 381, baseType: !214, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !955, file: !6, line: 382, baseType: !214, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !121, file: !6, line: 477, baseType: !955, size: 256, offset: 7168)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !121, file: !6, line: 480, baseType: !978, size: 64, offset: 7424)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !121, file: !6, line: 483, baseType: !981, size: 64, offset: 7488)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !121, file: !6, line: 488, baseType: !214, size: 64, offset: 7552)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !121, file: !6, line: 492, baseType: !26, size: 64, offset: 7616)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !121, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !121, file: !6, line: 495, baseType: !26, size: 64, offset: 7744)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !121, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !121, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !121, file: !6, line: 500, baseType: !990, size: 64, offset: 7872)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !992, line: 45, baseType: !993)
!992 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !121, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !121, file: !6, line: 504, baseType: !996, size: 64, offset: 8000)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !999, line: 96, size: 192, elements: !1000)
!999 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1000 = !{!1001, !1002, !1062, !1065}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !998, file: !999, line: 97, baseType: !7, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !998, file: !999, line: 98, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !999, line: 24, size: 3072, elements: !1005)
!1005 = !{!1006, !1008, !1009, !1010, !1011, !1025, !1026, !1027, !1028, !1046, !1047, !1048, !1059, !1060, !1061}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1004, file: !999, line: 26, baseType: !1007, size: 128)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !920)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1004, file: !999, line: 27, baseType: !1007, size: 128, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1004, file: !999, line: 28, baseType: !28, size: 32, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1004, file: !999, line: 31, baseType: !146, size: 32, align: 512, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1004, file: !999, line: 32, baseType: !1012, size: 960, offset: 576)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1013, line: 206, size: 960, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1014 = !{!1015, !1016, !1019, !1021, !1022, !1024}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1012, file: !1013, line: 207, baseType: !321, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1012, file: !1013, line: 208, baseType: !1017, size: 256, offset: 64)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, size: 256, elements: !445)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1012, file: !1013, line: 209, baseType: !1020, size: 256, offset: 320)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !445)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1012, file: !1013, line: 213, baseType: !250, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1012, file: !1013, line: 215, baseType: !1023, size: 256, offset: 640)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !445)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !1013, line: 216, baseType: !174, size: 8, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1004, file: !999, line: 33, baseType: !29, size: 64, offset: 1536)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1004, file: !999, line: 34, baseType: !29, size: 64, offset: 1600)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1004, file: !999, line: 35, baseType: !564, size: 8, offset: 1664)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1004, file: !999, line: 36, baseType: !1029, size: 320, offset: 1728)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1030, line: 11, size: 320, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1031 = !{!1032, !1039, !1040, !1045}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1029, file: !1030, line: 16, baseType: !1033, size: 128)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !80, line: 198, size: 128, elements: !1034)
!1034 = !{!1035, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1033, file: !80, line: 199, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1033, file: !80, line: 199, baseType: !1038, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1029, file: !1030, line: 17, baseType: !29, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1029, file: !1030, line: 18, baseType: !1041, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !1044}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !1030, line: 19, baseType: !95, size: 32, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1004, file: !999, line: 37, baseType: !529, size: 256, offset: 2048)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1004, file: !999, line: 38, baseType: !318, size: 128, align: 64, offset: 2304)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1004, file: !999, line: 39, baseType: !1049, size: 64, offset: 2432)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !999, line: 49, size: 768, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1050, file: !999, line: 50, baseType: !146, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1050, file: !999, line: 51, baseType: !1020, size: 256, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1050, file: !999, line: 53, baseType: !1020, size: 256, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1050, file: !999, line: 54, baseType: !29, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1050, file: !999, line: 55, baseType: !1049, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1050, file: !999, line: 56, baseType: !28, size: 32, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1050, file: !999, line: 57, baseType: !28, size: 32, offset: 736)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1004, file: !999, line: 40, baseType: !29, size: 64, offset: 2496)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1004, file: !999, line: 42, baseType: !28, size: 32, offset: 2560)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1004, file: !999, line: 43, baseType: !997, size: 64, offset: 2624)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !998, file: !999, line: 99, baseType: !1063, offset: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1064, line: 211, elements: !348)
!1064 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !998, file: !999, line: 100, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !999, line: 63, size: 3008, elements: !1068)
!1068 = !{!1069, !1070, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1100}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1067, file: !999, line: 64, baseType: !1049, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1067, file: !999, line: 65, baseType: !1071, size: 192, offset: 64)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1049, size: 192, elements: !215)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1067, file: !999, line: 67, baseType: !28, size: 32, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1067, file: !999, line: 68, baseType: !464, size: 256, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1067, file: !999, line: 69, baseType: !146, size: 32, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1067, file: !999, line: 70, baseType: !464, size: 256, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1067, file: !999, line: 71, baseType: !29, size: 64, offset: 896)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1067, file: !999, line: 72, baseType: !29, size: 64, offset: 960)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1067, file: !999, line: 73, baseType: !29, size: 64, offset: 1024)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1067, file: !999, line: 74, baseType: !29, size: 64, offset: 1088)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1067, file: !999, line: 75, baseType: !29, size: 64, offset: 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1067, file: !999, line: 76, baseType: !29, size: 64, offset: 1216)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1067, file: !999, line: 77, baseType: !29, size: 64, offset: 1280)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1067, file: !999, line: 78, baseType: !29, size: 64, offset: 1344)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1067, file: !999, line: 79, baseType: !564, size: 8, offset: 1408)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1067, file: !999, line: 80, baseType: !29, size: 64, offset: 1472)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1067, file: !999, line: 81, baseType: !464, size: 256, offset: 1536)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1067, file: !999, line: 82, baseType: !789, size: 256, offset: 1792)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1067, file: !999, line: 84, baseType: !166, size: 32, offset: 2048)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1067, file: !999, line: 87, baseType: !29, size: 64, offset: 2112)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1067, file: !999, line: 88, baseType: !29, size: 64, offset: 2176)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1067, file: !999, line: 89, baseType: !1092, size: 704, offset: 2240)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !530, line: 111, size: 704, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1099}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1092, file: !530, line: 112, baseType: !529, size: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1092, file: !530, line: 113, baseType: !1029, size: 320, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1092, file: !530, line: 116, baseType: !1097, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !530, line: 18, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1092, file: !530, line: 117, baseType: !28, size: 32, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1067, file: !999, line: 90, baseType: !997, size: 64, offset: 2944)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !121, file: !6, line: 515, baseType: !1102, size: 64, offset: 8064)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1104, line: 117, size: 128, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1105 = !{!1106, !1107, !1108}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1103, file: !1104, line: 118, baseType: !443, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1103, file: !1104, line: 119, baseType: !443, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1103, file: !1104, line: 120, baseType: !250, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !121, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !121, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !121, file: !6, line: 520, baseType: !1112, size: 64, offset: 8192)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !121, file: !6, line: 523, baseType: !1114, size: 64, offset: 8256)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !121, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !121, file: !6, line: 525, baseType: !1119, size: 64, offset: 8384)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !121, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !121, file: !6, line: 533, baseType: !26, size: 64, offset: 8512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !121, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !121, file: !6, line: 535, baseType: !1126, size: 64, offset: 8640)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !121, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !121, file: !6, line: 539, baseType: !28, size: 32, offset: 8736)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !121, file: !6, line: 540, baseType: !1130, size: 64, offset: 8768)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1132, line: 32, size: 64, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1131, file: !1132, line: 33, baseType: !443, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1131, file: !1132, line: 34, baseType: !443, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !121, file: !6, line: 563, baseType: !79, size: 128, offset: 8832)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !121, file: !6, line: 565, baseType: !79, size: 128, offset: 8960)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !121, file: !6, line: 568, baseType: !1139, size: 64, offset: 9088)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !121, file: !6, line: 570, baseType: !166, size: 32, offset: 9152)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !114, file: !33, line: 157, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !114, file: !33, line: 159, baseType: !1145, size: 8320, offset: 192)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1146, size: 8320, elements: !66)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !33, line: 49, size: 832, elements: !1147)
!1147 = !{!1148, !1152, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1166, !1170}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1146, file: !33, line: 50, baseType: !1149, size: 128)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 16)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1146, file: !33, line: 51, baseType: !1153, size: 256, offset: 128)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !1146, file: !33, line: 53, baseType: !42, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !1146, file: !33, line: 54, baseType: !42, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1146, file: !33, line: 55, baseType: !7, size: 32, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !1146, file: !33, line: 56, baseType: !7, size: 32, offset: 544)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !1146, file: !33, line: 57, baseType: !28, size: 32, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !1146, file: !33, line: 58, baseType: !7, size: 32, offset: 608)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !1146, file: !33, line: 60, baseType: !1163, size: 64, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!28, !31, !113, !28}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !1146, file: !33, line: 64, baseType: !1167, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!28, !31, !28}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !1146, file: !33, line: 74, baseType: !1163, size: 64, offset: 768)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !114, file: !33, line: 160, baseType: !28, size: 32, offset: 8512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !114, file: !33, line: 161, baseType: !28, size: 32, offset: 8544)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !114, file: !33, line: 164, baseType: !85, size: 64, offset: 8576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !114, file: !33, line: 167, baseType: !117, size: 64, offset: 8640)
!1175 = !{!1176, !1177, !1178, !1182, !1184}
!1176 = !DILocalVariable(name: "drv", scope: !110, file: !3, line: 329, type: !113)
!1177 = !DILocalVariable(name: "cpu", scope: !110, file: !3, line: 330, type: !28)
!1178 = !DILocalVariable(name: "pscr_ret__", scope: !1179, file: !3, line: 332, type: !28)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 332, column: 8)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 332, column: 8)
!1181 = distinct !DILexicalBlock(scope: !110, file: !3, line: 332, column: 8)
!1182 = !DILocalVariable(name: "__vpp_verify", scope: !1183, file: !3, line: 332, type: !485)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 332, column: 8)
!1184 = !DILocalVariable(name: "pfo_val__", scope: !1185, file: !3, line: 332, type: !95)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 332, column: 8)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpuidle_get_driver210", scope: !2, file: !3, line: 338, type: !26, isLocal: true, isDefinition: true)
!1188 = !DIGlobalVariableExpression(var: !1189, expr: !DIExpression())
!1189 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpuidle_get_cpu_driver211", scope: !2, file: !3, line: 354, type: !26, isLocal: true, isDefinition: true)
!1190 = !DIGlobalVariableExpression(var: !1191, expr: !DIExpression())
!1191 = distinct !DIGlobalVariable(name: "cpuidle_curr_driver", scope: !2, file: !3, line: 89, type: !113, isLocal: true, isDefinition: true)
!1192 = !{!"rsp"}
!1193 = !{i32 7, !"Dwarf Version", i32 5}
!1194 = !{i32 2, !"Debug Info Version", i32 3}
!1195 = !{i32 1, !"wchar_size", i32 2}
!1196 = !{i32 8, !"cf-protection-branch", i32 1}
!1197 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1198 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1199 = !{i32 1, !"Code Model", i32 2}
!1200 = !{i32 1, !"override-stack-alignment", i32 8}
!1201 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1202 = distinct !DISubprogram(name: "cpuidle_register_driver", scope: !3, file: !3, line: 269, type: !1203, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!28, !113}
!1205 = !{!1206, !1207, !1231}
!1206 = !DILocalVariable(name: "drv", arg: 1, scope: !1202, file: !3, line: 269, type: !113)
!1207 = !DILocalVariable(name: "gov", scope: !1202, file: !3, line: 271, type: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_governor", file: !33, line: 288, size: 576, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1218, !1222, !1227}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1209, file: !33, line: 289, baseType: !1149, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !1209, file: !33, line: 290, baseType: !79, size: 128, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !1209, file: !33, line: 291, baseType: !7, size: 32, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !1209, file: !33, line: 293, baseType: !1215, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!28, !113, !31}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1209, file: !33, line: 295, baseType: !1219, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !113, !31}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1209, file: !33, line: 298, baseType: !1223, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!28, !113, !31, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "reflect", scope: !1209, file: !33, line: 301, baseType: !1228, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !31, !28}
!1231 = !DILocalVariable(name: "ret", scope: !1202, file: !3, line: 272, type: !28)
!1232 = !DILocation(line: 269, column: 52, scope: !1202)
!1233 = !DILocation(line: 271, column: 2, scope: !1202)
!1234 = !DILocation(line: 271, column: 27, scope: !1202)
!1235 = !DILocation(line: 272, column: 2, scope: !1202)
!1236 = !DILocation(line: 272, column: 6, scope: !1202)
!1237 = !DILocation(line: 274, column: 2, scope: !1202)
!1238 = !DILocation(line: 275, column: 34, scope: !1202)
!1239 = !DILocation(line: 275, column: 8, scope: !1202)
!1240 = !DILocation(line: 275, column: 6, scope: !1202)
!1241 = !DILocation(line: 276, column: 2, scope: !1202)
!1242 = !DILocation(line: 278, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 278, column: 6)
!1244 = !DILocation(line: 278, column: 11, scope: !1243)
!1245 = !DILocation(line: 278, column: 15, scope: !1243)
!1246 = !DILocation(line: 278, column: 38, scope: !1243)
!1247 = !DILocation(line: 278, column: 41, scope: !1243)
!1248 = !DILocation(line: 278, column: 46, scope: !1243)
!1249 = !DILocation(line: 278, column: 55, scope: !1243)
!1250 = !DILocation(line: 279, column: 7, scope: !1243)
!1251 = !DILocation(line: 279, column: 31, scope: !1243)
!1252 = !DILocation(line: 279, column: 28, scope: !1243)
!1253 = !DILocation(line: 278, column: 6, scope: !1202)
!1254 = !DILocation(line: 280, column: 3, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 279, column: 37)
!1256 = !DILocation(line: 281, column: 31, scope: !1255)
!1257 = !DILocation(line: 281, column: 36, scope: !1255)
!1258 = !DILocation(line: 281, column: 9, scope: !1255)
!1259 = !DILocation(line: 281, column: 7, scope: !1255)
!1260 = !DILocation(line: 282, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 282, column: 7)
!1262 = !DILocation(line: 282, column: 7, scope: !1255)
!1263 = !DILocation(line: 283, column: 28, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 282, column: 12)
!1265 = !DILocation(line: 283, column: 26, scope: !1264)
!1266 = !DILocation(line: 284, column: 32, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 284, column: 8)
!1268 = !DILocation(line: 284, column: 8, scope: !1267)
!1269 = !DILocation(line: 284, column: 37, scope: !1267)
!1270 = !DILocation(line: 284, column: 8, scope: !1264)
!1271 = !DILocation(line: 285, column: 27, scope: !1267)
!1272 = !DILocation(line: 285, column: 5, scope: !1267)
!1273 = !DILocation(line: 286, column: 3, scope: !1264)
!1274 = !DILocation(line: 287, column: 3, scope: !1255)
!1275 = !DILocation(line: 288, column: 2, scope: !1255)
!1276 = !DILocation(line: 290, column: 9, scope: !1202)
!1277 = !DILocation(line: 291, column: 1, scope: !1202)
!1278 = !DILocation(line: 290, column: 2, scope: !1202)
!1279 = distinct !DISubprogram(name: "spin_lock", scope: !1280, file: !1280, line: 349, type: !1281, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1284)
!1280 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1284 = !{!1285}
!1285 = !DILocalVariable(name: "lock", arg: 1, scope: !1279, file: !1280, line: 349, type: !1283)
!1286 = !DILocation(line: 349, column: 51, scope: !1279)
!1287 = !DILocation(line: 351, column: 2, scope: !1279)
!1288 = !DILocation(line: 352, column: 1, scope: !1279)
!1289 = distinct !DISubprogram(name: "__cpuidle_register_driver", scope: !3, file: !3, line: 212, type: !1203, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1290)
!1290 = !{!1291, !1292}
!1291 = !DILocalVariable(name: "drv", arg: 1, scope: !1289, file: !3, line: 212, type: !113)
!1292 = !DILocalVariable(name: "ret", scope: !1289, file: !3, line: 214, type: !28)
!1293 = !DILocation(line: 212, column: 61, scope: !1289)
!1294 = !DILocation(line: 214, column: 2, scope: !1289)
!1295 = !DILocation(line: 214, column: 6, scope: !1289)
!1296 = !DILocation(line: 216, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 216, column: 6)
!1298 = !DILocation(line: 216, column: 11, scope: !1297)
!1299 = !DILocation(line: 216, column: 15, scope: !1297)
!1300 = !DILocation(line: 216, column: 20, scope: !1297)
!1301 = !DILocation(line: 216, column: 6, scope: !1289)
!1302 = !DILocation(line: 217, column: 3, scope: !1297)
!1303 = !DILocation(line: 219, column: 37, scope: !1289)
!1304 = !DILocation(line: 219, column: 8, scope: !1289)
!1305 = !DILocation(line: 219, column: 6, scope: !1289)
!1306 = !DILocation(line: 220, column: 6, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 220, column: 6)
!1308 = !DILocation(line: 220, column: 6, scope: !1289)
!1309 = !DILocation(line: 221, column: 10, scope: !1307)
!1310 = !DILocation(line: 221, column: 3, scope: !1307)
!1311 = !DILocation(line: 223, column: 6, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 223, column: 6)
!1313 = !DILocation(line: 223, column: 6, scope: !1289)
!1314 = !DILocation(line: 224, column: 3, scope: !1312)
!1315 = !DILocation(line: 226, column: 24, scope: !1289)
!1316 = !DILocation(line: 226, column: 2, scope: !1289)
!1317 = !DILocation(line: 228, column: 29, scope: !1289)
!1318 = !DILocation(line: 228, column: 8, scope: !1289)
!1319 = !DILocation(line: 228, column: 6, scope: !1289)
!1320 = !DILocation(line: 229, column: 6, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 229, column: 6)
!1322 = !DILocation(line: 229, column: 6, scope: !1289)
!1323 = !DILocation(line: 230, column: 10, scope: !1321)
!1324 = !DILocation(line: 230, column: 3, scope: !1321)
!1325 = !DILocation(line: 232, column: 6, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 232, column: 6)
!1327 = !DILocation(line: 232, column: 11, scope: !1326)
!1328 = !DILocation(line: 232, column: 6, scope: !1289)
!1329 = !DILocation(line: 233, column: 20, scope: !1326)
!1330 = !DILocation(line: 233, column: 25, scope: !1326)
!1331 = !DILocation(line: 233, column: 3, scope: !1326)
!1332 = !DILocation(line: 236, column: 2, scope: !1289)
!1333 = !DILocation(line: 237, column: 1, scope: !1289)
!1334 = distinct !DISubprogram(name: "spin_unlock", scope: !1280, file: !1280, line: 389, type: !1281, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1335)
!1335 = !{!1336}
!1336 = !DILocalVariable(name: "lock", arg: 1, scope: !1334, file: !1280, line: 389, type: !1283)
!1337 = !DILocation(line: 389, column: 53, scope: !1334)
!1338 = !DILocation(line: 391, column: 2, scope: !1334)
!1339 = !DILocation(line: 392, column: 1, scope: !1334)
!1340 = !DISubprogram(name: "strlen", scope: !1341, file: !1341, line: 128, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1341 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!29, !117}
!1344 = !DILocation(line: 329, column: 2, scope: !110)
!1345 = !DILocation(line: 329, column: 25, scope: !110)
!1346 = !DILocation(line: 330, column: 2, scope: !110)
!1347 = !DILocation(line: 330, column: 6, scope: !110)
!1348 = !DILocation(line: 332, column: 8, scope: !1181)
!1349 = !DILocation(line: 332, column: 8, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 332, column: 8)
!1351 = !{i64 2152923837}
!1352 = !DILocation(line: 332, column: 8, scope: !1180)
!1353 = !DILocation(line: 332, column: 8, scope: !1179)
!1354 = !DILocation(line: 332, column: 8, scope: !1183)
!1355 = !DILocation(line: 332, column: 8, scope: !1185)
!1356 = !{i64 2152926475}
!1357 = !DILocation(line: 332, column: 6, scope: !110)
!1358 = !DILocation(line: 333, column: 33, scope: !110)
!1359 = !DILocation(line: 333, column: 8, scope: !110)
!1360 = !DILocation(line: 333, column: 6, scope: !110)
!1361 = !DILocation(line: 334, column: 2, scope: !110)
!1362 = !DILocation(line: 334, column: 2, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !110, file: !3, line: 334, column: 2)
!1364 = !{i64 2152927392}
!1365 = !DILocation(line: 334, column: 2, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 334, column: 2)
!1367 = !DILocation(line: 334, column: 2, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 334, column: 2)
!1369 = !{i64 2152927574}
!1370 = !DILocation(line: 336, column: 9, scope: !110)
!1371 = !DILocation(line: 337, column: 1, scope: !110)
!1372 = !DILocation(line: 336, column: 2, scope: !110)
!1373 = !DISubprogram(name: "mutex_lock", scope: !465, file: !465, line: 227, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!1377 = !DISubprogram(name: "cpuidle_find_governor", scope: !1378, file: !1378, line: 26, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1378 = !DIFile(filename: "drivers/cpuidle/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e9136cca38c1e0b4e01e3bdc92d79e5")
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1208, !117}
!1381 = !DISubprogram(name: "cpuidle_switch_governor", scope: !1378, file: !1378, line: 27, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!28, !1208}
!1384 = !DISubprogram(name: "mutex_unlock", scope: !465, file: !465, line: 246, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = distinct !DISubprogram(name: "cpuidle_unregister_driver", scope: !3, file: !3, line: 302, type: !1386, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1388)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !113}
!1388 = !{!1389, !1390}
!1389 = !DILocalVariable(name: "drv", arg: 1, scope: !1385, file: !3, line: 302, type: !113)
!1390 = !DILocalVariable(name: "enabled", scope: !1385, file: !3, line: 304, type: !564)
!1391 = !DILocation(line: 302, column: 55, scope: !1385)
!1392 = !DILocation(line: 304, column: 2, scope: !1385)
!1393 = !DILocation(line: 304, column: 7, scope: !1385)
!1394 = !DILocation(line: 304, column: 18, scope: !1385)
!1395 = !DILocation(line: 304, column: 42, scope: !1385)
!1396 = !DILocation(line: 304, column: 39, scope: !1385)
!1397 = !DILocation(line: 306, column: 2, scope: !1385)
!1398 = !DILocation(line: 307, column: 30, scope: !1385)
!1399 = !DILocation(line: 307, column: 2, scope: !1385)
!1400 = !DILocation(line: 308, column: 2, scope: !1385)
!1401 = !DILocation(line: 310, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 310, column: 6)
!1403 = !{i8 0, i8 2}
!1404 = !DILocation(line: 310, column: 6, scope: !1385)
!1405 = !DILocation(line: 311, column: 3, scope: !1402)
!1406 = !DILocation(line: 313, column: 2, scope: !1385)
!1407 = !DILocation(line: 314, column: 6, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 314, column: 6)
!1409 = !DILocation(line: 314, column: 6, scope: !1385)
!1410 = !DILocation(line: 315, column: 32, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 315, column: 7)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 314, column: 29)
!1413 = !DILocation(line: 315, column: 8, scope: !1411)
!1414 = !DILocation(line: 315, column: 7, scope: !1412)
!1415 = !DILocation(line: 316, column: 26, scope: !1411)
!1416 = !DILocation(line: 316, column: 4, scope: !1411)
!1417 = !DILocation(line: 317, column: 2, scope: !1412)
!1418 = !DILocation(line: 318, column: 2, scope: !1385)
!1419 = !DILocation(line: 319, column: 1, scope: !1385)
!1420 = distinct !DISubprogram(name: "__cpuidle_unregister_driver", scope: !3, file: !3, line: 248, type: !1386, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "drv", arg: 1, scope: !1420, file: !3, line: 248, type: !113)
!1423 = !DILocation(line: 248, column: 64, scope: !1420)
!1424 = !DILocation(line: 250, column: 6, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 250, column: 6)
!1426 = !DILocation(line: 250, column: 11, scope: !1425)
!1427 = !DILocation(line: 250, column: 6, scope: !1420)
!1428 = !DILocation(line: 251, column: 3, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 250, column: 20)
!1430 = !DILocation(line: 251, column: 8, scope: !1429)
!1431 = !DILocation(line: 251, column: 16, scope: !1429)
!1432 = !DILocation(line: 252, column: 20, scope: !1429)
!1433 = !DILocation(line: 252, column: 25, scope: !1429)
!1434 = !DILocation(line: 252, column: 3, scope: !1429)
!1435 = !DILocation(line: 254, column: 2, scope: !1429)
!1436 = !DILocation(line: 256, column: 25, scope: !1420)
!1437 = !DILocation(line: 256, column: 2, scope: !1420)
!1438 = !DILocation(line: 257, column: 1, scope: !1420)
!1439 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1440, file: !1440, line: 78, type: !1441, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1440 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !28}
!1443 = !{!1444, !1445, !1447}
!1444 = !DILocalVariable(name: "val", arg: 1, scope: !1439, file: !1440, line: 78, type: !28)
!1445 = !DILocalVariable(name: "pao_ID__", scope: !1446, file: !1440, line: 80, type: !993)
!1446 = distinct !DILexicalBlock(scope: !1439, file: !1440, line: 80, column: 2)
!1447 = !DILocalVariable(name: "pto_val__", scope: !1448, file: !1440, line: 80, type: !95)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !1440, line: 80, column: 2)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !1440, line: 80, column: 2)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !1440, line: 80, column: 2)
!1451 = !DILocation(line: 78, column: 53, scope: !1439)
!1452 = !DILocation(line: 80, column: 2, scope: !1439)
!1453 = !DILocation(line: 80, column: 2, scope: !1446)
!1454 = !DILocation(line: 80, column: 2, scope: !1450)
!1455 = !DILocation(line: 80, column: 2, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1450, file: !1440, line: 80, column: 2)
!1457 = !{i64 2149501417}
!1458 = !DILocation(line: 80, column: 2, scope: !1449)
!1459 = !DILocation(line: 80, column: 2, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1449, file: !1440, line: 80, column: 2)
!1461 = !{i64 2149501712}
!1462 = !DILocation(line: 80, column: 2, scope: !1448)
!1463 = !{i64 2149502417}
!1464 = !DILocation(line: 81, column: 1, scope: !1439)
!1465 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !1466, file: !1466, line: 313, type: !1467, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1469)
!1466 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !117}
!1469 = !{!1470}
!1470 = !DILocalVariable(name: "op", arg: 1, scope: !1465, file: !1466, line: 313, type: !117)
!1471 = !DILocation(line: 313, column: 66, scope: !1465)
!1472 = !DILocation(line: 313, column: 72, scope: !1465)
!1473 = distinct !DISubprogram(name: "__cpuidle_get_cpu_driver", scope: !3, file: !3, line: 98, type: !1474, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1476)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!113, !28}
!1476 = !{!1477}
!1477 = !DILocalVariable(name: "cpu", arg: 1, scope: !1473, file: !3, line: 98, type: !28)
!1478 = !DILocation(line: 98, column: 67, scope: !1473)
!1479 = !DILocation(line: 100, column: 9, scope: !1473)
!1480 = !DILocation(line: 100, column: 2, scope: !1473)
!1481 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !1440, file: !1440, line: 93, type: !610, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!1482 = !{!1483}
!1483 = !DILocalVariable(name: "c", scope: !1484, file: !1440, line: 95, type: !564)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !1440, line: 95, column: 9)
!1485 = !DILocation(line: 95, column: 9, scope: !1484)
!1486 = !{i64 2149505773, i64 2149505866}
!1487 = !DILocation(line: 95, column: 9, scope: !1481)
!1488 = !DILocation(line: 95, column: 2, scope: !1481)
!1489 = distinct !DISubprogram(name: "cpuidle_get_cpu_driver", scope: !3, file: !3, line: 347, type: !1490, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!113, !31}
!1492 = !{!1493}
!1493 = !DILocalVariable(name: "dev", arg: 1, scope: !1489, file: !3, line: 347, type: !31)
!1494 = !DILocation(line: 347, column: 70, scope: !1489)
!1495 = !DILocation(line: 349, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 349, column: 6)
!1497 = !DILocation(line: 349, column: 6, scope: !1489)
!1498 = !DILocation(line: 350, column: 3, scope: !1496)
!1499 = !DILocation(line: 352, column: 34, scope: !1489)
!1500 = !DILocation(line: 352, column: 39, scope: !1489)
!1501 = !DILocation(line: 352, column: 9, scope: !1489)
!1502 = !DILocation(line: 352, column: 2, scope: !1489)
!1503 = !DILocation(line: 353, column: 1, scope: !1489)
!1504 = distinct !DISubprogram(name: "cpuidle_driver_state_disabled", scope: !3, file: !3, line: 362, type: !1505, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !113, !28, !564}
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1516, !1519, !1521}
!1508 = !DILocalVariable(name: "drv", arg: 1, scope: !1504, file: !3, line: 362, type: !113)
!1509 = !DILocalVariable(name: "idx", arg: 2, scope: !1504, file: !3, line: 362, type: !28)
!1510 = !DILocalVariable(name: "disable", arg: 3, scope: !1504, file: !3, line: 363, type: !564)
!1511 = !DILocalVariable(name: "cpu", scope: !1504, file: !3, line: 365, type: !7)
!1512 = !DILocalVariable(name: "dev", scope: !1513, file: !3, line: 377, type: !31)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 376, column: 34)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 376, column: 2)
!1515 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 376, column: 2)
!1516 = !DILocalVariable(name: "__vpp_verify", scope: !1517, file: !3, line: 377, type: !485)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 377, column: 32)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 377, column: 32)
!1519 = !DILocalVariable(name: "__ptr", scope: !1520, file: !3, line: 377, type: !29)
!1520 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 377, column: 32)
!1521 = !DILabel(scope: !1504, name: "unlock", file: !3, line: 388)
!1522 = !DILocation(line: 362, column: 59, scope: !1504)
!1523 = !DILocation(line: 362, column: 68, scope: !1504)
!1524 = !DILocation(line: 363, column: 11, scope: !1504)
!1525 = !DILocation(line: 365, column: 2, scope: !1504)
!1526 = !DILocation(line: 365, column: 15, scope: !1504)
!1527 = !DILocation(line: 367, column: 2, scope: !1504)
!1528 = !DILocation(line: 369, column: 2, scope: !1504)
!1529 = !DILocation(line: 371, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 371, column: 6)
!1531 = !DILocation(line: 371, column: 12, scope: !1530)
!1532 = !DILocation(line: 371, column: 6, scope: !1504)
!1533 = !DILocation(line: 372, column: 3, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 371, column: 21)
!1535 = !DILocation(line: 372, column: 8, scope: !1534)
!1536 = !DILocation(line: 372, column: 15, scope: !1534)
!1537 = !DILocation(line: 372, column: 20, scope: !1534)
!1538 = !DILocation(line: 372, column: 26, scope: !1534)
!1539 = !DILocation(line: 373, column: 3, scope: !1534)
!1540 = !DILocation(line: 376, column: 2, scope: !1515)
!1541 = !DILocation(line: 376, column: 2, scope: !1514)
!1542 = !DILocation(line: 377, column: 3, scope: !1513)
!1543 = !DILocation(line: 377, column: 26, scope: !1513)
!1544 = !DILocation(line: 377, column: 32, scope: !1518)
!1545 = !DILocation(line: 377, column: 32, scope: !1517)
!1546 = !DILocation(line: 377, column: 32, scope: !1520)
!1547 = !DILocation(line: 377, column: 32, scope: !1513)
!1548 = !DILocation(line: 379, column: 8, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 379, column: 7)
!1550 = !DILocation(line: 379, column: 7, scope: !1513)
!1551 = !DILocation(line: 380, column: 4, scope: !1549)
!1552 = !DILocation(line: 382, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 382, column: 7)
!1554 = !DILocation(line: 382, column: 7, scope: !1513)
!1555 = !DILocation(line: 383, column: 4, scope: !1553)
!1556 = !DILocation(line: 383, column: 9, scope: !1553)
!1557 = !DILocation(line: 383, column: 22, scope: !1553)
!1558 = !DILocation(line: 383, column: 27, scope: !1553)
!1559 = !DILocation(line: 383, column: 35, scope: !1553)
!1560 = !DILocation(line: 385, column: 4, scope: !1553)
!1561 = !DILocation(line: 385, column: 9, scope: !1553)
!1562 = !DILocation(line: 385, column: 22, scope: !1553)
!1563 = !DILocation(line: 385, column: 27, scope: !1553)
!1564 = !DILocation(line: 385, column: 35, scope: !1553)
!1565 = !DILocation(line: 386, column: 2, scope: !1514)
!1566 = !DILocation(line: 386, column: 2, scope: !1513)
!1567 = distinct !{!1567, !1540, !1568, !1569, !1570}
!1568 = !DILocation(line: 386, column: 2, scope: !1515)
!1569 = !{!"llvm.loop.mustprogress"}
!1570 = !{!"llvm.loop.unroll.disable"}
!1571 = !DILocation(line: 388, column: 1, scope: !1504)
!1572 = !DILocation(line: 389, column: 2, scope: !1504)
!1573 = !DILocation(line: 391, column: 2, scope: !1504)
!1574 = !DILocation(line: 392, column: 1, scope: !1504)
!1575 = distinct !DISubprogram(name: "find_next_bit", scope: !1576, file: !1576, line: 54, type: !1577, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1581)
!1576 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!29, !1579, !29, !29}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!1581 = !{!1582, !1583, !1584, !1585}
!1582 = !DILocalVariable(name: "addr", arg: 1, scope: !1575, file: !1576, line: 54, type: !1579)
!1583 = !DILocalVariable(name: "size", arg: 2, scope: !1575, file: !1576, line: 54, type: !29)
!1584 = !DILocalVariable(name: "offset", arg: 3, scope: !1575, file: !1576, line: 55, type: !29)
!1585 = !DILocalVariable(name: "val", scope: !1586, file: !1576, line: 58, type: !29)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !1576, line: 57, column: 31)
!1587 = distinct !DILexicalBlock(scope: !1575, file: !1576, line: 57, column: 6)
!1588 = !DILocation(line: 54, column: 50, scope: !1575)
!1589 = !DILocation(line: 54, column: 70, scope: !1575)
!1590 = !DILocation(line: 55, column: 22, scope: !1575)
!1591 = !DILocation(line: 57, column: 6, scope: !1587)
!1592 = !DILocation(line: 57, column: 6, scope: !1575)
!1593 = !DILocation(line: 58, column: 3, scope: !1586)
!1594 = !DILocation(line: 58, column: 17, scope: !1586)
!1595 = !DILocation(line: 60, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1586, file: !1576, line: 60, column: 7)
!1597 = !DILocation(line: 60, column: 7, scope: !1586)
!1598 = !DILocation(line: 61, column: 11, scope: !1596)
!1599 = !DILocation(line: 61, column: 4, scope: !1596)
!1600 = !DILocation(line: 63, column: 10, scope: !1586)
!1601 = !DILocation(line: 63, column: 9, scope: !1586)
!1602 = !DILocation(line: 63, column: 17, scope: !1586)
!1603 = !DILocation(line: 63, column: 15, scope: !1586)
!1604 = !DILocation(line: 63, column: 7, scope: !1586)
!1605 = !DILocation(line: 64, column: 10, scope: !1586)
!1606 = !DILocation(line: 64, column: 16, scope: !1586)
!1607 = !DILocation(line: 64, column: 29, scope: !1586)
!1608 = !DILocation(line: 64, column: 3, scope: !1586)
!1609 = !DILocation(line: 65, column: 2, scope: !1587)
!1610 = !DILocation(line: 67, column: 24, scope: !1575)
!1611 = !DILocation(line: 67, column: 30, scope: !1575)
!1612 = !DILocation(line: 67, column: 36, scope: !1575)
!1613 = !DILocation(line: 67, column: 9, scope: !1575)
!1614 = !DILocation(line: 67, column: 2, scope: !1575)
!1615 = !DILocation(line: 68, column: 1, scope: !1575)
!1616 = !DISubprogram(name: "_raw_spin_lock", scope: !1617, file: !1617, line: 22, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1617 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1621 = distinct !DISubprogram(name: "cpuidle_coupled_state_verify", scope: !1378, file: !1378, line: 54, type: !1203, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1622)
!1622 = !{!1623}
!1623 = !DILocalVariable(name: "drv", arg: 1, scope: !1621, file: !1378, line: 54, type: !113)
!1624 = !DILocation(line: 54, column: 71, scope: !1621)
!1625 = !DILocation(line: 56, column: 2, scope: !1621)
!1626 = !DISubprogram(name: "cpuidle_disabled", scope: !1378, file: !1378, line: 17, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1627 = distinct !DISubprogram(name: "__cpuidle_driver_init", scope: !3, file: !3, line: 155, type: !1386, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DILocalVariable(name: "drv", arg: 1, scope: !1627, file: !3, line: 155, type: !113)
!1630 = !DILocalVariable(name: "i", scope: !1627, file: !3, line: 157, type: !28)
!1631 = !DILocalVariable(name: "s", scope: !1632, file: !3, line: 168, type: !1635)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 167, column: 41)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 167, column: 2)
!1634 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 167, column: 2)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1636 = !DILocation(line: 155, column: 58, scope: !1627)
!1637 = !DILocation(line: 157, column: 2, scope: !1627)
!1638 = !DILocation(line: 157, column: 6, scope: !1627)
!1639 = !DILocation(line: 164, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 164, column: 6)
!1641 = !DILocation(line: 164, column: 12, scope: !1640)
!1642 = !DILocation(line: 164, column: 6, scope: !1627)
!1643 = !DILocation(line: 165, column: 3, scope: !1640)
!1644 = !DILocation(line: 165, column: 8, scope: !1640)
!1645 = !DILocation(line: 165, column: 16, scope: !1640)
!1646 = !DILocation(line: 167, column: 9, scope: !1634)
!1647 = !DILocation(line: 167, column: 7, scope: !1634)
!1648 = !DILocation(line: 167, column: 14, scope: !1633)
!1649 = !DILocation(line: 167, column: 18, scope: !1633)
!1650 = !DILocation(line: 167, column: 23, scope: !1633)
!1651 = !DILocation(line: 167, column: 16, scope: !1633)
!1652 = !DILocation(line: 167, column: 2, scope: !1634)
!1653 = !DILocation(line: 168, column: 3, scope: !1632)
!1654 = !DILocation(line: 168, column: 25, scope: !1632)
!1655 = !DILocation(line: 168, column: 30, scope: !1632)
!1656 = !DILocation(line: 168, column: 35, scope: !1632)
!1657 = !DILocation(line: 168, column: 42, scope: !1632)
!1658 = !DILocation(line: 175, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 175, column: 7)
!1660 = !DILocation(line: 175, column: 10, scope: !1659)
!1661 = !DILocation(line: 175, column: 16, scope: !1659)
!1662 = !DILocation(line: 175, column: 7, scope: !1632)
!1663 = !DILocation(line: 176, column: 4, scope: !1659)
!1664 = !DILocation(line: 176, column: 9, scope: !1659)
!1665 = !DILocation(line: 176, column: 17, scope: !1659)
!1666 = !DILocation(line: 183, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 183, column: 7)
!1668 = !DILocation(line: 183, column: 10, scope: !1667)
!1669 = !DILocation(line: 183, column: 27, scope: !1667)
!1670 = !DILocation(line: 183, column: 7, scope: !1632)
!1671 = !DILocation(line: 184, column: 29, scope: !1667)
!1672 = !DILocation(line: 184, column: 32, scope: !1667)
!1673 = !DILocation(line: 184, column: 49, scope: !1667)
!1674 = !DILocation(line: 184, column: 4, scope: !1667)
!1675 = !DILocation(line: 184, column: 7, scope: !1667)
!1676 = !DILocation(line: 184, column: 27, scope: !1667)
!1677 = !DILocation(line: 185, column: 12, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 185, column: 12)
!1679 = !DILocation(line: 185, column: 15, scope: !1678)
!1680 = !DILocation(line: 185, column: 35, scope: !1678)
!1681 = !DILocation(line: 185, column: 12, scope: !1667)
!1682 = !DILocation(line: 186, column: 4, scope: !1678)
!1683 = !DILocation(line: 186, column: 7, scope: !1678)
!1684 = !DILocation(line: 186, column: 27, scope: !1678)
!1685 = !DILocation(line: 188, column: 34, scope: !1678)
!1686 = !DILocation(line: 188, column: 37, scope: !1678)
!1687 = !DILocation(line: 188, column: 26, scope: !1678)
!1688 = !DILocation(line: 188, column: 4, scope: !1678)
!1689 = !DILocation(line: 188, column: 7, scope: !1678)
!1690 = !DILocation(line: 188, column: 24, scope: !1678)
!1691 = !DILocation(line: 190, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 190, column: 7)
!1693 = !DILocation(line: 190, column: 10, scope: !1692)
!1694 = !DILocation(line: 190, column: 23, scope: !1692)
!1695 = !DILocation(line: 190, column: 7, scope: !1632)
!1696 = !DILocation(line: 191, column: 37, scope: !1692)
!1697 = !DILocation(line: 191, column: 40, scope: !1692)
!1698 = !DILocation(line: 191, column: 25, scope: !1692)
!1699 = !DILocation(line: 191, column: 4, scope: !1692)
!1700 = !DILocation(line: 191, column: 7, scope: !1692)
!1701 = !DILocation(line: 191, column: 23, scope: !1692)
!1702 = !DILocation(line: 192, column: 12, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 192, column: 12)
!1704 = !DILocation(line: 192, column: 15, scope: !1703)
!1705 = !DILocation(line: 192, column: 31, scope: !1703)
!1706 = !DILocation(line: 192, column: 12, scope: !1692)
!1707 = !DILocation(line: 193, column: 4, scope: !1703)
!1708 = !DILocation(line: 193, column: 7, scope: !1703)
!1709 = !DILocation(line: 193, column: 23, scope: !1703)
!1710 = !DILocation(line: 195, column: 30, scope: !1703)
!1711 = !DILocation(line: 195, column: 33, scope: !1703)
!1712 = !DILocation(line: 195, column: 22, scope: !1703)
!1713 = !DILocation(line: 195, column: 4, scope: !1703)
!1714 = !DILocation(line: 195, column: 7, scope: !1703)
!1715 = !DILocation(line: 195, column: 20, scope: !1703)
!1716 = !DILocation(line: 196, column: 2, scope: !1633)
!1717 = !DILocation(line: 196, column: 2, scope: !1632)
!1718 = !DILocation(line: 167, column: 37, scope: !1633)
!1719 = !DILocation(line: 167, column: 2, scope: !1633)
!1720 = distinct !{!1720, !1652, !1721, !1569, !1570}
!1721 = !DILocation(line: 196, column: 2, scope: !1634)
!1722 = !DILocation(line: 197, column: 1, scope: !1627)
!1723 = distinct !DISubprogram(name: "__cpuidle_set_driver", scope: !3, file: !3, line: 109, type: !1203, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1724)
!1724 = !{!1725}
!1725 = !DILocalVariable(name: "drv", arg: 1, scope: !1723, file: !3, line: 109, type: !113)
!1726 = !DILocation(line: 109, column: 63, scope: !1723)
!1727 = !DILocation(line: 111, column: 6, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 111, column: 6)
!1729 = !DILocation(line: 111, column: 6, scope: !1723)
!1730 = !DILocation(line: 112, column: 3, scope: !1728)
!1731 = !DILocation(line: 114, column: 24, scope: !1723)
!1732 = !DILocation(line: 114, column: 22, scope: !1723)
!1733 = !DILocation(line: 116, column: 2, scope: !1723)
!1734 = !DILocation(line: 117, column: 1, scope: !1723)
!1735 = distinct !DISubprogram(name: "on_each_cpu_mask", scope: !1736, file: !1736, line: 90, type: !1737, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1736 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !93, !1739, !26, !564}
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !1736, line: 17, baseType: !627)
!1740 = !{!1741, !1742, !1743, !1744}
!1741 = !DILocalVariable(name: "mask", arg: 1, scope: !1735, file: !1736, line: 90, type: !93)
!1742 = !DILocalVariable(name: "func", arg: 2, scope: !1735, file: !1736, line: 91, type: !1739)
!1743 = !DILocalVariable(name: "info", arg: 3, scope: !1735, file: !1736, line: 91, type: !26)
!1744 = !DILocalVariable(name: "wait", arg: 4, scope: !1735, file: !1736, line: 91, type: !564)
!1745 = !DILocation(line: 90, column: 59, scope: !1735)
!1746 = !DILocation(line: 91, column: 25, scope: !1735)
!1747 = !DILocation(line: 91, column: 37, scope: !1735)
!1748 = !DILocation(line: 91, column: 48, scope: !1735)
!1749 = !DILocation(line: 93, column: 30, scope: !1735)
!1750 = !DILocation(line: 93, column: 36, scope: !1735)
!1751 = !DILocation(line: 93, column: 42, scope: !1735)
!1752 = !DILocation(line: 93, column: 48, scope: !1735)
!1753 = !DILocation(line: 93, column: 2, scope: !1735)
!1754 = !DILocation(line: 94, column: 1, scope: !1735)
!1755 = distinct !DISubprogram(name: "cpuidle_setup_broadcast_timer", scope: !3, file: !3, line: 143, type: !628, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1756)
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "arg", arg: 1, scope: !1755, file: !3, line: 143, type: !26)
!1758 = !DILocation(line: 143, column: 49, scope: !1755)
!1759 = !DILocation(line: 145, column: 6, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 145, column: 6)
!1761 = !DILocation(line: 145, column: 6, scope: !1755)
!1762 = !DILocation(line: 146, column: 3, scope: !1760)
!1763 = !DILocation(line: 148, column: 3, scope: !1760)
!1764 = !DILocation(line: 149, column: 1, scope: !1755)
!1765 = distinct !DISubprogram(name: "div_u64", scope: !1766, file: !1766, line: 127, type: !1767, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1769)
!1766 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!49, !49, !95}
!1769 = !{!1770, !1771, !1772}
!1770 = !DILocalVariable(name: "dividend", arg: 1, scope: !1765, file: !1766, line: 127, type: !49)
!1771 = !DILocalVariable(name: "divisor", arg: 2, scope: !1765, file: !1766, line: 127, type: !95)
!1772 = !DILocalVariable(name: "remainder", scope: !1765, file: !1766, line: 129, type: !95)
!1773 = !DILocation(line: 127, column: 31, scope: !1765)
!1774 = !DILocation(line: 127, column: 45, scope: !1765)
!1775 = !DILocation(line: 129, column: 2, scope: !1765)
!1776 = !DILocation(line: 129, column: 6, scope: !1765)
!1777 = !DILocation(line: 130, column: 21, scope: !1765)
!1778 = !DILocation(line: 130, column: 31, scope: !1765)
!1779 = !DILocation(line: 130, column: 9, scope: !1765)
!1780 = !DILocation(line: 131, column: 1, scope: !1765)
!1781 = !DILocation(line: 130, column: 2, scope: !1765)
!1782 = distinct !DISubprogram(name: "mul_u32_u32", scope: !1766, file: !1766, line: 155, type: !1783, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1785)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!49, !95, !95}
!1785 = !{!1786, !1787}
!1786 = !DILocalVariable(name: "a", arg: 1, scope: !1782, file: !1766, line: 155, type: !95)
!1787 = !DILocalVariable(name: "b", arg: 2, scope: !1782, file: !1766, line: 155, type: !95)
!1788 = !DILocation(line: 155, column: 35, scope: !1782)
!1789 = !DILocation(line: 155, column: 42, scope: !1782)
!1790 = !DILocation(line: 157, column: 14, scope: !1782)
!1791 = !DILocation(line: 157, column: 9, scope: !1782)
!1792 = !DILocation(line: 157, column: 18, scope: !1782)
!1793 = !DILocation(line: 157, column: 16, scope: !1782)
!1794 = !DILocation(line: 157, column: 2, scope: !1782)
!1795 = distinct !DISubprogram(name: "div_u64_rem", scope: !1766, file: !1766, line: 26, type: !1796, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1799)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!49, !49, !95, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1799 = !{!1800, !1801, !1802}
!1800 = !DILocalVariable(name: "dividend", arg: 1, scope: !1795, file: !1766, line: 26, type: !49)
!1801 = !DILocalVariable(name: "divisor", arg: 2, scope: !1795, file: !1766, line: 26, type: !95)
!1802 = !DILocalVariable(name: "remainder", arg: 3, scope: !1795, file: !1766, line: 26, type: !1798)
!1803 = !DILocation(line: 26, column: 35, scope: !1795)
!1804 = !DILocation(line: 26, column: 49, scope: !1795)
!1805 = !DILocation(line: 26, column: 63, scope: !1795)
!1806 = !DILocation(line: 28, column: 15, scope: !1795)
!1807 = !DILocation(line: 28, column: 26, scope: !1795)
!1808 = !DILocation(line: 28, column: 24, scope: !1795)
!1809 = !DILocation(line: 28, column: 3, scope: !1795)
!1810 = !DILocation(line: 28, column: 13, scope: !1795)
!1811 = !DILocation(line: 29, column: 9, scope: !1795)
!1812 = !DILocation(line: 29, column: 20, scope: !1795)
!1813 = !DILocation(line: 29, column: 18, scope: !1795)
!1814 = !DILocation(line: 29, column: 2, scope: !1795)
!1815 = !DISubprogram(name: "on_each_cpu_cond_mask", scope: !1736, file: !1736, line: 53, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !1818, !1739, !26, !564, !93}
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_cond_func_t", file: !1736, line: 18, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!564, !28, !26}
!1822 = distinct !DISubprogram(name: "tick_broadcast_enable", scope: !20, file: !20, line: 87, type: !1140, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1823 = !DILocation(line: 89, column: 2, scope: !1822)
!1824 = !DILocation(line: 90, column: 1, scope: !1822)
!1825 = distinct !DISubprogram(name: "tick_broadcast_disable", scope: !20, file: !20, line: 91, type: !1140, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1826 = !DILocation(line: 93, column: 2, scope: !1825)
!1827 = !DILocation(line: 94, column: 1, scope: !1825)
!1828 = !DISubprogram(name: "tick_broadcast_control", scope: !20, file: !20, line: 67, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !19}
!1831 = !DISubprogram(name: "_raw_spin_unlock", scope: !1617, file: !1617, line: 39, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1832 = distinct !DISubprogram(name: "__cpuidle_unset_driver", scope: !3, file: !3, line: 126, type: !1386, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1833)
!1833 = !{!1834}
!1834 = !DILocalVariable(name: "drv", arg: 1, scope: !1832, file: !3, line: 126, type: !113)
!1835 = !DILocation(line: 126, column: 66, scope: !1832)
!1836 = !DILocation(line: 128, column: 6, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 128, column: 6)
!1838 = !DILocation(line: 128, column: 13, scope: !1837)
!1839 = !DILocation(line: 128, column: 10, scope: !1837)
!1840 = !DILocation(line: 128, column: 6, scope: !1832)
!1841 = !DILocation(line: 129, column: 23, scope: !1837)
!1842 = !DILocation(line: 129, column: 3, scope: !1837)
!1843 = !DILocation(line: 130, column: 1, scope: !1832)
!1844 = distinct !DISubprogram(name: "variable__ffs", scope: !1845, file: !1845, line: 250, type: !1846, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1848)
!1845 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!29, !29}
!1848 = !{!1849}
!1849 = !DILocalVariable(name: "word", arg: 1, scope: !1844, file: !1845, line: 250, type: !29)
!1850 = !DILocation(line: 250, column: 66, scope: !1844)
!1851 = !DILocation(line: 254, column: 11, scope: !1844)
!1852 = !DILocation(line: 252, column: 2, scope: !1844)
!1853 = !{i64 332663}
!1854 = !DILocation(line: 255, column: 9, scope: !1844)
!1855 = !DILocation(line: 255, column: 2, scope: !1844)
!1856 = !DISubprogram(name: "_find_next_bit", scope: !1576, file: !1576, line: 11, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
