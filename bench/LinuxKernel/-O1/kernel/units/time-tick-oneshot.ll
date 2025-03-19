; ModuleID = 'kernel/time/tick-oneshot.c'
source_filename = "kernel/time/tick-oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tick_device = type { ptr, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !0
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 8
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"\016Clockevents: could not switch to one-shot mode:\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [19 x i8] c"\01c no tick device\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [26 x i8] c"\01c %s is not functional.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [39 x i8] c"\01c %s does not support one-shot mode.\0A\00", align 1, !dbg !22

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_program_event(i64 noundef %expires, i32 noundef %force) #0 align 16 !dbg !1186 {
entry:
  %retval = alloca i32, align 4
  %expires.addr = alloca i64, align 8
  %force.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %expires, ptr %expires.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expires.addr, metadata !1190, metadata !DIExpression()), !dbg !1200
  store i32 %force, ptr %force.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !1191, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1192, metadata !DIExpression()), !dbg !1203
  call void @__this_cpu_preempt_check(ptr noundef @.str) #9, !dbg !1204
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #8, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1193, metadata !DIExpression()), !dbg !1205
  br label %do.body, !dbg !1205

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1206
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1196, metadata !DIExpression()), !dbg !1206
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1206
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1205
  br label %do.cond, !dbg !1206

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1206

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #8, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1198, metadata !DIExpression()), !dbg !1207
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @tick_cpu_device) #10, !dbg !1207, !srcloc !1208
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1207
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1207
  %3 = inttoptr i64 %2 to ptr, !dbg !1207
  store ptr %3, ptr %tmp1, align 8, !dbg !1207
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #8, !dbg !1205
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1207
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1205
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1205
  store ptr %5, ptr %tmp2, align 8, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #8, !dbg !1204
  %6 = load ptr, ptr %tmp2, align 8, !dbg !1205
  store ptr %6, ptr %tmp, align 8, !dbg !1204
  %7 = load ptr, ptr %tmp, align 8, !dbg !1204
  store ptr %7, ptr %dev, align 8, !dbg !1203
  %8 = load i64, ptr %expires.addr, align 8, !dbg !1209
  %cmp = icmp eq i64 %8, 9223372036854775807, !dbg !1209
  %lnot = xor i1 %cmp, true, !dbg !1209
  %lnot3 = xor i1 %lnot, true, !dbg !1209
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1209
  %conv = sext i32 %lnot.ext to i64, !dbg !1209
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1209
  %tobool = icmp ne i64 %expval, 0, !dbg !1209
  br i1 %tobool, label %if.then, label %if.end, !dbg !1211

if.then:                                          ; preds = %do.end
  %9 = load ptr, ptr %dev, align 8, !dbg !1212
  call void @clockevents_switch_state(ptr noundef %9, i32 noundef 4) #9, !dbg !1214
  %10 = load ptr, ptr %dev, align 8, !dbg !1215
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 3, !dbg !1216
  store i64 9223372036854775807, ptr %next_event, align 8, !dbg !1217
  store i32 0, ptr %retval, align 4, !dbg !1218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1218

if.end:                                           ; preds = %do.end
  %11 = load ptr, ptr %dev, align 8, !dbg !1219
  %call = call zeroext i1 @clockevent_state_oneshot_stopped(ptr noundef %11) #9, !dbg !1219
  %lnot4 = xor i1 %call, true, !dbg !1219
  %lnot6 = xor i1 %lnot4, true, !dbg !1219
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1219
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1219
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !1219
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !1219
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1221

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %dev, align 8, !dbg !1222
  call void @clockevents_switch_state(ptr noundef %12, i32 noundef 3) #9, !dbg !1224
  br label %if.end12, !dbg !1225

if.end12:                                         ; preds = %if.then11, %if.end
  %13 = load ptr, ptr %dev, align 8, !dbg !1226
  %14 = load i64, ptr %expires.addr, align 8, !dbg !1227
  %15 = load i32, ptr %force.addr, align 4, !dbg !1228
  %tobool13 = icmp ne i32 %15, 0, !dbg !1228
  %call14 = call i32 @clockevents_program_event(ptr noundef %13, i64 noundef %14, i1 noundef zeroext %tobool13) #9, !dbg !1229
  store i32 %call14, ptr %retval, align 4, !dbg !1230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1230

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !1231
  %16 = load i32, ptr %retval, align 4, !dbg !1231
  ret i32 %16, !dbg !1231
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !1232 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1237, metadata !DIExpression()), !dbg !1238
  ret void, !dbg !1239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1240 dso_local void @clockevents_switch_state(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_oneshot_stopped(ptr noundef %dev) #6 align 16 !dbg !1244 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1248, metadata !DIExpression()), !dbg !1249
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1250
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !1251
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !1251
  %cmp = icmp eq i32 %1, 4, !dbg !1252
  ret i1 %cmp, !dbg !1253
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1254 dso_local i32 @clockevents_program_event(ptr noundef, i64 noundef, i1 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_resume_oneshot() #0 align 16 !dbg !1257 {
entry:
  %dev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1259, metadata !DIExpression()), !dbg !1268
  call void @__this_cpu_preempt_check(ptr noundef @.str) #9, !dbg !1269
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #8, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1260, metadata !DIExpression()), !dbg !1270
  br label %do.body, !dbg !1270

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1263, metadata !DIExpression()), !dbg !1271
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1271
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1270
  br label %do.cond, !dbg !1271

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1271

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #8, !dbg !1272
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1265, metadata !DIExpression()), !dbg !1272
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @tick_cpu_device) #10, !dbg !1272, !srcloc !1273
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1272
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1272
  %3 = inttoptr i64 %2 to ptr, !dbg !1272
  store ptr %3, ptr %tmp1, align 8, !dbg !1272
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #8, !dbg !1270
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1272
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1270
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1270
  store ptr %5, ptr %tmp2, align 8, !dbg !1270
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #8, !dbg !1269
  %6 = load ptr, ptr %tmp2, align 8, !dbg !1270
  store ptr %6, ptr %tmp, align 8, !dbg !1269
  %7 = load ptr, ptr %tmp, align 8, !dbg !1269
  store ptr %7, ptr %dev, align 8, !dbg !1268
  %8 = load ptr, ptr %dev, align 8, !dbg !1274
  call void @clockevents_switch_state(ptr noundef %8, i32 noundef 3) #9, !dbg !1275
  %9 = load ptr, ptr %dev, align 8, !dbg !1276
  %call = call i64 @ktime_get() #9, !dbg !1277
  %call3 = call i32 @clockevents_program_event(ptr noundef %9, i64 noundef %call, i1 noundef zeroext true) #9, !dbg !1278
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !1279
  ret void, !dbg !1279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1280 dso_local i64 @ktime_get() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_setup_oneshot(ptr noundef %newdev, ptr noundef %handler, i64 noundef %next_event) #0 align 16 !dbg !1284 {
entry:
  %newdev.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %next_event.addr = alloca i64, align 8
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !1288, metadata !DIExpression()), !dbg !1291
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1289, metadata !DIExpression()), !dbg !1292
  store i64 %next_event, ptr %next_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next_event.addr, metadata !1290, metadata !DIExpression()), !dbg !1293
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !1294
  %1 = load ptr, ptr %newdev.addr, align 8, !dbg !1295
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 0, !dbg !1296
  store ptr %0, ptr %event_handler, align 64, !dbg !1297
  %2 = load ptr, ptr %newdev.addr, align 8, !dbg !1298
  call void @clockevents_switch_state(ptr noundef %2, i32 noundef 3) #9, !dbg !1299
  %3 = load ptr, ptr %newdev.addr, align 8, !dbg !1300
  %4 = load i64, ptr %next_event.addr, align 8, !dbg !1301
  %call = call i32 @clockevents_program_event(ptr noundef %3, i64 noundef %4, i1 noundef zeroext true) #9, !dbg !1302
  ret void, !dbg !1303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_switch_to_oneshot(ptr noundef %handler) #0 align 16 !dbg !1304 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %tmp8 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1308, metadata !DIExpression()), !dbg !1316
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #8, !dbg !1317
  call void @llvm.dbg.declare(metadata ptr %td, metadata !1309, metadata !DIExpression()), !dbg !1318
  br label %do.body, !dbg !1319

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1310, metadata !DIExpression()), !dbg !1320
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1320
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1320
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1319
  br label %do.cond, !dbg !1320

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1320

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1313, metadata !DIExpression()), !dbg !1321
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #10, !dbg !1321, !srcloc !1322
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !1321
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !1321
  %3 = inttoptr i64 %2 to ptr, !dbg !1321
  store ptr %3, ptr %tmp1, align 8, !dbg !1321
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !1319
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1321
  store ptr %4, ptr %tmp, align 8, !dbg !1320
  %5 = load ptr, ptr %tmp, align 8, !dbg !1319
  store ptr %5, ptr %td, align 8, !dbg !1318
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1315, metadata !DIExpression()), !dbg !1324
  %6 = load ptr, ptr %td, align 8, !dbg !1325
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 0, !dbg !1326
  %7 = load ptr, ptr %evtdev, align 8, !dbg !1326
  store ptr %7, ptr %dev, align 8, !dbg !1324
  %8 = load ptr, ptr %dev, align 8, !dbg !1327
  %tobool = icmp ne ptr %8, null, !dbg !1327
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1329

lor.lhs.false:                                    ; preds = %do.end
  %9 = load ptr, ptr %dev, align 8, !dbg !1330
  %features = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 9, !dbg !1331
  %10 = load i32, ptr %features, align 4, !dbg !1331
  %and = and i32 %10, 2, !dbg !1332
  %tobool2 = icmp ne i32 %and, 0, !dbg !1332
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !1333

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %dev, align 8, !dbg !1334
  %call = call i32 @tick_device_is_functional(ptr noundef %11) #9, !dbg !1335
  %tobool4 = icmp ne i32 %call, 0, !dbg !1335
  br i1 %tobool4, label %if.end33, label %if.then, !dbg !1336

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %do.end
  br label %do.body5, !dbg !1337

do.body5:                                         ; preds = %if.then
  br label %do.cond6, !dbg !1340

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1340

do.end7:                                          ; preds = %do.cond6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #11, !dbg !1337
  store i32 %call9, ptr %tmp8, align 4, !dbg !1340
  %12 = load i32, ptr %tmp8, align 4, !dbg !1337
  %13 = load ptr, ptr %dev, align 8, !dbg !1342
  %tobool10 = icmp ne ptr %13, null, !dbg !1342
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !1344

if.then11:                                        ; preds = %do.end7
  br label %do.body12, !dbg !1345

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !1348

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1348

do.end14:                                         ; preds = %do.cond13
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #11, !dbg !1345
  store i32 %call16, ptr %tmp15, align 4, !dbg !1348
  %14 = load i32, ptr %tmp15, align 4, !dbg !1345
  br label %if.end32, !dbg !1350

