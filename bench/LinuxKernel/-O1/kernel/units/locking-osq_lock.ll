; ModuleID = 'kernel/locking/osq_lock.c'
source_filename = "kernel/locking/osq_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimistic_spin_node = type { ptr, ptr, i32, i32 }
%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i64, i64, i32, i32 }

@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@osq_node = internal global %struct.optimistic_spin_node zeroinitializer, section ".data..percpu..shared_aligned", align 64, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !1221
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local global [64 x i64], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @osq_lock(ptr noundef %lock) #0 align 16 !dbg !1235 {
entry:
  %retval = alloca i1, align 1
  %lock.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %next = alloca ptr, align 8
  %curr = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__PTR = alloca ptr, align 8
  %VAL = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %__v = alloca ptr, align 8
  %tmp50 = alloca ptr, align 8
  %tmp52 = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp59 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp60 = alloca ptr, align 8
  %___p1 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  %tmp80 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1240, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1241, metadata !DIExpression()), !dbg !1283
  br label %do.body, !dbg !1284

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1242, metadata !DIExpression()), !dbg !1285
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1285
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1284
  br label %do.cond, !dbg !1285

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1285

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1247, metadata !DIExpression()), !dbg !1286
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @osq_node) #9, !dbg !1286, !srcloc !1287
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !1286
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !1286
  %3 = inttoptr i64 %2 to ptr, !dbg !1286
  store ptr %3, ptr %tmp1, align 8, !dbg !1286
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !1284
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1286
  store ptr %4, ptr %tmp, align 8, !dbg !1285
  %5 = load ptr, ptr %tmp, align 8, !dbg !1284
  store ptr %5, ptr %node, align 8, !dbg !1283
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #8, !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !1249, metadata !DIExpression()), !dbg !1289
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1250, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr) #8, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !1251, metadata !DIExpression()), !dbg !1292
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !1293
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #8, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1252, metadata !DIExpression()), !dbg !1294
  br label %do.body3, !dbg !1294

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #8, !dbg !1295
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !1255, metadata !DIExpression()), !dbg !1295
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !1295
  %6 = load ptr, ptr %__vpp_verify4, align 8, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #8, !dbg !1294
  br label %do.cond5, !dbg !1295

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !1295

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #8, !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1257, metadata !DIExpression()), !dbg !1296
  %7 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #9, !dbg !1296, !srcloc !1297
  store i32 %7, ptr %pfo_val__, align 4, !dbg !1296
  %8 = load i32, ptr %pfo_val__, align 4, !dbg !1296
  %conv = zext i32 %8 to i64, !dbg !1296
  %conv8 = trunc i64 %conv to i32, !dbg !1296
  store i32 %conv8, ptr %tmp7, align 4, !dbg !1296
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #8, !dbg !1294
  %9 = load i32, ptr %tmp7, align 4, !dbg !1296
  store i32 %9, ptr %pscr_ret__, align 4, !dbg !1294
  %10 = load i32, ptr %pscr_ret__, align 4, !dbg !1294
  store i32 %10, ptr %tmp9, align 4, !dbg !1294
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #8, !dbg !1293
  %11 = load i32, ptr %tmp9, align 4, !dbg !1294
  store i32 %11, ptr %tmp2, align 4, !dbg !1293
  %12 = load i32, ptr %tmp2, align 4, !dbg !1293
  %call = call i32 @encode_cpu(i32 noundef %12) #10, !dbg !1298
  store i32 %call, ptr %curr, align 4, !dbg !1292
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #8, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1259, metadata !DIExpression()), !dbg !1300
  %13 = load ptr, ptr %node, align 8, !dbg !1301
  %locked = getelementptr inbounds %struct.optimistic_spin_node, ptr %13, i32 0, i32 2, !dbg !1302
  store i32 0, ptr %locked, align 8, !dbg !1303
  %14 = load ptr, ptr %node, align 8, !dbg !1304
  %next10 = getelementptr inbounds %struct.optimistic_spin_node, ptr %14, i32 0, i32 0, !dbg !1305
  store ptr null, ptr %next10, align 8, !dbg !1306
  %15 = load i32, ptr %curr, align 4, !dbg !1307
  %16 = load ptr, ptr %node, align 8, !dbg !1308
  %cpu = getelementptr inbounds %struct.optimistic_spin_node, ptr %16, i32 0, i32 3, !dbg !1309
  store i32 %15, ptr %cpu, align 4, !dbg !1310
  %17 = load ptr, ptr %lock.addr, align 8, !dbg !1311
  %tail = getelementptr inbounds %struct.optimistic_spin_queue, ptr %17, i32 0, i32 0, !dbg !1312
  %18 = load i32, ptr %curr, align 4, !dbg !1313
  %call11 = call i32 @atomic_xchg(ptr noundef %tail, i32 noundef %18) #10, !dbg !1314
  store i32 %call11, ptr %old, align 4, !dbg !1315
  %19 = load i32, ptr %old, align 4, !dbg !1316
  %cmp = icmp eq i32 %19, 0, !dbg !1318
  br i1 %cmp, label %if.then, label %if.end, !dbg !1319

if.then:                                          ; preds = %do.end6
  store i1 true, ptr %retval, align 1, !dbg !1320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1320

if.end:                                           ; preds = %do.end6
  %20 = load i32, ptr %old, align 4, !dbg !1321
  %call13 = call ptr @decode_cpu(i32 noundef %20) #10, !dbg !1322
  store ptr %call13, ptr %prev, align 8, !dbg !1323
  %21 = load ptr, ptr %prev, align 8, !dbg !1324
  %22 = load ptr, ptr %node, align 8, !dbg !1325
  %prev14 = getelementptr inbounds %struct.optimistic_spin_node, ptr %22, i32 0, i32 1, !dbg !1326
  store ptr %21, ptr %prev14, align 8, !dbg !1327
  br label %do.body15, !dbg !1328

do.body15:                                        ; preds = %if.end
  br label %do.body16, !dbg !1329

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !1331

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1331

do.end18:                                         ; preds = %do.cond17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1329, !srcloc !1333
  br label %do.cond19, !dbg !1329

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !1329

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !1334

do.body21:                                        ; preds = %do.end20
  br label %do.body22, !dbg !1335

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !1337

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1337

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !1335

do.body25:                                        ; preds = %do.end24
  %23 = load ptr, ptr %node, align 8, !dbg !1339
  %24 = load ptr, ptr %prev, align 8, !dbg !1339
  %next26 = getelementptr inbounds %struct.optimistic_spin_node, ptr %24, i32 0, i32 0, !dbg !1339
  store volatile ptr %23, ptr %next26, align 8, !dbg !1339
  br label %do.cond27, !dbg !1339

do.cond27:                                        ; preds = %do.body25
  br label %do.end28, !dbg !1339

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !1335

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !1335

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR) #8, !dbg !1341
  call void @llvm.dbg.declare(metadata ptr %__PTR, metadata !1260, metadata !DIExpression()), !dbg !1341
  %25 = load ptr, ptr %node, align 8, !dbg !1341
  %locked31 = getelementptr inbounds %struct.optimistic_spin_node, ptr %25, i32 0, i32 2, !dbg !1341
  store ptr %locked31, ptr %__PTR, align 8, !dbg !1341
  call void @llvm.lifetime.start.p0(i64 4, ptr %VAL) #8, !dbg !1341
  call void @llvm.dbg.declare(metadata ptr %VAL, metadata !1263, metadata !DIExpression()), !dbg !1341
  br label %for.cond, !dbg !1341

for.cond:                                         ; preds = %if.end44, %do.end30
  br label %do.body32, !dbg !1342

do.body32:                                        ; preds = %for.cond
  br label %do.cond33, !dbg !1347

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1347

do.end34:                                         ; preds = %do.cond33
  %26 = load ptr, ptr %__PTR, align 8, !dbg !1342
  %27 = load volatile i32, ptr %26, align 4, !dbg !1342
  store i32 %27, ptr %tmp35, align 4, !dbg !1347
  %28 = load i32, ptr %tmp35, align 4, !dbg !1342
  store i32 %28, ptr %VAL, align 4, !dbg !1349
  %29 = load i32, ptr %VAL, align 4, !dbg !1350
  %tobool = icmp ne i32 %29, 0, !dbg !1350
  br i1 %tobool, label %if.then43, label %lor.lhs.false, !dbg !1350

lor.lhs.false:                                    ; preds = %do.end34
  %call36 = call zeroext i1 @need_resched() #10, !dbg !1350
  br i1 %call36, label %if.then43, label %lor.lhs.false38, !dbg !1350

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %30 = load ptr, ptr %node, align 8, !dbg !1350
  %prev39 = getelementptr inbounds %struct.optimistic_spin_node, ptr %30, i32 0, i32 1, !dbg !1350
  %31 = load ptr, ptr %prev39, align 8, !dbg !1350
  %call40 = call i32 @node_cpu(ptr noundef %31) #10, !dbg !1350
  %call41 = call zeroext i1 @vcpu_is_preempted(i32 noundef %call40) #10, !dbg !1350
  br i1 %call41, label %if.then43, label %if.end44, !dbg !1349

if.then43:                                        ; preds = %lor.lhs.false38, %lor.lhs.false, %do.end34
  br label %for.end, !dbg !1350

if.end44:                                         ; preds = %lor.lhs.false38
  call void @cpu_relax() #10, !dbg !1349
  br label %for.cond, !dbg !1352, !llvm.loop !1353

for.end:                                          ; preds = %if.then43
  %32 = load i32, ptr %VAL, align 4, !dbg !1341
  store i32 %32, ptr %tmp45, align 4, !dbg !1354
  call void @llvm.lifetime.end.p0(i64 4, ptr %VAL) #8, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR) #8, !dbg !1356
  %33 = load i32, ptr %tmp45, align 4, !dbg !1341
  %tobool46 = icmp ne i32 %33, 0, !dbg !1356
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !1357

if.then47:                                        ; preds = %for.end
  store i1 true, ptr %retval, align 1, !dbg !1358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1358

if.end48:                                         ; preds = %for.end
  br label %for.cond49, !dbg !1359

for.cond49:                                       ; preds = %do.end79, %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %__v) #8, !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %__v, metadata !1264, metadata !DIExpression()), !dbg !1360
  call void @__kcsan_disable_current() #10, !dbg !1361
  %34 = load ptr, ptr %prev, align 8, !dbg !1361
  %next51 = getelementptr inbounds %struct.optimistic_spin_node, ptr %34, i32 0, i32 0, !dbg !1361
  %35 = load ptr, ptr %next51, align 8, !dbg !1361
  store ptr %35, ptr %tmp50, align 8, !dbg !1361
  %36 = load ptr, ptr %tmp50, align 8, !dbg !1361
  store ptr %36, ptr %__v, align 8, !dbg !1360
  call void @__kcsan_enable_current() #10, !dbg !1360
  %37 = load ptr, ptr %__v, align 8, !dbg !1360
  store ptr %37, ptr %tmp52, align 8, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %__v) #8, !dbg !1363
  %38 = load ptr, ptr %tmp52, align 8, !dbg !1360
  %39 = load ptr, ptr %node, align 8, !dbg !1364
  %cmp53 = icmp eq ptr %38, %39, !dbg !1365
  br i1 %cmp53, label %land.lhs.true, label %if.end64, !dbg !1366

land.lhs.true:                                    ; preds = %for.cond49
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #8, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !1270, metadata !DIExpression()), !dbg !1367
  %40 = load ptr, ptr %prev, align 8, !dbg !1367
  %next55 = getelementptr inbounds %struct.optimistic_spin_node, ptr %40, i32 0, i32 0, !dbg !1367
  store ptr %next55, ptr %__ai_ptr, align 8, !dbg !1367
  br label %do.body56, !dbg !1367

do.body56:                                        ; preds = %land.lhs.true
  br label %do.cond57, !dbg !1368

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !1368

do.end58:                                         ; preds = %do.cond57
  %41 = load ptr, ptr %__ai_ptr, align 8, !dbg !1367
  call void @instrument_atomic_read_write(ptr noundef %41, i64 noundef 8) #10, !dbg !1367
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #8, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1273, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #8, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !1275, metadata !DIExpression()), !dbg !1370
  %42 = load ptr, ptr %node, align 8, !dbg !1370
  store ptr %42, ptr %__old, align 8, !dbg !1370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #8, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !1276, metadata !DIExpression()), !dbg !1370
  store ptr null, ptr %__new, align 8, !dbg !1370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1277, metadata !DIExpression()), !dbg !1370
  %43 = load ptr, ptr %__ai_ptr, align 8, !dbg !1370
  store ptr %43, ptr %__ptr, align 8, !dbg !1370
  %44 = load ptr, ptr %__ptr, align 8, !dbg !1370
  %45 = load ptr, ptr %__new, align 8, !dbg !1370
  %46 = load ptr, ptr %__old, align 8, !dbg !1370
  %47 = call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %44, ptr %45, ptr %46, ptr elementtype(i64) %44) #8, !dbg !1370, !srcloc !1371
  store ptr %47, ptr %__ret, align 8, !dbg !1370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !1370
  %48 = load ptr, ptr %__ret, align 8, !dbg !1370
  store ptr %48, ptr %tmp60, align 8, !dbg !1370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #8, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #8, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #8, !dbg !1367
  %49 = load ptr, ptr %tmp60, align 8, !dbg !1370
  store ptr %49, ptr %tmp59, align 8, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #8, !dbg !1372
  %50 = load ptr, ptr %tmp59, align 8, !dbg !1367
  %51 = load ptr, ptr %node, align 8, !dbg !1373
  %cmp61 = icmp eq ptr %50, %51, !dbg !1374
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !1375

if.then63:                                        ; preds = %do.end58
  br label %for.end82, !dbg !1376

if.end64:                                         ; preds = %do.end58, %for.cond49
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p1) #8, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !1278, metadata !DIExpression()), !dbg !1377
  br label %do.body65, !dbg !1378

do.body65:                                        ; preds = %if.end64
  br label %do.cond66, !dbg !1380

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !1380

do.end67:                                         ; preds = %do.cond66
  %52 = load ptr, ptr %node, align 8, !dbg !1378
  %locked69 = getelementptr inbounds %struct.optimistic_spin_node, ptr %52, i32 0, i32 2, !dbg !1378
  %53 = load volatile i32, ptr %locked69, align 8, !dbg !1378
  store i32 %53, ptr %tmp68, align 4, !dbg !1380
  %54 = load i32, ptr %tmp68, align 4, !dbg !1378
  store i32 %54, ptr %___p1, align 4, !dbg !1377
  br label %do.body70, !dbg !1377

do.body70:                                        ; preds = %do.end67
  br label %do.cond71, !dbg !1382

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !1382

do.end72:                                         ; preds = %do.cond71
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1377, !srcloc !1384
  %55 = load i32, ptr %___p1, align 4, !dbg !1377
  store i32 %55, ptr %tmp73, align 4, !dbg !1377
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p1) #8, !dbg !1385
  %56 = load i32, ptr %tmp73, align 4, !dbg !1377
  %tobool74 = icmp ne i32 %56, 0, !dbg !1385
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !1386

if.then75:                                        ; preds = %do.end72
  store i1 true, ptr %retval, align 1, !dbg !1387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1387

if.end76:                                         ; preds = %do.end72
  call void @cpu_relax() #10, !dbg !1388
  br label %do.body77, !dbg !1389

do.body77:                                        ; preds = %if.end76
  br label %do.cond78, !dbg !1391

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !1391

do.end79:                                         ; preds = %do.cond78
  %57 = load ptr, ptr %node, align 8, !dbg !1389
  %prev81 = getelementptr inbounds %struct.optimistic_spin_node, ptr %57, i32 0, i32 1, !dbg !1389
  %58 = load volatile ptr, ptr %prev81, align 8, !dbg !1389
  store ptr %58, ptr %tmp80, align 8, !dbg !1391
  %59 = load ptr, ptr %tmp80, align 8, !dbg !1389
  store ptr %59, ptr %prev, align 8, !dbg !1393
  br label %for.cond49, !dbg !1394, !llvm.loop !1395

for.end82:                                        ; preds = %if.then63
  %60 = load ptr, ptr %lock.addr, align 8, !dbg !1398
  %61 = load ptr, ptr %node, align 8, !dbg !1399
  %62 = load ptr, ptr %prev, align 8, !dbg !1400
  %call83 = call ptr @osq_wait_next(ptr noundef %60, ptr noundef %61, ptr noundef %62) #10, !dbg !1401
  store ptr %call83, ptr %next, align 8, !dbg !1402
  %63 = load ptr, ptr %next, align 8, !dbg !1403
  %tobool84 = icmp ne ptr %63, null, !dbg !1403
  br i1 %tobool84, label %if.end86, label %if.then85, !dbg !1405

if.then85:                                        ; preds = %for.end82
  store i1 false, ptr %retval, align 1, !dbg !1406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1406

if.end86:                                         ; preds = %for.end82
  br label %do.body87, !dbg !1407

do.body87:                                        ; preds = %if.end86
  br label %do.body88, !dbg !1408

do.body88:                                        ; preds = %do.body87
  br label %do.cond89, !dbg !1410

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !1410

do.end90:                                         ; preds = %do.cond89
  br label %do.body91, !dbg !1408

do.body91:                                        ; preds = %do.end90
  %64 = load ptr, ptr %prev, align 8, !dbg !1412
  %65 = load ptr, ptr %next, align 8, !dbg !1412
  %prev92 = getelementptr inbounds %struct.optimistic_spin_node, ptr %65, i32 0, i32 1, !dbg !1412
  store volatile ptr %64, ptr %prev92, align 8, !dbg !1412
  br label %do.cond93, !dbg !1412

do.cond93:                                        ; preds = %do.body91
  br label %do.end94, !dbg !1412

do.end94:                                         ; preds = %do.cond93
  br label %do.cond95, !dbg !1408

do.cond95:                                        ; preds = %do.end94
  br label %do.end96, !dbg !1408

do.end96:                                         ; preds = %do.cond95
  br label %do.body97, !dbg !1414

do.body97:                                        ; preds = %do.end96
  br label %do.body98, !dbg !1415

do.body98:                                        ; preds = %do.body97
  br label %do.cond99, !dbg !1417

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !1417

do.end100:                                        ; preds = %do.cond99
  br label %do.body101, !dbg !1415

do.body101:                                       ; preds = %do.end100
  %66 = load ptr, ptr %next, align 8, !dbg !1419
  %67 = load ptr, ptr %prev, align 8, !dbg !1419
  %next102 = getelementptr inbounds %struct.optimistic_spin_node, ptr %67, i32 0, i32 0, !dbg !1419
  store volatile ptr %66, ptr %next102, align 8, !dbg !1419
  br label %do.cond103, !dbg !1419

do.cond103:                                       ; preds = %do.body101
  br label %do.end104, !dbg !1419

do.end104:                                        ; preds = %do.cond103
  br label %do.cond105, !dbg !1415