if.else:                                          ; preds = %do.end7
  %15 = load ptr, ptr %dev, align 8, !dbg !1351
  %call17 = call i32 @tick_device_is_functional(ptr noundef %15) #9, !dbg !1354
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1354
  br i1 %tobool18, label %if.else25, label %if.then19, !dbg !1355

if.then19:                                        ; preds = %if.else
  br label %do.body20, !dbg !1356

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !1358

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1358

do.end22:                                         ; preds = %do.cond21
  %16 = load ptr, ptr %dev, align 8, !dbg !1356
  %name = getelementptr inbounds %struct.clock_event_device, ptr %16, i32 0, i32 21, !dbg !1356
  %17 = load ptr, ptr %name, align 8, !dbg !1356
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %17) #11, !dbg !1356
  store i32 %call24, ptr %tmp23, align 4, !dbg !1358
  %18 = load i32, ptr %tmp23, align 4, !dbg !1356
  br label %if.end, !dbg !1360

if.else25:                                        ; preds = %if.else
  br label %do.body26, !dbg !1361

do.body26:                                        ; preds = %if.else25
  br label %do.cond27, !dbg !1363

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !1363

do.end28:                                         ; preds = %do.cond27
  %19 = load ptr, ptr %dev, align 8, !dbg !1361
  %name30 = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 21, !dbg !1361
  %20 = load ptr, ptr %name30, align 8, !dbg !1361
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %20) #11, !dbg !1361
  store i32 %call31, ptr %tmp29, align 4, !dbg !1363
  %21 = load i32, ptr %tmp29, align 4, !dbg !1361
  br label %if.end

if.end:                                           ; preds = %do.end28, %do.end22
  br label %if.end32

if.end32:                                         ; preds = %if.end, %do.end14
  store i32 -22, ptr %retval, align 4, !dbg !1365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1365

if.end33:                                         ; preds = %lor.lhs.false3
  %22 = load ptr, ptr %td, align 8, !dbg !1366
  %mode = getelementptr inbounds %struct.tick_device, ptr %22, i32 0, i32 1, !dbg !1367
  store i32 1, ptr %mode, align 8, !dbg !1368
  %23 = load ptr, ptr %handler.addr, align 8, !dbg !1369
  %24 = load ptr, ptr %dev, align 8, !dbg !1370
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %24, i32 0, i32 0, !dbg !1371
  store ptr %23, ptr %event_handler, align 64, !dbg !1372
  %25 = load ptr, ptr %dev, align 8, !dbg !1373
  call void @clockevents_switch_state(ptr noundef %25, i32 noundef 3) #9, !dbg !1374
  call void @tick_broadcast_switch_to_oneshot() #9, !dbg !1375
  store i32 0, ptr %retval, align 4, !dbg !1376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1376

cleanup:                                          ; preds = %if.end33, %if.end32
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !1377
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #8, !dbg !1377
  %26 = load i32, ptr %retval, align 4, !dbg !1377
  ret i32 %26, !dbg !1377
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tick_device_is_functional(ptr noundef %dev) #6 align 16 !dbg !1378 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1380, metadata !DIExpression()), !dbg !1381
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1382
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !1383
  %1 = load i32, ptr %features, align 4, !dbg !1383
  %and = and i32 %1, 16, !dbg !1384
  %tobool = icmp ne i32 %and, 0, !dbg !1385
  %lnot = xor i1 %tobool, true, !dbg !1385
  %lnot.ext = zext i1 %lnot to i32, !dbg !1385
  ret i32 %lnot.ext, !dbg !1386
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1387 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1391 dso_local void @tick_broadcast_switch_to_oneshot() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_oneshot_mode_active() #0 align 16 !dbg !1392 {
entry:
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !1413
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1394, metadata !DIExpression()), !dbg !1414
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !1415
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1395, metadata !DIExpression()), !dbg !1416
  br label %do.body, !dbg !1417

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1418

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !1419
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1396, metadata !DIExpression()), !dbg !1419
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !1419
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1400, metadata !DIExpression()), !dbg !1419
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1419
  %conv = zext i1 %cmp to i32, !dbg !1419
  store i32 1, ptr %tmp, align 4, !dbg !1419
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !1420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !1420
  %0 = load i32, ptr %tmp, align 4, !dbg !1419
  %call = call i64 @arch_local_irq_save() #9, !dbg !1420
  store i64 %call, ptr %flags, align 8, !dbg !1420
  br label %do.cond, !dbg !1420

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1420

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !1418

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !1418

do.end3:                                          ; preds = %do.cond2
  call void @__this_cpu_preempt_check(ptr noundef @.str) #9, !dbg !1421
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #8, !dbg !1422
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1401, metadata !DIExpression()), !dbg !1422
  br label %do.body5, !dbg !1422

do.body5:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1423
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1404, metadata !DIExpression()), !dbg !1423
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1423
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !1422
  br label %do.cond6, !dbg !1423

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1423

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #8, !dbg !1424
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1406, metadata !DIExpression()), !dbg !1424
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.tick_device, ptr @tick_cpu_device, i32 0, i32 1)) #10, !dbg !1424, !srcloc !1425
  store i32 %2, ptr %pfo_val__, align 4, !dbg !1424
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !1424
  %conv9 = zext i32 %3 to i64, !dbg !1424
  %conv10 = trunc i64 %conv9 to i32, !dbg !1424
  store i32 %conv10, ptr %tmp8, align 4, !dbg !1424
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #8, !dbg !1422
  %4 = load i32, ptr %tmp8, align 4, !dbg !1424
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !1422
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !1422
  store i32 %5, ptr %tmp11, align 4, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #8, !dbg !1421
  %6 = load i32, ptr %tmp11, align 4, !dbg !1422
  store i32 %6, ptr %tmp4, align 4, !dbg !1421
  %7 = load i32, ptr %tmp4, align 4, !dbg !1421
  %cmp12 = icmp eq i32 %7, 1, !dbg !1426
  %conv13 = zext i1 %cmp12 to i32, !dbg !1426
  store i32 %conv13, ptr %ret, align 4, !dbg !1427
  br label %do.body14, !dbg !1428

do.body14:                                        ; preds = %do.end7
  br label %do.body15, !dbg !1429

do.body15:                                        ; preds = %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy16) #8, !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %__dummy16, metadata !1408, metadata !DIExpression()), !dbg !1430
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy217) #8, !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %__dummy217, metadata !1412, metadata !DIExpression()), !dbg !1430
  %cmp18 = icmp eq ptr %__dummy16, %__dummy217, !dbg !1430
  %conv19 = zext i1 %cmp18 to i32, !dbg !1430
  store i32 1, ptr %tmp20, align 4, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy217) #8, !dbg !1431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy16) #8, !dbg !1431
  %8 = load i32, ptr %tmp20, align 4, !dbg !1430
  br label %do.body21, !dbg !1431

do.body21:                                        ; preds = %do.body15
  br label %do.cond22, !dbg !1432

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1432

do.end23:                                         ; preds = %do.cond22
  %9 = load i64, ptr %flags, align 8, !dbg !1431
  call void @arch_local_irq_restore(i64 noundef %9) #9, !dbg !1431
  br label %do.cond24, !dbg !1431

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !1431

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !1429

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !1429