do.cond105:                                       ; preds = %do.end104
  br label %do.end106, !dbg !1415

do.end106:                                        ; preds = %do.cond105
  store i1 false, ptr %retval, align 1, !dbg !1421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1421

cleanup:                                          ; preds = %do.end106, %if.then85, %if.then75, %if.then47, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #8, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr) #8, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #8, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8, !dbg !1422
  %68 = load i1, ptr %retval, align 1, !dbg !1422
  ret i1 %68, !dbg !1422
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @encode_cpu(i32 noundef %cpu_nr) #3 align 16 !dbg !1423 {
entry:
  %cpu_nr.addr = alloca i32, align 4
  store i32 %cpu_nr, ptr %cpu_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu_nr.addr, metadata !1427, metadata !DIExpression()), !dbg !1428
  %0 = load i32, ptr %cpu_nr.addr, align 4, !dbg !1429
  %add = add i32 %0, 1, !dbg !1430
  ret i32 %add, !dbg !1431
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !1432 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1439, metadata !DIExpression()), !dbg !1440
  ret void, !dbg !1441
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_xchg(ptr noundef %v, i32 noundef %new) #4 align 16 !dbg !1442 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1448, metadata !DIExpression()), !dbg !1450
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1449, metadata !DIExpression()), !dbg !1451
  br label %do.body, !dbg !1452

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1453

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1455
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !1456
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1457
  %2 = load i32, ptr %new.addr, align 4, !dbg !1458
  %call = call i32 @raw_atomic_xchg(ptr noundef %1, i32 noundef %2) #10, !dbg !1459
  ret i32 %call, !dbg !1460
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @decode_cpu(i32 noundef %encoded_cpu_val) #3 align 16 !dbg !1461 {
entry:
  %encoded_cpu_val.addr = alloca i32, align 4
  %cpu_nr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %encoded_cpu_val, ptr %encoded_cpu_val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %encoded_cpu_val.addr, metadata !1465, metadata !DIExpression()), !dbg !1472
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu_nr) #8, !dbg !1473
  call void @llvm.dbg.declare(metadata ptr %cpu_nr, metadata !1466, metadata !DIExpression()), !dbg !1474
  %0 = load i32, ptr %encoded_cpu_val.addr, align 4, !dbg !1475
  %sub = sub i32 %0, 1, !dbg !1476
  store i32 %sub, ptr %cpu_nr, align 4, !dbg !1474
  br label %do.body, !dbg !1477

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1478
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1467, metadata !DIExpression()), !dbg !1478
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1478
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !1478
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1477
  br label %do.cond, !dbg !1478

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1478

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !1479
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1470, metadata !DIExpression()), !dbg !1479
  store i64 ptrtoint (ptr @osq_node to i64), ptr %__ptr, align 8, !dbg !1479
  %2 = load i64, ptr %__ptr, align 8, !dbg !1479
  %3 = load i32, ptr %cpu_nr, align 4, !dbg !1479
  %idxprom = sext i32 %3 to i64, !dbg !1479
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1479
  %4 = load i64, ptr %arrayidx, align 8, !dbg !1479
  %add = add i64 %2, %4, !dbg !1479
  %5 = inttoptr i64 %add to ptr, !dbg !1479
  store ptr %5, ptr %tmp1, align 8, !dbg !1479
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !1477
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1479
  store ptr %6, ptr %tmp, align 8, !dbg !1478
  %7 = load ptr, ptr %tmp, align 8, !dbg !1477
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu_nr) #8, !dbg !1480
  ret ptr %7, !dbg !1481
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #4 align 16 !dbg !1482 {
entry:
  %call = call zeroext i1 @tif_need_resched() #10, !dbg !1485
  %lnot = xor i1 %call, true, !dbg !1485
  %lnot1 = xor i1 %lnot, true, !dbg !1485
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1485
  %conv = sext i32 %lnot.ext to i64, !dbg !1485
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1485
  %tobool = icmp ne i64 %expval, 0, !dbg !1485
  ret i1 %tobool, !dbg !1486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vcpu_is_preempted(i32 noundef %cpu) #3 align 16 !dbg !1487 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1491, metadata !DIExpression()), !dbg !1492
  ret i1 false, !dbg !1493
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_cpu(ptr noundef %node) #3 align 16 !dbg !1494 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1498, metadata !DIExpression()), !dbg !1499
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1500
  %cpu = getelementptr inbounds %struct.optimistic_spin_node, ptr %0, i32 0, i32 3, !dbg !1501
  %1 = load i32, ptr %cpu, align 4, !dbg !1501
  %sub = sub i32 %1, 1, !dbg !1502
  ret i32 %sub, !dbg !1503
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #4 align 16 !dbg !1504 {
entry:
  call void @rep_nop() #10, !dbg !1508
  ret void, !dbg !1509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_disable_current() #3 align 16 !dbg !1510 {
entry:
  ret void, !dbg !1512
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_enable_current() #3 align 16 !dbg !1513 {
entry:
  ret void, !dbg !1514
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1515 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1523, metadata !DIExpression()), !dbg !1525
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1524, metadata !DIExpression()), !dbg !1526
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1527
  %1 = load i64, ptr %size.addr, align 8, !dbg !1528
  %conv = trunc i64 %1 to i32, !dbg !1528
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !1529
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1530
  %3 = load i64, ptr %size.addr, align 8, !dbg !1530
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !1530
  ret void, !dbg !1531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @osq_wait_next(ptr noundef %lock, ptr noundef %node, ptr noundef %prev) #3 align 16 !dbg !1532 {
entry:
  %lock.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %curr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %old = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1536, metadata !DIExpression()), !dbg !1558
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1537, metadata !DIExpression()), !dbg !1559
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1538, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1539, metadata !DIExpression()), !dbg !1562
  store ptr null, ptr %next, align 8, !dbg !1562
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr) #8, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !1540, metadata !DIExpression()), !dbg !1564
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !1565
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #8, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1541, metadata !DIExpression()), !dbg !1566
  br label %do.body, !dbg !1566

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1544, metadata !DIExpression()), !dbg !1567
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1567
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1566
  br label %do.cond, !dbg !1567

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1567

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #8, !dbg !1568
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1546, metadata !DIExpression()), !dbg !1568
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #9, !dbg !1568, !srcloc !1569
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1568
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1568
  %conv = zext i32 %2 to i64, !dbg !1568
  %conv2 = trunc i64 %conv to i32, !dbg !1568
  store i32 %conv2, ptr %tmp1, align 4, !dbg !1568
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #8, !dbg !1566
  %3 = load i32, ptr %tmp1, align 4, !dbg !1568
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1566
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1566
  store i32 %4, ptr %tmp3, align 4, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #8, !dbg !1565
  %5 = load i32, ptr %tmp3, align 4, !dbg !1566
  store i32 %5, ptr %tmp, align 4, !dbg !1565
  %6 = load i32, ptr %tmp, align 4, !dbg !1565
  %call = call i32 @encode_cpu(i32 noundef %6) #10, !dbg !1570
  store i32 %call, ptr %curr, align 4, !dbg !1564
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #8, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1548, metadata !DIExpression()), !dbg !1572
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !1573
  %tobool = icmp ne ptr %7, null, !dbg !1573
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1573

cond.true:                                        ; preds = %do.end
  %8 = load ptr, ptr %prev.addr, align 8, !dbg !1574
  %cpu = getelementptr inbounds %struct.optimistic_spin_node, ptr %8, i32 0, i32 3, !dbg !1575
  %9 = load i32, ptr %cpu, align 4, !dbg !1575
  br label %cond.end, !dbg !1573

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !1573

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 0, %cond.false ], !dbg !1573
  store i32 %cond, ptr %old, align 4, !dbg !1576
  br label %for.cond, !dbg !1577

for.cond:                                         ; preds = %if.end22, %cond.end
  %10 = load ptr, ptr %lock.addr, align 8, !dbg !1578
  %tail = getelementptr inbounds %struct.optimistic_spin_queue, ptr %10, i32 0, i32 0, !dbg !1580
  %call4 = call i32 @atomic_read(ptr noundef %tail) #10, !dbg !1581
  %11 = load i32, ptr %curr, align 4, !dbg !1582
  %cmp = icmp eq i32 %call4, %11, !dbg !1583
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1584

land.lhs.true:                                    ; preds = %for.cond
  %12 = load ptr, ptr %lock.addr, align 8, !dbg !1585
  %tail6 = getelementptr inbounds %struct.optimistic_spin_queue, ptr %12, i32 0, i32 0, !dbg !1586
  %13 = load i32, ptr %curr, align 4, !dbg !1587
  %14 = load i32, ptr %old, align 4, !dbg !1588
  %call7 = call i32 @atomic_cmpxchg_acquire(ptr noundef %tail6, i32 noundef %13, i32 noundef %14) #10, !dbg !1589
  %15 = load i32, ptr %curr, align 4, !dbg !1590
  %cmp8 = icmp eq i32 %call7, %15, !dbg !1591
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1592

if.then:                                          ; preds = %land.lhs.true
  br label %for.end, !dbg !1593

if.end:                                           ; preds = %land.lhs.true, %for.cond
  %16 = load ptr, ptr %node.addr, align 8, !dbg !1595
  %next10 = getelementptr inbounds %struct.optimistic_spin_node, ptr %16, i32 0, i32 0, !dbg !1596
  %17 = load ptr, ptr %next10, align 8, !dbg !1596
  %tobool11 = icmp ne ptr %17, null, !dbg !1595
  br i1 %tobool11, label %if.then12, label %if.end22, !dbg !1597

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #8, !dbg !1598
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !1549, metadata !DIExpression()), !dbg !1598
  %18 = load ptr, ptr %node.addr, align 8, !dbg !1598
  %next13 = getelementptr inbounds %struct.optimistic_spin_node, ptr %18, i32 0, i32 0, !dbg !1598
  store ptr %next13, ptr %__ai_ptr, align 8, !dbg !1598
  br label %do.body14, !dbg !1598

do.body14:                                        ; preds = %if.then12
  br label %do.cond15, !dbg !1599

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1599

do.end16:                                         ; preds = %do.cond15
  %19 = load ptr, ptr %__ai_ptr, align 8, !dbg !1598
  call void @instrument_atomic_read_write(ptr noundef %19, i64 noundef 8) #10, !dbg !1598
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #8, !dbg !1601
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1556, metadata !DIExpression()), !dbg !1601
  store ptr null, ptr %__ret, align 8, !dbg !1601
  %20 = load ptr, ptr %__ret, align 8, !dbg !1601
  %21 = load ptr, ptr %__ai_ptr, align 8, !dbg !1601
  %22 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %21, ptr %20, ptr elementtype(ptr) %21) #8, !dbg !1601, !srcloc !1602
  store ptr %22, ptr %__ret, align 8, !dbg !1601
  %23 = load ptr, ptr %__ret, align 8, !dbg !1601
  store ptr %23, ptr %tmp18, align 8, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #8, !dbg !1598
  %24 = load ptr, ptr %tmp18, align 8, !dbg !1601
  store ptr %24, ptr %tmp17, align 8, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #8, !dbg !1603
  %25 = load ptr, ptr %tmp17, align 8, !dbg !1598
  store ptr %25, ptr %next, align 8, !dbg !1604
  %26 = load ptr, ptr %next, align 8, !dbg !1605
  %tobool19 = icmp ne ptr %26, null, !dbg !1605
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1607

if.then20:                                        ; preds = %do.end16
  br label %for.end, !dbg !1608

if.end21:                                         ; preds = %do.end16
  br label %if.end22, !dbg !1609

if.end22:                                         ; preds = %if.end21, %if.end
  call void @cpu_relax() #10, !dbg !1610
  br label %for.cond, !dbg !1611, !llvm.loop !1612

for.end:                                          ; preds = %if.then20, %if.then
  %27 = load ptr, ptr %next, align 8, !dbg !1615
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #8, !dbg !1616
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr) #8, !dbg !1616
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !1616
  ret ptr %27, !dbg !1617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @osq_unlock(ptr noundef %lock) #0 align 16 !dbg !1618 {
entry:
  %lock.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %next = alloca ptr, align 8
  %curr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp13 = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1622, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8, !dbg !1643
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1623, metadata !DIExpression()), !dbg !1644
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !1643
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1624, metadata !DIExpression()), !dbg !1645
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr) #8, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !1625, metadata !DIExpression()), !dbg !1647
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !1648
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #8, !dbg !1649
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1626, metadata !DIExpression()), !dbg !1649
  br label %do.body, !dbg !1649

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1629, metadata !DIExpression()), !dbg !1650
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1650
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1650
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1649
  br label %do.cond, !dbg !1650

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1650

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #8, !dbg !1651
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1631, metadata !DIExpression()), !dbg !1651
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #9, !dbg !1651, !srcloc !1652
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1651
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1651
  %conv = zext i32 %2 to i64, !dbg !1651
  %conv2 = trunc i64 %conv to i32, !dbg !1651
  store i32 %conv2, ptr %tmp1, align 4, !dbg !1651
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #8, !dbg !1649
  %3 = load i32, ptr %tmp1, align 4, !dbg !1651
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1649
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1649
  store i32 %4, ptr %tmp3, align 4, !dbg !1649
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #8, !dbg !1648
  %5 = load i32, ptr %tmp3, align 4, !dbg !1649
  store i32 %5, ptr %tmp, align 4, !dbg !1648
  %6 = load i32, ptr %tmp, align 4, !dbg !1648
  %call = call i32 @encode_cpu(i32 noundef %6) #10, !dbg !1653
  store i32 %call, ptr %curr, align 4, !dbg !1647
  %7 = load ptr, ptr %lock.addr, align 8, !dbg !1654
  %tail = getelementptr inbounds %struct.optimistic_spin_queue, ptr %7, i32 0, i32 0, !dbg !1654
  %8 = load i32, ptr %curr, align 4, !dbg !1654
  %call4 = call i32 @atomic_cmpxchg_release(ptr noundef %tail, i32 noundef %8, i32 noundef 0) #10, !dbg !1654
  %9 = load i32, ptr %curr, align 4, !dbg !1654
  %cmp = icmp eq i32 %call4, %9, !dbg !1654
  %lnot = xor i1 %cmp, true, !dbg !1654
  %lnot6 = xor i1 %lnot, true, !dbg !1654
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !1654
  %conv7 = sext i32 %lnot.ext to i64, !dbg !1654
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !1654
  %tobool = icmp ne i64 %expval, 0, !dbg !1654
  br i1 %tobool, label %if.then, label %if.end, !dbg !1656

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1657

if.end:                                           ; preds = %do.end
  br label %do.body8, !dbg !1658

do.body8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify9) #8, !dbg !1659
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify9, metadata !1633, metadata !DIExpression()), !dbg !1659
  store ptr null, ptr %__vpp_verify9, align 8, !dbg !1659
  %10 = load ptr, ptr %__vpp_verify9, align 8, !dbg !1659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify9) #8, !dbg !1658
  br label %do.cond10, !dbg !1659

do.cond10:                                        ; preds = %do.body8
  br label %do.end11, !dbg !1659

do.end11:                                         ; preds = %do.cond10
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1636, metadata !DIExpression()), !dbg !1660
  %11 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @osq_node) #9, !dbg !1660, !srcloc !1661
  store i64 %11, ptr %tcp_ptr__, align 8, !dbg !1660
  %12 = load i64, ptr %tcp_ptr__, align 8, !dbg !1660
  %13 = inttoptr i64 %12 to ptr, !dbg !1660
  store ptr %13, ptr %tmp13, align 8, !dbg !1660
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !1658
  %14 = load ptr, ptr %tmp13, align 8, !dbg !1660
  store ptr %14, ptr %tmp12, align 8, !dbg !1659
  %15 = load ptr, ptr %tmp12, align 8, !dbg !1658
  store ptr %15, ptr %node, align 8, !dbg !1662
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #8, !dbg !1663
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !1638, metadata !DIExpression()), !dbg !1663
  %16 = load ptr, ptr %node, align 8, !dbg !1663
  %next14 = getelementptr inbounds %struct.optimistic_spin_node, ptr %16, i32 0, i32 0, !dbg !1663
  store ptr %next14, ptr %__ai_ptr, align 8, !dbg !1663
  br label %do.body15, !dbg !1663

do.body15:                                        ; preds = %do.end11
  br label %do.cond16, !dbg !1664

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1664

do.end17:                                         ; preds = %do.cond16
  %17 = load ptr, ptr %__ai_ptr, align 8, !dbg !1663
  call void @instrument_atomic_read_write(ptr noundef %17, i64 noundef 8) #10, !dbg !1663
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #8, !dbg !1666
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1640, metadata !DIExpression()), !dbg !1666
  store ptr null, ptr %__ret, align 8, !dbg !1666
  %18 = load ptr, ptr %__ret, align 8, !dbg !1666
  %19 = load ptr, ptr %__ai_ptr, align 8, !dbg !1666
  %20 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %19, ptr %18, ptr elementtype(ptr) %19) #8, !dbg !1666, !srcloc !1667
  store ptr %20, ptr %__ret, align 8, !dbg !1666
  %21 = load ptr, ptr %__ret, align 8, !dbg !1666
  store ptr %21, ptr %tmp19, align 8, !dbg !1666
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #8, !dbg !1663
  %22 = load ptr, ptr %tmp19, align 8, !dbg !1666
  store ptr %22, ptr %tmp18, align 8, !dbg !1663
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #8, !dbg !1668
  %23 = load ptr, ptr %tmp18, align 8, !dbg !1663
  store ptr %23, ptr %next, align 8, !dbg !1669
  %24 = load ptr, ptr %next, align 8, !dbg !1670
  %tobool20 = icmp ne ptr %24, null, !dbg !1670
  br i1 %tobool20, label %if.then21, label %if.end31, !dbg !1672

if.then21:                                        ; preds = %do.end17
  br label %do.body22, !dbg !1673

do.body22:                                        ; preds = %if.then21
  br label %do.body23, !dbg !1675

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !1677

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !1677

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !1675

do.body26:                                        ; preds = %do.end25
  %25 = load ptr, ptr %next, align 8, !dbg !1679
  %locked = getelementptr inbounds %struct.optimistic_spin_node, ptr %25, i32 0, i32 2, !dbg !1679
  store volatile i32 1, ptr %locked, align 8, !dbg !1679
  br label %do.cond27, !dbg !1679

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !1679

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !1675

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !1675

do.end30:                                         ; preds = %do.cond29
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1681

if.end31:                                         ; preds = %do.end17
  %26 = load ptr, ptr %lock.addr, align 8, !dbg !1682
  %27 = load ptr, ptr %node, align 8, !dbg !1683
  %call32 = call ptr @osq_wait_next(ptr noundef %26, ptr noundef %27, ptr noundef null) #10, !dbg !1684
  store ptr %call32, ptr %next, align 8, !dbg !1685
  %28 = load ptr, ptr %next, align 8, !dbg !1686
  %tobool33 = icmp ne ptr %28, null, !dbg !1686
  br i1 %tobool33, label %if.then34, label %if.end45, !dbg !1688