do.end27:                                         ; preds = %do.cond26
  %10 = load i32, ptr %ret, align 4, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !1435
  ret i32 %10, !dbg !1436
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !1437 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1442, metadata !DIExpression()), !dbg !1444
  %call = call i64 @arch_local_save_flags() #9, !dbg !1445
  store i64 %call, ptr %flags, align 8, !dbg !1444
  call void @arch_local_irq_disable() #9, !dbg !1446
  %0 = load i64, ptr %flags, align 8, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !1448
  ret i64 %0, !dbg !1449
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !1450 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1454, metadata !DIExpression()), !dbg !1455
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1456
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #9, !dbg !1458
  %tobool = icmp ne i32 %call, 0, !dbg !1458
  br i1 %tobool, label %if.end, label %if.then, !dbg !1459

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #9, !dbg !1460
  br label %if.end, !dbg !1460

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1461
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_init_highres() #0 align 16 !dbg !1462 {
entry:
  %call = call i32 @tick_switch_to_oneshot(ptr noundef @hrtimer_interrupt) #9, !dbg !1463
  ret i32 %call, !dbg !1464
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hrtimer_interrupt(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !1465 {
entry:
  %call = call i64 @native_save_fl() #9, !dbg !1466
  ret i64 %call, !dbg !1467
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !1468 {
entry:
  call void @native_irq_disable() #9, !dbg !1469
  ret void, !dbg !1470
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !1471 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !1474
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1473, metadata !DIExpression()), !dbg !1475
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #8, !dbg !1476, !srcloc !1477
  %0 = load i64, ptr %flags, align 8, !dbg !1478
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !1479
  ret i64 %0, !dbg !1480
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !1481 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1482, !srcloc !1483
  ret void, !dbg !1484
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !1485 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1489, metadata !DIExpression()), !dbg !1490
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1491
  %and = and i64 %0, 512, !dbg !1492
  %tobool = icmp ne i64 %and, 0, !dbg !1493
  %lnot = xor i1 %tobool, true, !dbg !1493
  %lnot.ext = zext i1 %lnot to i32, !dbg !1493
  ret i32 %lnot.ext, !dbg !1494
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !1495 {
entry:
  call void @native_irq_enable() #9, !dbg !1496
  ret void, !dbg !1497
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !1498 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1499, !srcloc !1500
  ret void, !dbg !1501
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(read) }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184}
!llvm.ident = !{!1185}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/time/tick-oneshot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "590d0c0fc6bc584019265ff54243ca37")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 50)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 19)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 26)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 39)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.tick-oneshot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/tick-oneshot\22 -D KBUILD_BASENAME=\22tick_oneshot\22 -D KBUILD_MODNAME=\22tick_oneshot\22 -D __KBUILD_MODNAME=kmod_tick_oneshot -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/tick-oneshot.ll kernel/time/tick-oneshot.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !28, retainedTypes: !61, globals: !1176, splitDebugInlining: false, nameTableKind: None)
!28 = !{!29, !38, !45, !51, !56}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_event_state", file: !30, line: 35, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "./include/linux/clockchips.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86f5f8ec61303214145eac8153b8fae6")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "CLOCK_EVT_STATE_DETACHED", value: 0)
!34 = !DIEnumerator(name: "CLOCK_EVT_STATE_SHUTDOWN", value: 1)
!35 = !DIEnumerator(name: "CLOCK_EVT_STATE_PERIODIC", value: 2)
!36 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT", value: 3)
!37 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT_STOPPED", value: 4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !39, line: 312, baseType: !31, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!42 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!43 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!44 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !46, line: 26, baseType: !31, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!49 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!50 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 10, baseType: !31, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "false", value: 0)
!55 = !DIEnumerator(name: "true", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_device_mode", file: !57, line: 7, baseType: !31, size: 32, elements: !58)
!57 = !DIFile(filename: "kernel/time/tick-sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0af3376d02c13b090a2952893b05c615")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "TICKDEV_MODE_PERIODIC", value: 0)
!60 = !DIEnumerator(name: "TICKDEV_MODE_ONESHOT", value: 1)
!61 = !{!62, !305, !63, !75, !82, !89, !1170, !1175, !56}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_event_device", file: !30, line: 100, size: 2048, align: 512, elements: !65)
!65 = !{!66, !70, !76, !87, !88, !92, !93, !96, !97, !98, !99, !100, !104, !105, !106, !107, !108, !121, !122, !123, !124, !125, !128, !129, !130, !131, !132, !139}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !64, file: !30, line: 101, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !63}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_event", scope: !64, file: !30, line: 102, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !75, !63}
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_ktime", scope: !64, file: !30, line: 103, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!74, !80, !63}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !81, line: 29, baseType: !82)
!81 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !83, line: 22, baseType: !84)
!83 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !85, line: 30, baseType: !86)
!85 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!86 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next_event", scope: !64, file: !30, line: 104, baseType: !80, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ns", scope: !64, file: !30, line: 105, baseType: !89, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !83, line: 23, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !85, line: 31, baseType: !91)
!91 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ns", scope: !64, file: !30, line: 106, baseType: !89, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !64, file: !30, line: 107, baseType: !94, size: 32, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !83, line: 21, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !85, line: 27, baseType: !31)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !64, file: !30, line: 108, baseType: !94, size: 32, offset: 416)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !64, file: !30, line: 109, baseType: !29, size: 32, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !64, file: !30, line: 110, baseType: !31, size: 32, offset: 480)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !64, file: !30, line: 111, baseType: !75, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_periodic", scope: !64, file: !30, line: 113, baseType: !101, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!74, !63}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot", scope: !64, file: !30, line: 114, baseType: !101, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot_stopped", scope: !64, file: !30, line: 115, baseType: !101, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_shutdown", scope: !64, file: !30, line: 116, baseType: !101, size: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tick_resume", scope: !64, file: !30, line: 117, baseType: !101, size: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast", scope: !64, file: !30, line: 119, baseType: !109, size: 64, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !115, line: 19, size: 64, elements: !116)
!115 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !114, file: !115, line: 19, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 1)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !64, file: !30, line: 120, baseType: !67, size: 64, offset: 960)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !64, file: !30, line: 121, baseType: !67, size: 64, offset: 1024)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ticks", scope: !64, file: !30, line: 122, baseType: !75, size: 64, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ticks", scope: !64, file: !30, line: 123, baseType: !75, size: 64, offset: 1152)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !30, line: 125, baseType: !126, size: 64, offset: 1216)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !64, file: !30, line: 126, baseType: !74, size: 32, offset: 1280)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !64, file: !30, line: 127, baseType: !74, size: 32, offset: 1312)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "bound_on", scope: !64, file: !30, line: 128, baseType: !74, size: 32, offset: 1344)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !64, file: !30, line: 129, baseType: !112, size: 64, offset: 1408)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !64, file: !30, line: 130, baseType: !133, size: 128, offset: 1472)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !134, line: 190, size: 128, elements: !135)
!134 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !134, line: 191, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !134, line: 191, baseType: !137, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !64, file: !30, line: 131, baseType: !140, size: 64, offset: 1600)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !39, line: 402, size: 9216, align: 512, elements: !142)
!142 = !{!143, !144, !145, !149, !820, !846, !847, !848, !849, !853, !856, !857, !858, !911, !912, !913, !914, !915, !916, !917, !918, !926, !930, !950, !968, !969, !970, !971, !980, !1003, !1004, !1007, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1021, !1022, !1128, !1136, !1137, !1138, !1140, !1144, !1145, !1149, !1150, !1151, !1152, !1154, !1155, !1156, !1163, !1164, !1165, !1169}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !141, file: !39, line: 403, baseType: !38, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !141, file: !39, line: 406, baseType: !133, size: 128, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !39, line: 409, baseType: !146, size: 448, offset: 192)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 56)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !141, file: !39, line: 417, baseType: !150, size: 768, offset: 640)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !39, line: 45, size: 768, elements: !151)
!151 = !{!152, !803, !804, !805, !808}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !150, file: !39, line: 46, baseType: !153, size: 512)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !154, line: 64, size: 512, elements: !155)
!154 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!155 = !{!156, !157, !158, !160, !247, !674, !788, !798, !799, !800, !801, !802}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !154, line: 65, baseType: !126, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !153, file: !154, line: 66, baseType: !133, size: 128, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !154, line: 67, baseType: !159, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !153, file: !154, line: 68, baseType: !161, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !154, line: 168, size: 768, elements: !163)
!163 = !{!164, !165, !206, !207}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !162, file: !154, line: 169, baseType: !133, size: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !162, file: !154, line: 170, baseType: !166, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !167, line: 29, baseType: !168)
!167 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !167, line: 17, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !167, line: 18, baseType: !171, size: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !167, line: 18, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !171, file: !167, line: 19, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !175, line: 14, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !174, file: !175, line: 15, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !179, line: 44, baseType: !180)
!179 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !179, line: 14, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !179, line: 15, baseType: !183, size: 32)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !179, line: 15, size: 32, elements: !184)
!184 = !{!185, !190, !198}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !183, file: !179, line: 16, baseType: !186, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !134, line: 174, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 172, size: 32, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !187, file: !134, line: 173, baseType: !74, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !179, line: 24, baseType: !191, size: 16)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !179, line: 24, size: 16, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !191, file: !179, line: 25, baseType: !194, size: 8)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !83, line: 17, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !85, line: 21, baseType: !196)
!196 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !191, file: !179, line: 26, baseType: !194, size: 8, offset: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !179, line: 28, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !179, line: 28, size: 32, elements: !200)
!200 = !{!201, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !199, file: !179, line: 29, baseType: !202, size: 16)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !83, line: 19, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !85, line: 24, baseType: !204)
!204 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !199, file: !179, line: 30, baseType: !202, size: 16, offset: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !162, file: !154, line: 171, baseType: !153, size: 512, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !162, file: !154, line: 172, baseType: !208, size: 64, offset: 704)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !154, line: 133, size: 192, elements: !211)
!211 = !{!212, !219, !224}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !210, file: !154, line: 134, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!74, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !154, line: 135, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!126, !217}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !210, file: !154, line: 136, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!74, !217, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !154, line: 125, size: 20736, elements: !231)
!231 = !{!232, !237, !241, !242, !246}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !230, file: !154, line: 126, baseType: !233, size: 192)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 192, elements: !235)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!235 = !{!236}
!236 = !DISubrange(count: 3)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !230, file: !154, line: 127, baseType: !238, size: 4096, offset: 192)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 4096, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !230, file: !154, line: 128, baseType: !74, size: 32, offset: 4288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !230, file: !154, line: 129, baseType: !243, size: 16384, offset: 4320)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 2048)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !230, file: !154, line: 130, baseType: !74, size: 32, offset: 20704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !153, file: !154, line: 69, baseType: !248, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !154, line: 116, size: 384, elements: !251)
!251 = !{!252, !256, !284, !621, !652, !656}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !250, file: !154, line: 117, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !159}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !250, file: !154, line: 118, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !260, line: 254, size: 128, elements: !261)
!260 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!261 = !{!262, !277}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !259, file: !260, line: 255, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !159, !271, !234}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !134, line: 66, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !268, line: 73, baseType: !269)
!268 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !268, line: 15, baseType: !270)
!270 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !260, line: 30, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !260, line: 31, baseType: !126, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !272, file: !260, line: 32, baseType: !276, size: 16, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !134, line: 24, baseType: !204)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !259, file: !260, line: 256, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!266, !159, !271, !126, !281}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 61, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !268, line: 72, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !268, line: 16, baseType: !75)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !250, file: !154, line: 119, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !260, line: 84, size: 320, elements: !289)
!289 = !{!290, !291, !295, !617, !619}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !260, line: 85, baseType: !126, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !288, file: !260, line: 86, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!276, !159, !271, !74}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !288, file: !260, line: 88, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!276, !159, !299, !74}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !260, line: 175, size: 512, elements: !301)
!301 = !{!302, !303, !304, !306, !313, !322, !323}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !300, file: !260, line: 176, baseType: !272, size: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !300, file: !260, line: 177, baseType: !281, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !300, file: !260, line: 178, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !300, file: !260, line: 179, baseType: !307, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !312, line: 32, flags: DIFlagFwdDecl)
!312 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!313 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !300, file: !260, line: 180, baseType: !314, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!266, !317, !159, !299, !234, !320, !281}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !319, line: 537, flags: DIFlagFwdDecl)
!319 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !134, line: 52, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !268, line: 88, baseType: !86)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !300, file: !260, line: 182, baseType: !314, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !300, file: !260, line: 184, baseType: !324, size: 64, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!74, !317, !159, !299, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !312, line: 625, size: 1344, elements: !329)
!329 = !{!330, !347, !565, !571, !578, !579, !584, !587, !599, !600, !603, !607, !608, !609, !610, !611, !615}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !312, line: 628, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !312, line: 628, size: 128, elements: !332)
!332 = !{!333, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !312, line: 629, baseType: !334, size: 128)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !312, line: 629, size: 128, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !334, file: !312, line: 631, baseType: !75, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !334, file: !312, line: 632, baseType: !75, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !331, file: !312, line: 635, baseType: !339, size: 128, align: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !134, line: 232, size: 128, align: 64, elements: !340)
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !134, line: 233, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !339, file: !134, line: 234, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !342}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !328, file: !312, line: 639, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !312, line: 733, size: 10240, elements: !350)
!350 = !{!351, !561}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !312, line: 734, baseType: !352, size: 10240)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !312, line: 734, size: 10240, elements: !353)
!353 = !{!354, !358, !372, !376, !377, !378, !379, !380, !381, !389, !390, !391, !397, !398, !405, !406, !407, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !454, !468, !471, !526, !527, !528, !531, !535, !536, !539, !540, !541, !548, !549}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !312, line: 739, baseType: !355, size: 512, align: 512)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !312, line: 739, size: 512, align: 512, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !355, file: !312, line: 747, baseType: !186, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !352, file: !312, line: 750, baseType: !359, size: 128, offset: 512)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !360, line: 218, size: 128, elements: !361)
!360 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!361 = !{!362, !370, !371}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !360, line: 219, baseType: !363, size: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !360, line: 219, size: 32, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !363, file: !360, line: 220, baseType: !166, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !363, file: !360, line: 221, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !360, line: 197, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 197, elements: !369)
!369 = !{}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !359, file: !360, line: 223, baseType: !31, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !359, file: !360, line: 224, baseType: !305, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !352, file: !312, line: 752, baseType: !373, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!75, !317, !75, !75, !75, !75}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !352, file: !312, line: 756, baseType: !75, size: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !352, file: !312, line: 757, baseType: !75, size: 64, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !352, file: !312, line: 760, baseType: !75, size: 64, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !352, file: !312, line: 761, baseType: !75, size: 64, offset: 896)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !352, file: !312, line: 763, baseType: !75, size: 64, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !352, file: !312, line: 764, baseType: !382, size: 64, offset: 1024)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !319, line: 299, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 299, size: 64, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !384, file: !319, line: 299, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !388, line: 18, baseType: !75)
!388 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!389 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !352, file: !312, line: 773, baseType: !186, size: 32, offset: 1088)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !352, file: !312, line: 785, baseType: !186, size: 32, offset: 1120)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !352, file: !312, line: 795, baseType: !392, size: 64, offset: 1152)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !312, line: 726, size: 128, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !393, file: !312, line: 727, baseType: !89, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !393, file: !312, line: 728, baseType: !74, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !352, file: !312, line: 801, baseType: !75, size: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !352, file: !312, line: 804, baseType: !399, size: 64, offset: 1280)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !400, line: 13, baseType: !401)
!400 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !134, line: 181, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 179, size: 64, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !402, file: !134, line: 180, baseType: !82, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !352, file: !312, line: 806, baseType: !74, size: 32, offset: 1344)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !352, file: !312, line: 808, baseType: !166, size: 32, offset: 1376)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !352, file: !312, line: 823, baseType: !408, size: 320, offset: 1408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !409, line: 48, size: 320, elements: !410)
!409 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!410 = !{!411, !412, !413, !418, !420}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !408, file: !409, line: 49, baseType: !399, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !408, file: !409, line: 55, baseType: !399, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !408, file: !409, line: 57, baseType: !414, size: 32, offset: 128)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !415, line: 15, size: 32, elements: !416)
!415 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !414, file: !415, line: 20, baseType: !186, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !408, file: !409, line: 59, baseType: !419, size: 32, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !175, line: 23, baseType: !174)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !408, file: !409, line: 60, baseType: !133, size: 128, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !352, file: !312, line: 825, baseType: !133, size: 128, offset: 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !352, file: !312, line: 845, baseType: !74, size: 32, offset: 1856)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !352, file: !312, line: 849, baseType: !75, size: 64, offset: 1920)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !352, file: !312, line: 850, baseType: !75, size: 64, offset: 1984)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !352, file: !312, line: 852, baseType: !75, size: 64, offset: 2048)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !352, file: !312, line: 853, baseType: !75, size: 64, offset: 2112)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !352, file: !312, line: 854, baseType: !401, size: 64, offset: 2176)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !352, file: !312, line: 855, baseType: !75, size: 64, offset: 2240)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !352, file: !312, line: 856, baseType: !75, size: 64, offset: 2304)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !352, file: !312, line: 857, baseType: !75, size: 64, offset: 2368)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !352, file: !312, line: 858, baseType: !75, size: 64, offset: 2432)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !352, file: !312, line: 865, baseType: !433, size: 32, offset: 2496)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !434, line: 69, baseType: !435)
!434 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !434, line: 64, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !435, file: !434, line: 65, baseType: !31, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !352, file: !312, line: 867, baseType: !166, size: 32, offset: 2528)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !352, file: !312, line: 869, baseType: !75, size: 64, offset: 2560)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !352, file: !312, line: 869, baseType: !75, size: 64, offset: 2624)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !352, file: !312, line: 869, baseType: !75, size: 64, offset: 2688)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !352, file: !312, line: 869, baseType: !75, size: 64, offset: 2752)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !352, file: !312, line: 870, baseType: !75, size: 64, offset: 2816)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !352, file: !312, line: 870, baseType: !75, size: 64, offset: 2880)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !352, file: !312, line: 870, baseType: !75, size: 64, offset: 2944)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !352, file: !312, line: 871, baseType: !75, size: 64, offset: 3008)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !352, file: !312, line: 871, baseType: !75, size: 64, offset: 3072)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !352, file: !312, line: 871, baseType: !75, size: 64, offset: 3136)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !352, file: !312, line: 871, baseType: !75, size: 64, offset: 3200)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !352, file: !312, line: 873, baseType: !451, size: 3328, offset: 3264)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 3328, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 52)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !352, file: !312, line: 875, baseType: !455, size: 1280, offset: 6592)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 1280, elements: !466)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !457, line: 22, size: 320, elements: !458)
!457 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!458 = !{!459, !460, !461, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !456, file: !457, line: 23, baseType: !419, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !456, file: !457, line: 24, baseType: !82, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !456, file: !457, line: 26, baseType: !133, size: 128, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !456, file: !457, line: 28, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !83, line: 20, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !85, line: 26, baseType: !74)
!466 = !{!467}
!467 = !DISubrange(count: 4)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !352, file: !312, line: 877, baseType: !469, size: 64, offset: 7872)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !312, line: 877, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !352, file: !312, line: 880, baseType: !472, size: 1088, offset: 7936)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !473, line: 72, baseType: !474)
!473 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 23, size: 1088, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !483, !484, !492, !493, !520, !521, !522}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !474, file: !473, line: 28, baseType: !89, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !474, file: !473, line: 38, baseType: !401, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !474, file: !473, line: 40, baseType: !75, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !474, file: !473, line: 43, baseType: !408, size: 320, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !474, file: !473, line: 44, baseType: !481, size: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !473, line: 44, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !473, line: 48, baseType: !75, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !474, file: !473, line: 59, baseType: !485, size: 256, offset: 640)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !486, line: 66, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!487 = !{!488, !489, !490, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !485, file: !486, line: 67, baseType: !399, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !485, file: !486, line: 68, baseType: !419, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !485, file: !486, line: 70, baseType: !414, size: 32, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !485, file: !486, line: 72, baseType: !133, size: 128, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !474, file: !473, line: 60, baseType: !305, size: 64, offset: 896)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !474, file: !473, line: 61, baseType: !494, size: 64, offset: 960)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !497, line: 13, size: 1216, elements: !498)
!497 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!498 = !{!499, !500, !501, !502, !503, !504, !505, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !496, file: !497, line: 14, baseType: !305, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !496, file: !497, line: 15, baseType: !75, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !496, file: !497, line: 17, baseType: !75, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !496, file: !497, line: 17, baseType: !75, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !496, file: !497, line: 18, baseType: !75, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !496, file: !497, line: 18, baseType: !75, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !496, file: !497, line: 19, baseType: !506, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !496, file: !497, line: 21, baseType: !270, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !496, file: !497, line: 23, baseType: !270, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !496, file: !497, line: 24, baseType: !270, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !496, file: !497, line: 25, baseType: !270, size: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !496, file: !497, line: 26, baseType: !270, size: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !496, file: !497, line: 27, baseType: !270, size: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !496, file: !497, line: 28, baseType: !270, size: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !496, file: !497, line: 29, baseType: !270, size: 64, offset: 896)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !496, file: !497, line: 30, baseType: !270, size: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !496, file: !497, line: 31, baseType: !270, size: 64, offset: 1024)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !496, file: !497, line: 32, baseType: !270, size: 64, offset: 1088)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !496, file: !497, line: 33, baseType: !270, size: 64, offset: 1152)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !474, file: !473, line: 63, baseType: !186, size: 32, offset: 1024)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !474, file: !473, line: 69, baseType: !202, size: 16, offset: 1056)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !474, file: !473, line: 70, baseType: !523, size: 16, offset: 1072)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !83, line: 18, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !85, line: 23, baseType: !525)
!525 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !312, line: 882, baseType: !75, size: 64, offset: 9024)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !352, file: !312, line: 885, baseType: !166, size: 32, offset: 9088)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !352, file: !312, line: 886, baseType: !529, size: 64, offset: 9152)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !312, line: 732, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !352, file: !312, line: 901, baseType: !532, size: 64, offset: 9216)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !534, line: 18, flags: DIFlagFwdDecl)
!534 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !352, file: !312, line: 904, baseType: !317, size: 64, offset: 9280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !352, file: !312, line: 906, baseType: !537, size: 64, offset: 9344)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !312, line: 906, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !352, file: !312, line: 930, baseType: !186, size: 32, offset: 9408)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !352, file: !312, line: 933, baseType: !186, size: 32, offset: 9440)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !352, file: !312, line: 935, baseType: !542, size: 64, offset: 9472)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !543, line: 103, size: 64, elements: !544)
!543 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !542, file: !543, line: 104, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !543, line: 101, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !352, file: !312, line: 940, baseType: !399, size: 64, offset: 9536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !352, file: !312, line: 942, baseType: !550, size: 256, offset: 9600)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !551, line: 98, size: 256, elements: !552)
!551 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!552 = !{!553, !554, !555}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !550, file: !551, line: 99, baseType: !399, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !550, file: !551, line: 100, baseType: !133, size: 128, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !550, file: !551, line: 101, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !551, line: 21, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !349, file: !312, line: 986, baseType: !562, offset: 10240)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: -1)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !328, file: !312, line: 640, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !319, line: 297, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !319, line: 297, size: 64, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !567, file: !319, line: 297, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !388, line: 19, baseType: !75)
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !312, line: 646, baseType: !572, size: 64, offset: 256)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !312, line: 646, size: 64, elements: !573)
!573 = !{!574, !577}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !572, file: !312, line: 647, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !312, line: 542, baseType: !75)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !572, file: !312, line: 648, baseType: !576, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !328, file: !312, line: 666, baseType: !74, size: 32, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !328, file: !312, line: 667, baseType: !580, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !312, line: 579, size: 320, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !581, file: !312, line: 580, baseType: !408, size: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !328, file: !312, line: 670, baseType: !585, size: 8, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !134, line: 35, baseType: !586)
!586 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !328, file: !312, line: 681, baseType: !588, size: 256, offset: 512)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !312, line: 678, size: 256, elements: !589)
!589 = !{!590, !598}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !588, file: !312, line: 679, baseType: !591, size: 192, align: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !592, line: 5, size: 192, align: 64, elements: !593)
!592 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!593 = !{!594, !595, !597}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !591, file: !592, line: 6, baseType: !75, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !591, file: !592, line: 7, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !591, file: !592, line: 8, baseType: !596, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !588, file: !312, line: 680, baseType: !75, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !328, file: !312, line: 689, baseType: !133, size: 128, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !328, file: !312, line: 691, baseType: !601, size: 64, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !312, line: 691, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !328, file: !312, line: 694, baseType: !604, size: 64, offset: 960)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !312, line: 694, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !328, file: !312, line: 697, baseType: !75, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !328, file: !312, line: 699, baseType: !317, size: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !328, file: !312, line: 700, baseType: !305, size: 64, offset: 1152)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !328, file: !312, line: 711, baseType: !399, size: 64, offset: 1216)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !328, file: !312, line: 717, baseType: !612, size: 64, offset: 1280)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !614, line: 54, flags: DIFlagFwdDecl)
!614 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !328, file: !312, line: 722, baseType: !616, offset: 1344)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !312, line: 570, elements: !369)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !288, file: !260, line: 90, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !288, file: !260, line: 91, baseType: !620, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !250, file: !154, line: 120, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!625, !217}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !46, line: 39, size: 384, elements: !628)
!628 = !{!629, !630, !634, !638, !644, !648}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !46, line: 40, baseType: !45, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !627, file: !46, line: 41, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!585}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !627, file: !46, line: 42, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!305}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !627, file: !46, line: 43, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!506, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !46, line: 19, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !627, file: !46, line: 44, baseType: !645, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!506}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !627, file: !46, line: 45, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !305}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !250, file: !154, line: 121, baseType: !653, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!506, !217}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !250, file: !154, line: 122, baseType: !657, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !217, !660, !667}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !534, line: 23, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 21, size: 32, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !662, file: !534, line: 22, baseType: !665, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !134, line: 37, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !268, line: 49, baseType: !31)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !534, line: 28, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 26, size: 32, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !669, file: !534, line: 27, baseType: !672, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !134, line: 38, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !268, line: 50, baseType: !31)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !153, file: !154, line: 70, baseType: !675, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !677, line: 190, size: 1152, elements: !678)
!677 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !780, !781, !782, !783, !784, !787}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !676, file: !677, line: 191, baseType: !186, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !676, file: !677, line: 192, baseType: !186, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !676, file: !677, line: 202, baseType: !675, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !676, file: !677, line: 203, baseType: !126, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !676, file: !677, line: 205, baseType: !591, size: 192, align: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !676, file: !677, line: 207, baseType: !506, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !676, file: !677, line: 208, baseType: !31, size: 32, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !677, line: 209, baseType: !687, size: 256, offset: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !677, line: 209, size: 256, elements: !688)
!688 = !{!689, !701, !705}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !687, file: !677, line: 210, baseType: !690, size: 256)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !677, line: 153, size: 256, elements: !691)
!691 = !{!692, !693, !697, !700}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !690, file: !677, line: 154, baseType: !75, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !690, file: !677, line: 156, baseType: !694, size: 64, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !592, line: 12, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !694, file: !592, line: 13, baseType: !596, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !690, file: !677, line: 162, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !677, line: 162, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !690, file: !677, line: 167, baseType: !75, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !687, file: !677, line: 211, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !677, line: 170, size: 64, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !702, file: !677, line: 171, baseType: !675, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !687, file: !677, line: 212, baseType: !706, size: 256)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !677, line: 174, size: 256, elements: !707)
!707 = !{!708, !775, !778, !779}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !706, file: !677, line: 175, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !677, line: 271, size: 768, elements: !712)
!712 = !{!713, !735, !739, !743, !748, !752, !756, !760, !761, !762, !763, !771}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !711, file: !677, line: 276, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!74, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !677, line: 251, size: 1216, elements: !719)
!719 = !{!720, !721, !722, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !718, file: !677, line: 253, baseType: !675, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !718, file: !677, line: 254, baseType: !317, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !718, file: !677, line: 255, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !614, line: 66, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !718, file: !677, line: 256, baseType: !305, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !718, file: !677, line: 259, baseType: !485, size: 256, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !718, file: !677, line: 260, baseType: !485, size: 256, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !718, file: !677, line: 261, baseType: !74, size: 32, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !718, file: !677, line: 262, baseType: !133, size: 128, offset: 832)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !718, file: !677, line: 263, baseType: !234, size: 64, offset: 960)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !718, file: !677, line: 265, baseType: !281, size: 64, offset: 1024)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !718, file: !677, line: 266, baseType: !585, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !718, file: !677, line: 267, baseType: !585, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !718, file: !677, line: 268, baseType: !604, size: 64, offset: 1152)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !711, file: !677, line: 277, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !717}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !711, file: !677, line: 290, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!74, !723, !305}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !711, file: !677, line: 292, baseType: !744, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!305, !723, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !711, file: !677, line: 293, baseType: !749, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!305, !723, !305, !747}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !711, file: !677, line: 294, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !723, !305}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !711, file: !677, line: 296, baseType: !757, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!266, !717, !234, !281, !320}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !711, file: !677, line: 306, baseType: !281, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !711, file: !677, line: 313, baseType: !585, size: 8, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !711, file: !677, line: 314, baseType: !757, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !711, file: !677, line: 317, baseType: !764, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!767, !717, !769}
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !768, line: 59, baseType: !31)
!768 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !677, line: 31, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !711, file: !677, line: 320, baseType: !772, size: 64, offset: 704)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!74, !717, !327}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !706, file: !677, line: 176, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !677, line: 35, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !706, file: !677, line: 177, baseType: !320, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !706, file: !677, line: 178, baseType: !675, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !676, file: !677, line: 215, baseType: !305, size: 64, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !676, file: !677, line: 221, baseType: !89, size: 64, offset: 832)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !677, line: 223, baseType: !204, size: 16, offset: 896)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !676, file: !677, line: 224, baseType: !276, size: 16, offset: 912)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !676, file: !677, line: 225, baseType: !785, size: 64, offset: 960)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !677, line: 36, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !676, file: !677, line: 227, baseType: !339, size: 128, align: 64, offset: 1024)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !153, file: !154, line: 71, baseType: !789, size: 32, offset: 448)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !790, line: 19, size: 32, elements: !791)
!790 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !789, file: !790, line: 20, baseType: !793, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !794, line: 113, baseType: !795)
!794 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !794, line: 111, size: 32, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !795, file: !794, line: 112, baseType: !186, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !153, file: !154, line: 73, baseType: !31, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !153, file: !154, line: 74, baseType: !31, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !153, file: !154, line: 75, baseType: !31, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !153, file: !154, line: 76, baseType: !31, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !153, file: !154, line: 77, baseType: !31, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !150, file: !39, line: 47, baseType: !140, size: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !150, file: !39, line: 48, baseType: !159, size: 64, offset: 576)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !150, file: !39, line: 49, baseType: !806, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !39, line: 49, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !150, file: !39, line: 50, baseType: !809, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !811, line: 26, size: 256, elements: !812)
!811 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !810, file: !811, line: 27, baseType: !31, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !810, file: !811, line: 28, baseType: !815, size: 192, offset: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !816, line: 43, size: 192, elements: !817)
!816 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !815, file: !816, line: 44, baseType: !419, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !815, file: !816, line: 45, baseType: !133, size: 128, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !141, file: !39, line: 418, baseType: !821, size: 64, offset: 1408)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !39, line: 53, size: 448, elements: !823)
!823 = !{!824, !825, !830, !834, !838, !842}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !822, file: !39, line: 54, baseType: !272, size: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !822, file: !39, line: 55, baseType: !826, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!266, !821, !829, !234}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !822, file: !39, line: 57, baseType: !831, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!266, !821, !829, !126, !281}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !822, file: !39, line: 59, baseType: !835, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !140, !126}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !822, file: !39, line: 60, baseType: !839, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!74, !140}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !822, file: !39, line: 61, baseType: !843, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !140}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !141, file: !39, line: 419, baseType: !126, size: 64, offset: 1472)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !141, file: !39, line: 420, baseType: !126, size: 64, offset: 1536)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !141, file: !39, line: 421, baseType: !159, size: 64, offset: 1600)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !141, file: !39, line: 424, baseType: !850, size: 64, offset: 1664)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !39, line: 424, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !141, file: !39, line: 425, baseType: !854, size: 64, offset: 1728)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !141, file: !39, line: 426, baseType: !31, size: 32, offset: 1792)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !141, file: !39, line: 435, baseType: !485, size: 256, offset: 1856)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !141, file: !39, line: 437, baseType: !859, size: 64, offset: 2112)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !861, line: 69, size: 320, elements: !862)
!861 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!862 = !{!863, !864, !865, !882, !884, !888, !889}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !860, file: !861, line: 70, baseType: !126, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !860, file: !861, line: 71, baseType: !140, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !860, file: !861, line: 72, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !861, line: 47, size: 256, elements: !869)
!869 = !{!870, !871, !877, !881}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !861, line: 49, baseType: !31, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !868, file: !861, line: 51, baseType: !872, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!74, !126, !875}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !868, file: !861, line: 53, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!74, !234, !875}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !868, file: !861, line: 55, baseType: !649, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !860, file: !861, line: 73, baseType: !883, size: 16, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !860, file: !861, line: 74, baseType: !885, size: 8, offset: 208)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !83, line: 16, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !85, line: 20, baseType: !887)
!887 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !861, line: 75, baseType: !194, size: 8, offset: 216)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !861, line: 76, baseType: !890, size: 64, offset: 256)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !861, line: 76, size: 64, elements: !891)
!891 = !{!892, !893, !900}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !890, file: !861, line: 77, baseType: !305, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !890, file: !861, line: 78, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !861, line: 86, size: 128, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !896, file: !861, line: 87, baseType: !31, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !896, file: !861, line: 88, baseType: !234, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !890, file: !861, line: 79, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !861, line: 92, size: 256, elements: !904)
!904 = !{!905, !906, !907, !909, !910}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !903, file: !861, line: 94, baseType: !31, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !903, file: !861, line: 95, baseType: !31, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !903, file: !861, line: 96, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !903, file: !861, line: 97, baseType: !866, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !903, file: !861, line: 98, baseType: !305, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !141, file: !39, line: 438, baseType: !31, size: 32, offset: 2176)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !141, file: !39, line: 441, baseType: !31, size: 32, offset: 2208)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !141, file: !39, line: 442, baseType: !850, size: 64, offset: 2240)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !141, file: !39, line: 443, baseType: !854, size: 64, offset: 2304)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !141, file: !39, line: 444, baseType: !585, size: 8, offset: 2368)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !141, file: !39, line: 451, baseType: !585, size: 8, offset: 2376)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !141, file: !39, line: 454, baseType: !31, size: 32, offset: 2400)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !141, file: !39, line: 455, baseType: !919, size: 64, offset: 2432)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !921, line: 23, size: 96, elements: !922)
!921 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !920, file: !921, line: 24, baseType: !74, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !920, file: !921, line: 24, baseType: !74, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !920, file: !921, line: 24, baseType: !74, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !141, file: !39, line: 458, baseType: !927, size: 64, offset: 2496)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!74}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !141, file: !39, line: 460, baseType: !931, size: 4032, align: 512, offset: 2560)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 4032, elements: !948)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !39, line: 362, size: 576, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !932, file: !39, line: 363, baseType: !305, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !932, file: !39, line: 364, baseType: !31, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !932, file: !39, line: 367, baseType: !937, size: 448, offset: 128)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !39, line: 319, size: 448, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !937, file: !39, line: 320, baseType: !140, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !937, file: !39, line: 321, baseType: !941, size: 384, offset: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !942, line: 40, size: 384, elements: !943)
!942 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !941, file: !942, line: 41, baseType: !945, size: 384, align: 64)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 384, align: 64, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 2)
!948 = !{!949}
!949 = !DISubrange(count: 7)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !141, file: !39, line: 463, baseType: !951, size: 192, offset: 6592)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !952, line: 8, size: 192, elements: !953)
!952 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!953 = !{!954, !955, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !951, file: !952, line: 10, baseType: !31, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !951, file: !952, line: 11, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !951, file: !952, line: 12, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !960, line: 59, size: 48, elements: !961)
!960 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!961 = !{!962, !963, !964, !965, !966, !967}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !959, file: !960, line: 60, baseType: !523, size: 16)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !959, file: !960, line: 61, baseType: !523, size: 16, offset: 16)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !959, file: !960, line: 63, baseType: !31, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !959, file: !960, line: 64, baseType: !31, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !959, file: !960, line: 65, baseType: !31, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !959, file: !960, line: 66, baseType: !31, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !141, file: !39, line: 465, baseType: !75, size: 64, offset: 6784)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !141, file: !39, line: 469, baseType: !31, size: 32, offset: 6848)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !141, file: !39, line: 470, baseType: !133, size: 128, offset: 6912)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !141, file: !39, line: 471, baseType: !972, size: 64, offset: 7040)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !974, line: 33, size: 96, elements: !975)
!974 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!975 = !{!976, !977, !978, !979}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !973, file: !974, line: 37, baseType: !74, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !973, file: !974, line: 43, baseType: !74, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !973, file: !974, line: 45, baseType: !204, size: 16, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !974, line: 47, baseType: !204, size: 16, offset: 80)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !141, file: !39, line: 476, baseType: !981, size: 64, offset: 7104)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !39, line: 378, size: 256, elements: !983)
!983 = !{!984, !1000, !1001, !1002}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !982, file: !39, line: 379, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !987, line: 204, baseType: !988)
!987 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !987, line: 197, size: 192, elements: !989)
!989 = !{!990, !992, !993, !994, !996, !998}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !988, file: !987, line: 198, baseType: !991, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !987, line: 21, baseType: !95)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !988, file: !987, line: 199, baseType: !196, size: 8, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !988, file: !987, line: 200, baseType: !196, size: 8, offset: 40)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !988, file: !987, line: 201, baseType: !995, size: 16, offset: 48)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !987, line: 17, baseType: !203)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !988, file: !987, line: 202, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !987, line: 16, baseType: !90)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !988, file: !987, line: 203, baseType: !999, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !987, line: 22, baseType: !90)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !982, file: !39, line: 380, baseType: !31, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !982, file: !39, line: 381, baseType: !234, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !982, file: !39, line: 382, baseType: !234, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !141, file: !39, line: 477, baseType: !982, size: 256, offset: 7168)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !141, file: !39, line: 480, baseType: !1005, size: 64, offset: 7424)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !39, line: 480, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !141, file: !39, line: 483, baseType: !1008, size: 64, offset: 7488)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !39, line: 483, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !141, file: !39, line: 488, baseType: !234, size: 64, offset: 7552)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !141, file: !39, line: 492, baseType: !305, size: 64, offset: 7616)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !141, file: !39, line: 493, baseType: !31, size: 32, offset: 7680)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !141, file: !39, line: 495, baseType: !305, size: 64, offset: 7744)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !141, file: !39, line: 496, baseType: !31, size: 32, offset: 7808)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !141, file: !39, line: 499, baseType: !31, size: 32, offset: 7840)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !141, file: !39, line: 500, baseType: !1017, size: 64, offset: 7872)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1019, line: 45, baseType: !1020)
!1019 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !141, file: !39, line: 503, baseType: !31, size: 32, offset: 7936)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !141, file: !39, line: 504, baseType: !1023, size: 64, offset: 8000)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1026, line: 96, size: 192, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1027 = !{!1028, !1029, !1089, !1092}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1025, file: !1026, line: 97, baseType: !31, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1025, file: !1026, line: 98, baseType: !1030, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1026, line: 24, size: 3072, elements: !1032)
!1032 = !{!1033, !1035, !1036, !1037, !1038, !1052, !1053, !1054, !1055, !1073, !1074, !1075, !1086, !1087, !1088}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1031, file: !1026, line: 26, baseType: !1034, size: 128)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 128, elements: !946)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1031, file: !1026, line: 27, baseType: !1034, size: 128, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1031, file: !1026, line: 28, baseType: !74, size: 32, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1031, file: !1026, line: 31, baseType: !166, size: 32, align: 512, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1031, file: !1026, line: 32, baseType: !1039, size: 960, offset: 576)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1040, line: 206, size: 960, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1041 = !{!1042, !1043, !1046, !1048, !1049, !1051}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1039, file: !1040, line: 207, baseType: !342, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1039, file: !1040, line: 208, baseType: !1044, size: 256, offset: 64)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1045, size: 256, elements: !466)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1039, file: !1040, line: 209, baseType: !1047, size: 256, offset: 320)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 256, elements: !466)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1039, file: !1040, line: 213, baseType: !270, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1039, file: !1040, line: 215, baseType: !1050, size: 256, offset: 640)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !466)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1039, file: !1040, line: 216, baseType: !194, size: 8, offset: 896)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1031, file: !1026, line: 33, baseType: !75, size: 64, offset: 1536)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1031, file: !1026, line: 34, baseType: !75, size: 64, offset: 1600)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1031, file: !1026, line: 35, baseType: !585, size: 8, offset: 1664)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1031, file: !1026, line: 36, baseType: !1056, size: 320, offset: 1728)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1057, line: 11, size: 320, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1058 = !{!1059, !1066, !1067, !1072}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1056, file: !1057, line: 16, baseType: !1060, size: 128)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !134, line: 198, size: 128, elements: !1061)
!1061 = !{!1062, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1060, file: !134, line: 199, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1060, file: !134, line: 199, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1056, file: !1057, line: 17, baseType: !75, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1056, file: !1057, line: 18, baseType: !1068, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1056, file: !1057, line: 19, baseType: !94, size: 32, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1031, file: !1026, line: 37, baseType: !550, size: 256, offset: 2048)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1031, file: !1026, line: 38, baseType: !339, size: 128, align: 64, offset: 2304)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1031, file: !1026, line: 39, baseType: !1076, size: 64, offset: 2432)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1026, line: 49, size: 768, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !1026, line: 50, baseType: !166, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1077, file: !1026, line: 51, baseType: !1047, size: 256, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1077, file: !1026, line: 53, baseType: !1047, size: 256, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1077, file: !1026, line: 54, baseType: !75, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1077, file: !1026, line: 55, baseType: !1076, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1077, file: !1026, line: 56, baseType: !74, size: 32, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1077, file: !1026, line: 57, baseType: !74, size: 32, offset: 736)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1031, file: !1026, line: 40, baseType: !75, size: 64, offset: 2496)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1031, file: !1026, line: 42, baseType: !74, size: 32, offset: 2560)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1031, file: !1026, line: 43, baseType: !1024, size: 64, offset: 2624)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1025, file: !1026, line: 99, baseType: !1090, offset: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1091, line: 211, elements: !369)
!1091 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1025, file: !1026, line: 100, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1026, line: 63, size: 3008, elements: !1095)
!1095 = !{!1096, !1097, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1127}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1094, file: !1026, line: 64, baseType: !1076, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1094, file: !1026, line: 65, baseType: !1098, size: 192, offset: 64)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 192, elements: !235)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1094, file: !1026, line: 67, baseType: !74, size: 32, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1094, file: !1026, line: 68, baseType: !485, size: 256, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1094, file: !1026, line: 69, baseType: !166, size: 32, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1094, file: !1026, line: 70, baseType: !485, size: 256, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1094, file: !1026, line: 71, baseType: !75, size: 64, offset: 896)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1094, file: !1026, line: 72, baseType: !75, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1094, file: !1026, line: 73, baseType: !75, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1094, file: !1026, line: 74, baseType: !75, size: 64, offset: 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1094, file: !1026, line: 75, baseType: !75, size: 64, offset: 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1094, file: !1026, line: 76, baseType: !75, size: 64, offset: 1216)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1094, file: !1026, line: 77, baseType: !75, size: 64, offset: 1280)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1094, file: !1026, line: 78, baseType: !75, size: 64, offset: 1344)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1094, file: !1026, line: 79, baseType: !585, size: 8, offset: 1408)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1094, file: !1026, line: 80, baseType: !75, size: 64, offset: 1472)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1094, file: !1026, line: 81, baseType: !485, size: 256, offset: 1536)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1094, file: !1026, line: 82, baseType: !810, size: 256, offset: 1792)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1094, file: !1026, line: 84, baseType: !186, size: 32, offset: 2048)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1094, file: !1026, line: 87, baseType: !75, size: 64, offset: 2112)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1094, file: !1026, line: 88, baseType: !75, size: 64, offset: 2176)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1094, file: !1026, line: 89, baseType: !1119, size: 704, offset: 2240)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !551, line: 111, size: 704, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1126}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1119, file: !551, line: 112, baseType: !550, size: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1119, file: !551, line: 113, baseType: !1056, size: 320, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1119, file: !551, line: 116, baseType: !1124, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !551, line: 18, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1119, file: !551, line: 117, baseType: !74, size: 32, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1094, file: !1026, line: 90, baseType: !1024, size: 64, offset: 2944)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !141, file: !39, line: 515, baseType: !1129, size: 64, offset: 8064)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1131, line: 117, size: 128, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1130, file: !1131, line: 118, baseType: !464, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1130, file: !1131, line: 119, baseType: !464, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1130, file: !1131, line: 120, baseType: !270, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !141, file: !39, line: 516, baseType: !31, size: 32, offset: 8128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !141, file: !39, line: 519, baseType: !31, size: 32, offset: 8160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !141, file: !39, line: 520, baseType: !1139, size: 64, offset: 8192)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !141, file: !39, line: 523, baseType: !1141, size: 64, offset: 8256)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !39, line: 523, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !141, file: !39, line: 524, baseType: !31, size: 32, offset: 8320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !141, file: !39, line: 525, baseType: !1146, size: 64, offset: 8384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !39, line: 525, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !141, file: !39, line: 526, baseType: !31, size: 32, offset: 8448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !141, file: !39, line: 533, baseType: !305, size: 64, offset: 8512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !141, file: !39, line: 534, baseType: !31, size: 32, offset: 8576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !141, file: !39, line: 535, baseType: !1153, size: 64, offset: 8640)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !141, file: !39, line: 536, baseType: !31, size: 32, offset: 8704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !141, file: !39, line: 539, baseType: !74, size: 32, offset: 8736)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !141, file: !39, line: 540, baseType: !1157, size: 64, offset: 8768)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1159, line: 32, size: 64, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1158, file: !1159, line: 33, baseType: !464, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1158, file: !1159, line: 34, baseType: !464, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !141, file: !39, line: 563, baseType: !133, size: 128, offset: 8832)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !141, file: !39, line: 565, baseType: !133, size: 128, offset: 8960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !141, file: !39, line: 568, baseType: !1166, size: 64, offset: 9088)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !141, file: !39, line: 570, baseType: !186, size: 32, offset: 9152)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tick_device", file: !57, line: 12, size: 128, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "evtdev", scope: !1171, file: !57, line: 13, baseType: !63, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1171, file: !57, line: 14, baseType: !56, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1176 = !{!0, !7, !12, !17, !22}
!1177 = !{i32 7, !"Dwarf Version", i32 5}
!1178 = !{i32 2, !"Debug Info Version", i32 3}
!1179 = !{i32 1, !"wchar_size", i32 2}
!1180 = !{i32 8, !"cf-protection-branch", i32 1}
!1181 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1182 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1183 = !{i32 1, !"Code Model", i32 2}
!1184 = !{i32 1, !"override-stack-alignment", i32 8}
!1185 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1186 = distinct !DISubprogram(name: "tick_program_event", scope: !2, file: !2, line: 23, type: !1187, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!74, !80, !74}
!1189 = !{!1190, !1191, !1192, !1193, !1196, !1198}
!1190 = !DILocalVariable(name: "expires", arg: 1, scope: !1186, file: !2, line: 23, type: !80)
!1191 = !DILocalVariable(name: "force", arg: 2, scope: !1186, file: !2, line: 23, type: !74)
!1192 = !DILocalVariable(name: "dev", scope: !1186, file: !2, line: 25, type: !63)
!1193 = !DILocalVariable(name: "pscr_ret__", scope: !1194, file: !2, line: 25, type: !63)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 25, column: 35)
!1195 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 25, column: 35)
!1196 = !DILocalVariable(name: "__vpp_verify", scope: !1197, file: !2, line: 25, type: !506)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 25, column: 35)
!1198 = !DILocalVariable(name: "pfo_val__", scope: !1199, file: !2, line: 25, type: !89)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 25, column: 35)
!1200 = !DILocation(line: 23, column: 32, scope: !1186)
!1201 = !DILocation(line: 23, column: 45, scope: !1186)
!1202 = !DILocation(line: 25, column: 2, scope: !1186)
!1203 = !DILocation(line: 25, column: 29, scope: !1186)
!1204 = !DILocation(line: 25, column: 35, scope: !1195)
!1205 = !DILocation(line: 25, column: 35, scope: !1194)
!1206 = !DILocation(line: 25, column: 35, scope: !1197)
!1207 = !DILocation(line: 25, column: 35, scope: !1199)
!1208 = !{i64 2152965929}
!1209 = !DILocation(line: 27, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 27, column: 6)
!1211 = !DILocation(line: 27, column: 6, scope: !1186)
!1212 = !DILocation(line: 31, column: 28, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 27, column: 38)
!1214 = !DILocation(line: 31, column: 3, scope: !1213)
!1215 = !DILocation(line: 32, column: 3, scope: !1213)
!1216 = !DILocation(line: 32, column: 8, scope: !1213)
!1217 = !DILocation(line: 32, column: 19, scope: !1213)
!1218 = !DILocation(line: 33, column: 3, scope: !1213)
!1219 = !DILocation(line: 36, column: 6, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 36, column: 6)
!1221 = !DILocation(line: 36, column: 6, scope: !1186)
!1222 = !DILocation(line: 41, column: 28, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 36, column: 55)
!1224 = !DILocation(line: 41, column: 3, scope: !1223)
!1225 = !DILocation(line: 42, column: 2, scope: !1223)
!1226 = !DILocation(line: 44, column: 35, scope: !1186)
!1227 = !DILocation(line: 44, column: 40, scope: !1186)
!1228 = !DILocation(line: 44, column: 49, scope: !1186)
!1229 = !DILocation(line: 44, column: 9, scope: !1186)
!1230 = !DILocation(line: 44, column: 2, scope: !1186)
!1231 = !DILocation(line: 45, column: 1, scope: !1186)
!1232 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !1233, file: !1233, line: 313, type: !1234, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1236)
!1233 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !126}
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "op", arg: 1, scope: !1232, file: !1233, line: 313, type: !126)
!1238 = !DILocation(line: 313, column: 66, scope: !1232)
!1239 = !DILocation(line: 313, column: 72, scope: !1232)
!1240 = !DISubprogram(name: "clockevents_switch_state", scope: !1241, file: !1241, line: 53, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1241 = !DIFile(filename: "kernel/time/tick-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43882d5594f243c1bfbd5b540566356d")
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !63, !29}
!1244 = distinct !DISubprogram(name: "clockevent_state_oneshot_stopped", scope: !30, file: !30, line: 155, type: !1245, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!585, !63}
!1247 = !{!1248}
!1248 = !DILocalVariable(name: "dev", arg: 1, scope: !1244, file: !30, line: 155, type: !63)
!1249 = !DILocation(line: 155, column: 80, scope: !1244)
!1250 = !DILocation(line: 157, column: 9, scope: !1244)
!1251 = !DILocation(line: 157, column: 14, scope: !1244)
!1252 = !DILocation(line: 157, column: 34, scope: !1244)
!1253 = !DILocation(line: 157, column: 2, scope: !1244)
!1254 = !DISubprogram(name: "clockevents_program_event", scope: !1241, file: !1241, line: 55, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!74, !63, !80, !585}
!1257 = distinct !DISubprogram(name: "tick_resume_oneshot", scope: !2, file: !2, line: 50, type: !1167, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1258)
!1258 = !{!1259, !1260, !1263, !1265}
!1259 = !DILocalVariable(name: "dev", scope: !1257, file: !2, line: 52, type: !63)
!1260 = !DILocalVariable(name: "pscr_ret__", scope: !1261, file: !2, line: 52, type: !63)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 52, column: 35)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 52, column: 35)
!1263 = !DILocalVariable(name: "__vpp_verify", scope: !1264, file: !2, line: 52, type: !506)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 52, column: 35)
!1265 = !DILocalVariable(name: "pfo_val__", scope: !1266, file: !2, line: 52, type: !89)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 52, column: 35)
!1267 = !DILocation(line: 52, column: 2, scope: !1257)
!1268 = !DILocation(line: 52, column: 29, scope: !1257)
!1269 = !DILocation(line: 52, column: 35, scope: !1262)
!1270 = !DILocation(line: 52, column: 35, scope: !1261)
!1271 = !DILocation(line: 52, column: 35, scope: !1264)
!1272 = !DILocation(line: 52, column: 35, scope: !1266)
!1273 = !{i64 2152969522}
!1274 = !DILocation(line: 54, column: 27, scope: !1257)
!1275 = !DILocation(line: 54, column: 2, scope: !1257)
!1276 = !DILocation(line: 55, column: 28, scope: !1257)
!1277 = !DILocation(line: 55, column: 33, scope: !1257)
!1278 = !DILocation(line: 55, column: 2, scope: !1257)
!1279 = !DILocation(line: 56, column: 1, scope: !1257)
!1280 = !DISubprogram(name: "ktime_get", scope: !1281, file: !1281, line: 67, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!80}
!1284 = distinct !DISubprogram(name: "tick_setup_oneshot", scope: !2, file: !2, line: 61, type: !1285, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !63, !67, !80}
!1287 = !{!1288, !1289, !1290}
!1288 = !DILocalVariable(name: "newdev", arg: 1, scope: !1284, file: !2, line: 61, type: !63)
!1289 = !DILocalVariable(name: "handler", arg: 2, scope: !1284, file: !2, line: 62, type: !67)
!1290 = !DILocalVariable(name: "next_event", arg: 3, scope: !1284, file: !2, line: 63, type: !80)
!1291 = !DILocation(line: 61, column: 52, scope: !1284)
!1292 = !DILocation(line: 62, column: 11, scope: !1284)
!1293 = !DILocation(line: 63, column: 12, scope: !1284)
!1294 = !DILocation(line: 65, column: 26, scope: !1284)
!1295 = !DILocation(line: 65, column: 2, scope: !1284)
!1296 = !DILocation(line: 65, column: 10, scope: !1284)
!1297 = !DILocation(line: 65, column: 24, scope: !1284)
!1298 = !DILocation(line: 66, column: 27, scope: !1284)
!1299 = !DILocation(line: 66, column: 2, scope: !1284)
!1300 = !DILocation(line: 67, column: 28, scope: !1284)
!1301 = !DILocation(line: 67, column: 36, scope: !1284)
!1302 = !DILocation(line: 67, column: 2, scope: !1284)
!1303 = !DILocation(line: 68, column: 1, scope: !1284)
!1304 = distinct !DISubprogram(name: "tick_switch_to_oneshot", scope: !2, file: !2, line: 73, type: !1305, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!74, !67}
!1307 = !{!1308, !1309, !1310, !1313, !1315}
!1308 = !DILocalVariable(name: "handler", arg: 1, scope: !1304, file: !2, line: 73, type: !67)
!1309 = !DILocalVariable(name: "td", scope: !1304, file: !2, line: 75, type: !1170)
!1310 = !DILocalVariable(name: "__vpp_verify", scope: !1311, file: !2, line: 75, type: !506)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 75, column: 27)
!1312 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 75, column: 27)
!1313 = !DILocalVariable(name: "tcp_ptr__", scope: !1314, file: !2, line: 75, type: !75)
!1314 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 75, column: 27)
!1315 = !DILocalVariable(name: "dev", scope: !1304, file: !2, line: 76, type: !63)
!1316 = !DILocation(line: 73, column: 35, scope: !1304)
!1317 = !DILocation(line: 75, column: 2, scope: !1304)
!1318 = !DILocation(line: 75, column: 22, scope: !1304)
!1319 = !DILocation(line: 75, column: 27, scope: !1312)
!1320 = !DILocation(line: 75, column: 27, scope: !1311)
!1321 = !DILocation(line: 75, column: 27, scope: !1314)
!1322 = !{i64 2152970066}
!1323 = !DILocation(line: 76, column: 2, scope: !1304)
!1324 = !DILocation(line: 76, column: 29, scope: !1304)
!1325 = !DILocation(line: 76, column: 35, scope: !1304)
!1326 = !DILocation(line: 76, column: 39, scope: !1304)
!1327 = !DILocation(line: 78, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 78, column: 6)
!1329 = !DILocation(line: 78, column: 11, scope: !1328)
!1330 = !DILocation(line: 78, column: 16, scope: !1328)
!1331 = !DILocation(line: 78, column: 21, scope: !1328)
!1332 = !DILocation(line: 78, column: 30, scope: !1328)
!1333 = !DILocation(line: 78, column: 56, scope: !1328)
!1334 = !DILocation(line: 79, column: 34, scope: !1328)
!1335 = !DILocation(line: 79, column: 8, scope: !1328)
!1336 = !DILocation(line: 78, column: 6, scope: !1304)
!1337 = !DILocation(line: 81, column: 3, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 81, column: 3)
!1339 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 79, column: 40)
!1340 = !DILocation(line: 81, column: 3, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 81, column: 3)
!1342 = !DILocation(line: 82, column: 8, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 82, column: 7)
!1344 = !DILocation(line: 82, column: 7, scope: !1339)
!1345 = !DILocation(line: 83, column: 4, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 83, column: 4)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 82, column: 13)
!1348 = !DILocation(line: 83, column: 4, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 83, column: 4)
!1350 = !DILocation(line: 84, column: 3, scope: !1347)
!1351 = !DILocation(line: 85, column: 35, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 85, column: 8)
!1353 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 84, column: 10)
!1354 = !DILocation(line: 85, column: 9, scope: !1352)
!1355 = !DILocation(line: 85, column: 8, scope: !1353)
!1356 = !DILocation(line: 86, column: 5, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 86, column: 5)
!1358 = !DILocation(line: 86, column: 5, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 86, column: 5)
!1360 = !DILocation(line: 86, column: 5, scope: !1352)
!1361 = !DILocation(line: 88, column: 5, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 88, column: 5)
!1363 = !DILocation(line: 88, column: 5, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 88, column: 5)
!1365 = !DILocation(line: 91, column: 3, scope: !1339)
!1366 = !DILocation(line: 94, column: 2, scope: !1304)
!1367 = !DILocation(line: 94, column: 6, scope: !1304)
!1368 = !DILocation(line: 94, column: 11, scope: !1304)
!1369 = !DILocation(line: 95, column: 23, scope: !1304)
!1370 = !DILocation(line: 95, column: 2, scope: !1304)
!1371 = !DILocation(line: 95, column: 7, scope: !1304)
!1372 = !DILocation(line: 95, column: 21, scope: !1304)
!1373 = !DILocation(line: 96, column: 27, scope: !1304)
!1374 = !DILocation(line: 96, column: 2, scope: !1304)
!1375 = !DILocation(line: 97, column: 2, scope: !1304)
!1376 = !DILocation(line: 98, column: 2, scope: !1304)
!1377 = !DILocation(line: 99, column: 1, scope: !1304)
!1378 = distinct !DISubprogram(name: "tick_device_is_functional", scope: !1241, file: !1241, line: 34, type: !102, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1379)
!1379 = !{!1380}
!1380 = !DILocalVariable(name: "dev", arg: 1, scope: !1378, file: !1241, line: 34, type: !63)
!1381 = !DILocation(line: 34, column: 72, scope: !1378)
!1382 = !DILocation(line: 36, column: 11, scope: !1378)
!1383 = !DILocation(line: 36, column: 16, scope: !1378)
!1384 = !DILocation(line: 36, column: 25, scope: !1378)
!1385 = !DILocation(line: 36, column: 9, scope: !1378)
!1386 = !DILocation(line: 36, column: 2, scope: !1378)
!1387 = !DISubprogram(name: "_printk", scope: !1388, file: !1388, line: 153, type: !1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!74, !126, null}
!1391 = !DISubprogram(name: "tick_broadcast_switch_to_oneshot", scope: !1241, file: !1241, line: 128, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1392 = distinct !DISubprogram(name: "tick_oneshot_mode_active", scope: !2, file: !2, line: 106, type: !928, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1393)
!1393 = !{!1394, !1395, !1396, !1400, !1401, !1404, !1406, !1408, !1412}
!1394 = !DILocalVariable(name: "flags", scope: !1392, file: !2, line: 108, type: !75)
!1395 = !DILocalVariable(name: "ret", scope: !1392, file: !2, line: 109, type: !74)
!1396 = !DILocalVariable(name: "__dummy", scope: !1397, file: !2, line: 111, type: !75)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 111, column: 2)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 111, column: 2)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 111, column: 2)
!1400 = !DILocalVariable(name: "__dummy2", scope: !1397, file: !2, line: 111, type: !75)
!1401 = !DILocalVariable(name: "pscr_ret__", scope: !1402, file: !2, line: 112, type: !56)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !2, line: 112, column: 8)
!1403 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 112, column: 8)
!1404 = !DILocalVariable(name: "__vpp_verify", scope: !1405, file: !2, line: 112, type: !506)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 112, column: 8)
!1406 = !DILocalVariable(name: "pfo_val__", scope: !1407, file: !2, line: 112, type: !94)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 112, column: 8)
!1408 = !DILocalVariable(name: "__dummy", scope: !1409, file: !2, line: 113, type: !75)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 113, column: 2)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 113, column: 2)
!1411 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 113, column: 2)
!1412 = !DILocalVariable(name: "__dummy2", scope: !1409, file: !2, line: 113, type: !75)
!1413 = !DILocation(line: 108, column: 2, scope: !1392)
!1414 = !DILocation(line: 108, column: 16, scope: !1392)
!1415 = !DILocation(line: 109, column: 2, scope: !1392)
!1416 = !DILocation(line: 109, column: 6, scope: !1392)
!1417 = !DILocation(line: 111, column: 2, scope: !1392)
!1418 = !DILocation(line: 111, column: 2, scope: !1399)
!1419 = !DILocation(line: 111, column: 2, scope: !1397)
!1420 = !DILocation(line: 111, column: 2, scope: !1398)
!1421 = !DILocation(line: 112, column: 8, scope: !1403)
!1422 = !DILocation(line: 112, column: 8, scope: !1402)
!1423 = !DILocation(line: 112, column: 8, scope: !1405)
!1424 = !DILocation(line: 112, column: 8, scope: !1407)
!1425 = !{i64 2152974937}
!1426 = !DILocation(line: 112, column: 46, scope: !1392)
!1427 = !DILocation(line: 112, column: 6, scope: !1392)
!1428 = !DILocation(line: 113, column: 2, scope: !1392)
!1429 = !DILocation(line: 113, column: 2, scope: !1411)
!1430 = !DILocation(line: 113, column: 2, scope: !1409)
!1431 = !DILocation(line: 113, column: 2, scope: !1410)
!1432 = !DILocation(line: 113, column: 2, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 113, column: 2)
!1434 = !DILocation(line: 115, column: 9, scope: !1392)
!1435 = !DILocation(line: 116, column: 1, scope: !1392)
!1436 = !DILocation(line: 115, column: 2, scope: !1392)
!1437 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !1438, file: !1438, line: 101, type: !1439, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1441)
!1438 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!75}
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "flags", scope: !1437, file: !1438, line: 103, type: !75)
!1443 = !DILocation(line: 103, column: 2, scope: !1437)
!1444 = !DILocation(line: 103, column: 16, scope: !1437)
!1445 = !DILocation(line: 103, column: 24, scope: !1437)
!1446 = !DILocation(line: 104, column: 2, scope: !1437)
!1447 = !DILocation(line: 105, column: 9, scope: !1437)
!1448 = !DILocation(line: 106, column: 1, scope: !1437)
!1449 = !DILocation(line: 105, column: 2, scope: !1437)
!1450 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !1438, file: !1438, line: 132, type: !1451, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !75}
!1453 = !{!1454}
!1454 = !DILocalVariable(name: "flags", arg: 1, scope: !1450, file: !1438, line: 132, type: !75)
!1455 = !DILocation(line: 132, column: 66, scope: !1450)
!1456 = !DILocation(line: 134, column: 32, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1450, file: !1438, line: 134, column: 6)
!1458 = !DILocation(line: 134, column: 7, scope: !1457)
!1459 = !DILocation(line: 134, column: 6, scope: !1450)
!1460 = !DILocation(line: 135, column: 3, scope: !1457)
!1461 = !DILocation(line: 136, column: 1, scope: !1450)
!1462 = distinct !DISubprogram(name: "tick_init_highres", scope: !2, file: !2, line: 124, type: !928, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!1463 = !DILocation(line: 126, column: 9, scope: !1462)
!1464 = !DILocation(line: 126, column: 2, scope: !1462)
!1465 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1438, file: !1438, line: 65, type: !1439, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!1466 = !DILocation(line: 67, column: 9, scope: !1465)
!1467 = !DILocation(line: 67, column: 2, scope: !1465)
!1468 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !1438, file: !1438, line: 70, type: !1167, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!1469 = !DILocation(line: 72, column: 2, scope: !1468)
!1470 = !DILocation(line: 73, column: 1, scope: !1468)
!1471 = distinct !DISubprogram(name: "native_save_fl", scope: !1438, file: !1438, line: 17, type: !1439, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1472)
!1472 = !{!1473}
!1473 = !DILocalVariable(name: "flags", scope: !1471, file: !1438, line: 19, type: !75)
!1474 = !DILocation(line: 19, column: 2, scope: !1471)
!1475 = !DILocation(line: 19, column: 16, scope: !1471)
!1476 = !DILocation(line: 26, column: 2, scope: !1471)
!1477 = !{i64 1489724, i64 1489745}
!1478 = !DILocation(line: 32, column: 9, scope: !1471)
!1479 = !DILocation(line: 33, column: 1, scope: !1471)
!1480 = !DILocation(line: 32, column: 2, scope: !1471)
!1481 = distinct !DISubprogram(name: "native_irq_disable", scope: !1438, file: !1438, line: 35, type: !1167, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!1482 = !DILocation(line: 37, column: 2, scope: !1481)
!1483 = !{i64 1489928}
!1484 = !DILocation(line: 38, column: 1, scope: !1481)
!1485 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1438, file: !1438, line: 120, type: !1486, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1488)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!74, !75}
!1488 = !{!1489}
!1489 = !DILocalVariable(name: "flags", arg: 1, scope: !1485, file: !1438, line: 120, type: !75)
!1490 = !DILocation(line: 120, column: 67, scope: !1485)
!1491 = !DILocation(line: 122, column: 11, scope: !1485)
!1492 = !DILocation(line: 122, column: 17, scope: !1485)
!1493 = !DILocation(line: 122, column: 9, scope: !1485)
!1494 = !DILocation(line: 122, column: 2, scope: !1485)
!1495 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !1438, file: !1438, line: 75, type: !1167, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!1496 = !DILocation(line: 77, column: 2, scope: !1495)
!1497 = !DILocation(line: 78, column: 1, scope: !1495)
!1498 = distinct !DISubprogram(name: "native_irq_enable", scope: !1438, file: !1438, line: 40, type: !1167, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!1499 = !DILocation(line: 42, column: 2, scope: !1498)
!1500 = !{i64 1490020}
!1501 = !DILocation(line: 43, column: 1, scope: !1498)