if.then34:                                        ; preds = %if.end31
  br label %do.body35, !dbg !1689

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !1690

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !1692

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !1692

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !1690

do.body39:                                        ; preds = %do.end38
  %29 = load ptr, ptr %next, align 8, !dbg !1694
  %locked40 = getelementptr inbounds %struct.optimistic_spin_node, ptr %29, i32 0, i32 2, !dbg !1694
  store volatile i32 1, ptr %locked40, align 8, !dbg !1694
  br label %do.cond41, !dbg !1694

do.cond41:                                        ; preds = %do.body39
  br label %do.end42, !dbg !1694

do.end42:                                         ; preds = %do.cond41
  br label %do.cond43, !dbg !1690

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !1690

do.end44:                                         ; preds = %do.cond43
  br label %if.end45, !dbg !1690

if.end45:                                         ; preds = %do.end44, %if.end31
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1696
  br label %cleanup, !dbg !1696

cleanup:                                          ; preds = %if.end45, %do.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr) #8, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8, !dbg !1696
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1696

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg_release(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !1697 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1701, metadata !DIExpression()), !dbg !1704
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1702, metadata !DIExpression()), !dbg !1705
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1703, metadata !DIExpression()), !dbg !1706
  br label %do.body, !dbg !1707

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1708

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1710
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !1711
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1712
  %2 = load i32, ptr %old.addr, align 4, !dbg !1713
  %3 = load i32, ptr %new.addr, align 4, !dbg !1714
  %call = call i32 @raw_atomic_cmpxchg_release(ptr noundef %1, i32 noundef %2, i32 noundef %3) #10, !dbg !1715
  ret i32 %call, !dbg !1716
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_xchg(ptr noundef %v, i32 noundef %new) #4 align 16 !dbg !1717 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1720, metadata !DIExpression()), !dbg !1722
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1721, metadata !DIExpression()), !dbg !1723
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1724
  %1 = load i32, ptr %new.addr, align 4, !dbg !1725
  %call = call i32 @arch_atomic_xchg(ptr noundef %0, i32 noundef %1) #10, !dbg !1726
  ret i32 %call, !dbg !1727
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_xchg(ptr noundef %v, i32 noundef %new) #4 align 16 !dbg !1728 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1731, metadata !DIExpression()), !dbg !1735
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1732, metadata !DIExpression()), !dbg !1736
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #8, !dbg !1737
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1733, metadata !DIExpression()), !dbg !1737
  %0 = load i32, ptr %new.addr, align 4, !dbg !1737
  store i32 %0, ptr %__ret, align 4, !dbg !1737
  %1 = load i32, ptr %__ret, align 4, !dbg !1737
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1737
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1737
  %3 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #8, !dbg !1737, !srcloc !1738
  store i32 %3, ptr %__ret, align 4, !dbg !1737
  %4 = load i32, ptr %__ret, align 4, !dbg !1737
  store i32 %4, ptr %tmp, align 4, !dbg !1737
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #8, !dbg !1739
  %5 = load i32, ptr %tmp, align 4, !dbg !1737
  ret i32 %5, !dbg !1740
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #4 align 16 !dbg !1741 {
entry:
  %call = call ptr @get_current() #10, !dbg !1743
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !1744
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #10, !dbg !1745
  ret i1 %call1, !dbg !1746
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1747 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1755, metadata !DIExpression()), !dbg !1757
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1756, metadata !DIExpression()), !dbg !1758
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1759
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1760
  br i1 %1, label %cond.true, label %cond.false, !dbg !1760

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1761
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1762
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1763
  %conv = zext i1 %call to i32, !dbg !1763
  br label %cond.end, !dbg !1760

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1764
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1765
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !1766
  %conv2 = zext i1 %call1 to i32, !dbg !1766
  br label %cond.end, !dbg !1760

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1760
  %tobool = icmp ne i32 %cond, 0, !dbg !1760
  ret i1 %tobool, !dbg !1767
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !1768 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #8, !dbg !1779
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1773, metadata !DIExpression()), !dbg !1779
  br label %do.body, !dbg !1779

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1775, metadata !DIExpression()), !dbg !1780
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1780
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1779
  br label %do.cond, !dbg !1780

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1780

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #8, !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1777, metadata !DIExpression()), !dbg !1781
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !1781, !srcloc !1782
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1781
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1781
  %3 = inttoptr i64 %2 to ptr, !dbg !1781
  store ptr %3, ptr %tmp, align 8, !dbg !1781
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #8, !dbg !1779
  %4 = load ptr, ptr %tmp, align 8, !dbg !1781
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1779
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1779
  store ptr %5, ptr %tmp1, align 8, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #8, !dbg !1783
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1779
  ret ptr %6, !dbg !1784
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1785 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1789, metadata !DIExpression()), !dbg !1791
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1790, metadata !DIExpression()), !dbg !1792
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1793
  %and = and i64 %0, 63, !dbg !1794
  %shl = shl i64 1, %and, !dbg !1795
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1796
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1797
  %shr = ashr i64 %2, 6, !dbg !1798
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1796
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1796
  %and1 = and i64 %shl, %3, !dbg !1799
  %cmp = icmp ne i64 %and1, 0, !dbg !1800
  ret i1 %cmp, !dbg !1801
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1802 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1804, metadata !DIExpression()), !dbg !1807
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1805, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #8, !dbg !1809
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1806, metadata !DIExpression()), !dbg !1810
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1811
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1812
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #8, !dbg !1813, !srcloc !1814
  %3 = icmp ult i8 %2, 2, !dbg !1813
  call void @llvm.assume(i1 %3), !dbg !1813
  store i8 %2, ptr %oldbit, align 1, !dbg !1813
  %4 = load i8, ptr %oldbit, align 1, !dbg !1815, !range !1816, !noundef !955
  %tobool = trunc i8 %4 to i1, !dbg !1815
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #8, !dbg !1817
  ret i1 %tobool, !dbg !1818
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #4 align 16 !dbg !1819 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1820, !srcloc !1821
  ret void, !dbg !1822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1823 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1828, metadata !DIExpression()), !dbg !1830
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1829, metadata !DIExpression()), !dbg !1831
  ret i1 true, !dbg !1832
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !1833 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1837, metadata !DIExpression()), !dbg !1840
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1838, metadata !DIExpression()), !dbg !1841
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1839, metadata !DIExpression()), !dbg !1842
  ret void, !dbg !1843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !1844 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1850, metadata !DIExpression()), !dbg !1851
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1852
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #10, !dbg !1853
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1854
  %call = call i32 @raw_atomic_read(ptr noundef %1) #10, !dbg !1855
  ret i32 %call, !dbg !1856
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg_acquire(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !1857 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1859, metadata !DIExpression()), !dbg !1862
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1860, metadata !DIExpression()), !dbg !1863
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1861, metadata !DIExpression()), !dbg !1864
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1865
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !1866
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1867
  %2 = load i32, ptr %old.addr, align 4, !dbg !1868
  %3 = load i32, ptr %new.addr, align 4, !dbg !1869
  %call = call i32 @raw_atomic_cmpxchg_acquire(ptr noundef %1, i32 noundef %2, i32 noundef %3) #10, !dbg !1870
  ret i32 %call, !dbg !1871
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1872 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1874, metadata !DIExpression()), !dbg !1876
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1875, metadata !DIExpression()), !dbg !1877
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1878
  %1 = load i64, ptr %size.addr, align 8, !dbg !1879
  %conv = trunc i64 %1 to i32, !dbg !1879
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !1880
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1881
  %3 = load i64, ptr %size.addr, align 8, !dbg !1881
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !1881
  ret void, !dbg !1882
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !1883 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1885, metadata !DIExpression()), !dbg !1886
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1887
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !1888
  ret i32 %call, !dbg !1889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1890 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1892, metadata !DIExpression()), !dbg !1894
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1893, metadata !DIExpression()), !dbg !1895
  ret i1 true, !dbg !1896
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !1897 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1899, metadata !DIExpression()), !dbg !1900
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1901
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1901
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1901
  ret i32 %1, !dbg !1902
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg_acquire(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !1903 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1905, metadata !DIExpression()), !dbg !1908
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1906, metadata !DIExpression()), !dbg !1909
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1907, metadata !DIExpression()), !dbg !1910
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1911
  %1 = load i32, ptr %old.addr, align 4, !dbg !1912
  %2 = load i32, ptr %new.addr, align 4, !dbg !1913
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10, !dbg !1914
  ret i32 %call, !dbg !1915
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !1916 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1918, metadata !DIExpression()), !dbg !1926
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1919, metadata !DIExpression()), !dbg !1927
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1920, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #8, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1921, metadata !DIExpression()), !dbg !1929
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #8, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !1923, metadata !DIExpression()), !dbg !1929
  %0 = load i32, ptr %old.addr, align 4, !dbg !1929
  store i32 %0, ptr %__old, align 4, !dbg !1929
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #8, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !1924, metadata !DIExpression()), !dbg !1929
  %1 = load i32, ptr %new.addr, align 4, !dbg !1929
  store i32 %1, ptr %__new, align 4, !dbg !1929
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1925, metadata !DIExpression()), !dbg !1929
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1929
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1929
  store ptr %counter, ptr %__ptr, align 8, !dbg !1929
  %3 = load ptr, ptr %__ptr, align 8, !dbg !1929
  %4 = load i32, ptr %__new, align 4, !dbg !1929
  %5 = load i32, ptr %__old, align 4, !dbg !1929
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #8, !dbg !1929, !srcloc !1930
  store i32 %6, ptr %__ret, align 4, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !1929
  %7 = load i32, ptr %__ret, align 4, !dbg !1929
  store i32 %7, ptr %tmp, align 4, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #8, !dbg !1931
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #8, !dbg !1931
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #8, !dbg !1931
  %8 = load i32, ptr %tmp, align 4, !dbg !1929
  ret i32 %8, !dbg !1932
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg_release(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !1933 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1935, metadata !DIExpression()), !dbg !1938
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1936, metadata !DIExpression()), !dbg !1939
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1937, metadata !DIExpression()), !dbg !1940
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1941
  %1 = load i32, ptr %old.addr, align 4, !dbg !1942
  %2 = load i32, ptr %new.addr, align 4, !dbg !1943
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10, !dbg !1944
  ret i32 %call, !dbg !1945
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(read) }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!llvm.ident = !{!1234}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "osq_node", scope: !2, file: !3, line: 14, type: !24, isLocal: true, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/locking/.osq_lock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/locking/osq_lock\22 -D KBUILD_BASENAME=\22osq_lock\22 -D KBUILD_MODNAME=\22osq_lock\22 -D __KBUILD_MODNAME=kmod_osq_lock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/locking/osq_lock.ll kernel/locking/osq_lock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !1220, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/locking/osq_lock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "faac18d158cd5e56a83a09b653aae85b")
!4 = !{!5, !11, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !17, line: 16, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "TT_NONE", value: 0)
!20 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!21 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!22 = !{!23, !32, !33, !30, !34, !35, !37, !40, !47, !49, !50, !51, !61, !62, !1218}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_node", file: !25, line: 9, size: 192, elements: !26)
!25 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!26 = !{!27, !28, !29, !31}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !24, file: !25, line: 10, baseType: !23, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !24, file: !25, line: 10, baseType: !23, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !24, file: !25, line: 11, baseType: !30, size: 32, offset: 128)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !24, file: !25, line: 12, baseType: !30, size: 32, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !43, line: 23, baseType: !44)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !53, line: 56, size: 192, elements: !54)
!53 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!54 = !{!55, !56, !57, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !53, line: 57, baseType: !34, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !52, file: !53, line: 58, baseType: !34, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !52, file: !53, line: 59, baseType: !58, size: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !43, line: 21, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !45, line: 27, baseType: !7)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !52, file: !53, line: 61, baseType: !58, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !64, line: 746, size: 58368, elements: !65)
!64 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!65 = !{!66, !67, !68, !69, !80, !81, !82, !83, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !172, !183, !310, !314, !317, !348, !349, !350, !351, !362, !364, !365, !366, !367, !368, !369, !380, !381, !384, !385, !386, !387, !388, !389, !390, !391, !398, !399, !406, !407, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !493, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !561, !563, !564, !565, !569, !570, !571, !572, !573, !574, !575, !581, !582, !583, !584, !585, !586, !587, !601, !623, !627, !628, !629, !632, !637, !640, !647, !652, !655, !658, !661, !664, !667, !670, !676, !677, !678, !684, !685, !689, !690, !691, !694, !702, !703, !712, !723, !724, !725, !726, !727, !732, !733, !734, !737, !738, !741, !744, !747, !750, !753, !754, !842, !853, !854, !855, !856, !862, !867, !868, !869, !872, !873, !876, !879, !880, !883, !884, !885, !888, !889, !890, !893, !894, !895, !908, !909, !910, !911, !912, !913, !914, !915, !916, !927, !930, !938, !941, !942, !943, !944, !945, !946, !947, !950, !953, !956, !957, !958, !959, !960, !972, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !989, !990, !991}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !63, file: !64, line: 752, baseType: !52, size: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !63, file: !64, line: 754, baseType: !7, size: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !63, file: !64, line: 767, baseType: !32, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !63, file: !64, line: 768, baseType: !70, size: 32, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !71, line: 113, baseType: !72)
!71 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !71, line: 111, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !72, file: !71, line: 112, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !76, line: 174, baseType: !77)
!76 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 172, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !77, file: !76, line: 173, baseType: !30, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !64, line: 770, baseType: !7, size: 32, offset: 352)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !63, file: !64, line: 771, baseType: !7, size: 32, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !63, file: !64, line: 774, baseType: !30, size: 32, offset: 416)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !63, file: !64, line: 775, baseType: !84, size: 128, offset: 448)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !85, line: 58, size: 128, elements: !86)
!85 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!86 = !{!87, !93, !98, !102}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !84, file: !85, line: 59, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !89, line: 60, size: 64, elements: !90)
!89 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !89, line: 61, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !85, line: 60, baseType: !94, size: 32, offset: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !85, line: 60, size: 32, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !94, file: !85, line: 61, baseType: !7, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !94, file: !85, line: 62, baseType: !75, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !84, file: !85, line: 65, baseType: !99, size: 16, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !43, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !84, file: !85, line: 65, baseType: !99, size: 16, offset: 112)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !63, file: !64, line: 776, baseType: !7, size: 32, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !63, file: !64, line: 777, baseType: !34, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !63, file: !64, line: 778, baseType: !62, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !63, file: !64, line: 787, baseType: !30, size: 32, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !63, file: !64, line: 788, baseType: !30, size: 32, offset: 800)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !63, file: !64, line: 790, baseType: !30, size: 32, offset: 832)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !63, file: !64, line: 792, baseType: !30, size: 32, offset: 864)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !63, file: !64, line: 793, baseType: !30, size: 32, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !63, file: !64, line: 794, baseType: !30, size: 32, offset: 928)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !63, file: !64, line: 795, baseType: !7, size: 32, offset: 960)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !63, file: !64, line: 797, baseType: !114, size: 2048, offset: 1024)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !64, line: 551, size: 2048, elements: !115)
!115 = !{!116, !121, !129, !130, !131, !137, !138, !139, !140, !141, !142, !146, !147, !148, !149, !151, !154, !155, !156}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !114, file: !64, line: 553, baseType: !117, size: 128)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !64, line: 411, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !117, file: !64, line: 412, baseType: !34, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !117, file: !64, line: 413, baseType: !58, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !114, file: !64, line: 554, baseType: !122, size: 192, align: 64, offset: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !123, line: 5, size: 192, align: 64, elements: !124)
!123 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!124 = !{!125, !126, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !122, file: !123, line: 6, baseType: !34, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !122, file: !123, line: 7, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !122, file: !123, line: 8, baseType: !127, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !114, file: !64, line: 555, baseType: !42, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !114, file: !64, line: 556, baseType: !42, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !114, file: !64, line: 558, baseType: !132, size: 128, offset: 448)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !76, line: 190, size: 128, elements: !133)
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !76, line: 191, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !76, line: 191, baseType: !135, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !114, file: !64, line: 559, baseType: !7, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !114, file: !64, line: 561, baseType: !42, size: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !114, file: !64, line: 562, baseType: !42, size: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !114, file: !64, line: 563, baseType: !42, size: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !114, file: !64, line: 564, baseType: !42, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !114, file: !64, line: 565, baseType: !143, size: 64, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !43, line: 22, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !45, line: 30, baseType: !145)
!145 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !114, file: !64, line: 566, baseType: !42, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !114, file: !64, line: 568, baseType: !42, size: 64, offset: 1024)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !114, file: !64, line: 571, baseType: !30, size: 32, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !64, line: 572, baseType: !150, size: 64, offset: 1152)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !114, file: !64, line: 574, baseType: !152, size: 64, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !64, line: 49, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !114, file: !64, line: 576, baseType: !152, size: 64, offset: 1280)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !114, file: !64, line: 578, baseType: !34, size: 64, offset: 1344)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !114, file: !64, line: 588, baseType: !157, size: 512, align: 512, offset: 1536)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !64, line: 497, size: 512, align: 512, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !157, file: !64, line: 498, baseType: !42, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !157, file: !64, line: 499, baseType: !42, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !157, file: !64, line: 500, baseType: !42, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !157, file: !64, line: 501, baseType: !58, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !157, file: !64, line: 502, baseType: !58, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !157, file: !64, line: 503, baseType: !34, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !157, file: !64, line: 504, baseType: !34, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !157, file: !64, line: 505, baseType: !34, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !157, file: !64, line: 506, baseType: !168, size: 64, align: 64, offset: 448)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !64, line: 445, size: 64, align: 64, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !168, file: !64, line: 446, baseType: !7, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !168, file: !64, line: 447, baseType: !7, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !63, file: !64, line: 798, baseType: !173, size: 384, offset: 3072)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !64, line: 592, size: 384, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !173, file: !64, line: 593, baseType: !132, size: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !173, file: !64, line: 594, baseType: !34, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !173, file: !64, line: 595, baseType: !34, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !173, file: !64, line: 596, baseType: !7, size: 32, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !173, file: !64, line: 597, baseType: !101, size: 16, offset: 288)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !173, file: !64, line: 598, baseType: !101, size: 16, offset: 304)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !173, file: !64, line: 600, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !63, file: !64, line: 799, baseType: !184, size: 1792, offset: 3456)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !64, line: 610, size: 1792, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !307, !308}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !184, file: !64, line: 611, baseType: !122, size: 192, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !184, file: !64, line: 618, baseType: !42, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !184, file: !64, line: 619, baseType: !42, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !184, file: !64, line: 620, baseType: !42, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !184, file: !64, line: 621, baseType: !42, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !184, file: !64, line: 622, baseType: !42, size: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !184, file: !64, line: 629, baseType: !143, size: 64, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !184, file: !64, line: 630, baseType: !42, size: 64, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !64, line: 631, baseType: !7, size: 32, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !184, file: !64, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !184, file: !64, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !184, file: !64, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !184, file: !64, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !184, file: !64, line: 662, baseType: !200, size: 512, offset: 704)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !201)
!201 = !{!202, !210, !211, !216, !303, !304, !305, !306}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !12, line: 119, baseType: !203, size: 256)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !204, line: 9, size: 256, elements: !205)
!204 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !204, line: 10, baseType: !122, size: 192, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !203, file: !204, line: 11, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !209, line: 29, baseType: !143)
!209 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !200, file: !12, line: 120, baseType: !208, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !200, file: !12, line: 121, baseType: !212, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!11, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !200, file: !12, line: 122, baseType: !217, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !219)
!219 = !{!220, !271, !272, !276, !286, !287, !298, !302}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !218, file: !12, line: 160, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !223)
!223 = !{!224, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !222, file: !12, line: 216, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !226, line: 23, baseType: !227)
!226 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !226, line: 14, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !227, file: !226, line: 15, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !231, line: 44, baseType: !232)
!231 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !231, line: 14, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !231, line: 15, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 15, size: 32, elements: !236)
!236 = !{!237, !238, !246}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !235, file: !231, line: 16, baseType: !75, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !231, line: 24, baseType: !239, size: 16)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !231, line: 24, size: 16, elements: !240)
!240 = !{!241, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !239, file: !231, line: 25, baseType: !242, size: 8)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !43, line: 17, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !244)
!244 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !239, file: !231, line: 26, baseType: !242, size: 8, offset: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !231, line: 28, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !231, line: 28, size: 32, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !247, file: !231, line: 29, baseType: !99, size: 16)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !247, file: !231, line: 30, baseType: !99, size: 16, offset: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !222, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !222, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !222, file: !12, line: 219, baseType: !7, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !222, file: !12, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !222, file: !12, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !222, file: !12, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !222, file: !12, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !222, file: !12, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !222, file: !12, line: 226, baseType: !7, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !222, file: !12, line: 227, baseType: !101, size: 16, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !222, file: !12, line: 228, baseType: !101, size: 16, offset: 208)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !222, file: !12, line: 229, baseType: !7, size: 32, offset: 224)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !222, file: !12, line: 235, baseType: !208, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !222, file: !12, line: 236, baseType: !215, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !222, file: !12, line: 237, baseType: !208, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !222, file: !12, line: 238, baseType: !215, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !222, file: !12, line: 239, baseType: !268, size: 4096, align: 512, offset: 512)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 4096, align: 512, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !218, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !218, file: !12, line: 162, baseType: !273, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !76, line: 32, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !275, line: 96, baseType: !30)
!275 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !218, file: !12, line: 163, baseType: !277, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !278, line: 274, baseType: !279)
!278 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !278, line: 274, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !279, file: !278, line: 274, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !278, line: 69, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !278, line: 64, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !283, file: !278, line: 65, baseType: !7, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !218, file: !12, line: 164, baseType: !215, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !218, file: !12, line: 165, baseType: !288, size: 128, offset: 256)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !204, line: 14, size: 128, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !288, file: !204, line: 15, baseType: !291, size: 128)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !123, line: 26, size: 128, elements: !292)
!292 = !{!293, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !291, file: !123, line: 27, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !123, line: 12, size: 64, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !294, file: !123, line: 13, baseType: !127, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !291, file: !123, line: 28, baseType: !127, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !218, file: !12, line: 166, baseType: !299, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!208}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !218, file: !12, line: 167, baseType: !208, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !200, file: !12, line: 123, baseType: !242, size: 8, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !200, file: !12, line: 124, baseType: !242, size: 8, offset: 456)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !200, file: !12, line: 125, baseType: !242, size: 8, offset: 464)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !200, file: !12, line: 126, baseType: !242, size: 8, offset: 472)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !184, file: !64, line: 671, baseType: !200, size: 512, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !184, file: !64, line: 679, baseType: !309, size: 64, offset: 1728)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !63, file: !64, line: 800, baseType: !311, size: 64, offset: 5248)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !64, line: 800, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !63, file: !64, line: 809, baseType: !315, size: 64, offset: 5312)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !64, line: 70, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !63, file: !64, line: 825, baseType: !318, size: 2048, align: 512, offset: 5632)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !64, line: 509, size: 2048, align: 512, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !318, file: !64, line: 511, baseType: !42, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !318, file: !64, line: 512, baseType: !42, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !318, file: !64, line: 513, baseType: !42, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !318, file: !64, line: 514, baseType: !42, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !318, file: !64, line: 515, baseType: !42, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !318, file: !64, line: 516, baseType: !42, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !318, file: !64, line: 518, baseType: !42, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !318, file: !64, line: 519, baseType: !42, size: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !318, file: !64, line: 520, baseType: !143, size: 64, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !318, file: !64, line: 522, baseType: !42, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !318, file: !64, line: 523, baseType: !42, size: 64, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !318, file: !64, line: 524, baseType: !143, size: 64, offset: 704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !318, file: !64, line: 526, baseType: !143, size: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !318, file: !64, line: 527, baseType: !42, size: 64, offset: 832)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !318, file: !64, line: 529, baseType: !42, size: 64, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !318, file: !64, line: 530, baseType: !42, size: 64, offset: 960)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !318, file: !64, line: 531, baseType: !42, size: 64, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !318, file: !64, line: 532, baseType: !42, size: 64, offset: 1088)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !318, file: !64, line: 533, baseType: !42, size: 64, offset: 1152)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !318, file: !64, line: 535, baseType: !42, size: 64, offset: 1216)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !318, file: !64, line: 536, baseType: !42, size: 64, offset: 1280)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !318, file: !64, line: 537, baseType: !42, size: 64, offset: 1344)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !318, file: !64, line: 538, baseType: !42, size: 64, offset: 1408)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !318, file: !64, line: 539, baseType: !42, size: 64, offset: 1472)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !318, file: !64, line: 540, baseType: !42, size: 64, offset: 1536)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !318, file: !64, line: 541, baseType: !42, size: 64, offset: 1600)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !318, file: !64, line: 542, baseType: !42, size: 64, offset: 1664)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !318, file: !64, line: 543, baseType: !42, size: 64, offset: 1728)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !63, file: !64, line: 833, baseType: !7, size: 32, offset: 7680)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !63, file: !64, line: 836, baseType: !7, size: 32, offset: 7712)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !63, file: !64, line: 837, baseType: !30, size: 32, offset: 7744)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !63, file: !64, line: 838, baseType: !352, size: 64, offset: 7808)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !355, line: 19, baseType: !356)
!355 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !355, line: 19, size: 64, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !356, file: !355, line: 19, baseType: !359, size: 64)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 1)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !63, file: !64, line: 839, baseType: !363, size: 64, offset: 7872)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !63, file: !64, line: 840, baseType: !354, size: 64, offset: 7936)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !63, file: !64, line: 841, baseType: !32, size: 64, offset: 8000)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !63, file: !64, line: 843, baseType: !101, size: 16, offset: 8064)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !63, file: !64, line: 845, baseType: !101, size: 16, offset: 8080)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !63, file: !64, line: 848, baseType: !30, size: 32, offset: 8096)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !63, file: !64, line: 849, baseType: !370, size: 32, offset: 8128)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !64, line: 718, size: 32, elements: !371)
!371 = !{!372, !379}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !370, file: !64, line: 724, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !64, line: 719, size: 32, elements: !374)
!374 = !{!375, !376, !377, !378}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !373, file: !64, line: 720, baseType: !242, size: 8)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !373, file: !64, line: 721, baseType: !242, size: 8, offset: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !373, file: !64, line: 722, baseType: !242, size: 8, offset: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !373, file: !64, line: 723, baseType: !242, size: 8, offset: 24)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !370, file: !64, line: 725, baseType: !58, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !63, file: !64, line: 850, baseType: !132, size: 128, offset: 8192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !63, file: !64, line: 851, baseType: !382, size: 64, offset: 8320)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !64, line: 60, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !63, file: !64, line: 855, baseType: !34, size: 64, offset: 8384)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !63, file: !64, line: 856, baseType: !242, size: 8, offset: 8448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !63, file: !64, line: 857, baseType: !242, size: 8, offset: 8456)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !63, file: !64, line: 858, baseType: !30, size: 32, offset: 8480)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !63, file: !64, line: 859, baseType: !132, size: 128, offset: 8512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !63, file: !64, line: 860, baseType: !30, size: 32, offset: 8640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !63, file: !64, line: 861, baseType: !132, size: 128, offset: 8704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !63, file: !64, line: 873, baseType: !392, size: 256, offset: 8832)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !64, line: 376, size: 256, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !392, file: !64, line: 381, baseType: !34, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !392, file: !64, line: 384, baseType: !46, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !392, file: !64, line: 389, baseType: !46, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !392, file: !64, line: 392, baseType: !46, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !63, file: !64, line: 875, baseType: !132, size: 128, offset: 9088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !63, file: !64, line: 877, baseType: !400, size: 320, offset: 9216)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !401, line: 86, size: 320, elements: !402)
!401 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!402 = !{!403, !404, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !400, file: !401, line: 87, baseType: !30, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !400, file: !401, line: 88, baseType: !132, size: 128, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !400, file: !401, line: 89, baseType: !132, size: 128, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !63, file: !64, line: 878, baseType: !122, size: 192, align: 64, offset: 9536)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !63, file: !64, line: 881, baseType: !408, size: 64, offset: 9728)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !410, line: 10, flags: DIFlagFwdDecl)
!410 = !DIFile(filename: "./include/linux/mmdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f9d87c4b20d651b22046bc386b68150")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !63, file: !64, line: 882, baseType: !408, size: 64, offset: 9792)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !63, file: !64, line: 884, baseType: !30, size: 32, offset: 9856)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !63, file: !64, line: 885, baseType: !30, size: 32, offset: 9888)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !63, file: !64, line: 886, baseType: !30, size: 32, offset: 9920)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !63, file: !64, line: 888, baseType: !30, size: 32, offset: 9952)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !63, file: !64, line: 890, baseType: !34, size: 64, offset: 9984)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !63, file: !64, line: 893, baseType: !7, size: 32, offset: 10048)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !63, file: !64, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !63, file: !64, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !63, file: !64, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !63, file: !64, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !63, file: !64, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !63, file: !64, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !63, file: !64, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !63, file: !64, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !63, file: !64, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !63, file: !64, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !63, file: !64, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !63, file: !64, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !63, file: !64, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !63, file: !64, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !63, file: !64, line: 969, baseType: !34, size: 64, offset: 10176)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !63, file: !64, line: 971, baseType: !434, size: 448, offset: 10240)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 448, elements: !435)
!435 = !{!436, !437, !443}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !434, file: !17, line: 26, baseType: !34, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !434, file: !17, line: 27, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !442}
!441 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !17, line: 28, baseType: !444, size: 320, offset: 128)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !17, line: 28, size: 320, elements: !445)
!445 = !{!446, !456, !483}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !444, file: !17, line: 37, baseType: !447, size: 320)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !444, file: !17, line: 30, size: 320, elements: !448)
!448 = !{!449, !451, !452, !453, !454, !455}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !447, file: !17, line: 31, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !447, file: !17, line: 32, baseType: !58, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !17, line: 33, baseType: !58, size: 32, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !447, file: !17, line: 34, baseType: !58, size: 32, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !447, file: !17, line: 35, baseType: !42, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !447, file: !17, line: 36, baseType: !450, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !444, file: !17, line: 47, baseType: !457, size: 192)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !444, file: !17, line: 39, size: 192, elements: !458)
!458 = !{!459, !460, !461, !482}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !457, file: !17, line: 40, baseType: !273, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !17, line: 41, baseType: !16, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !17, line: 42, baseType: !462, size: 64, offset: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !17, line: 42, size: 64, elements: !463)
!463 = !{!464, !472}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !462, file: !17, line: 43, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !467, line: 7, size: 128, elements: !468)
!467 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!468 = !{!469, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !466, file: !467, line: 8, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !275, line: 93, baseType: !145)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !466, file: !467, line: 9, baseType: !145, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !462, file: !17, line: 44, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !475, line: 7, size: 64, elements: !476)
!475 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!476 = !{!477, !481}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !474, file: !475, line: 8, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !475, line: 5, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !43, line: 20, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !45, line: 26, baseType: !30)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !474, file: !475, line: 9, baseType: !479, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !457, file: !17, line: 46, baseType: !42, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !444, file: !17, line: 55, baseType: !484, size: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !444, file: !17, line: 49, size: 256, elements: !485)
!485 = !{!486, !489, !490, !491, !492}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !484, file: !17, line: 50, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !484, file: !17, line: 51, baseType: !30, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !484, file: !17, line: 52, baseType: !30, size: 32, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !484, file: !17, line: 53, baseType: !34, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !484, file: !17, line: 54, baseType: !34, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !63, file: !64, line: 973, baseType: !494, size: 32, offset: 10688)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !76, line: 27, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !275, line: 28, baseType: !30)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !63, file: !64, line: 974, baseType: !494, size: 32, offset: 10720)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !63, file: !64, line: 978, baseType: !34, size: 64, offset: 10752)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !63, file: !64, line: 987, baseType: !62, size: 64, offset: 10816)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !63, file: !64, line: 990, baseType: !62, size: 64, offset: 10880)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !63, file: !64, line: 995, baseType: !132, size: 128, offset: 10944)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !63, file: !64, line: 996, baseType: !132, size: 128, offset: 11072)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !63, file: !64, line: 997, baseType: !62, size: 64, offset: 11200)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !63, file: !64, line: 1005, baseType: !132, size: 128, offset: 11264)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !63, file: !64, line: 1006, baseType: !132, size: 128, offset: 11392)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !63, file: !64, line: 1009, baseType: !506, size: 64, offset: 11520)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !508, line: 59, size: 768, elements: !509)
!508 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!509 = !{!510, !511, !512, !521, !534, !535, !542, !551}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !507, file: !508, line: 61, baseType: !70, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !507, file: !508, line: 62, baseType: !7, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !507, file: !508, line: 63, baseType: !513, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !514, line: 29, baseType: !515)
!514 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !514, line: 17, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !514, line: 18, baseType: !518, size: 32)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !514, line: 18, size: 32, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !518, file: !514, line: 19, baseType: !227, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !507, file: !508, line: 65, baseType: !522, size: 256, offset: 128)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 256, elements: !532)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !76, line: 194, size: 64, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !523, file: !76, line: 195, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !76, line: 198, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !76, line: 199, baseType: !526, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !527, file: !76, line: 199, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!532 = !{!533}
!533 = !DISubrange(count: 4)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !507, file: !508, line: 66, baseType: !523, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !507, file: !508, line: 68, baseType: !536, size: 192, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !537, line: 41, baseType: !538)
!537 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !537, line: 37, size: 192, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !537, line: 38, baseType: !513, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !538, file: !537, line: 39, baseType: !132, size: 128, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !507, file: !508, line: 69, baseType: !543, size: 128, align: 64, offset: 640)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !76, line: 232, size: 128, align: 64, elements: !544)
!544 = !{!545, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !76, line: 233, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !543, file: !76, line: 234, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !546}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !507, file: !508, line: 70, baseType: !552, offset: 768)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, elements: !559)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !508, line: 54, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !553, file: !508, line: 55, baseType: !30, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !553, file: !508, line: 56, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !508, line: 56, flags: DIFlagFwdDecl)
!559 = !{!560}
!560 = !DISubrange(count: -1)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !63, file: !64, line: 1010, baseType: !562, size: 512, offset: 11584)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 512, elements: !532)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !63, file: !64, line: 1011, baseType: !132, size: 128, offset: 12096)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !63, file: !64, line: 1012, baseType: !132, size: 128, offset: 12224)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !63, file: !64, line: 1014, baseType: !566, size: 64, offset: 12352)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !568, line: 96, flags: DIFlagFwdDecl)
!568 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !63, file: !64, line: 1017, baseType: !33, size: 64, offset: 12416)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !63, file: !64, line: 1020, baseType: !33, size: 64, offset: 12480)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !63, file: !64, line: 1023, baseType: !32, size: 64, offset: 12544)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !63, file: !64, line: 1025, baseType: !42, size: 64, offset: 12608)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !63, file: !64, line: 1026, baseType: !42, size: 64, offset: 12672)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !63, file: !64, line: 1031, baseType: !42, size: 64, offset: 12736)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !63, file: !64, line: 1032, baseType: !576, size: 192, offset: 12800)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !64, line: 324, size: 192, elements: !577)
!577 = !{!578, !579, !580}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !576, file: !64, line: 326, baseType: !42, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !576, file: !64, line: 327, baseType: !42, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !64, line: 328, baseType: !225, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !63, file: !64, line: 1041, baseType: !34, size: 64, offset: 12992)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !63, file: !64, line: 1042, baseType: !34, size: 64, offset: 13056)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !63, file: !64, line: 1045, baseType: !42, size: 64, offset: 13120)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !63, file: !64, line: 1048, baseType: !42, size: 64, offset: 13184)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !63, file: !64, line: 1051, baseType: !34, size: 64, offset: 13248)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !63, file: !64, line: 1052, baseType: !34, size: 64, offset: 13312)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !63, file: !64, line: 1055, baseType: !588, size: 640, offset: 13376)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !589, line: 132, size: 640, elements: !590)
!589 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!590 = !{!591, !599, !600}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !588, file: !589, line: 133, baseType: !592, size: 576)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 576, elements: !597)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !589, line: 117, size: 192, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !593, file: !589, line: 118, baseType: !42, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !593, file: !589, line: 119, baseType: !288, size: 128, offset: 64)
!597 = !{!598}
!598 = !DISubrange(count: 3)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !588, file: !589, line: 134, baseType: !7, size: 32, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !588, file: !589, line: 135, baseType: !7, size: 32, offset: 608)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !63, file: !64, line: 1058, baseType: !602, size: 448, offset: 14016)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !589, line: 144, size: 448, elements: !603)
!603 = !{!604, !605, !622}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !602, file: !589, line: 145, baseType: !543, size: 128, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !602, file: !589, line: 146, baseType: !606, size: 256, offset: 128)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !607, line: 66, size: 256, elements: !608)
!607 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!608 = !{!609, !616, !617, !621}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !606, file: !607, line: 67, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !611, line: 13, baseType: !612)
!611 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !76, line: 181, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 179, size: 64, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !613, file: !76, line: 180, baseType: !143, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !606, file: !607, line: 68, baseType: !225, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !606, file: !607, line: 70, baseType: !618, size: 32, offset: 96)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !25, line: 15, size: 32, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !618, file: !25, line: 20, baseType: !75, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !606, file: !607, line: 72, baseType: !132, size: 128, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !602, file: !589, line: 147, baseType: !7, size: 32, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !63, file: !64, line: 1064, baseType: !624, size: 64, offset: 14464)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !64, line: 1064, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !63, file: !64, line: 1067, baseType: !624, size: 64, offset: 14528)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !63, file: !64, line: 1070, baseType: !624, size: 64, offset: 14592)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !63, file: !64, line: 1074, baseType: !630, size: 64, offset: 14656)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !64, line: 1074, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !63, file: !64, line: 1084, baseType: !633, size: 128, offset: 14720)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 128, elements: !635)
!634 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!635 = !{!636}
!636 = !DISubrange(count: 16)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !63, file: !64, line: 1086, baseType: !638, size: 64, offset: 14848)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !64, line: 55, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !63, file: !64, line: 1089, baseType: !641, size: 64, offset: 14912)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !642, line: 12, size: 64, elements: !643)
!642 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !641, file: !642, line: 13, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !642, line: 8, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !63, file: !64, line: 1090, baseType: !648, size: 128, offset: 14976)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !649, line: 13, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !648, file: !649, line: 14, baseType: !132, size: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !63, file: !64, line: 1097, baseType: !653, size: 64, offset: 15104)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !64, line: 50, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !63, file: !64, line: 1100, baseType: !656, size: 64, offset: 15168)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !64, line: 1100, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !63, file: !64, line: 1103, baseType: !659, size: 64, offset: 15232)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !64, line: 53, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !63, file: !64, line: 1107, baseType: !662, size: 64, offset: 15296)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !64, line: 56, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !63, file: !64, line: 1110, baseType: !665, size: 64, offset: 15360)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !589, line: 236, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !63, file: !64, line: 1111, baseType: !668, size: 64, offset: 15424)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !64, line: 67, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !63, file: !64, line: 1112, baseType: !671, size: 64, offset: 15488)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !672, line: 25, baseType: !673)
!672 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 23, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !673, file: !672, line: 24, baseType: !359, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !63, file: !64, line: 1113, baseType: !671, size: 64, offset: 15552)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !63, file: !64, line: 1115, baseType: !671, size: 64, offset: 15616)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !63, file: !64, line: 1116, baseType: !679, size: 192, offset: 15680)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !680, line: 32, size: 192, elements: !681)
!680 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !679, file: !680, line: 33, baseType: !132, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !679, file: !680, line: 34, baseType: !671, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !63, file: !64, line: 1117, baseType: !34, size: 64, offset: 15872)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !63, file: !64, line: 1118, baseType: !686, size: 64, offset: 15936)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 61, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !275, line: 72, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !275, line: 16, baseType: !34)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !63, file: !64, line: 1119, baseType: !7, size: 32, offset: 16000)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !63, file: !64, line: 1121, baseType: !546, size: 64, offset: 16064)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !63, file: !64, line: 1125, baseType: !692, size: 64, offset: 16128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !64, line: 43, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !63, file: !64, line: 1127, baseType: !695, size: 32, offset: 16192)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !696, line: 23, baseType: !697)
!696 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 21, size: 32, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !697, file: !696, line: 22, baseType: !700, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !76, line: 37, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !275, line: 49, baseType: !7)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !63, file: !64, line: 1128, baseType: !7, size: 32, offset: 16224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !63, file: !64, line: 1130, baseType: !704, size: 128, offset: 16256)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !705, line: 37, size: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !704, file: !705, line: 38, baseType: !30, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !704, file: !705, line: 39, baseType: !75, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !704, file: !705, line: 40, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !705, line: 24, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !63, file: !64, line: 1131, baseType: !713, size: 256, offset: 16384)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !714, line: 12, size: 256, elements: !715)
!714 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!715 = !{!716, !718, !719, !720}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !713, file: !714, line: 13, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !713, file: !714, line: 14, baseType: !34, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !713, file: !714, line: 15, baseType: !34, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !713, file: !714, line: 16, baseType: !721, size: 8, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !76, line: 35, baseType: !722)
!722 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !63, file: !64, line: 1134, baseType: !42, size: 64, offset: 16640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !63, file: !64, line: 1135, baseType: !42, size: 64, offset: 16704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !63, file: !64, line: 1138, baseType: !513, size: 32, offset: 16768)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !63, file: !64, line: 1141, baseType: !225, size: 32, offset: 16800)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !63, file: !64, line: 1143, baseType: !728, size: 64, offset: 16832)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !64, line: 735, size: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !64, line: 736, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !63, file: !64, line: 1147, baseType: !291, size: 128, offset: 16896)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !63, file: !64, line: 1149, baseType: !62, size: 64, offset: 17024)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !63, file: !64, line: 1151, baseType: !735, size: 64, offset: 17088)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !64, line: 1151, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !63, file: !64, line: 1188, baseType: !32, size: 64, offset: 17152)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !63, file: !64, line: 1191, baseType: !739, size: 64, offset: 17216)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !64, line: 44, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !63, file: !64, line: 1194, baseType: !742, size: 64, offset: 17280)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !64, line: 45, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !63, file: !64, line: 1197, baseType: !745, size: 64, offset: 17344)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !64, line: 61, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !63, file: !64, line: 1199, baseType: !748, size: 64, offset: 17408)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !64, line: 52, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !63, file: !64, line: 1202, baseType: !751, size: 64, offset: 17472)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !64, line: 48, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !63, file: !64, line: 1205, baseType: !34, size: 64, offset: 17536)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !63, file: !64, line: 1206, baseType: !755, size: 64, offset: 17600)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !680, line: 14, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !680, line: 12, size: 384, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !680, line: 13, baseType: !760, size: 384)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !680, line: 13, size: 384, elements: !761)
!761 = !{!762, !763, !764, !765}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !760, file: !680, line: 13, baseType: !30, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !760, file: !680, line: 13, baseType: !30, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !760, file: !680, line: 13, baseType: !30, size: 32, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !760, file: !680, line: 13, baseType: !766, size: 256, offset: 128)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !767, line: 37, size: 256, elements: !768)
!767 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!768 = !{!769, !774, !787, !793, !803, !831, !836}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !766, file: !767, line: 42, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !767, line: 39, size: 64, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !770, file: !767, line: 40, baseType: !495, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !770, file: !767, line: 41, baseType: !701, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !766, file: !767, line: 50, baseType: !775, size: 192)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !767, line: 45, size: 192, elements: !776)
!776 = !{!777, !779, !780, !786}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !775, file: !767, line: 46, baseType: !778, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !275, line: 95, baseType: !30)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !775, file: !767, line: 47, baseType: !30, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !775, file: !767, line: 48, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !767, line: 11, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !767, line: 8, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !782, file: !767, line: 9, baseType: !30, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !782, file: !767, line: 10, baseType: !32, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !775, file: !767, line: 49, baseType: !30, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !766, file: !767, line: 57, baseType: !788, size: 128)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !767, line: 53, size: 128, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !788, file: !767, line: 54, baseType: !495, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !788, file: !767, line: 55, baseType: !701, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !788, file: !767, line: 56, baseType: !781, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !766, file: !767, line: 66, baseType: !794, size: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !767, line: 60, size: 256, elements: !795)
!795 = !{!796, !797, !798, !799, !802}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !794, file: !767, line: 61, baseType: !495, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !794, file: !767, line: 62, baseType: !701, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !794, file: !767, line: 63, baseType: !30, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !794, file: !767, line: 64, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !275, line: 94, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !275, line: 15, baseType: !441)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !794, file: !767, line: 65, baseType: !800, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !766, file: !767, line: 105, baseType: !804, size: 256)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !767, line: 69, size: 256, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !804, file: !767, line: 70, baseType: !32, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !767, line: 79, baseType: !808, size: 192, offset: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !767, line: 79, size: 192, elements: !809)
!809 = !{!810, !811, !813, !820, !825}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !808, file: !767, line: 81, baseType: !30, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !808, file: !767, line: 86, baseType: !812, size: 16)
!812 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !808, file: !767, line: 92, baseType: !814, size: 192)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !767, line: 88, size: 192, elements: !815)
!815 = !{!816, !818, !819}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !814, file: !767, line: 89, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 64, elements: !269)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !814, file: !767, line: 90, baseType: !32, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !814, file: !767, line: 91, baseType: !32, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !808, file: !767, line: 97, baseType: !821, size: 96)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !767, line: 94, size: 96, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !821, file: !767, line: 95, baseType: !817, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !821, file: !767, line: 96, baseType: !59, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !808, file: !767, line: 103, baseType: !826, size: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !767, line: 99, size: 128, elements: !827)
!827 = !{!828, !829, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !826, file: !767, line: 100, baseType: !34, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !826, file: !767, line: 101, baseType: !59, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !826, file: !767, line: 102, baseType: !59, size: 32, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !766, file: !767, line: 111, baseType: !832, size: 128)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !767, line: 108, size: 128, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !832, file: !767, line: 109, baseType: !441, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !832, file: !767, line: 110, baseType: !30, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !766, file: !767, line: 118, baseType: !837, size: 128)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !767, line: 114, size: 128, elements: !838)
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !837, file: !767, line: 115, baseType: !32, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !837, file: !767, line: 116, baseType: !30, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !837, file: !767, line: 117, baseType: !7, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !63, file: !64, line: 1208, baseType: !843, size: 448, offset: 17664)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !844, line: 12, size: 448, elements: !845)
!844 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!845 = !{!846, !847, !848, !849, !850, !851, !852}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !843, file: !844, line: 15, baseType: !42, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !843, file: !844, line: 17, baseType: !42, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !843, file: !844, line: 19, baseType: !42, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !843, file: !844, line: 21, baseType: !42, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !843, file: !844, line: 29, baseType: !42, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !843, file: !844, line: 35, baseType: !42, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !843, file: !844, line: 44, baseType: !42, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !63, file: !64, line: 1215, baseType: !42, size: 64, offset: 18112)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !63, file: !64, line: 1217, baseType: !42, size: 64, offset: 18176)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !63, file: !64, line: 1219, baseType: !42, size: 64, offset: 18240)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !63, file: !64, line: 1223, baseType: !857, size: 64, offset: 18304)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !858, line: 99, baseType: !859)
!858 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !858, line: 99, size: 64, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !859, file: !858, line: 99, baseType: !359, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !63, file: !64, line: 1225, baseType: !863, size: 32, offset: 18368)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !278, line: 275, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !278, line: 275, size: 32, elements: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !864, file: !278, line: 275, baseType: !282, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !63, file: !64, line: 1226, baseType: !30, size: 32, offset: 18400)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !63, file: !64, line: 1227, baseType: !30, size: 32, offset: 18432)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !63, file: !64, line: 1231, baseType: !870, size: 64, offset: 18496)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !64, line: 1231, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !63, file: !64, line: 1233, baseType: !132, size: 128, offset: 18560)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !63, file: !64, line: 1240, baseType: !874, size: 64, offset: 18688)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !64, line: 62, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !63, file: !64, line: 1242, baseType: !877, size: 64, offset: 18752)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !64, line: 1242, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !63, file: !64, line: 1244, baseType: !132, size: 128, offset: 18816)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !63, file: !64, line: 1245, baseType: !881, size: 64, offset: 18944)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !64, line: 51, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !63, file: !64, line: 1246, baseType: !606, size: 256, offset: 19008)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !63, file: !64, line: 1247, baseType: !7, size: 32, offset: 19264)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !63, file: !64, line: 1250, baseType: !886, size: 64, offset: 19328)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !64, line: 57, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !63, file: !64, line: 1251, baseType: !606, size: 256, offset: 19392)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !63, file: !64, line: 1252, baseType: !132, size: 128, offset: 19648)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !63, file: !64, line: 1259, baseType: !891, size: 64, offset: 19776)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !64, line: 54, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !63, file: !64, line: 1260, baseType: !812, size: 16, offset: 19840)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !63, file: !64, line: 1261, baseType: !812, size: 16, offset: 19856)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !63, file: !64, line: 1314, baseType: !896, size: 64, offset: 19904)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !898, line: 62, size: 256, align: 256, elements: !899)
!898 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!899 = !{!900, !901, !902, !903, !904, !905, !906}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !897, file: !898, line: 75, baseType: !59, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !897, file: !898, line: 90, baseType: !59, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !897, file: !898, line: 112, baseType: !44, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !897, file: !898, line: 132, baseType: !59, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !897, file: !898, line: 140, baseType: !59, size: 32, offset: 160)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !897, file: !898, line: 149, baseType: !59, size: 32, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !897, file: !898, line: 154, baseType: !907, offset: 224)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, elements: !559)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !63, file: !64, line: 1315, baseType: !58, size: 32, offset: 19968)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !63, file: !64, line: 1316, baseType: !58, size: 32, offset: 20000)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !63, file: !64, line: 1321, baseType: !34, size: 64, offset: 20032)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !63, file: !64, line: 1325, baseType: !30, size: 32, offset: 20096)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !63, file: !64, line: 1326, baseType: !30, size: 32, offset: 20128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !63, file: !64, line: 1327, baseType: !30, size: 32, offset: 20160)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !63, file: !64, line: 1328, baseType: !30, size: 32, offset: 20192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !63, file: !64, line: 1329, baseType: !543, size: 128, align: 64, offset: 20224)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !63, file: !64, line: 1332, baseType: !917, size: 128, offset: 20352)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !918, line: 51, size: 128, elements: !919)
!918 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!919 = !{!920, !925, !926}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !917, file: !918, line: 60, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !922, line: 7, size: 64, elements: !923)
!922 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !921, file: !922, line: 12, baseType: !356, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !917, file: !918, line: 63, baseType: !721, size: 8, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !917, file: !918, line: 70, baseType: !721, size: 8, offset: 72)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !63, file: !64, line: 1335, baseType: !928, size: 64, offset: 20480)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !64, line: 59, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !63, file: !64, line: 1337, baseType: !931, size: 128, offset: 20544)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !918, line: 39, size: 128, elements: !932)
!932 = !{!933, !936, !937}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !931, file: !918, line: 40, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !410, line: 8, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !931, file: !918, line: 42, baseType: !59, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !931, file: !918, line: 43, baseType: !59, size: 32, offset: 96)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !63, file: !64, line: 1340, baseType: !939, size: 64, offset: 20672)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !64, line: 69, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !63, file: !64, line: 1351, baseType: !30, size: 32, offset: 20736)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !63, file: !64, line: 1352, baseType: !30, size: 32, offset: 20768)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !63, file: !64, line: 1354, baseType: !34, size: 64, offset: 20800)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !63, file: !64, line: 1364, baseType: !42, size: 64, offset: 20864)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !63, file: !64, line: 1365, baseType: !42, size: 64, offset: 20928)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !63, file: !64, line: 1412, baseType: !34, size: 64, offset: 20992)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !63, file: !64, line: 1453, baseType: !948, size: 64, offset: 21056)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !64, line: 1453, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !63, file: !64, line: 1457, baseType: !951, size: 64, offset: 21120)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !64, line: 1457, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !63, file: !64, line: 1463, baseType: !954, offset: 21184)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !64, line: 739, elements: !955)
!955 = !{}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !63, file: !64, line: 1470, baseType: !543, size: 128, align: 64, offset: 21184)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !63, file: !64, line: 1471, baseType: !70, size: 32, offset: 21312)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !63, file: !64, line: 1472, baseType: !30, size: 32, offset: 21344)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !63, file: !64, line: 1474, baseType: !62, size: 64, offset: 21376)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !63, file: !64, line: 1475, baseType: !961, size: 320, offset: 21440)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !962, line: 11, size: 320, elements: !963)
!962 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!963 = !{!964, !965, !966, !971}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !961, file: !962, line: 16, baseType: !527, size: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !961, file: !962, line: 17, baseType: !34, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !961, file: !962, line: 18, baseType: !967, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !962, line: 19, baseType: !58, size: 32, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !63, file: !64, line: 1478, baseType: !973, size: 64, offset: 21760)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !64, line: 1478, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !63, file: !64, line: 1482, baseType: !70, size: 32, offset: 21824)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !63, file: !64, line: 1489, baseType: !32, size: 64, offset: 21888)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !63, file: !64, line: 1504, baseType: !32, size: 64, offset: 21952)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !63, file: !64, line: 1505, baseType: !44, size: 64, offset: 22016)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !63, file: !64, line: 1506, baseType: !42, size: 64, offset: 22080)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !63, file: !64, line: 1507, baseType: !44, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !63, file: !64, line: 1508, baseType: !44, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !63, file: !64, line: 1509, baseType: !44, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !63, file: !64, line: 1510, baseType: !543, size: 128, align: 64, offset: 22208)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !63, file: !64, line: 1511, baseType: !30, size: 32, offset: 22336)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !63, file: !64, line: 1515, baseType: !986, size: 64, offset: 22400)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !89, line: 56, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !986, file: !89, line: 57, baseType: !92, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !63, file: !64, line: 1518, baseType: !986, size: 64, offset: 22464)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !63, file: !64, line: 1528, baseType: !543, size: 128, align: 64, offset: 22528)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !63, file: !64, line: 1552, baseType: !992, size: 35328, offset: 23040)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !993, line: 430, size: 35328, elements: !994)
!993 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!994 = !{!995, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1024, !1025, !1026, !1027, !1028, !1029, !1032, !1033, !1034, !1035}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !992, file: !993, line: 432, baseType: !996, size: 192)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 192, elements: !597)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !998, line: 16, size: 64, elements: !999)
!998 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !997, file: !998, line: 17, baseType: !99, size: 16)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !997, file: !998, line: 18, baseType: !99, size: 16, offset: 16)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !997, file: !998, line: 19, baseType: !99, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !997, file: !998, line: 19, baseType: !99, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !997, file: !998, line: 19, baseType: !99, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !997, file: !998, line: 19, baseType: !99, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !997, file: !998, line: 19, baseType: !99, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !997, file: !998, line: 20, baseType: !99, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !997, file: !998, line: 20, baseType: !99, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !997, file: !998, line: 20, baseType: !99, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !997, file: !998, line: 20, baseType: !99, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !997, file: !998, line: 20, baseType: !99, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !997, file: !998, line: 20, baseType: !99, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !992, file: !993, line: 436, baseType: !34, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !992, file: !993, line: 440, baseType: !101, size: 16, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !992, file: !993, line: 441, baseType: !101, size: 16, offset: 272)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !992, file: !993, line: 442, baseType: !101, size: 16, offset: 288)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !992, file: !993, line: 443, baseType: !101, size: 16, offset: 304)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !992, file: !993, line: 447, baseType: !34, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !992, file: !993, line: 448, baseType: !34, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !992, file: !993, line: 459, baseType: !1021, size: 256, offset: 448)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 256, elements: !532)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !993, line: 428, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !992, file: !993, line: 461, baseType: !34, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !992, file: !993, line: 463, baseType: !34, size: 64, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !992, file: !993, line: 465, baseType: !34, size: 64, offset: 832)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !992, file: !993, line: 466, baseType: !34, size: 64, offset: 896)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !992, file: !993, line: 467, baseType: !34, size: 64, offset: 960)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !992, file: !993, line: 473, baseType: !1030, size: 64, offset: 1024)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !993, line: 10, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !992, file: !993, line: 480, baseType: !34, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !992, file: !993, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !992, file: !993, line: 491, baseType: !58, size: 32, offset: 1184)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !992, file: !993, line: 501, baseType: !1036, size: 33792, offset: 1536)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1037, line: 448, size: 33792, elements: !1038)
!1037 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1038 = !{!1039, !1040, !1041, !1209, !1210, !1216, !1217}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1036, file: !1037, line: 461, baseType: !7, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1036, file: !1037, line: 468, baseType: !34, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1036, file: !1037, line: 476, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1037, line: 356, size: 33280, align: 512, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1043, file: !1037, line: 358, baseType: !7, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1043, file: !1037, line: 361, baseType: !7, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1043, file: !1037, line: 364, baseType: !42, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1043, file: !1037, line: 367, baseType: !42, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1043, file: !1037, line: 370, baseType: !42, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1043, file: !1037, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1043, file: !1037, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1043, file: !1037, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1043, file: !1037, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1043, file: !1037, line: 397, baseType: !1055, size: 32768, offset: 512)
!1055 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1037, line: 348, size: 32768, elements: !1056)
!1056 = !{!1057, !1072, !1113, !1190, !1205}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1055, file: !1037, line: 349, baseType: !1058, size: 896)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1037, line: 12, size: 896, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1071}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1058, file: !1037, line: 13, baseType: !58, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1058, file: !1037, line: 14, baseType: !58, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1058, file: !1037, line: 15, baseType: !58, size: 32, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1058, file: !1037, line: 16, baseType: !58, size: 32, offset: 96)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1058, file: !1037, line: 17, baseType: !58, size: 32, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1058, file: !1037, line: 18, baseType: !58, size: 32, offset: 160)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1058, file: !1037, line: 19, baseType: !58, size: 32, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1058, file: !1037, line: 22, baseType: !1068, size: 640, offset: 224)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 20)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1058, file: !1037, line: 25, baseType: !58, size: 32, offset: 864)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1055, file: !1037, line: 350, baseType: !1073, size: 4096, align: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1037, line: 34, size: 4096, align: 128, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1094, !1095, !1096, !1100, !1104, !1108}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1073, file: !1037, line: 35, baseType: !99, size: 16)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1073, file: !1037, line: 36, baseType: !99, size: 16, offset: 16)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1073, file: !1037, line: 37, baseType: !99, size: 16, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1073, file: !1037, line: 38, baseType: !99, size: 16, offset: 48)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !1037, line: 39, baseType: !1080, size: 128, offset: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !1037, line: 39, size: 128, elements: !1081)
!1081 = !{!1082, !1087}
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !1037, line: 40, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !1037, line: 40, size: 128, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1083, file: !1037, line: 41, baseType: !42, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1083, file: !1037, line: 42, baseType: !42, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !1037, line: 44, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !1037, line: 44, size: 128, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1088, file: !1037, line: 45, baseType: !58, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1088, file: !1037, line: 46, baseType: !58, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1088, file: !1037, line: 47, baseType: !58, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1088, file: !1037, line: 48, baseType: !58, size: 32, offset: 96)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1073, file: !1037, line: 51, baseType: !58, size: 32, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1073, file: !1037, line: 52, baseType: !58, size: 32, offset: 224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1073, file: !1037, line: 55, baseType: !1097, size: 1024, offset: 256)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1024, elements: !1098)
!1098 = !{!1099}
!1099 = !DISubrange(count: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1073, file: !1037, line: 58, baseType: !1101, size: 2048, offset: 1280)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2048, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1073, file: !1037, line: 60, baseType: !1105, size: 384, offset: 3328)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 384, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 12)
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !1037, line: 62, baseType: !1109, size: 384, offset: 3712)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !1037, line: 62, size: 384, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1109, file: !1037, line: 63, baseType: !1105, size: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1109, file: !1037, line: 64, baseType: !1105, size: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1055, file: !1037, line: 351, baseType: !1114, size: 1088)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1037, line: 79, size: 1088, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1189}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1114, file: !1037, line: 80, baseType: !58, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1114, file: !1037, line: 81, baseType: !58, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1114, file: !1037, line: 82, baseType: !58, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1114, file: !1037, line: 83, baseType: !58, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1114, file: !1037, line: 84, baseType: !58, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1114, file: !1037, line: 85, baseType: !58, size: 32, offset: 160)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1114, file: !1037, line: 86, baseType: !58, size: 32, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1114, file: !1037, line: 88, baseType: !1068, size: 640, offset: 224)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1114, file: !1037, line: 89, baseType: !242, size: 8, offset: 864)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1114, file: !1037, line: 90, baseType: !242, size: 8, offset: 872)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1114, file: !1037, line: 91, baseType: !242, size: 8, offset: 880)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1114, file: !1037, line: 92, baseType: !242, size: 8, offset: 888)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1114, file: !1037, line: 93, baseType: !242, size: 8, offset: 896)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1114, file: !1037, line: 94, baseType: !242, size: 8, offset: 904)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1114, file: !1037, line: 95, baseType: !1131, size: 64, offset: 960)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1133, line: 11, size: 128, elements: !1134)
!1133 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1132, file: !1133, line: 12, baseType: !441, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1132, file: !1133, line: 13, baseType: !1137, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1139, line: 103, size: 1344, elements: !1140)
!1139 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1169, !1170, !1171}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1138, file: !1139, line: 109, baseType: !34, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1138, file: !1139, line: 110, baseType: !34, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1138, file: !1139, line: 111, baseType: !34, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1138, file: !1139, line: 112, baseType: !34, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1138, file: !1139, line: 113, baseType: !34, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1138, file: !1139, line: 114, baseType: !34, size: 64, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1138, file: !1139, line: 117, baseType: !34, size: 64, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1138, file: !1139, line: 118, baseType: !34, size: 64, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1138, file: !1139, line: 119, baseType: !34, size: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1138, file: !1139, line: 120, baseType: !34, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1138, file: !1139, line: 121, baseType: !34, size: 64, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1138, file: !1139, line: 122, baseType: !34, size: 64, offset: 704)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1138, file: !1139, line: 123, baseType: !34, size: 64, offset: 768)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1138, file: !1139, line: 124, baseType: !34, size: 64, offset: 832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1138, file: !1139, line: 125, baseType: !34, size: 64, offset: 896)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1138, file: !1139, line: 139, baseType: !34, size: 64, offset: 960)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1138, file: !1139, line: 142, baseType: !34, size: 64, offset: 1024)
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !1139, line: 144, baseType: !1159, size: 64, offset: 1088)
!1159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1138, file: !1139, line: 144, size: 64, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1159, file: !1139, line: 146, baseType: !99, size: 16)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1159, file: !1139, line: 148, baseType: !42, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1159, file: !1139, line: 150, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1139, line: 59, size: 64, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1164, file: !1139, line: 61, baseType: !42, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1164, file: !1139, line: 63, baseType: !42, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1164, file: !1139, line: 65, baseType: !42, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1138, file: !1139, line: 153, baseType: !34, size: 64, offset: 1152)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1138, file: !1139, line: 154, baseType: !34, size: 64, offset: 1216)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !1139, line: 156, baseType: !1172, size: 64, offset: 1280)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1138, file: !1139, line: 156, size: 64, elements: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1172, file: !1139, line: 158, baseType: !99, size: 16)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1172, file: !1139, line: 160, baseType: !42, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1172, file: !1139, line: 162, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1139, line: 69, size: 64, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1177, file: !1139, line: 71, baseType: !42, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1177, file: !1139, line: 73, baseType: !42, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1177, file: !1139, line: 75, baseType: !42, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1177, file: !1139, line: 77, baseType: !42, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1177, file: !1139, line: 80, baseType: !42, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1177, file: !1139, line: 83, baseType: !42, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1177, file: !1139, line: 86, baseType: !42, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1177, file: !1139, line: 88, baseType: !42, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1177, file: !1139, line: 93, baseType: !42, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1177, file: !1139, line: 100, baseType: !42, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1114, file: !1037, line: 96, baseType: !58, size: 32, offset: 1024)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1055, file: !1037, line: 352, baseType: !1191, size: 4608, align: 512)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1037, line: 333, size: 4608, align: 512, elements: !1192)
!1192 = !{!1193, !1194, !1203}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1191, file: !1037, line: 334, baseType: !1073, size: 4096, align: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1191, file: !1037, line: 335, baseType: !1195, size: 512, offset: 4096)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1037, line: 312, size: 512, elements: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1195, file: !1037, line: 313, baseType: !42, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1195, file: !1037, line: 314, baseType: !42, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1195, file: !1037, line: 315, baseType: !1200, size: 384, offset: 128)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 384, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 6)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1191, file: !1037, line: 336, baseType: !1204, offset: 4608)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, elements: !559)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1055, file: !1037, line: 353, baseType: !1206, size: 32768)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 32768, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 4096)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1036, file: !1037, line: 484, baseType: !1042, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1036, file: !1037, line: 491, baseType: !1211, size: 128, offset: 256)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1037, line: 404, size: 128, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1211, file: !1037, line: 424, baseType: !42, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1211, file: !1037, line: 432, baseType: !7, size: 32, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1211, file: !1037, line: 440, baseType: !7, size: 32, offset: 96)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1036, file: !1037, line: 498, baseType: !1211, size: 128, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1036, file: !1037, line: 508, baseType: !1043, size: 33280, align: 512, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!1220 = !{!1221, !0}
!1221 = !DIGlobalVariableExpression(var: !1222, expr: !DIExpression())
!1222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !1223, isLocal: true, isDefinition: true)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 40, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 5)
!1226 = !{i32 7, !"Dwarf Version", i32 5}
!1227 = !{i32 2, !"Debug Info Version", i32 3}
!1228 = !{i32 1, !"wchar_size", i32 2}
!1229 = !{i32 8, !"cf-protection-branch", i32 1}
!1230 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1231 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1232 = !{i32 1, !"Code Model", i32 2}
!1233 = !{i32 1, !"override-stack-alignment", i32 8}
!1234 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1235 = distinct !DISubprogram(name: "osq_lock", scope: !3, file: !3, line: 90, type: !1236, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!721, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!1239 = !{!1240, !1241, !1242, !1247, !1249, !1250, !1251, !1252, !1255, !1257, !1259, !1260, !1263, !1264, !1270, !1273, !1275, !1276, !1277, !1278}
!1240 = !DILocalVariable(name: "lock", arg: 1, scope: !1235, file: !3, line: 90, type: !1238)
!1241 = !DILocalVariable(name: "node", scope: !1235, file: !3, line: 92, type: !23)
!1242 = !DILocalVariable(name: "__vpp_verify", scope: !1243, file: !3, line: 92, type: !1245)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 92, column: 38)
!1244 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 92, column: 38)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1247 = !DILocalVariable(name: "tcp_ptr__", scope: !1248, file: !3, line: 92, type: !34)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 92, column: 38)
!1249 = !DILocalVariable(name: "prev", scope: !1235, file: !3, line: 93, type: !23)
!1250 = !DILocalVariable(name: "next", scope: !1235, file: !3, line: 93, type: !23)
!1251 = !DILocalVariable(name: "curr", scope: !1235, file: !3, line: 94, type: !30)
!1252 = !DILocalVariable(name: "pscr_ret__", scope: !1253, file: !3, line: 94, type: !30)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 94, column: 24)
!1254 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 94, column: 24)
!1255 = !DILocalVariable(name: "__vpp_verify", scope: !1256, file: !3, line: 94, type: !1245)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 94, column: 24)
!1257 = !DILocalVariable(name: "pfo_val__", scope: !1258, file: !3, line: 94, type: !58)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 94, column: 24)
!1259 = !DILocalVariable(name: "old", scope: !1235, file: !3, line: 95, type: !30)
!1260 = !DILocalVariable(name: "__PTR", scope: !1261, file: !3, line: 143, type: !33)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 143, column: 6)
!1262 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 143, column: 6)
!1263 = !DILocalVariable(name: "VAL", scope: !1261, file: !3, line: 143, type: !30)
!1264 = !DILocalVariable(name: "__v", scope: !1265, file: !3, line: 161, type: !23)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 161, column: 7)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 161, column: 7)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 156, column: 11)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 156, column: 2)
!1269 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 156, column: 2)
!1270 = !DILocalVariable(name: "__ai_ptr", scope: !1271, file: !3, line: 162, type: !1272)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 162, column: 7)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1273 = !DILocalVariable(name: "__ret", scope: !1274, file: !3, line: 162, type: !23)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 162, column: 7)
!1275 = !DILocalVariable(name: "__old", scope: !1274, file: !3, line: 162, type: !23)
!1276 = !DILocalVariable(name: "__new", scope: !1274, file: !3, line: 162, type: !23)
!1277 = !DILocalVariable(name: "__ptr", scope: !1274, file: !3, line: 162, type: !40)
!1278 = !DILocalVariable(name: "___p1", scope: !1279, file: !3, line: 170, type: !30)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 170, column: 7)
!1280 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 170, column: 7)
!1281 = !DILocation(line: 90, column: 45, scope: !1235)
!1282 = !DILocation(line: 92, column: 2, scope: !1235)
!1283 = !DILocation(line: 92, column: 31, scope: !1235)
!1284 = !DILocation(line: 92, column: 38, scope: !1244)
!1285 = !DILocation(line: 92, column: 38, scope: !1243)
!1286 = !DILocation(line: 92, column: 38, scope: !1248)
!1287 = !{i64 2150796499}
!1288 = !DILocation(line: 93, column: 2, scope: !1235)
!1289 = !DILocation(line: 93, column: 31, scope: !1235)
!1290 = !DILocation(line: 93, column: 38, scope: !1235)
!1291 = !DILocation(line: 94, column: 2, scope: !1235)
!1292 = !DILocation(line: 94, column: 6, scope: !1235)
!1293 = !DILocation(line: 94, column: 24, scope: !1254)
!1294 = !DILocation(line: 94, column: 24, scope: !1253)
!1295 = !DILocation(line: 94, column: 24, scope: !1256)
!1296 = !DILocation(line: 94, column: 24, scope: !1258)
!1297 = !{i64 2150799410}
!1298 = !DILocation(line: 94, column: 13, scope: !1235)
!1299 = !DILocation(line: 95, column: 2, scope: !1235)
!1300 = !DILocation(line: 95, column: 6, scope: !1235)
!1301 = !DILocation(line: 97, column: 2, scope: !1235)
!1302 = !DILocation(line: 97, column: 8, scope: !1235)
!1303 = !DILocation(line: 97, column: 15, scope: !1235)
!1304 = !DILocation(line: 98, column: 2, scope: !1235)
!1305 = !DILocation(line: 98, column: 8, scope: !1235)
!1306 = !DILocation(line: 98, column: 13, scope: !1235)
!1307 = !DILocation(line: 99, column: 14, scope: !1235)
!1308 = !DILocation(line: 99, column: 2, scope: !1235)
!1309 = !DILocation(line: 99, column: 8, scope: !1235)
!1310 = !DILocation(line: 99, column: 12, scope: !1235)
!1311 = !DILocation(line: 107, column: 21, scope: !1235)
!1312 = !DILocation(line: 107, column: 27, scope: !1235)
!1313 = !DILocation(line: 107, column: 33, scope: !1235)
!1314 = !DILocation(line: 107, column: 8, scope: !1235)
!1315 = !DILocation(line: 107, column: 6, scope: !1235)
!1316 = !DILocation(line: 108, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 108, column: 6)
!1318 = !DILocation(line: 108, column: 10, scope: !1317)
!1319 = !DILocation(line: 108, column: 6, scope: !1235)
!1320 = !DILocation(line: 109, column: 3, scope: !1317)
!1321 = !DILocation(line: 111, column: 20, scope: !1235)
!1322 = !DILocation(line: 111, column: 9, scope: !1235)
!1323 = !DILocation(line: 111, column: 7, scope: !1235)
!1324 = !DILocation(line: 112, column: 15, scope: !1235)
!1325 = !DILocation(line: 112, column: 2, scope: !1235)
!1326 = !DILocation(line: 112, column: 8, scope: !1235)
!1327 = !DILocation(line: 112, column: 13, scope: !1235)
!1328 = !DILocation(line: 124, column: 2, scope: !1235)
!1329 = !DILocation(line: 124, column: 2, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 124, column: 2)
!1331 = !DILocation(line: 124, column: 2, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 124, column: 2)
!1333 = !{i64 2150800288}
!1334 = !DILocation(line: 126, column: 2, scope: !1235)
!1335 = !DILocation(line: 126, column: 2, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 126, column: 2)
!1337 = !DILocation(line: 126, column: 2, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 126, column: 2)
!1339 = !DILocation(line: 126, column: 2, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 126, column: 2)
!1341 = !DILocation(line: 143, column: 6, scope: !1261)
!1342 = !DILocation(line: 143, column: 6, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 143, column: 6)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 143, column: 6)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 143, column: 6)
!1346 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 143, column: 6)
!1347 = !DILocation(line: 143, column: 6, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 143, column: 6)
!1349 = !DILocation(line: 143, column: 6, scope: !1344)
!1350 = !DILocation(line: 143, column: 6, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 143, column: 6)
!1352 = !DILocation(line: 143, column: 6, scope: !1345)
!1353 = distinct !{!1353, !1354, !1354, !1355}
!1354 = !DILocation(line: 143, column: 6, scope: !1346)
!1355 = !{!"llvm.loop.unroll.disable"}
!1356 = !DILocation(line: 143, column: 6, scope: !1262)
!1357 = !DILocation(line: 143, column: 6, scope: !1235)
!1358 = !DILocation(line: 145, column: 3, scope: !1262)
!1359 = !DILocation(line: 156, column: 2, scope: !1235)
!1360 = !DILocation(line: 161, column: 7, scope: !1265)
!1361 = !DILocation(line: 161, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 161, column: 7)
!1363 = !DILocation(line: 161, column: 7, scope: !1266)
!1364 = !DILocation(line: 161, column: 32, scope: !1266)
!1365 = !DILocation(line: 161, column: 29, scope: !1266)
!1366 = !DILocation(line: 161, column: 37, scope: !1266)
!1367 = !DILocation(line: 162, column: 7, scope: !1271)
!1368 = !DILocation(line: 162, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 162, column: 7)
!1370 = !DILocation(line: 162, column: 7, scope: !1274)
!1371 = !{i64 2150809563, i64 2150809602, i64 2150809623, i64 2150809660, i64 2150809683, i64 2150809692}
!1372 = !DILocation(line: 162, column: 7, scope: !1266)
!1373 = !DILocation(line: 162, column: 43, scope: !1266)
!1374 = !DILocation(line: 162, column: 40, scope: !1266)
!1375 = !DILocation(line: 161, column: 7, scope: !1267)
!1376 = !DILocation(line: 163, column: 4, scope: !1266)
!1377 = !DILocation(line: 170, column: 7, scope: !1279)
!1378 = !DILocation(line: 170, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 170, column: 7)
!1380 = !DILocation(line: 170, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 170, column: 7)
!1382 = !DILocation(line: 170, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 170, column: 7)
!1384 = !{i64 2150814585}
!1385 = !DILocation(line: 170, column: 7, scope: !1280)
!1386 = !DILocation(line: 170, column: 7, scope: !1267)
!1387 = !DILocation(line: 171, column: 4, scope: !1280)
!1388 = !DILocation(line: 173, column: 3, scope: !1267)
!1389 = !DILocation(line: 179, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 179, column: 10)
!1391 = !DILocation(line: 179, column: 10, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 179, column: 10)
!1393 = !DILocation(line: 179, column: 8, scope: !1267)
!1394 = !DILocation(line: 156, column: 2, scope: !1268)
!1395 = distinct !{!1395, !1396, !1397, !1355}
!1396 = !DILocation(line: 156, column: 2, scope: !1269)
!1397 = !DILocation(line: 180, column: 2, scope: !1269)
!1398 = !DILocation(line: 189, column: 23, scope: !1235)
!1399 = !DILocation(line: 189, column: 29, scope: !1235)
!1400 = !DILocation(line: 189, column: 35, scope: !1235)
!1401 = !DILocation(line: 189, column: 9, scope: !1235)
!1402 = !DILocation(line: 189, column: 7, scope: !1235)
!1403 = !DILocation(line: 190, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 190, column: 6)
!1405 = !DILocation(line: 190, column: 6, scope: !1235)
!1406 = !DILocation(line: 191, column: 3, scope: !1404)
!1407 = !DILocation(line: 201, column: 2, scope: !1235)
!1408 = !DILocation(line: 201, column: 2, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 201, column: 2)
!1410 = !DILocation(line: 201, column: 2, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 201, column: 2)
!1412 = !DILocation(line: 201, column: 2, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 201, column: 2)
!1414 = !DILocation(line: 202, column: 2, scope: !1235)
!1415 = !DILocation(line: 202, column: 2, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 202, column: 2)
!1417 = !DILocation(line: 202, column: 2, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 202, column: 2)
!1419 = !DILocation(line: 202, column: 2, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 202, column: 2)
!1421 = !DILocation(line: 204, column: 2, scope: !1235)
!1422 = !DILocation(line: 205, column: 1, scope: !1235)
!1423 = distinct !DISubprogram(name: "encode_cpu", scope: !3, file: !3, line: 20, type: !1424, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!30, !30}
!1426 = !{!1427}
!1427 = !DILocalVariable(name: "cpu_nr", arg: 1, scope: !1423, file: !3, line: 20, type: !30)
!1428 = !DILocation(line: 20, column: 34, scope: !1423)
!1429 = !DILocation(line: 22, column: 9, scope: !1423)
!1430 = !DILocation(line: 22, column: 16, scope: !1423)
!1431 = !DILocation(line: 22, column: 2, scope: !1423)
!1432 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !1433, file: !1433, line: 313, type: !1434, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1438)
!1433 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!1438 = !{!1439}
!1439 = !DILocalVariable(name: "op", arg: 1, scope: !1432, file: !1433, line: 313, type: !1436)
!1440 = !DILocation(line: 313, column: 66, scope: !1432)
!1441 = !DILocation(line: 313, column: 72, scope: !1432)
!1442 = distinct !DISubprogram(name: "atomic_xchg", scope: !1443, file: !1443, line: 1116, type: !1444, scopeLine: 1117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1447)
!1443 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!30, !1446, !30}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1447 = !{!1448, !1449}
!1448 = !DILocalVariable(name: "v", arg: 1, scope: !1442, file: !1443, line: 1116, type: !1446)
!1449 = !DILocalVariable(name: "new", arg: 2, scope: !1442, file: !1443, line: 1116, type: !30)
!1450 = !DILocation(line: 1116, column: 23, scope: !1442)
!1451 = !DILocation(line: 1116, column: 30, scope: !1442)
!1452 = !DILocation(line: 1118, column: 2, scope: !1442)
!1453 = !DILocation(line: 1118, column: 2, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1442, file: !1443, line: 1118, column: 2)
!1455 = !DILocation(line: 1119, column: 31, scope: !1442)
!1456 = !DILocation(line: 1119, column: 2, scope: !1442)
!1457 = !DILocation(line: 1120, column: 25, scope: !1442)
!1458 = !DILocation(line: 1120, column: 28, scope: !1442)
!1459 = !DILocation(line: 1120, column: 9, scope: !1442)
!1460 = !DILocation(line: 1120, column: 2, scope: !1442)
!1461 = distinct !DISubprogram(name: "decode_cpu", scope: !3, file: !3, line: 30, type: !1462, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!23, !30}
!1464 = !{!1465, !1466, !1467, !1470}
!1465 = !DILocalVariable(name: "encoded_cpu_val", arg: 1, scope: !1461, file: !3, line: 30, type: !30)
!1466 = !DILocalVariable(name: "cpu_nr", scope: !1461, file: !3, line: 32, type: !30)
!1467 = !DILocalVariable(name: "__vpp_verify", scope: !1468, file: !3, line: 34, type: !1245)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 34, column: 9)
!1469 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 34, column: 9)
!1470 = !DILocalVariable(name: "__ptr", scope: !1471, file: !3, line: 34, type: !34)
!1471 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 34, column: 9)
!1472 = !DILocation(line: 30, column: 59, scope: !1461)
!1473 = !DILocation(line: 32, column: 2, scope: !1461)
!1474 = !DILocation(line: 32, column: 6, scope: !1461)
!1475 = !DILocation(line: 32, column: 15, scope: !1461)
!1476 = !DILocation(line: 32, column: 31, scope: !1461)
!1477 = !DILocation(line: 34, column: 9, scope: !1469)
!1478 = !DILocation(line: 34, column: 9, scope: !1468)
!1479 = !DILocation(line: 34, column: 9, scope: !1471)
!1480 = !DILocation(line: 35, column: 1, scope: !1461)
!1481 = !DILocation(line: 34, column: 2, scope: !1461)
!1482 = distinct !DISubprogram(name: "need_resched", scope: !64, file: !64, line: 2260, type: !1483, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!721}
!1485 = !DILocation(line: 2262, column: 9, scope: !1482)
!1486 = !DILocation(line: 2262, column: 2, scope: !1482)
!1487 = distinct !DISubprogram(name: "vcpu_is_preempted", scope: !64, file: !64, line: 2303, type: !1488, scopeLine: 2304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!721, !30}
!1490 = !{!1491}
!1491 = !DILocalVariable(name: "cpu", arg: 1, scope: !1487, file: !64, line: 2303, type: !30)
!1492 = !DILocation(line: 2303, column: 42, scope: !1487)
!1493 = !DILocation(line: 2305, column: 2, scope: !1487)
!1494 = distinct !DISubprogram(name: "node_cpu", scope: !3, file: !3, line: 25, type: !1495, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!30, !23}
!1497 = !{!1498}
!1498 = !DILocalVariable(name: "node", arg: 1, scope: !1494, file: !3, line: 25, type: !23)
!1499 = !DILocation(line: 25, column: 57, scope: !1494)
!1500 = !DILocation(line: 27, column: 9, scope: !1494)
!1501 = !DILocation(line: 27, column: 15, scope: !1494)
!1502 = !DILocation(line: 27, column: 19, scope: !1494)
!1503 = !DILocation(line: 27, column: 2, scope: !1494)
!1504 = distinct !DISubprogram(name: "cpu_relax", scope: !1505, file: !1505, line: 16, type: !1506, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1505 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null}
!1508 = !DILocation(line: 18, column: 2, scope: !1504)
!1509 = !DILocation(line: 19, column: 1, scope: !1504)
!1510 = distinct !DISubprogram(name: "__kcsan_disable_current", scope: !1511, file: !1511, line: 232, type: !1506, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1511 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1512 = !DILocation(line: 232, column: 52, scope: !1510)
!1513 = distinct !DISubprogram(name: "__kcsan_enable_current", scope: !1511, file: !1511, line: 231, type: !1506, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1514 = !DILocation(line: 231, column: 52, scope: !1513)
!1515 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1516, file: !1516, line: 94, type: !1517, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1522)
!1516 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1519, !686}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1522 = !{!1523, !1524}
!1523 = !DILocalVariable(name: "v", arg: 1, scope: !1515, file: !1516, line: 94, type: !1519)
!1524 = !DILocalVariable(name: "size", arg: 2, scope: !1515, file: !1516, line: 94, type: !686)
!1525 = !DILocation(line: 94, column: 79, scope: !1515)
!1526 = !DILocation(line: 94, column: 89, scope: !1515)
!1527 = !DILocation(line: 96, column: 20, scope: !1515)
!1528 = !DILocation(line: 96, column: 23, scope: !1515)
!1529 = !DILocation(line: 96, column: 2, scope: !1515)
!1530 = !DILocation(line: 97, column: 2, scope: !1515)
!1531 = !DILocation(line: 98, column: 1, scope: !1515)
!1532 = distinct !DISubprogram(name: "osq_wait_next", scope: !3, file: !3, line: 42, type: !1533, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!23, !1238, !23, !23}
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1544, !1546, !1548, !1549, !1556}
!1536 = !DILocalVariable(name: "lock", arg: 1, scope: !1532, file: !3, line: 42, type: !1238)
!1537 = !DILocalVariable(name: "node", arg: 2, scope: !1532, file: !3, line: 43, type: !23)
!1538 = !DILocalVariable(name: "prev", arg: 3, scope: !1532, file: !3, line: 44, type: !23)
!1539 = !DILocalVariable(name: "next", scope: !1532, file: !3, line: 46, type: !23)
!1540 = !DILocalVariable(name: "curr", scope: !1532, file: !3, line: 47, type: !30)
!1541 = !DILocalVariable(name: "pscr_ret__", scope: !1542, file: !3, line: 47, type: !30)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 47, column: 24)
!1543 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 47, column: 24)
!1544 = !DILocalVariable(name: "__vpp_verify", scope: !1545, file: !3, line: 47, type: !1245)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 47, column: 24)
!1546 = !DILocalVariable(name: "pfo_val__", scope: !1547, file: !3, line: 47, type: !58)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 47, column: 24)
!1548 = !DILocalVariable(name: "old", scope: !1532, file: !3, line: 48, type: !30)
!1549 = !DILocalVariable(name: "__ai_ptr", scope: !1550, file: !3, line: 79, type: !1272)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 79, column: 11)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 78, column: 19)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 78, column: 7)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 57, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 57, column: 2)
!1555 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 57, column: 2)
!1556 = !DILocalVariable(name: "__ret", scope: !1557, file: !3, line: 79, type: !23)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 79, column: 11)
!1558 = !DILocation(line: 42, column: 45, scope: !1532)
!1559 = !DILocation(line: 43, column: 37, scope: !1532)
!1560 = !DILocation(line: 44, column: 37, scope: !1532)
!1561 = !DILocation(line: 46, column: 2, scope: !1532)
!1562 = !DILocation(line: 46, column: 31, scope: !1532)
!1563 = !DILocation(line: 47, column: 2, scope: !1532)
!1564 = !DILocation(line: 47, column: 6, scope: !1532)
!1565 = !DILocation(line: 47, column: 24, scope: !1543)
!1566 = !DILocation(line: 47, column: 24, scope: !1542)
!1567 = !DILocation(line: 47, column: 24, scope: !1545)
!1568 = !DILocation(line: 47, column: 24, scope: !1547)
!1569 = !{i64 2150794105}
!1570 = !DILocation(line: 47, column: 13, scope: !1532)
!1571 = !DILocation(line: 48, column: 2, scope: !1532)
!1572 = !DILocation(line: 48, column: 6, scope: !1532)
!1573 = !DILocation(line: 55, column: 8, scope: !1532)
!1574 = !DILocation(line: 55, column: 15, scope: !1532)
!1575 = !DILocation(line: 55, column: 21, scope: !1532)
!1576 = !DILocation(line: 55, column: 6, scope: !1532)
!1577 = !DILocation(line: 57, column: 2, scope: !1532)
!1578 = !DILocation(line: 58, column: 20, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 58, column: 7)
!1580 = !DILocation(line: 58, column: 26, scope: !1579)
!1581 = !DILocation(line: 58, column: 7, scope: !1579)
!1582 = !DILocation(line: 58, column: 35, scope: !1579)
!1583 = !DILocation(line: 58, column: 32, scope: !1579)
!1584 = !DILocation(line: 58, column: 40, scope: !1579)
!1585 = !DILocation(line: 59, column: 31, scope: !1579)
!1586 = !DILocation(line: 59, column: 37, scope: !1579)
!1587 = !DILocation(line: 59, column: 43, scope: !1579)
!1588 = !DILocation(line: 59, column: 49, scope: !1579)
!1589 = !DILocation(line: 59, column: 7, scope: !1579)
!1590 = !DILocation(line: 59, column: 57, scope: !1579)
!1591 = !DILocation(line: 59, column: 54, scope: !1579)
!1592 = !DILocation(line: 58, column: 7, scope: !1553)
!1593 = !DILocation(line: 65, column: 4, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 59, column: 63)
!1595 = !DILocation(line: 78, column: 7, scope: !1552)
!1596 = !DILocation(line: 78, column: 13, scope: !1552)
!1597 = !DILocation(line: 78, column: 7, scope: !1553)
!1598 = !DILocation(line: 79, column: 11, scope: !1550)
!1599 = !DILocation(line: 79, column: 11, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 79, column: 11)
!1601 = !DILocation(line: 79, column: 11, scope: !1557)
!1602 = !{i64 2150796104}
!1603 = !DILocation(line: 79, column: 11, scope: !1551)
!1604 = !DILocation(line: 79, column: 9, scope: !1551)
!1605 = !DILocation(line: 80, column: 8, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 80, column: 8)
!1607 = !DILocation(line: 80, column: 8, scope: !1551)
!1608 = !DILocation(line: 81, column: 5, scope: !1606)
!1609 = !DILocation(line: 82, column: 3, scope: !1551)
!1610 = !DILocation(line: 84, column: 3, scope: !1553)
!1611 = !DILocation(line: 57, column: 2, scope: !1554)
!1612 = distinct !{!1612, !1613, !1614, !1355}
!1613 = !DILocation(line: 57, column: 2, scope: !1555)
!1614 = !DILocation(line: 85, column: 2, scope: !1555)
!1615 = !DILocation(line: 87, column: 9, scope: !1532)
!1616 = !DILocation(line: 88, column: 1, scope: !1532)
!1617 = !DILocation(line: 87, column: 2, scope: !1532)
!1618 = distinct !DISubprogram(name: "osq_unlock", scope: !3, file: !3, line: 207, type: !1619, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1621)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !1238}
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1629, !1631, !1633, !1636, !1638, !1640}
!1622 = !DILocalVariable(name: "lock", arg: 1, scope: !1618, file: !3, line: 207, type: !1238)
!1623 = !DILocalVariable(name: "node", scope: !1618, file: !3, line: 209, type: !23)
!1624 = !DILocalVariable(name: "next", scope: !1618, file: !3, line: 209, type: !23)
!1625 = !DILocalVariable(name: "curr", scope: !1618, file: !3, line: 210, type: !30)
!1626 = !DILocalVariable(name: "pscr_ret__", scope: !1627, file: !3, line: 210, type: !30)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 210, column: 24)
!1628 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 210, column: 24)
!1629 = !DILocalVariable(name: "__vpp_verify", scope: !1630, file: !3, line: 210, type: !1245)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 210, column: 24)
!1631 = !DILocalVariable(name: "pfo_val__", scope: !1632, file: !3, line: 210, type: !58)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 210, column: 24)
!1633 = !DILocalVariable(name: "__vpp_verify", scope: !1634, file: !3, line: 222, type: !1245)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 222, column: 9)
!1635 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 222, column: 9)
!1636 = !DILocalVariable(name: "tcp_ptr__", scope: !1637, file: !3, line: 222, type: !34)
!1637 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 222, column: 9)
!1638 = !DILocalVariable(name: "__ai_ptr", scope: !1639, file: !3, line: 223, type: !1272)
!1639 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 223, column: 9)
!1640 = !DILocalVariable(name: "__ret", scope: !1641, file: !3, line: 223, type: !23)
!1641 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 223, column: 9)
!1642 = !DILocation(line: 207, column: 47, scope: !1618)
!1643 = !DILocation(line: 209, column: 2, scope: !1618)
!1644 = !DILocation(line: 209, column: 31, scope: !1618)
!1645 = !DILocation(line: 209, column: 38, scope: !1618)
!1646 = !DILocation(line: 210, column: 2, scope: !1618)
!1647 = !DILocation(line: 210, column: 6, scope: !1618)
!1648 = !DILocation(line: 210, column: 24, scope: !1628)
!1649 = !DILocation(line: 210, column: 24, scope: !1627)
!1650 = !DILocation(line: 210, column: 24, scope: !1630)
!1651 = !DILocation(line: 210, column: 24, scope: !1632)
!1652 = !{i64 2150824100}
!1653 = !DILocation(line: 210, column: 13, scope: !1618)
!1654 = !DILocation(line: 215, column: 6, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 215, column: 6)
!1656 = !DILocation(line: 215, column: 6, scope: !1618)
!1657 = !DILocation(line: 217, column: 3, scope: !1655)
!1658 = !DILocation(line: 222, column: 9, scope: !1635)
!1659 = !DILocation(line: 222, column: 9, scope: !1634)
!1660 = !DILocation(line: 222, column: 9, scope: !1637)
!1661 = !{i64 2150825299}
!1662 = !DILocation(line: 222, column: 7, scope: !1618)
!1663 = !DILocation(line: 223, column: 9, scope: !1639)
!1664 = !DILocation(line: 223, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 223, column: 9)
!1666 = !DILocation(line: 223, column: 9, scope: !1641)
!1667 = !{i64 2150826792}
!1668 = !DILocation(line: 223, column: 9, scope: !1618)
!1669 = !DILocation(line: 223, column: 7, scope: !1618)
!1670 = !DILocation(line: 224, column: 6, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 224, column: 6)
!1672 = !DILocation(line: 224, column: 6, scope: !1618)
!1673 = !DILocation(line: 225, column: 3, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 224, column: 12)
!1675 = !DILocation(line: 225, column: 3, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 225, column: 3)
!1677 = !DILocation(line: 225, column: 3, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 225, column: 3)
!1679 = !DILocation(line: 225, column: 3, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 225, column: 3)
!1681 = !DILocation(line: 226, column: 3, scope: !1674)
!1682 = !DILocation(line: 229, column: 23, scope: !1618)
!1683 = !DILocation(line: 229, column: 29, scope: !1618)
!1684 = !DILocation(line: 229, column: 9, scope: !1618)
!1685 = !DILocation(line: 229, column: 7, scope: !1618)
!1686 = !DILocation(line: 230, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 230, column: 6)
!1688 = !DILocation(line: 230, column: 6, scope: !1618)
!1689 = !DILocation(line: 231, column: 3, scope: !1687)
!1690 = !DILocation(line: 231, column: 3, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 231, column: 3)
!1692 = !DILocation(line: 231, column: 3, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 231, column: 3)
!1694 = !DILocation(line: 231, column: 3, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 231, column: 3)
!1696 = !DILocation(line: 232, column: 1, scope: !1618)
!1697 = distinct !DISubprogram(name: "atomic_cmpxchg_release", scope: !1443, file: !1443, line: 1230, type: !1698, scopeLine: 1231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!30, !1446, !30, !30}
!1700 = !{!1701, !1702, !1703}
!1701 = !DILocalVariable(name: "v", arg: 1, scope: !1697, file: !1443, line: 1230, type: !1446)
!1702 = !DILocalVariable(name: "old", arg: 2, scope: !1697, file: !1443, line: 1230, type: !30)
!1703 = !DILocalVariable(name: "new", arg: 3, scope: !1697, file: !1443, line: 1230, type: !30)
!1704 = !DILocation(line: 1230, column: 34, scope: !1697)
!1705 = !DILocation(line: 1230, column: 41, scope: !1697)
!1706 = !DILocation(line: 1230, column: 50, scope: !1697)
!1707 = !DILocation(line: 1232, column: 2, scope: !1697)
!1708 = !DILocation(line: 1232, column: 2, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1697, file: !1443, line: 1232, column: 2)
!1710 = !DILocation(line: 1233, column: 31, scope: !1697)
!1711 = !DILocation(line: 1233, column: 2, scope: !1697)
!1712 = !DILocation(line: 1234, column: 36, scope: !1697)
!1713 = !DILocation(line: 1234, column: 39, scope: !1697)
!1714 = !DILocation(line: 1234, column: 44, scope: !1697)
!1715 = !DILocation(line: 1234, column: 9, scope: !1697)
!1716 = !DILocation(line: 1234, column: 2, scope: !1697)
!1717 = distinct !DISubprogram(name: "raw_atomic_xchg", scope: !1718, file: !1718, line: 1897, type: !1444, scopeLine: 1898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1719)
!1718 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1719 = !{!1720, !1721}
!1720 = !DILocalVariable(name: "v", arg: 1, scope: !1717, file: !1718, line: 1897, type: !1446)
!1721 = !DILocalVariable(name: "new", arg: 2, scope: !1717, file: !1718, line: 1897, type: !30)
!1722 = !DILocation(line: 1897, column: 27, scope: !1717)
!1723 = !DILocation(line: 1897, column: 34, scope: !1717)
!1724 = !DILocation(line: 1900, column: 26, scope: !1717)
!1725 = !DILocation(line: 1900, column: 29, scope: !1717)
!1726 = !DILocation(line: 1900, column: 9, scope: !1717)
!1727 = !DILocation(line: 1900, column: 2, scope: !1717)
!1728 = distinct !DISubprogram(name: "arch_atomic_xchg", scope: !1729, file: !1729, line: 119, type: !1444, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1729 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1730 = !{!1731, !1732, !1733}
!1731 = !DILocalVariable(name: "v", arg: 1, scope: !1728, file: !1729, line: 119, type: !1446)
!1732 = !DILocalVariable(name: "new", arg: 2, scope: !1728, file: !1729, line: 119, type: !30)
!1733 = !DILocalVariable(name: "__ret", scope: !1734, file: !1729, line: 121, type: !30)
!1734 = distinct !DILexicalBlock(scope: !1728, file: !1729, line: 121, column: 9)
!1735 = !DILocation(line: 119, column: 55, scope: !1728)
!1736 = !DILocation(line: 119, column: 62, scope: !1728)
!1737 = !DILocation(line: 121, column: 9, scope: !1734)
!1738 = !{i64 2148818206}
!1739 = !DILocation(line: 121, column: 9, scope: !1728)
!1740 = !DILocation(line: 121, column: 2, scope: !1728)
!1741 = distinct !DISubprogram(name: "tif_need_resched", scope: !1742, file: !1742, line: 182, type: !1483, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1742 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!1743 = !DILocation(line: 185, column: 28, scope: !1741)
!1744 = !DILocation(line: 185, column: 51, scope: !1741)
!1745 = !DILocation(line: 184, column: 9, scope: !1741)
!1746 = !DILocation(line: 184, column: 2, scope: !1741)
!1747 = distinct !DISubprogram(name: "arch_test_bit", scope: !1748, file: !1748, line: 237, type: !1749, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1748 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!721, !34, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!1754 = !{!1755, !1756}
!1755 = !DILocalVariable(name: "nr", arg: 1, scope: !1747, file: !1748, line: 237, type: !34)
!1756 = !DILocalVariable(name: "addr", arg: 2, scope: !1747, file: !1748, line: 237, type: !1751)
!1757 = !DILocation(line: 237, column: 29, scope: !1747)
!1758 = !DILocation(line: 237, column: 63, scope: !1747)
!1759 = !DILocation(line: 239, column: 30, scope: !1747)
!1760 = !DILocation(line: 239, column: 9, scope: !1747)
!1761 = !DILocation(line: 239, column: 54, scope: !1747)
!1762 = !DILocation(line: 239, column: 58, scope: !1747)
!1763 = !DILocation(line: 239, column: 36, scope: !1747)
!1764 = !DILocation(line: 240, column: 26, scope: !1747)
!1765 = !DILocation(line: 240, column: 30, scope: !1747)
!1766 = !DILocation(line: 240, column: 8, scope: !1747)
!1767 = !DILocation(line: 239, column: 2, scope: !1747)
!1768 = distinct !DISubprogram(name: "get_current", scope: !1769, file: !1769, line: 39, type: !1770, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1772)
!1769 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!62}
!1772 = !{!1773, !1775, !1777}
!1773 = !DILocalVariable(name: "pscr_ret__", scope: !1774, file: !1769, line: 41, type: !62)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !1769, line: 41, column: 9)
!1775 = !DILocalVariable(name: "__vpp_verify", scope: !1776, file: !1769, line: 41, type: !1245)
!1776 = distinct !DILexicalBlock(scope: !1774, file: !1769, line: 41, column: 9)
!1777 = !DILocalVariable(name: "pfo_val__", scope: !1778, file: !1769, line: 41, type: !42)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !1769, line: 41, column: 9)
!1779 = !DILocation(line: 41, column: 9, scope: !1774)
!1780 = !DILocation(line: 41, column: 9, scope: !1776)
!1781 = !DILocation(line: 41, column: 9, scope: !1778)
!1782 = !{i64 2148280185}
!1783 = !DILocation(line: 41, column: 9, scope: !1768)
!1784 = !DILocation(line: 41, column: 2, scope: !1768)
!1785 = distinct !DISubprogram(name: "constant_test_bit", scope: !1748, file: !1748, line: 204, type: !1786, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!721, !441, !1751}
!1788 = !{!1789, !1790}
!1789 = !DILocalVariable(name: "nr", arg: 1, scope: !1785, file: !1748, line: 204, type: !441)
!1790 = !DILocalVariable(name: "addr", arg: 2, scope: !1785, file: !1748, line: 204, type: !1751)
!1791 = !DILocation(line: 204, column: 52, scope: !1785)
!1792 = !DILocation(line: 204, column: 86, scope: !1785)
!1793 = !DILocation(line: 206, column: 19, scope: !1785)
!1794 = !DILocation(line: 206, column: 22, scope: !1785)
!1795 = !DILocation(line: 206, column: 15, scope: !1785)
!1796 = !DILocation(line: 207, column: 4, scope: !1785)
!1797 = !DILocation(line: 207, column: 9, scope: !1785)
!1798 = !DILocation(line: 207, column: 12, scope: !1785)
!1799 = !DILocation(line: 206, column: 44, scope: !1785)
!1800 = !DILocation(line: 207, column: 37, scope: !1785)
!1801 = !DILocation(line: 206, column: 2, scope: !1785)
!1802 = distinct !DISubprogram(name: "variable_test_bit", scope: !1748, file: !1748, line: 224, type: !1786, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1803)
!1803 = !{!1804, !1805, !1806}
!1804 = !DILocalVariable(name: "nr", arg: 1, scope: !1802, file: !1748, line: 224, type: !441)
!1805 = !DILocalVariable(name: "addr", arg: 2, scope: !1802, file: !1748, line: 224, type: !1751)
!1806 = !DILocalVariable(name: "oldbit", scope: !1802, file: !1748, line: 226, type: !721)
!1807 = !DILocation(line: 224, column: 52, scope: !1802)
!1808 = !DILocation(line: 224, column: 86, scope: !1802)
!1809 = !DILocation(line: 226, column: 2, scope: !1802)
!1810 = !DILocation(line: 226, column: 7, scope: !1802)
!1811 = !DILocation(line: 231, column: 33, scope: !1802)
!1812 = !DILocation(line: 231, column: 46, scope: !1802)
!1813 = !DILocation(line: 228, column: 2, scope: !1802)
!1814 = !{i64 2148069645, i64 2148069719}
!1815 = !DILocation(line: 233, column: 9, scope: !1802)
!1816 = !{i8 0, i8 2}
!1817 = !DILocation(line: 234, column: 1, scope: !1802)
!1818 = !DILocation(line: 233, column: 2, scope: !1802)
!1819 = distinct !DISubprogram(name: "rep_nop", scope: !1505, file: !1505, line: 11, type: !1506, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1820 = !DILocation(line: 13, column: 2, scope: !1819)
!1821 = !{i64 1915877}
!1822 = !DILocation(line: 14, column: 1, scope: !1819)
!1823 = distinct !DISubprogram(name: "kasan_check_write", scope: !1824, file: !1824, line: 44, type: !1825, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1824 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!721, !1519, !7}
!1827 = !{!1828, !1829}
!1828 = !DILocalVariable(name: "p", arg: 1, scope: !1823, file: !1824, line: 44, type: !1519)
!1829 = !DILocalVariable(name: "size", arg: 2, scope: !1823, file: !1824, line: 44, type: !7)
!1830 = !DILocation(line: 44, column: 59, scope: !1823)
!1831 = !DILocation(line: 44, column: 75, scope: !1823)
!1832 = !DILocation(line: 46, column: 2, scope: !1823)
!1833 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1511, file: !1511, line: 229, type: !1834, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1519, !686, !30}
!1836 = !{!1837, !1838, !1839}
!1837 = !DILocalVariable(name: "ptr", arg: 1, scope: !1833, file: !1511, line: 229, type: !1519)
!1838 = !DILocalVariable(name: "size", arg: 2, scope: !1833, file: !1511, line: 229, type: !686)
!1839 = !DILocalVariable(name: "type", arg: 3, scope: !1833, file: !1511, line: 230, type: !30)
!1840 = !DILocation(line: 229, column: 60, scope: !1833)
!1841 = !DILocation(line: 229, column: 72, scope: !1833)
!1842 = !DILocation(line: 230, column: 15, scope: !1833)
!1843 = !DILocation(line: 230, column: 23, scope: !1833)
!1844 = distinct !DISubprogram(name: "atomic_read", scope: !1443, file: !1443, line: 30, type: !1845, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!30, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "v", arg: 1, scope: !1844, file: !1443, line: 30, type: !1847)
!1851 = !DILocation(line: 30, column: 29, scope: !1844)
!1852 = !DILocation(line: 32, column: 25, scope: !1844)
!1853 = !DILocation(line: 32, column: 2, scope: !1844)
!1854 = !DILocation(line: 33, column: 25, scope: !1844)
!1855 = !DILocation(line: 33, column: 9, scope: !1844)
!1856 = !DILocation(line: 33, column: 2, scope: !1844)
!1857 = distinct !DISubprogram(name: "atomic_cmpxchg_acquire", scope: !1443, file: !1443, line: 1211, type: !1698, scopeLine: 1212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DILocalVariable(name: "v", arg: 1, scope: !1857, file: !1443, line: 1211, type: !1446)
!1860 = !DILocalVariable(name: "old", arg: 2, scope: !1857, file: !1443, line: 1211, type: !30)
!1861 = !DILocalVariable(name: "new", arg: 3, scope: !1857, file: !1443, line: 1211, type: !30)
!1862 = !DILocation(line: 1211, column: 34, scope: !1857)
!1863 = !DILocation(line: 1211, column: 41, scope: !1857)
!1864 = !DILocation(line: 1211, column: 50, scope: !1857)
!1865 = !DILocation(line: 1213, column: 31, scope: !1857)
!1866 = !DILocation(line: 1213, column: 2, scope: !1857)
!1867 = !DILocation(line: 1214, column: 36, scope: !1857)
!1868 = !DILocation(line: 1214, column: 39, scope: !1857)
!1869 = !DILocation(line: 1214, column: 44, scope: !1857)
!1870 = !DILocation(line: 1214, column: 9, scope: !1857)
!1871 = !DILocation(line: 1214, column: 2, scope: !1857)
!1872 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1516, file: !1516, line: 66, type: !1517, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "v", arg: 1, scope: !1872, file: !1516, line: 66, type: !1519)
!1875 = !DILocalVariable(name: "size", arg: 2, scope: !1872, file: !1516, line: 66, type: !686)
!1876 = !DILocation(line: 66, column: 73, scope: !1872)
!1877 = !DILocation(line: 66, column: 83, scope: !1872)
!1878 = !DILocation(line: 68, column: 19, scope: !1872)
!1879 = !DILocation(line: 68, column: 22, scope: !1872)
!1880 = !DILocation(line: 68, column: 2, scope: !1872)
!1881 = !DILocation(line: 69, column: 2, scope: !1872)
!1882 = !DILocation(line: 70, column: 1, scope: !1872)
!1883 = distinct !DISubprogram(name: "raw_atomic_read", scope: !1718, file: !1718, line: 442, type: !1845, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1884)
!1884 = !{!1885}
!1885 = !DILocalVariable(name: "v", arg: 1, scope: !1883, file: !1718, line: 442, type: !1847)
!1886 = !DILocation(line: 442, column: 33, scope: !1883)
!1887 = !DILocation(line: 444, column: 26, scope: !1883)
!1888 = !DILocation(line: 444, column: 9, scope: !1883)
!1889 = !DILocation(line: 444, column: 2, scope: !1883)
!1890 = distinct !DISubprogram(name: "kasan_check_read", scope: !1824, file: !1824, line: 40, type: !1825, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1891 = !{!1892, !1893}
!1892 = !DILocalVariable(name: "p", arg: 1, scope: !1890, file: !1824, line: 40, type: !1519)
!1893 = !DILocalVariable(name: "size", arg: 2, scope: !1890, file: !1824, line: 40, type: !7)
!1894 = !DILocation(line: 40, column: 58, scope: !1890)
!1895 = !DILocation(line: 40, column: 74, scope: !1890)
!1896 = !DILocation(line: 42, column: 2, scope: !1890)
!1897 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1729, file: !1729, line: 17, type: !1845, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1898 = !{!1899}
!1899 = !DILocalVariable(name: "v", arg: 1, scope: !1897, file: !1729, line: 17, type: !1847)
!1900 = !DILocation(line: 17, column: 61, scope: !1897)
!1901 = !DILocation(line: 23, column: 9, scope: !1897)
!1902 = !DILocation(line: 23, column: 2, scope: !1897)
!1903 = distinct !DISubprogram(name: "raw_atomic_cmpxchg_acquire", scope: !1718, file: !1718, line: 2029, type: !1698, scopeLine: 2030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DILocalVariable(name: "v", arg: 1, scope: !1903, file: !1718, line: 2029, type: !1446)
!1906 = !DILocalVariable(name: "old", arg: 2, scope: !1903, file: !1718, line: 2029, type: !30)
!1907 = !DILocalVariable(name: "new", arg: 3, scope: !1903, file: !1718, line: 2029, type: !30)
!1908 = !DILocation(line: 2029, column: 38, scope: !1903)
!1909 = !DILocation(line: 2029, column: 45, scope: !1903)
!1910 = !DILocation(line: 2029, column: 54, scope: !1903)
!1911 = !DILocation(line: 2038, column: 29, scope: !1903)
!1912 = !DILocation(line: 2038, column: 32, scope: !1903)
!1913 = !DILocation(line: 2038, column: 37, scope: !1903)
!1914 = !DILocation(line: 2038, column: 9, scope: !1903)
!1915 = !DILocation(line: 2038, column: 2, scope: !1903)
!1916 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !1729, file: !1729, line: 107, type: !1698, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1917)
!1917 = !{!1918, !1919, !1920, !1921, !1923, !1924, !1925}
!1918 = !DILocalVariable(name: "v", arg: 1, scope: !1916, file: !1729, line: 107, type: !1446)
!1919 = !DILocalVariable(name: "old", arg: 2, scope: !1916, file: !1729, line: 107, type: !30)
!1920 = !DILocalVariable(name: "new", arg: 3, scope: !1916, file: !1729, line: 107, type: !30)
!1921 = !DILocalVariable(name: "__ret", scope: !1922, file: !1729, line: 109, type: !30)
!1922 = distinct !DILexicalBlock(scope: !1916, file: !1729, line: 109, column: 9)
!1923 = !DILocalVariable(name: "__old", scope: !1922, file: !1729, line: 109, type: !30)
!1924 = !DILocalVariable(name: "__new", scope: !1922, file: !1729, line: 109, type: !30)
!1925 = !DILocalVariable(name: "__ptr", scope: !1922, file: !1729, line: 109, type: !1218)
!1926 = !DILocation(line: 107, column: 58, scope: !1916)
!1927 = !DILocation(line: 107, column: 65, scope: !1916)
!1928 = !DILocation(line: 107, column: 74, scope: !1916)
!1929 = !DILocation(line: 109, column: 9, scope: !1922)
!1930 = !{i64 2148813318, i64 2148813357, i64 2148813378, i64 2148813415, i64 2148813438, i64 2148813447}
!1931 = !DILocation(line: 109, column: 9, scope: !1916)
!1932 = !DILocation(line: 109, column: 2, scope: !1916)
!1933 = distinct !DISubprogram(name: "raw_atomic_cmpxchg_release", scope: !1718, file: !1718, line: 2057, type: !1698, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1934 = !{!1935, !1936, !1937}
!1935 = !DILocalVariable(name: "v", arg: 1, scope: !1933, file: !1718, line: 2057, type: !1446)
!1936 = !DILocalVariable(name: "old", arg: 2, scope: !1933, file: !1718, line: 2057, type: !30)
!1937 = !DILocalVariable(name: "new", arg: 3, scope: !1933, file: !1718, line: 2057, type: !30)
!1938 = !DILocation(line: 2057, column: 38, scope: !1933)
!1939 = !DILocation(line: 2057, column: 45, scope: !1933)
!1940 = !DILocation(line: 2057, column: 54, scope: !1933)
!1941 = !DILocation(line: 2065, column: 29, scope: !1933)
!1942 = !DILocation(line: 2065, column: 32, scope: !1933)
!1943 = !DILocation(line: 2065, column: 37, scope: !1933)
!1944 = !DILocation(line: 2065, column: 9, scope: !1933)
!1945 = !DILocation(line: 2065, column: 2, scope: !1933)
