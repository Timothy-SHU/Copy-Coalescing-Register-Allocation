; ModuleID = 'lib/once.c'
source_filename = "lib/once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___do_once_start: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __do_once_start ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___do_once_done: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __do_once_done ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___do_once_sleepable_start: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __do_once_sleepable_start ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___do_once_sleepable_done: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __do_once_sleepable_done ; .previous"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.once_work = type { %struct.work_struct, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.2 }
%union.anon.2 = type { i64 }

@once_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !0
@__UNIQUE_ID___addressable___do_once_start197 = internal global ptr @__do_once_start, section ".discard.addressable", align 8, !dbg !1132
@__UNIQUE_ID___addressable___do_once_done198 = internal global ptr @__do_once_done, section ".discard.addressable", align 8, !dbg !1134
@once_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @once_mutex, i64 16), ptr getelementptr (i8, ptr @once_mutex, i64 16) } }, align 8, !dbg !1160
@__UNIQUE_ID___addressable___do_once_sleepable_start199 = internal global ptr @__do_once_sleepable_start, section ".discard.addressable", align 8, !dbg !1136
@__UNIQUE_ID___addressable___do_once_sleepable_done200 = internal global ptr @__do_once_sleepable_done, section ".discard.addressable", align 8, !dbg !1138
@once_disable_jump.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1140
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1150
@.str.1 = private unnamed_addr constant [11 x i8] c"lib/once.c\00", align 1, !dbg !1155
@system_wq = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable___do_once_start197, ptr @__UNIQUE_ID___addressable___do_once_done198, ptr @__UNIQUE_ID___addressable___do_once_sleepable_start199, ptr @__UNIQUE_ID___addressable___do_once_sleepable_done200], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @__do_once_start(ptr noundef %done, ptr noundef %flags) #0 align 16 !dbg !1171 {
entry:
  %retval = alloca i1, align 1
  %done.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !1176, metadata !DIExpression()), !dbg !1183
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1177, metadata !DIExpression()), !dbg !1184
  br label %do.body, !dbg !1185

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1186

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1178, metadata !DIExpression()), !dbg !1187
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1182, metadata !DIExpression()), !dbg !1187
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1187
  %conv = zext i1 %cmp to i32, !dbg !1187
  store i32 1, ptr %tmp, align 4, !dbg !1187
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1188
  %0 = load i32, ptr %tmp, align 4, !dbg !1187
  %call = call ptr @spinlock_check(ptr noundef @once_lock) #14, !dbg !1188
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #14, !dbg !1188
  %1 = load ptr, ptr %flags.addr, align 8, !dbg !1188
  store i64 %call2, ptr %1, align 8, !dbg !1188
  br label %do.end, !dbg !1188

do.end:                                           ; preds = %do.body1
  br label %do.end3, !dbg !1186

do.end3:                                          ; preds = %do.end
  %2 = load ptr, ptr %done.addr, align 8, !dbg !1189
  %3 = load i8, ptr %2, align 1, !dbg !1191, !range !1192, !noundef !355
  %tobool = trunc i8 %3 to i1, !dbg !1191
  br i1 %tobool, label %if.then, label %if.end, !dbg !1193

if.then:                                          ; preds = %do.end3
  %4 = load ptr, ptr %flags.addr, align 8, !dbg !1194
  %5 = load i64, ptr %4, align 8, !dbg !1196
  call void @spin_unlock_irqrestore(ptr noundef @once_lock, i64 noundef %5) #14, !dbg !1197
  store i1 false, ptr %retval, align 1, !dbg !1198
  br label %return, !dbg !1198

if.end:                                           ; preds = %do.end3
  store i1 true, ptr %retval, align 1, !dbg !1199
  br label %return, !dbg !1199

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !1200
  ret i1 %6, !dbg !1200
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1201 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !1206 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1212, metadata !DIExpression()), !dbg !1213
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1214
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1215
  ret ptr %1, !dbg !1216
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !1217 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1221, metadata !DIExpression()), !dbg !1227
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1222, metadata !DIExpression()), !dbg !1228
  br label %do.body, !dbg !1229

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1223, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1226, metadata !DIExpression()), !dbg !1230
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1230
  %conv = zext i1 %cmp to i32, !dbg !1230
  store i32 1, ptr %tmp, align 4, !dbg !1230
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1231
  %0 = load i32, ptr %tmp, align 4, !dbg !1230
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !1231
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !1231
  %3 = load i64, ptr %flags.addr, align 8, !dbg !1231
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #14, !dbg !1231
  br label %do.end, !dbg !1231

do.end:                                           ; preds = %do.body
  ret void, !dbg !1232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__do_once_done(ptr noundef %done, ptr noundef %once_key, ptr noundef %flags, ptr noundef %mod) #0 align 16 !dbg !1233 {
entry:
  %done.addr = alloca ptr, align 8
  %once_key.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !1237, metadata !DIExpression()), !dbg !1241
  store ptr %once_key, ptr %once_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %once_key.addr, metadata !1238, metadata !DIExpression()), !dbg !1242
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1239, metadata !DIExpression()), !dbg !1243
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1240, metadata !DIExpression()), !dbg !1244
  %0 = load ptr, ptr %done.addr, align 8, !dbg !1245
  store i8 1, ptr %0, align 1, !dbg !1246
  %1 = load ptr, ptr %flags.addr, align 8, !dbg !1247
  %2 = load i64, ptr %1, align 8, !dbg !1248
  call void @spin_unlock_irqrestore(ptr noundef @once_lock, i64 noundef %2) #14, !dbg !1249
  %3 = load ptr, ptr %once_key.addr, align 8, !dbg !1250
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !1251
  call void @once_disable_jump(ptr noundef %3, ptr noundef %4) #14, !dbg !1252
  ret void, !dbg !1253
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @once_disable_jump(ptr noundef %key, ptr noundef %mod) #0 align 16 !dbg !1142 {
entry:
  %key.addr = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  %w = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1146, metadata !DIExpression()), !dbg !1254
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1147, metadata !DIExpression()), !dbg !1255
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #13, !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %w, metadata !1148, metadata !DIExpression()), !dbg !1257
  %call = call noalias ptr @kmalloc(i64 noundef 48, i32 noundef 2080) #15, !dbg !1258
  store ptr %call, ptr %w, align 8, !dbg !1259
  %0 = load ptr, ptr %w, align 8, !dbg !1260
  %tobool = icmp ne ptr %0, null, !dbg !1260
  br i1 %tobool, label %if.end, label %if.then, !dbg !1262

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1263

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1264

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !1265

do.body1:                                         ; preds = %do.body
  %1 = load ptr, ptr %w, align 8, !dbg !1267
  %work = getelementptr inbounds %struct.once_work, ptr %1, i32 0, i32 0, !dbg !1267
  call void @__init_work(ptr noundef %work, i32 noundef 0) #14, !dbg !1267
  %2 = load ptr, ptr %w, align 8, !dbg !1267
  %work2 = getelementptr inbounds %struct.once_work, ptr %2, i32 0, i32 0, !dbg !1267
  %data = getelementptr inbounds %struct.work_struct, ptr %work2, i32 0, i32 0, !dbg !1267
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !1267
  store i64 68719476704, ptr %counter, align 8, !dbg !1267
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !1267
  %3 = load ptr, ptr %w, align 8, !dbg !1267
  %work3 = getelementptr inbounds %struct.once_work, ptr %3, i32 0, i32 0, !dbg !1267
  %entry4 = getelementptr inbounds %struct.work_struct, ptr %work3, i32 0, i32 1, !dbg !1267
  call void @INIT_LIST_HEAD(ptr noundef %entry4) #14, !dbg !1267
  %4 = load ptr, ptr %w, align 8, !dbg !1267
  %work5 = getelementptr inbounds %struct.once_work, ptr %4, i32 0, i32 0, !dbg !1267
  %func = getelementptr inbounds %struct.work_struct, ptr %work5, i32 0, i32 2, !dbg !1267
  store ptr @once_deferred, ptr %func, align 8, !dbg !1267
  br label %do.cond, !dbg !1267

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1267

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !1265

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !1265

do.end7:                                          ; preds = %do.cond6
  %5 = load ptr, ptr %key.addr, align 8, !dbg !1269
  %6 = load ptr, ptr %w, align 8, !dbg !1270
  %key8 = getelementptr inbounds %struct.once_work, ptr %6, i32 0, i32 1, !dbg !1271
  store ptr %5, ptr %key8, align 8, !dbg !1272
  %7 = load ptr, ptr %mod.addr, align 8, !dbg !1273
  %8 = load ptr, ptr %w, align 8, !dbg !1274
  %module = getelementptr inbounds %struct.once_work, ptr %8, i32 0, i32 2, !dbg !1275
  store ptr %7, ptr %module, align 8, !dbg !1276
  %9 = load ptr, ptr %mod.addr, align 8, !dbg !1277
  call void @__module_get(ptr noundef %9) #14, !dbg !1278
  %10 = load ptr, ptr %w, align 8, !dbg !1279
  %work9 = getelementptr inbounds %struct.once_work, ptr %10, i32 0, i32 0, !dbg !1280
  %call10 = call zeroext i1 @schedule_work(ptr noundef %work9) #14, !dbg !1281
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1282
  br label %cleanup, !dbg !1282

cleanup:                                          ; preds = %do.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #13, !dbg !1282
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1282

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @__do_once_sleepable_start(ptr noundef %done) #0 align 16 !dbg !1283 {
entry:
  %retval = alloca i1, align 1
  %done.addr = alloca ptr, align 8
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !1287, metadata !DIExpression()), !dbg !1288
  call void @mutex_lock(ptr noundef @once_mutex) #14, !dbg !1289
  %0 = load ptr, ptr %done.addr, align 8, !dbg !1290
  %1 = load i8, ptr %0, align 1, !dbg !1292, !range !1192, !noundef !355
  %tobool = trunc i8 %1 to i1, !dbg !1292
  br i1 %tobool, label %if.then, label %if.end, !dbg !1293

if.then:                                          ; preds = %entry
  call void @mutex_unlock(ptr noundef @once_mutex) #14, !dbg !1294
  store i1 false, ptr %retval, align 1, !dbg !1296
  br label %return, !dbg !1296

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !1297
  br label %return, !dbg !1297

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !1298
  ret i1 %2, !dbg !1298
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1299 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1303 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__do_once_sleepable_done(ptr noundef %done, ptr noundef %once_key, ptr noundef %mod) #0 align 16 !dbg !1304 {
entry:
  %done.addr = alloca ptr, align 8
  %once_key.addr = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !1308, metadata !DIExpression()), !dbg !1311
  store ptr %once_key, ptr %once_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %once_key.addr, metadata !1309, metadata !DIExpression()), !dbg !1312
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1310, metadata !DIExpression()), !dbg !1313
  %0 = load ptr, ptr %done.addr, align 8, !dbg !1314
  store i8 1, ptr %0, align 1, !dbg !1315
  call void @mutex_unlock(ptr noundef @once_mutex) #14, !dbg !1316
  %1 = load ptr, ptr %once_key.addr, align 8, !dbg !1317
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !1318
  call void @once_disable_jump(ptr noundef %1, ptr noundef %2) #14, !dbg !1319
  ret void, !dbg !1320
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1321 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1324 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1328, metadata !DIExpression()), !dbg !1333
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1329, metadata !DIExpression()), !dbg !1334
  %0 = load i64, ptr %size.addr, align 8, !dbg !1335
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1336
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1337

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1338
  %tobool = icmp ne i64 %2, 0, !dbg !1338
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1339

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1340
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1330, metadata !DIExpression()), !dbg !1341
  %3 = load i64, ptr %size.addr, align 8, !dbg !1342
  %cmp = icmp ugt i64 %3, 8192, !dbg !1344
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1345

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1346
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1347
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1348
  store ptr %call, ptr %retval, align 8, !dbg !1349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1349

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1350
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1350
  store i32 %call2, ptr %index, align 4, !dbg !1351
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1352
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1353
  %9 = ptrtoint ptr %8 to i64, !dbg !1353
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1354
  %idxprom = zext i32 %call3 to i64, !dbg !1355
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1355
  %10 = load i32, ptr %index, align 4, !dbg !1356
  %idxprom4 = zext i32 %10 to i64, !dbg !1355
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1355
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1355
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1357
  %13 = load i64, ptr %size.addr, align 8, !dbg !1358
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1359
  store ptr %call6, ptr %retval, align 8, !dbg !1360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1360

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1361
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1362
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1363
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1364
  store ptr %call8, ptr %retval, align 8, !dbg !1365
  br label %return, !dbg !1365

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1366
  ret ptr %16, !dbg !1366
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #6 align 16 !dbg !1367 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1371, metadata !DIExpression()), !dbg !1373
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !1372, metadata !DIExpression()), !dbg !1374
  ret void, !dbg !1375
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !1376 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1381, metadata !DIExpression()), !dbg !1382
  br label %do.body, !dbg !1383

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1384

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1386

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1384

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1388
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1388
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1388
  store volatile ptr %0, ptr %next, align 8, !dbg !1388
  br label %do.end3, !dbg !1388

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1384

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1390

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1391

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1393

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1391

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1395
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1395
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1395
  store volatile ptr %2, ptr %prev, align 8, !dbg !1395
  br label %do.end9, !dbg !1395

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1391

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1397
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @once_deferred(ptr noundef %w) #0 align 16 !dbg !1398 {
entry:
  %w.addr = alloca ptr, align 8
  %work = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1400, metadata !DIExpression()), !dbg !1404
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #13, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %work, metadata !1401, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1402, metadata !DIExpression()), !dbg !1407
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1407
  store ptr %0, ptr %__mptr, align 8, !dbg !1407
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1407
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1407
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !1408
  %2 = load ptr, ptr %tmp, align 8, !dbg !1407
  store ptr %2, ptr %work, align 8, !dbg !1409
  br label %do.body, !dbg !1410

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %work, align 8, !dbg !1411
  %key = getelementptr inbounds %struct.once_work, ptr %3, i32 0, i32 1, !dbg !1411
  %4 = load ptr, ptr %key, align 8, !dbg !1411
  %call = call i32 @static_key_count(ptr noundef %4) #14, !dbg !1411
  %cmp = icmp sgt i32 %call, 0, !dbg !1411
  %conv = zext i1 %cmp to i32, !dbg !1411
  store i32 %conv, ptr %tmp1, align 4, !dbg !1415
  %5 = load i32, ptr %tmp1, align 4, !dbg !1411
  %tobool = icmp ne i32 %5, 0, !dbg !1417
  %lnot = xor i1 %tobool, true, !dbg !1417
  %lnot2 = xor i1 %lnot, true, !dbg !1417
  %lnot3 = xor i1 %lnot2, true, !dbg !1417
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1417
  %conv4 = sext i32 %lnot.ext to i64, !dbg !1417
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !1417
  %tobool5 = icmp ne i64 %expval, 0, !dbg !1417
  br i1 %tobool5, label %if.then, label %if.end, !dbg !1418

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !1417

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !1419

do.body7:                                         ; preds = %do.body6
  br label %do.cond, !dbg !1421

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1421

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1419

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 19, i32 0, i64 12) #13, !dbg !1423, !srcloc !1425
  br label %do.cond9, !dbg !1423

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1423

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !1419

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !1419

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !1419

if.end:                                           ; preds = %do.end12, %do.body
  br label %do.cond13, !dbg !1418

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !1418

do.end14:                                         ; preds = %do.cond13
  %6 = load ptr, ptr %work, align 8, !dbg !1426
  %key15 = getelementptr inbounds %struct.once_work, ptr %6, i32 0, i32 1, !dbg !1426
  %7 = load ptr, ptr %key15, align 8, !dbg !1426
  %key16 = getelementptr inbounds %struct.static_key_true, ptr %7, i32 0, i32 0, !dbg !1426
  call void @static_key_disable(ptr noundef %key16) #14, !dbg !1426
  %8 = load ptr, ptr %work, align 8, !dbg !1427
  %module = getelementptr inbounds %struct.once_work, ptr %8, i32 0, i32 2, !dbg !1428
  %9 = load ptr, ptr %module, align 8, !dbg !1428
  call void @module_put(ptr noundef %9) #14, !dbg !1429
  %10 = load ptr, ptr %work, align 8, !dbg !1430
  call void @kfree(ptr noundef %10) #14, !dbg !1431
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #13, !dbg !1432
  ret void, !dbg !1432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1433 dso_local void @__module_get(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #6 align 16 !dbg !1434 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1438, metadata !DIExpression()), !dbg !1439
  %0 = load ptr, ptr @system_wq, align 8, !dbg !1440
  %1 = load ptr, ptr %work.addr, align 8, !dbg !1441
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #14, !dbg !1442
  ret i1 %call, !dbg !1443
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1444 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !1445 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1449, metadata !DIExpression()), !dbg !1451
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1450, metadata !DIExpression()), !dbg !1452
  %0 = load i64, ptr %size.addr, align 8, !dbg !1453
  %tobool = icmp ne i64 %0, 0, !dbg !1453
  br i1 %tobool, label %if.end, label %if.then, !dbg !1455

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1456
  br label %return, !dbg !1456

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1457
  %cmp = icmp ule i64 %1, 8, !dbg !1459
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1460

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1461
  br label %return, !dbg !1461

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1462
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1464
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1465

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1466
  %cmp4 = icmp ule i64 %3, 96, !dbg !1467
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1468

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1469
  br label %return, !dbg !1469

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1470
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1472
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1473

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1474
  %cmp9 = icmp ule i64 %5, 192, !dbg !1475
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1476

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1477
  br label %return, !dbg !1477

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1478
  %cmp12 = icmp ule i64 %6, 8, !dbg !1480
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1481

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1482
  br label %return, !dbg !1482

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1483
  %cmp15 = icmp ule i64 %7, 16, !dbg !1485
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1486

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1487
  br label %return, !dbg !1487

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1488
  %cmp18 = icmp ule i64 %8, 32, !dbg !1490
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1491

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1492
  br label %return, !dbg !1492

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1493
  %cmp21 = icmp ule i64 %9, 64, !dbg !1495
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1496

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1497
  br label %return, !dbg !1497

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1498
  %cmp24 = icmp ule i64 %10, 128, !dbg !1500
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1501

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1502
  br label %return, !dbg !1502

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1503
  %cmp27 = icmp ule i64 %11, 256, !dbg !1505
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1506

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1507
  br label %return, !dbg !1507

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1508
  %cmp30 = icmp ule i64 %12, 512, !dbg !1510
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1511

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1512
  br label %return, !dbg !1512

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1513
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1515
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1516

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1517
  br label %return, !dbg !1517

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1518
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1520
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1521

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1522
  br label %return, !dbg !1522

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1523
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1525
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1526

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1528
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1530
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1531

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1532
  br label %return, !dbg !1532

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1533
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1535
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1536

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1537
  br label %return, !dbg !1537

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1538
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1540
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1541

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1542
  br label %return, !dbg !1542

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1543
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1545
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1546

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1547
  br label %return, !dbg !1547

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1548
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1550
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1551

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1552
  br label %return, !dbg !1552

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1553
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1555
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1556

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1557
  br label %return, !dbg !1557

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1558
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1560
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1561

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1562
  br label %return, !dbg !1562

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1563
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1565
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1566

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1567
  br label %return, !dbg !1567

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1568
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1570
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1571

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1572
  br label %return, !dbg !1572

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1573, !range !1192, !noundef !355
  %tobool69 = trunc i8 %25 to i1, !dbg !1573
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1575

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1576

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #17, !dbg !1577, !srcloc !1580
  unreachable, !dbg !1577

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1581

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1582

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1583

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1585

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1583

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !1587, !srcloc !1589
  br label %do.end75, !dbg !1587

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1583

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1590
  br label %return, !dbg !1590

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1591
  ret i32 %26, !dbg !1591
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1592 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !1598 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1602, metadata !DIExpression()), !dbg !1604
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1603, metadata !DIExpression()), !dbg !1605
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1606
  %and = and i32 %0, 17, !dbg !1606
  %cmp = icmp eq i32 %and, 0, !dbg !1606
  %lnot = xor i1 %cmp, true, !dbg !1606
  %lnot1 = xor i1 %lnot, true, !dbg !1606
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1606
  %conv = sext i32 %lnot.ext to i64, !dbg !1606
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1606
  %tobool = icmp ne i64 %expval, 0, !dbg !1606
  br i1 %tobool, label %if.then, label %if.end, !dbg !1608

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1609
  br label %return, !dbg !1609

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1610
  %and2 = and i32 %1, 1, !dbg !1612
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1612
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1613

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1614
  br label %return, !dbg !1614

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1615
  br label %return, !dbg !1615

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1617
  ret i32 %2, !dbg !1617
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1618 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1619 dso_local void @__compiletime_assert_117() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1620 dso_local i32 @static_key_count(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1623 dso_local void @static_key_disable(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1626 dso_local void @module_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1627 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #6 align 16 !dbg !1630 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !1634, metadata !DIExpression()), !dbg !1636
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1635, metadata !DIExpression()), !dbg !1637
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !1638
  %1 = load ptr, ptr %work.addr, align 8, !dbg !1639
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #14, !dbg !1640
  ret i1 %call, !dbg !1641
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1642 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!llvm.ident = !{!1170}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "once_lock", scope: !2, file: !3, line: 40, type: !158, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.once.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/once\22 -D KBUILD_BASENAME=\22once\22 -D KBUILD_MODNAME=\22once\22 -D __KBUILD_MODNAME=kmod_once -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/once.ll lib/once.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !60, globals: !1131, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/once.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc2444bacba4d66f98b9c634139367d2")
!4 = !{!5, !11, !18, !24, !50}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!15 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!16 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!17 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !19, line: 26, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!22 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!23 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 30, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!27 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!28 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!29 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!30 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!31 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!32 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!33 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!34 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!35 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!36 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!37 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!38 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!39 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!40 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!41 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!42 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!43 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!44 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!45 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!46 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!47 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!48 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!49 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !51, line: 364, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!52 = !{!53, !54, !55, !56, !57, !58, !59}
!53 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!54 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!55 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!56 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!57 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!58 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!59 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!60 = !{!61, !62, !64, !65, !72, !1130}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !63, line: 154, baseType: !7)
!63 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !63, line: 190, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !63, line: 191, baseType: !67, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !68, file: !63, line: 191, baseType: !67, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "once_work", file: !3, line: 8, size: 384, elements: !74)
!74 = !{!75, !97, !128}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !73, file: !3, line: 9, baseType: !76, size: 256)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !25, line: 98, size: 256, elements: !77)
!77 = !{!78, !90, !91}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !76, file: !25, line: 99, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !80, line: 13, baseType: !81)
!80 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !63, line: 181, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 179, size: 64, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !82, file: !63, line: 180, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !86, line: 22, baseType: !87)
!86 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !88, line: 30, baseType: !89)
!88 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!89 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !76, file: !25, line: 100, baseType: !68, size: 128, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !76, file: !25, line: 101, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !25, line: 21, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !73, file: !3, line: 10, baseType: !98, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !100, line: 359, size: 128, elements: !101)
!100 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !99, file: !100, line: 360, baseType: !103, size: 128)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !100, line: 85, size: 128, elements: !104)
!104 = !{!105, !111}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !103, file: !100, line: 86, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !63, line: 174, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 172, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !107, file: !63, line: 173, baseType: !110, size: 32)
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !100, line: 101, baseType: !112, size: 64, offset: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !100, line: 101, size: 64, elements: !113)
!113 = !{!114, !115, !125}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !100, line: 102, baseType: !64, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !112, file: !100, line: 103, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !100, line: 117, size: 128, elements: !118)
!118 = !{!119, !122, !123}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !117, file: !100, line: 118, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !86, line: 20, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !88, line: 26, baseType: !110)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !117, file: !100, line: 119, baseType: !120, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !117, file: !100, line: 120, baseType: !124, size: 64, offset: 64)
!124 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !100, line: 104, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !100, line: 104, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !73, file: !3, line: 11, baseType: !129, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !131)
!131 = !{!132, !133, !134, !139, !790, !816, !817, !818, !819, !823, !826, !827, !828, !881, !882, !883, !884, !885, !886, !887, !888, !891, !895, !915, !933, !934, !935, !936, !945, !969, !970, !973, !976, !977, !978, !979, !980, !981, !982, !987, !988, !1095, !1096, !1097, !1098, !1100, !1104, !1105, !1109, !1110, !1111, !1112, !1114, !1115, !1116, !1123, !1124, !1125, !1129}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !130, file: !12, line: 403, baseType: !11, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !130, file: !12, line: 406, baseType: !68, size: 128, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !12, line: 409, baseType: !135, size: 448, offset: 192)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 448, elements: !137)
!136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !{!138}
!138 = !DISubrange(count: 56)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !130, file: !12, line: 417, baseType: !140, size: 768, offset: 640)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !141)
!141 = !{!142, !773, !774, !775, !778}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !140, file: !12, line: 46, baseType: !143, size: 512)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !144, line: 64, size: 512, elements: !145)
!144 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!145 = !{!146, !149, !150, !152, !235, !643, !758, !768, !769, !770, !771, !772}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 65, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !143, file: !144, line: 66, baseType: !68, size: 128, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !144, line: 67, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !143, file: !144, line: 68, baseType: !153, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !144, line: 168, size: 768, elements: !155)
!155 = !{!156, !157, !194, !195}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !154, file: !144, line: 169, baseType: !68, size: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !154, file: !144, line: 170, baseType: !158, size: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !159, line: 29, baseType: !160)
!159 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !159, line: 17, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 18, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 18, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !163, file: !159, line: 19, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !167, line: 14, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !166, file: !167, line: 15, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !171, line: 44, baseType: !172)
!171 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !171, line: 14, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !171, line: 15, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !171, line: 15, size: 32, elements: !176)
!176 = !{!177, !178, !186}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !175, file: !171, line: 16, baseType: !106, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !171, line: 24, baseType: !179, size: 16)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !171, line: 24, size: 16, elements: !180)
!180 = !{!181, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !179, file: !171, line: 25, baseType: !182, size: 8)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !86, line: 17, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !88, line: 21, baseType: !184)
!184 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !179, file: !171, line: 26, baseType: !182, size: 8, offset: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !171, line: 28, baseType: !187, size: 32)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !171, line: 28, size: 32, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !187, file: !171, line: 29, baseType: !190, size: 16)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !86, line: 19, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !88, line: 24, baseType: !192)
!192 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !187, file: !171, line: 30, baseType: !190, size: 16, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !154, file: !144, line: 171, baseType: !143, size: 512, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !154, file: !144, line: 172, baseType: !196, size: 64, offset: 704)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !144, line: 133, size: 192, elements: !199)
!199 = !{!200, !207, !212}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !198, file: !144, line: 134, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!110, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !144, line: 135, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!147, !205}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !198, file: !144, line: 136, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!110, !205, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !144, line: 125, size: 20736, elements: !219)
!219 = !{!220, !225, !229, !230, !234}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !218, file: !144, line: 126, baseType: !221, size: 192)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 192, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!223 = !{!224}
!224 = !DISubrange(count: 3)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !218, file: !144, line: 127, baseType: !226, size: 4096, offset: 192)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 4096, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !218, file: !144, line: 128, baseType: !110, size: 32, offset: 4288)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !218, file: !144, line: 129, baseType: !231, size: 16384, offset: 4320)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 16384, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 2048)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !218, file: !144, line: 130, baseType: !110, size: 32, offset: 20704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !143, file: !144, line: 69, baseType: !236, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !144, line: 116, size: 384, elements: !239)
!239 = !{!240, !244, !271, !589, !620, !624}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !238, file: !144, line: 117, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !151}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !238, file: !144, line: 118, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !248, line: 254, size: 128, elements: !249)
!248 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!249 = !{!250, !264}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !247, file: !248, line: 255, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !151, !258, !222}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 66, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !256, line: 73, baseType: !257)
!256 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !256, line: 15, baseType: !124)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !248, line: 30, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !248, line: 31, baseType: !147, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !259, file: !248, line: 32, baseType: !263, size: 16, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !63, line: 24, baseType: !192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !247, file: !248, line: 256, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!254, !151, !258, !147, !268}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 61, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !256, line: 72, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !256, line: 16, baseType: !64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !238, file: !144, line: 119, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !248, line: 84, size: 320, elements: !276)
!276 = !{!277, !278, !282, !585, !587}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !248, line: 85, baseType: !147, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !275, file: !248, line: 86, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!263, !151, !258, !110}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !275, file: !248, line: 88, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!263, !151, !286, !110}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !248, line: 175, size: 512, elements: !288)
!288 = !{!289, !290, !291, !292, !299, !308, !309}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !287, file: !248, line: 176, baseType: !259, size: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !287, file: !248, line: 177, baseType: !268, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !287, file: !248, line: 178, baseType: !61, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !287, file: !248, line: 179, baseType: !293, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !298, line: 32, flags: DIFlagFwdDecl)
!298 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!299 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !287, file: !248, line: 180, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!254, !303, !151, !286, !222, !306, !268}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !305, line: 537, flags: DIFlagFwdDecl)
!305 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !63, line: 52, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !256, line: 88, baseType: !89)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !287, file: !248, line: 182, baseType: !300, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !287, file: !248, line: 184, baseType: !310, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!110, !303, !151, !286, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !298, line: 625, size: 1344, elements: !315)
!315 = !{!316, !333, !534, !540, !547, !548, !553, !556, !568, !569, !572, !576, !577, !578, !579, !580, !583}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !298, line: 628, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !298, line: 628, size: 128, elements: !318)
!318 = !{!319, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !298, line: 629, baseType: !320, size: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !298, line: 629, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !320, file: !298, line: 631, baseType: !64, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !320, file: !298, line: 632, baseType: !64, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !317, file: !298, line: 635, baseType: !325, size: 128, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !63, line: 232, size: 128, align: 64, elements: !326)
!326 = !{!327, !329}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !63, line: 233, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !325, file: !63, line: 234, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !328}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !314, file: !298, line: 639, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !298, line: 733, size: 10240, elements: !336)
!336 = !{!337, !530}
!337 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !298, line: 734, baseType: !338, size: 10240)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !298, line: 734, size: 10240, elements: !339)
!339 = !{!340, !344, !358, !362, !363, !364, !365, !366, !367, !375, !376, !377, !386, !387, !388, !389, !390, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !437, !449, !452, !507, !508, !509, !512, !515, !516, !519, !520, !521, !528, !529}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !298, line: 739, baseType: !341, size: 512, align: 512)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !298, line: 739, size: 512, align: 512, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !341, file: !298, line: 747, baseType: !106, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !338, file: !298, line: 750, baseType: !345, size: 128, offset: 512)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !346, line: 218, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!347 = !{!348, !356, !357}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !346, line: 219, baseType: !349, size: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !346, line: 219, size: 32, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !349, file: !346, line: 220, baseType: !158, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !349, file: !346, line: 221, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !346, line: 197, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 197, elements: !355)
!355 = !{}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !345, file: !346, line: 223, baseType: !7, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !345, file: !346, line: 224, baseType: !61, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !338, file: !298, line: 752, baseType: !359, size: 64, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!64, !303, !64, !64, !64, !64}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !338, file: !298, line: 756, baseType: !64, size: 64, offset: 704)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !338, file: !298, line: 757, baseType: !64, size: 64, offset: 768)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !338, file: !298, line: 760, baseType: !64, size: 64, offset: 832)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !338, file: !298, line: 761, baseType: !64, size: 64, offset: 896)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !338, file: !298, line: 763, baseType: !64, size: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !338, file: !298, line: 764, baseType: !368, size: 64, offset: 1024)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !305, line: 299, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 299, size: 64, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !370, file: !305, line: 299, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !374, line: 18, baseType: !64)
!374 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !338, file: !298, line: 773, baseType: !106, size: 32, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !338, file: !298, line: 785, baseType: !106, size: 32, offset: 1120)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !338, file: !298, line: 795, baseType: !378, size: 64, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !298, line: 726, size: 128, elements: !380)
!380 = !{!381, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !379, file: !298, line: 727, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !86, line: 23, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !88, line: 31, baseType: !384)
!384 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !379, file: !298, line: 728, baseType: !110, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !338, file: !298, line: 801, baseType: !64, size: 64, offset: 1216)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !338, file: !298, line: 804, baseType: !79, size: 64, offset: 1280)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !338, file: !298, line: 806, baseType: !110, size: 32, offset: 1344)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !338, file: !298, line: 808, baseType: !158, size: 32, offset: 1376)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !338, file: !298, line: 823, baseType: !391, size: 320, offset: 1408)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !392, line: 48, size: 320, elements: !393)
!392 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!393 = !{!394, !395, !396, !401, !403}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !391, file: !392, line: 49, baseType: !79, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !391, file: !392, line: 55, baseType: !79, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !391, file: !392, line: 57, baseType: !397, size: 32, offset: 128)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !398, line: 15, size: 32, elements: !399)
!398 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !397, file: !398, line: 20, baseType: !106, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !391, file: !392, line: 59, baseType: !402, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !167, line: 23, baseType: !166)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !391, file: !392, line: 60, baseType: !68, size: 128, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !338, file: !298, line: 825, baseType: !68, size: 128, offset: 1728)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !338, file: !298, line: 845, baseType: !110, size: 32, offset: 1856)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !338, file: !298, line: 849, baseType: !64, size: 64, offset: 1920)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !338, file: !298, line: 850, baseType: !64, size: 64, offset: 1984)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !338, file: !298, line: 852, baseType: !64, size: 64, offset: 2048)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !338, file: !298, line: 853, baseType: !64, size: 64, offset: 2112)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !338, file: !298, line: 854, baseType: !81, size: 64, offset: 2176)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !338, file: !298, line: 855, baseType: !64, size: 64, offset: 2240)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !338, file: !298, line: 856, baseType: !64, size: 64, offset: 2304)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !338, file: !298, line: 857, baseType: !64, size: 64, offset: 2368)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !338, file: !298, line: 858, baseType: !64, size: 64, offset: 2432)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !338, file: !298, line: 865, baseType: !416, size: 32, offset: 2496)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !417, line: 69, baseType: !418)
!417 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !417, line: 64, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !418, file: !417, line: 65, baseType: !7, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !338, file: !298, line: 867, baseType: !158, size: 32, offset: 2528)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !338, file: !298, line: 869, baseType: !64, size: 64, offset: 2560)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !338, file: !298, line: 869, baseType: !64, size: 64, offset: 2624)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !338, file: !298, line: 869, baseType: !64, size: 64, offset: 2688)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !338, file: !298, line: 869, baseType: !64, size: 64, offset: 2752)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !338, file: !298, line: 870, baseType: !64, size: 64, offset: 2816)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !338, file: !298, line: 870, baseType: !64, size: 64, offset: 2880)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !338, file: !298, line: 870, baseType: !64, size: 64, offset: 2944)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !338, file: !298, line: 871, baseType: !64, size: 64, offset: 3008)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !338, file: !298, line: 871, baseType: !64, size: 64, offset: 3072)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !338, file: !298, line: 871, baseType: !64, size: 64, offset: 3136)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !338, file: !298, line: 871, baseType: !64, size: 64, offset: 3200)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !338, file: !298, line: 873, baseType: !434, size: 3328, offset: 3264)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 3328, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 52)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !338, file: !298, line: 875, baseType: !438, size: 1280, offset: 6592)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 1280, elements: !447)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !440, line: 22, size: 320, elements: !441)
!440 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!441 = !{!442, !443, !444, !445}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !439, file: !440, line: 23, baseType: !402, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !439, file: !440, line: 24, baseType: !85, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !439, file: !440, line: 26, baseType: !68, size: 128, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !439, file: !440, line: 28, baseType: !446, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!447 = !{!448}
!448 = !DISubrange(count: 4)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !338, file: !298, line: 877, baseType: !450, size: 64, offset: 7872)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !298, line: 877, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !338, file: !298, line: 880, baseType: !453, size: 1088, offset: 7936)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !454, line: 72, baseType: !455)
!454 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 23, size: 1088, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !464, !465, !473, !474, !501, !502, !503}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !455, file: !454, line: 28, baseType: !382, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !455, file: !454, line: 38, baseType: !81, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !455, file: !454, line: 40, baseType: !64, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !455, file: !454, line: 43, baseType: !391, size: 320, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !455, file: !454, line: 44, baseType: !462, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !454, line: 44, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !454, line: 48, baseType: !64, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !454, line: 59, baseType: !466, size: 256, offset: 640)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !467, line: 66, size: 256, elements: !468)
!467 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!468 = !{!469, !470, !471, !472}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !466, file: !467, line: 67, baseType: !79, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !466, file: !467, line: 68, baseType: !402, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !466, file: !467, line: 70, baseType: !397, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !466, file: !467, line: 72, baseType: !68, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !455, file: !454, line: 60, baseType: !61, size: 64, offset: 896)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !455, file: !454, line: 61, baseType: !475, size: 64, offset: 960)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !478, line: 13, size: 1216, elements: !479)
!478 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!479 = !{!480, !481, !482, !483, !484, !485, !486, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !477, file: !478, line: 14, baseType: !61, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !477, file: !478, line: 15, baseType: !64, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !477, file: !478, line: 17, baseType: !64, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !477, file: !478, line: 17, baseType: !64, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !477, file: !478, line: 18, baseType: !64, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !477, file: !478, line: 18, baseType: !64, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !477, file: !478, line: 19, baseType: !487, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !477, file: !478, line: 21, baseType: !124, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !477, file: !478, line: 23, baseType: !124, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !477, file: !478, line: 24, baseType: !124, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !477, file: !478, line: 25, baseType: !124, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !477, file: !478, line: 26, baseType: !124, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !477, file: !478, line: 27, baseType: !124, size: 64, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !477, file: !478, line: 28, baseType: !124, size: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !477, file: !478, line: 29, baseType: !124, size: 64, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !477, file: !478, line: 30, baseType: !124, size: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !477, file: !478, line: 31, baseType: !124, size: 64, offset: 1024)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !477, file: !478, line: 32, baseType: !124, size: 64, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !477, file: !478, line: 33, baseType: !124, size: 64, offset: 1152)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !455, file: !454, line: 63, baseType: !106, size: 32, offset: 1024)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !455, file: !454, line: 69, baseType: !190, size: 16, offset: 1056)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !455, file: !454, line: 70, baseType: !504, size: 16, offset: 1072)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !86, line: 18, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !88, line: 23, baseType: !506)
!506 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !298, line: 882, baseType: !64, size: 64, offset: 9024)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !338, file: !298, line: 885, baseType: !158, size: 32, offset: 9088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !338, file: !298, line: 886, baseType: !510, size: 64, offset: 9152)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !298, line: 732, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !338, file: !298, line: 901, baseType: !513, size: 64, offset: 9216)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !298, line: 901, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !338, file: !298, line: 904, baseType: !303, size: 64, offset: 9280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !338, file: !298, line: 906, baseType: !517, size: 64, offset: 9344)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !298, line: 906, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !338, file: !298, line: 930, baseType: !106, size: 32, offset: 9408)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !338, file: !298, line: 933, baseType: !106, size: 32, offset: 9440)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !338, file: !298, line: 935, baseType: !522, size: 64, offset: 9472)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !523, line: 103, size: 64, elements: !524)
!523 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !522, file: !523, line: 104, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !523, line: 101, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !338, file: !298, line: 940, baseType: !79, size: 64, offset: 9536)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !338, file: !298, line: 942, baseType: !76, size: 256, offset: 9600)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !335, file: !298, line: 986, baseType: !531, offset: 10240)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: -1)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !314, file: !298, line: 640, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !305, line: 297, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !305, line: 297, size: 64, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !536, file: !305, line: 297, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !374, line: 19, baseType: !64)
!540 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !298, line: 646, baseType: !541, size: 64, offset: 256)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !298, line: 646, size: 64, elements: !542)
!542 = !{!543, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !541, file: !298, line: 647, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !298, line: 542, baseType: !64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !541, file: !298, line: 648, baseType: !545, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !314, file: !298, line: 666, baseType: !110, size: 32, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !314, file: !298, line: 667, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !298, line: 579, size: 320, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !550, file: !298, line: 580, baseType: !391, size: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !314, file: !298, line: 670, baseType: !554, size: 8, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !63, line: 35, baseType: !555)
!555 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !314, file: !298, line: 681, baseType: !557, size: 256, offset: 512)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !298, line: 678, size: 256, elements: !558)
!558 = !{!559, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !557, file: !298, line: 679, baseType: !560, size: 192, align: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !561, line: 5, size: 192, align: 64, elements: !562)
!561 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!562 = !{!563, !564, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !560, file: !561, line: 6, baseType: !64, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !560, file: !561, line: 7, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !560, file: !561, line: 8, baseType: !565, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !557, file: !298, line: 680, baseType: !64, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !314, file: !298, line: 689, baseType: !68, size: 128, offset: 768)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !314, file: !298, line: 691, baseType: !570, size: 64, offset: 896)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !298, line: 691, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !314, file: !298, line: 694, baseType: !573, size: 64, offset: 960)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !298, line: 694, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !314, file: !298, line: 697, baseType: !64, size: 64, offset: 1024)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !314, file: !298, line: 699, baseType: !303, size: 64, offset: 1088)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !314, file: !298, line: 700, baseType: !61, size: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !314, file: !298, line: 711, baseType: !79, size: 64, offset: 1216)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !314, file: !298, line: 717, baseType: !581, size: 64, offset: 1280)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !298, line: 717, flags: DIFlagFwdDecl)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !314, file: !298, line: 722, baseType: !584, offset: 1344)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !298, line: 570, elements: !355)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !275, file: !248, line: 90, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !275, file: !248, line: 91, baseType: !588, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !238, file: !144, line: 120, baseType: !590, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!593, !205}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !19, line: 39, size: 384, elements: !596)
!596 = !{!597, !598, !602, !606, !612, !616}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !19, line: 40, baseType: !18, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !595, file: !19, line: 41, baseType: !599, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!554}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !595, file: !19, line: 42, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!61}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !595, file: !19, line: 43, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!487, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !19, line: 19, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !595, file: !19, line: 44, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!487}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !595, file: !19, line: 45, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !61}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !238, file: !144, line: 121, baseType: !621, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!487, !205}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !238, file: !144, line: 122, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !205, !628, !636}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !630, line: 23, baseType: !631)
!630 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !630, line: 21, size: 32, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !631, file: !630, line: 22, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !63, line: 37, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !256, line: 49, baseType: !7)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !630, line: 28, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !630, line: 26, size: 32, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !638, file: !630, line: 27, baseType: !641, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !63, line: 38, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !256, line: 50, baseType: !7)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !143, file: !144, line: 70, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !646, line: 190, size: 1152, elements: !647)
!646 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !750, !751, !752, !753, !754, !757}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !645, file: !646, line: 191, baseType: !106, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !645, file: !646, line: 192, baseType: !106, size: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !645, file: !646, line: 202, baseType: !644, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !645, file: !646, line: 203, baseType: !147, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !645, file: !646, line: 205, baseType: !560, size: 192, align: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !645, file: !646, line: 207, baseType: !487, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !645, file: !646, line: 208, baseType: !7, size: 32, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !646, line: 209, baseType: !656, size: 256, offset: 512)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !646, line: 209, size: 256, elements: !657)
!657 = !{!658, !670, !674}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !656, file: !646, line: 210, baseType: !659, size: 256)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !646, line: 153, size: 256, elements: !660)
!660 = !{!661, !662, !666, !669}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !659, file: !646, line: 154, baseType: !64, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !659, file: !646, line: 156, baseType: !663, size: 64, offset: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !561, line: 12, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !663, file: !561, line: 13, baseType: !565, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !659, file: !646, line: 162, baseType: !667, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !646, line: 162, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !659, file: !646, line: 167, baseType: !64, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !656, file: !646, line: 211, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !646, line: 170, size: 64, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !671, file: !646, line: 171, baseType: !644, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !656, file: !646, line: 212, baseType: !675, size: 256)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !646, line: 174, size: 256, elements: !676)
!676 = !{!677, !745, !748, !749}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !675, file: !646, line: 175, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !646, line: 271, size: 768, elements: !681)
!681 = !{!682, !705, !709, !713, !718, !722, !726, !730, !731, !732, !733, !741}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !680, file: !646, line: 276, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!110, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !646, line: 251, size: 1216, elements: !688)
!688 = !{!689, !690, !691, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !687, file: !646, line: 253, baseType: !644, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !687, file: !646, line: 254, baseType: !303, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !687, file: !646, line: 255, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !694, line: 66, flags: DIFlagFwdDecl)
!694 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!695 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !687, file: !646, line: 256, baseType: !61, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !687, file: !646, line: 259, baseType: !466, size: 256, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !687, file: !646, line: 260, baseType: !466, size: 256, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !687, file: !646, line: 261, baseType: !110, size: 32, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !687, file: !646, line: 262, baseType: !68, size: 128, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !687, file: !646, line: 263, baseType: !222, size: 64, offset: 960)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !687, file: !646, line: 265, baseType: !268, size: 64, offset: 1024)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !687, file: !646, line: 266, baseType: !554, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !687, file: !646, line: 267, baseType: !554, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !687, file: !646, line: 268, baseType: !573, size: 64, offset: 1152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !680, file: !646, line: 277, baseType: !706, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !686}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !680, file: !646, line: 290, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!110, !692, !61}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !680, file: !646, line: 292, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!61, !692, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !680, file: !646, line: 293, baseType: !719, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!61, !692, !61, !717}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !680, file: !646, line: 294, baseType: !723, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !692, !61}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !680, file: !646, line: 296, baseType: !727, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!254, !686, !222, !268, !306}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !680, file: !646, line: 306, baseType: !268, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !680, file: !646, line: 313, baseType: !554, size: 8, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !680, file: !646, line: 314, baseType: !727, size: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !680, file: !646, line: 317, baseType: !734, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !686, !739}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !738, line: 59, baseType: !7)
!738 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !646, line: 31, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !680, file: !646, line: 320, baseType: !742, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!110, !686, !313}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !675, file: !646, line: 176, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !646, line: 35, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !675, file: !646, line: 177, baseType: !306, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !675, file: !646, line: 178, baseType: !644, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !645, file: !646, line: 215, baseType: !61, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !645, file: !646, line: 221, baseType: !382, size: 64, offset: 832)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !646, line: 223, baseType: !192, size: 16, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !645, file: !646, line: 224, baseType: !263, size: 16, offset: 912)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !645, file: !646, line: 225, baseType: !755, size: 64, offset: 960)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !646, line: 36, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !645, file: !646, line: 227, baseType: !325, size: 128, align: 64, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !143, file: !144, line: 71, baseType: !759, size: 32, offset: 448)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !760, line: 19, size: 32, elements: !761)
!760 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !759, file: !760, line: 20, baseType: !763, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !764, line: 113, baseType: !765)
!764 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !764, line: 111, size: 32, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !765, file: !764, line: 112, baseType: !106, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !143, file: !144, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !143, file: !144, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !143, file: !144, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !143, file: !144, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !143, file: !144, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !140, file: !12, line: 47, baseType: !129, size: 64, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !140, file: !12, line: 48, baseType: !151, size: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !140, file: !12, line: 49, baseType: !776, size: 64, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !140, file: !12, line: 50, baseType: !779, size: 64, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !781, line: 26, size: 256, elements: !782)
!781 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !780, file: !781, line: 27, baseType: !7, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !780, file: !781, line: 28, baseType: !785, size: 192, offset: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !786, line: 43, size: 192, elements: !787)
!786 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !785, file: !786, line: 44, baseType: !402, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !785, file: !786, line: 45, baseType: !68, size: 128, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !130, file: !12, line: 418, baseType: !791, size: 64, offset: 1408)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !793)
!793 = !{!794, !795, !800, !804, !808, !812}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !792, file: !12, line: 54, baseType: !259, size: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !792, file: !12, line: 55, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!254, !791, !799, !222}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !792, file: !12, line: 57, baseType: !801, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!254, !791, !799, !147, !268}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !792, file: !12, line: 59, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !129, !147}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !792, file: !12, line: 60, baseType: !809, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!110, !129}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !792, file: !12, line: 61, baseType: !813, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !129}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !130, file: !12, line: 419, baseType: !147, size: 64, offset: 1472)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !130, file: !12, line: 420, baseType: !147, size: 64, offset: 1536)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !130, file: !12, line: 421, baseType: !151, size: 64, offset: 1600)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !130, file: !12, line: 424, baseType: !820, size: 64, offset: 1664)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !130, file: !12, line: 425, baseType: !824, size: 64, offset: 1728)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !130, file: !12, line: 426, baseType: !7, size: 32, offset: 1792)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !130, file: !12, line: 435, baseType: !466, size: 256, offset: 1856)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !130, file: !12, line: 437, baseType: !829, size: 64, offset: 2112)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !831, line: 69, size: 320, elements: !832)
!831 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!832 = !{!833, !834, !835, !852, !854, !858, !859}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !830, file: !831, line: 70, baseType: !147, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !830, file: !831, line: 71, baseType: !129, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !830, file: !831, line: 72, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !831, line: 47, size: 256, elements: !839)
!839 = !{!840, !841, !847, !851}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !831, line: 49, baseType: !7, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !838, file: !831, line: 51, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!110, !147, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !838, file: !831, line: 53, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!110, !222, !845}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !838, file: !831, line: 55, baseType: !617, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !830, file: !831, line: 73, baseType: !853, size: 16, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !830, file: !831, line: 74, baseType: !855, size: 8, offset: 208)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !86, line: 16, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !88, line: 20, baseType: !857)
!857 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !831, line: 75, baseType: !182, size: 8, offset: 216)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 76, baseType: !860, size: 64, offset: 256)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 76, size: 64, elements: !861)
!861 = !{!862, !863, !870}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !860, file: !831, line: 77, baseType: !61, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !860, file: !831, line: 78, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !831, line: 86, size: 128, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !866, file: !831, line: 87, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !866, file: !831, line: 88, baseType: !222, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !860, file: !831, line: 79, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !831, line: 92, size: 256, elements: !874)
!874 = !{!875, !876, !877, !879, !880}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !873, file: !831, line: 94, baseType: !7, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !873, file: !831, line: 95, baseType: !7, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !873, file: !831, line: 96, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !873, file: !831, line: 97, baseType: !836, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !873, file: !831, line: 98, baseType: !61, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !130, file: !12, line: 438, baseType: !7, size: 32, offset: 2176)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !130, file: !12, line: 441, baseType: !7, size: 32, offset: 2208)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !130, file: !12, line: 442, baseType: !820, size: 64, offset: 2240)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !130, file: !12, line: 443, baseType: !824, size: 64, offset: 2304)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !130, file: !12, line: 444, baseType: !554, size: 8, offset: 2368)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !130, file: !12, line: 451, baseType: !554, size: 8, offset: 2376)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !130, file: !12, line: 454, baseType: !7, size: 32, offset: 2400)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !130, file: !12, line: 455, baseType: !889, size: 64, offset: 2432)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !12, line: 43, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !130, file: !12, line: 458, baseType: !892, size: 64, offset: 2496)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!110}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !130, file: !12, line: 460, baseType: !896, size: 4032, align: 512, offset: 2560)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 4032, elements: !913)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !897, file: !12, line: 363, baseType: !61, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !897, file: !12, line: 364, baseType: !7, size: 32, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !897, file: !12, line: 367, baseType: !902, size: 448, offset: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !902, file: !12, line: 320, baseType: !129, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !902, file: !12, line: 321, baseType: !906, size: 384, offset: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !907, line: 40, size: 384, elements: !908)
!907 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !906, file: !907, line: 41, baseType: !910, size: 384, align: 64)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 384, align: 64, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 2)
!913 = !{!914}
!914 = !DISubrange(count: 7)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !130, file: !12, line: 463, baseType: !916, size: 192, offset: 6592)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !917, line: 8, size: 192, elements: !918)
!917 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!918 = !{!919, !920, !922}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !916, file: !917, line: 10, baseType: !7, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !916, file: !917, line: 11, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !916, file: !917, line: 12, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !925, line: 59, size: 48, elements: !926)
!925 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!926 = !{!927, !928, !929, !930, !931, !932}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !924, file: !925, line: 60, baseType: !504, size: 16)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !924, file: !925, line: 61, baseType: !504, size: 16, offset: 16)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !924, file: !925, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !924, file: !925, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !924, file: !925, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !924, file: !925, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !130, file: !12, line: 465, baseType: !64, size: 64, offset: 6784)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !130, file: !12, line: 469, baseType: !7, size: 32, offset: 6848)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !130, file: !12, line: 470, baseType: !68, size: 128, offset: 6912)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !130, file: !12, line: 471, baseType: !937, size: 64, offset: 7040)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !939, line: 33, size: 96, elements: !940)
!939 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!940 = !{!941, !942, !943, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !938, file: !939, line: 37, baseType: !110, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !938, file: !939, line: 43, baseType: !110, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !938, file: !939, line: 45, baseType: !192, size: 16, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !939, line: 47, baseType: !192, size: 16, offset: 80)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !130, file: !12, line: 476, baseType: !946, size: 64, offset: 7104)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !948)
!948 = !{!949, !966, !967, !968}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !947, file: !12, line: 379, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !952, line: 204, baseType: !953)
!952 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !952, line: 197, size: 192, elements: !954)
!954 = !{!955, !958, !959, !960, !962, !964}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !953, file: !952, line: 198, baseType: !956, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !952, line: 21, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !88, line: 27, baseType: !7)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !953, file: !952, line: 199, baseType: !184, size: 8, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !953, file: !952, line: 200, baseType: !184, size: 8, offset: 40)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !953, file: !952, line: 201, baseType: !961, size: 16, offset: 48)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !952, line: 17, baseType: !191)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !953, file: !952, line: 202, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !952, line: 16, baseType: !383)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !953, file: !952, line: 203, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !952, line: 22, baseType: !383)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !947, file: !12, line: 380, baseType: !7, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !947, file: !12, line: 381, baseType: !222, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !947, file: !12, line: 382, baseType: !222, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !130, file: !12, line: 477, baseType: !947, size: 256, offset: 7168)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !130, file: !12, line: 480, baseType: !971, size: 64, offset: 7424)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !130, file: !12, line: 483, baseType: !974, size: 64, offset: 7488)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !130, file: !12, line: 488, baseType: !222, size: 64, offset: 7552)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !130, file: !12, line: 492, baseType: !61, size: 64, offset: 7616)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !130, file: !12, line: 493, baseType: !7, size: 32, offset: 7680)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !130, file: !12, line: 495, baseType: !61, size: 64, offset: 7744)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !130, file: !12, line: 496, baseType: !7, size: 32, offset: 7808)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !130, file: !12, line: 499, baseType: !7, size: 32, offset: 7840)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !130, file: !12, line: 500, baseType: !983, size: 64, offset: 7872)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !985, line: 45, baseType: !986)
!985 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !130, file: !12, line: 503, baseType: !7, size: 32, offset: 7936)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !130, file: !12, line: 504, baseType: !989, size: 64, offset: 8000)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !992, line: 96, size: 192, elements: !993)
!992 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!993 = !{!994, !995, !1056, !1059}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !991, file: !992, line: 97, baseType: !7, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !991, file: !992, line: 98, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !992, line: 24, size: 3072, elements: !998)
!998 = !{!999, !1001, !1002, !1003, !1004, !1018, !1019, !1020, !1021, !1040, !1041, !1042, !1053, !1054, !1055}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !997, file: !992, line: 26, baseType: !1000, size: 128)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !911)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !997, file: !992, line: 27, baseType: !1000, size: 128, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !997, file: !992, line: 28, baseType: !110, size: 32, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !992, line: 31, baseType: !158, size: 32, align: 512, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !997, file: !992, line: 32, baseType: !1005, size: 960, offset: 576)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1006, line: 206, size: 960, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1007 = !{!1008, !1009, !1012, !1014, !1015, !1017}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1005, file: !1006, line: 207, baseType: !328, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1005, file: !1006, line: 208, baseType: !1010, size: 256, offset: 64)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 256, elements: !447)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1005, file: !1006, line: 209, baseType: !1013, size: 256, offset: 320)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !447)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1005, file: !1006, line: 213, baseType: !124, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1005, file: !1006, line: 215, baseType: !1016, size: 256, offset: 640)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !447)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1005, file: !1006, line: 216, baseType: !182, size: 8, offset: 896)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !997, file: !992, line: 33, baseType: !64, size: 64, offset: 1536)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !997, file: !992, line: 34, baseType: !64, size: 64, offset: 1600)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !997, file: !992, line: 35, baseType: !554, size: 8, offset: 1664)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !997, file: !992, line: 36, baseType: !1022, size: 320, offset: 1728)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1023, line: 11, size: 320, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1024 = !{!1025, !1032, !1033, !1038}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1022, file: !1023, line: 16, baseType: !1026, size: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !63, line: 198, size: 128, elements: !1027)
!1027 = !{!1028, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1026, file: !63, line: 199, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1026, file: !63, line: 199, baseType: !1031, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1022, file: !1023, line: 17, baseType: !64, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1022, file: !1023, line: 18, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1022, file: !1023, line: 19, baseType: !1039, size: 32, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !86, line: 21, baseType: !957)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !997, file: !992, line: 37, baseType: !76, size: 256, offset: 2048)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !997, file: !992, line: 38, baseType: !325, size: 128, align: 64, offset: 2304)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !997, file: !992, line: 39, baseType: !1043, size: 64, offset: 2432)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !992, line: 49, size: 768, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1044, file: !992, line: 50, baseType: !158, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1044, file: !992, line: 51, baseType: !1013, size: 256, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1044, file: !992, line: 53, baseType: !1013, size: 256, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1044, file: !992, line: 54, baseType: !64, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1044, file: !992, line: 55, baseType: !1043, size: 64, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1044, file: !992, line: 56, baseType: !110, size: 32, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1044, file: !992, line: 57, baseType: !110, size: 32, offset: 736)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !997, file: !992, line: 40, baseType: !64, size: 64, offset: 2496)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !997, file: !992, line: 42, baseType: !110, size: 32, offset: 2560)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !997, file: !992, line: 43, baseType: !990, size: 64, offset: 2624)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !991, file: !992, line: 99, baseType: !1057, offset: 128)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1058, line: 211, elements: !355)
!1058 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !991, file: !992, line: 100, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !992, line: 63, size: 3008, elements: !1062)
!1062 = !{!1063, !1064, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1094}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1061, file: !992, line: 64, baseType: !1043, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1061, file: !992, line: 65, baseType: !1065, size: 192, offset: 64)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 192, elements: !223)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1061, file: !992, line: 67, baseType: !110, size: 32, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1061, file: !992, line: 68, baseType: !466, size: 256, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1061, file: !992, line: 69, baseType: !158, size: 32, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1061, file: !992, line: 70, baseType: !466, size: 256, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1061, file: !992, line: 71, baseType: !64, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1061, file: !992, line: 72, baseType: !64, size: 64, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1061, file: !992, line: 73, baseType: !64, size: 64, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1061, file: !992, line: 74, baseType: !64, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1061, file: !992, line: 75, baseType: !64, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1061, file: !992, line: 76, baseType: !64, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1061, file: !992, line: 77, baseType: !64, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1061, file: !992, line: 78, baseType: !64, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1061, file: !992, line: 79, baseType: !554, size: 8, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1061, file: !992, line: 80, baseType: !64, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1061, file: !992, line: 81, baseType: !466, size: 256, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1061, file: !992, line: 82, baseType: !780, size: 256, offset: 1792)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1061, file: !992, line: 84, baseType: !106, size: 32, offset: 2048)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1061, file: !992, line: 87, baseType: !64, size: 64, offset: 2112)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1061, file: !992, line: 88, baseType: !64, size: 64, offset: 2176)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1061, file: !992, line: 89, baseType: !1086, size: 704, offset: 2240)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !25, line: 111, size: 704, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1093}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1086, file: !25, line: 112, baseType: !76, size: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1086, file: !25, line: 113, baseType: !1022, size: 320, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1086, file: !25, line: 116, baseType: !1091, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !25, line: 18, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1086, file: !25, line: 117, baseType: !110, size: 32, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1061, file: !992, line: 90, baseType: !990, size: 64, offset: 2944)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !130, file: !12, line: 515, baseType: !116, size: 64, offset: 8064)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !130, file: !12, line: 516, baseType: !7, size: 32, offset: 8128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !130, file: !12, line: 519, baseType: !7, size: 32, offset: 8160)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !130, file: !12, line: 520, baseType: !1099, size: 64, offset: 8192)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !130, file: !12, line: 523, baseType: !1101, size: 64, offset: 8256)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !130, file: !12, line: 524, baseType: !7, size: 32, offset: 8320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !130, file: !12, line: 525, baseType: !1106, size: 64, offset: 8384)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !130, file: !12, line: 526, baseType: !7, size: 32, offset: 8448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !130, file: !12, line: 533, baseType: !61, size: 64, offset: 8512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !130, file: !12, line: 534, baseType: !7, size: 32, offset: 8576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !130, file: !12, line: 535, baseType: !1113, size: 64, offset: 8640)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !130, file: !12, line: 536, baseType: !7, size: 32, offset: 8704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !130, file: !12, line: 539, baseType: !110, size: 32, offset: 8736)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !130, file: !12, line: 540, baseType: !1117, size: 64, offset: 8768)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1119, line: 32, size: 64, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1118, file: !1119, line: 33, baseType: !120, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1118, file: !1119, line: 34, baseType: !120, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !130, file: !12, line: 563, baseType: !68, size: 128, offset: 8832)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !130, file: !12, line: 565, baseType: !68, size: 128, offset: 8960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !130, file: !12, line: 568, baseType: !1126, size: 64, offset: 9088)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !130, file: !12, line: 570, baseType: !106, size: 32, offset: 9152)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1131 = !{!1132, !1134, !1136, !1138, !0, !1140, !1150, !1155, !1160}
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___do_once_start197", scope: !2, file: !3, line: 58, type: !61, isLocal: true, isDefinition: true)
!1134 = !DIGlobalVariableExpression(var: !1135, expr: !DIExpression())
!1135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___do_once_done198", scope: !2, file: !3, line: 68, type: !61, isLocal: true, isDefinition: true)
!1136 = !DIGlobalVariableExpression(var: !1137, expr: !DIExpression())
!1137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___do_once_sleepable_start199", scope: !2, file: !3, line: 88, type: !61, isLocal: true, isDefinition: true)
!1138 = !DIGlobalVariableExpression(var: !1139, expr: !DIExpression())
!1139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___do_once_sleepable_done200", scope: !2, file: !3, line: 98, type: !61, isLocal: true, isDefinition: true)
!1140 = !DIGlobalVariableExpression(var: !1141, expr: !DIExpression())
!1141 = distinct !DIGlobalVariable(name: "__key", scope: !1142, file: !3, line: 33, type: !1149, isLocal: true, isDefinition: true)
!1142 = distinct !DISubprogram(name: "once_disable_jump", scope: !3, file: !3, line: 25, type: !1143, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !98, !129}
!1145 = !{!1146, !1147, !1148}
!1146 = !DILocalVariable(name: "key", arg: 1, scope: !1142, file: !3, line: 25, type: !98)
!1147 = !DILocalVariable(name: "mod", arg: 2, scope: !1142, file: !3, line: 25, type: !129)
!1148 = !DILocalVariable(name: "w", scope: !1142, file: !3, line: 27, type: !72)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1058, line: 206, elements: !355)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !51, line: 480, type: !1152, isLocal: true, isDefinition: true)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 168, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 21)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression())
!1156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 19, type: !1157, isLocal: true, isDefinition: true)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 88, elements: !1158)
!1158 = !{!1159}
!1159 = !DISubrange(count: 11)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(name: "once_mutex", scope: !2, file: !3, line: 70, type: !466, isLocal: true, isDefinition: true)
!1162 = !{i32 7, !"Dwarf Version", i32 5}
!1163 = !{i32 2, !"Debug Info Version", i32 3}
!1164 = !{i32 1, !"wchar_size", i32 2}
!1165 = !{i32 8, !"cf-protection-branch", i32 1}
!1166 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1167 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1168 = !{i32 1, !"Code Model", i32 2}
!1169 = !{i32 1, !"override-stack-alignment", i32 8}
!1170 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1171 = distinct !DISubprogram(name: "__do_once_start", scope: !3, file: !3, line: 42, type: !1172, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1175)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!554, !1174, !1113}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!1175 = !{!1176, !1177, !1178, !1182}
!1176 = !DILocalVariable(name: "done", arg: 1, scope: !1171, file: !3, line: 42, type: !1174)
!1177 = !DILocalVariable(name: "flags", arg: 2, scope: !1171, file: !3, line: 42, type: !1113)
!1178 = !DILocalVariable(name: "__dummy", scope: !1179, file: !3, line: 45, type: !64)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 45, column: 2)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 45, column: 2)
!1181 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 45, column: 2)
!1182 = !DILocalVariable(name: "__dummy2", scope: !1179, file: !3, line: 45, type: !64)
!1183 = !DILocation(line: 42, column: 28, scope: !1171)
!1184 = !DILocation(line: 42, column: 49, scope: !1171)
!1185 = !DILocation(line: 45, column: 2, scope: !1171)
!1186 = !DILocation(line: 45, column: 2, scope: !1181)
!1187 = !DILocation(line: 45, column: 2, scope: !1179)
!1188 = !DILocation(line: 45, column: 2, scope: !1180)
!1189 = !DILocation(line: 46, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 46, column: 6)
!1191 = !DILocation(line: 46, column: 6, scope: !1190)
!1192 = !{i8 0, i8 2}
!1193 = !DILocation(line: 46, column: 6, scope: !1171)
!1194 = !DILocation(line: 47, column: 39, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 46, column: 13)
!1196 = !DILocation(line: 47, column: 38, scope: !1195)
!1197 = !DILocation(line: 47, column: 3, scope: !1195)
!1198 = !DILocation(line: 53, column: 3, scope: !1195)
!1199 = !DILocation(line: 56, column: 2, scope: !1171)
!1200 = !DILocation(line: 57, column: 1, scope: !1171)
!1201 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1202, file: !1202, line: 32, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!64, !1205}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1206 = distinct !DISubprogram(name: "spinlock_check", scope: !1207, file: !1207, line: 324, type: !1208, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1211)
!1207 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!1205, !1210}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "lock", arg: 1, scope: !1206, file: !1207, line: 324, type: !1210)
!1213 = !DILocation(line: 324, column: 67, scope: !1206)
!1214 = !DILocation(line: 326, column: 10, scope: !1206)
!1215 = !DILocation(line: 326, column: 16, scope: !1206)
!1216 = !DILocation(line: 326, column: 2, scope: !1206)
!1217 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !1207, file: !1207, line: 404, type: !1218, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1210, !64}
!1220 = !{!1221, !1222, !1223, !1226}
!1221 = !DILocalVariable(name: "lock", arg: 1, scope: !1217, file: !1207, line: 404, type: !1210)
!1222 = !DILocalVariable(name: "flags", arg: 2, scope: !1217, file: !1207, line: 404, type: !64)
!1223 = !DILocalVariable(name: "__dummy", scope: !1224, file: !1207, line: 406, type: !64)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !1207, line: 406, column: 2)
!1225 = distinct !DILexicalBlock(scope: !1217, file: !1207, line: 406, column: 2)
!1226 = !DILocalVariable(name: "__dummy2", scope: !1224, file: !1207, line: 406, type: !64)
!1227 = !DILocation(line: 404, column: 64, scope: !1217)
!1228 = !DILocation(line: 404, column: 84, scope: !1217)
!1229 = !DILocation(line: 406, column: 2, scope: !1217)
!1230 = !DILocation(line: 406, column: 2, scope: !1224)
!1231 = !DILocation(line: 406, column: 2, scope: !1225)
!1232 = !DILocation(line: 407, column: 1, scope: !1217)
!1233 = distinct !DISubprogram(name: "__do_once_done", scope: !3, file: !3, line: 60, type: !1234, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !1174, !98, !1113, !129}
!1236 = !{!1237, !1238, !1239, !1240}
!1237 = !DILocalVariable(name: "done", arg: 1, scope: !1233, file: !3, line: 60, type: !1174)
!1238 = !DILocalVariable(name: "once_key", arg: 2, scope: !1233, file: !3, line: 60, type: !98)
!1239 = !DILocalVariable(name: "flags", arg: 3, scope: !1233, file: !3, line: 61, type: !1113)
!1240 = !DILocalVariable(name: "mod", arg: 4, scope: !1233, file: !3, line: 61, type: !129)
!1241 = !DILocation(line: 60, column: 27, scope: !1233)
!1242 = !DILocation(line: 60, column: 57, scope: !1233)
!1243 = !DILocation(line: 61, column: 22, scope: !1233)
!1244 = !DILocation(line: 61, column: 44, scope: !1233)
!1245 = !DILocation(line: 64, column: 3, scope: !1233)
!1246 = !DILocation(line: 64, column: 8, scope: !1233)
!1247 = !DILocation(line: 65, column: 38, scope: !1233)
!1248 = !DILocation(line: 65, column: 37, scope: !1233)
!1249 = !DILocation(line: 65, column: 2, scope: !1233)
!1250 = !DILocation(line: 66, column: 20, scope: !1233)
!1251 = !DILocation(line: 66, column: 30, scope: !1233)
!1252 = !DILocation(line: 66, column: 2, scope: !1233)
!1253 = !DILocation(line: 67, column: 1, scope: !1233)
!1254 = !DILocation(line: 25, column: 55, scope: !1142)
!1255 = !DILocation(line: 25, column: 75, scope: !1142)
!1256 = !DILocation(line: 27, column: 2, scope: !1142)
!1257 = !DILocation(line: 27, column: 20, scope: !1142)
!1258 = !DILocation(line: 29, column: 6, scope: !1142)
!1259 = !DILocation(line: 29, column: 4, scope: !1142)
!1260 = !DILocation(line: 30, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 30, column: 6)
!1262 = !DILocation(line: 30, column: 6, scope: !1142)
!1263 = !DILocation(line: 31, column: 3, scope: !1261)
!1264 = !DILocation(line: 33, column: 2, scope: !1142)
!1265 = !DILocation(line: 33, column: 2, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 33, column: 2)
!1267 = !DILocation(line: 33, column: 2, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 33, column: 2)
!1269 = !DILocation(line: 34, column: 11, scope: !1142)
!1270 = !DILocation(line: 34, column: 2, scope: !1142)
!1271 = !DILocation(line: 34, column: 5, scope: !1142)
!1272 = !DILocation(line: 34, column: 9, scope: !1142)
!1273 = !DILocation(line: 35, column: 14, scope: !1142)
!1274 = !DILocation(line: 35, column: 2, scope: !1142)
!1275 = !DILocation(line: 35, column: 5, scope: !1142)
!1276 = !DILocation(line: 35, column: 12, scope: !1142)
!1277 = !DILocation(line: 36, column: 15, scope: !1142)
!1278 = !DILocation(line: 36, column: 2, scope: !1142)
!1279 = !DILocation(line: 37, column: 17, scope: !1142)
!1280 = !DILocation(line: 37, column: 20, scope: !1142)
!1281 = !DILocation(line: 37, column: 2, scope: !1142)
!1282 = !DILocation(line: 38, column: 1, scope: !1142)
!1283 = distinct !DISubprogram(name: "__do_once_sleepable_start", scope: !3, file: !3, line: 72, type: !1284, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!554, !1174}
!1286 = !{!1287}
!1287 = !DILocalVariable(name: "done", arg: 1, scope: !1283, file: !3, line: 72, type: !1174)
!1288 = !DILocation(line: 72, column: 38, scope: !1283)
!1289 = !DILocation(line: 75, column: 2, scope: !1283)
!1290 = !DILocation(line: 76, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 76, column: 6)
!1292 = !DILocation(line: 76, column: 6, scope: !1291)
!1293 = !DILocation(line: 76, column: 6, scope: !1283)
!1294 = !DILocation(line: 77, column: 3, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 76, column: 13)
!1296 = !DILocation(line: 83, column: 3, scope: !1295)
!1297 = !DILocation(line: 86, column: 2, scope: !1283)
!1298 = !DILocation(line: 87, column: 1, scope: !1283)
!1299 = !DISubprogram(name: "mutex_lock", scope: !467, file: !467, line: 227, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!1303 = !DISubprogram(name: "mutex_unlock", scope: !467, file: !467, line: 246, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = distinct !DISubprogram(name: "__do_once_sleepable_done", scope: !3, file: !3, line: 90, type: !1305, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !1174, !98, !129}
!1307 = !{!1308, !1309, !1310}
!1308 = !DILocalVariable(name: "done", arg: 1, scope: !1304, file: !3, line: 90, type: !1174)
!1309 = !DILocalVariable(name: "once_key", arg: 2, scope: !1304, file: !3, line: 90, type: !98)
!1310 = !DILocalVariable(name: "mod", arg: 3, scope: !1304, file: !3, line: 91, type: !129)
!1311 = !DILocation(line: 90, column: 37, scope: !1304)
!1312 = !DILocation(line: 90, column: 67, scope: !1304)
!1313 = !DILocation(line: 91, column: 20, scope: !1304)
!1314 = !DILocation(line: 94, column: 3, scope: !1304)
!1315 = !DILocation(line: 94, column: 8, scope: !1304)
!1316 = !DILocation(line: 95, column: 2, scope: !1304)
!1317 = !DILocation(line: 96, column: 20, scope: !1304)
!1318 = !DILocation(line: 96, column: 30, scope: !1304)
!1319 = !DILocation(line: 96, column: 2, scope: !1304)
!1320 = !DILocation(line: 97, column: 1, scope: !1304)
!1321 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1202, file: !1202, line: 43, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !1205, !64}
!1324 = distinct !DISubprogram(name: "kmalloc", scope: !51, file: !51, line: 591, type: !1325, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!61, !268, !62}
!1327 = !{!1328, !1329, !1330}
!1328 = !DILocalVariable(name: "size", arg: 1, scope: !1324, file: !51, line: 591, type: !268)
!1329 = !DILocalVariable(name: "flags", arg: 2, scope: !1324, file: !51, line: 591, type: !62)
!1330 = !DILocalVariable(name: "index", scope: !1331, file: !51, line: 594, type: !7)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !51, line: 593, column: 42)
!1332 = distinct !DILexicalBlock(scope: !1324, file: !51, line: 593, column: 6)
!1333 = !DILocation(line: 591, column: 61, scope: !1324)
!1334 = !DILocation(line: 591, column: 73, scope: !1324)
!1335 = !DILocation(line: 593, column: 27, scope: !1332)
!1336 = !DILocation(line: 593, column: 6, scope: !1332)
!1337 = !DILocation(line: 593, column: 33, scope: !1332)
!1338 = !DILocation(line: 593, column: 36, scope: !1332)
!1339 = !DILocation(line: 593, column: 6, scope: !1324)
!1340 = !DILocation(line: 594, column: 3, scope: !1331)
!1341 = !DILocation(line: 594, column: 16, scope: !1331)
!1342 = !DILocation(line: 596, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1331, file: !51, line: 596, column: 7)
!1344 = !DILocation(line: 596, column: 12, scope: !1343)
!1345 = !DILocation(line: 596, column: 7, scope: !1331)
!1346 = !DILocation(line: 597, column: 25, scope: !1343)
!1347 = !DILocation(line: 597, column: 31, scope: !1343)
!1348 = !DILocation(line: 597, column: 11, scope: !1343)
!1349 = !DILocation(line: 597, column: 4, scope: !1343)
!1350 = !DILocation(line: 599, column: 11, scope: !1331)
!1351 = !DILocation(line: 599, column: 9, scope: !1331)
!1352 = !DILocation(line: 601, column: 33, scope: !1331)
!1353 = !DILocation(line: 601, column: 40, scope: !1331)
!1354 = !DILocation(line: 601, column: 20, scope: !1331)
!1355 = !DILocation(line: 601, column: 5, scope: !1331)
!1356 = !DILocation(line: 601, column: 51, scope: !1331)
!1357 = !DILocation(line: 602, column: 5, scope: !1331)
!1358 = !DILocation(line: 602, column: 12, scope: !1331)
!1359 = !DILocation(line: 600, column: 10, scope: !1331)
!1360 = !DILocation(line: 600, column: 3, scope: !1331)
!1361 = !DILocation(line: 603, column: 2, scope: !1332)
!1362 = !DILocation(line: 604, column: 19, scope: !1324)
!1363 = !DILocation(line: 604, column: 25, scope: !1324)
!1364 = !DILocation(line: 604, column: 9, scope: !1324)
!1365 = !DILocation(line: 604, column: 2, scope: !1324)
!1366 = !DILocation(line: 605, column: 1, scope: !1324)
!1367 = distinct !DISubprogram(name: "__init_work", scope: !25, file: !25, line: 263, type: !1368, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !96, !110}
!1370 = !{!1371, !1372}
!1371 = !DILocalVariable(name: "work", arg: 1, scope: !1367, file: !25, line: 263, type: !96)
!1372 = !DILocalVariable(name: "onstack", arg: 2, scope: !1367, file: !25, line: 263, type: !110)
!1373 = !DILocation(line: 263, column: 52, scope: !1367)
!1374 = !DILocation(line: 263, column: 62, scope: !1367)
!1375 = !DILocation(line: 263, column: 73, scope: !1367)
!1376 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1377, file: !1377, line: 35, type: !1378, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1380)
!1377 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !67}
!1380 = !{!1381}
!1381 = !DILocalVariable(name: "list", arg: 1, scope: !1376, file: !1377, line: 35, type: !67)
!1382 = !DILocation(line: 35, column: 53, scope: !1376)
!1383 = !DILocation(line: 37, column: 2, scope: !1376)
!1384 = !DILocation(line: 37, column: 2, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1376, file: !1377, line: 37, column: 2)
!1386 = !DILocation(line: 37, column: 2, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1385, file: !1377, line: 37, column: 2)
!1388 = !DILocation(line: 37, column: 2, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !1377, line: 37, column: 2)
!1390 = !DILocation(line: 38, column: 2, scope: !1376)
!1391 = !DILocation(line: 38, column: 2, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1376, file: !1377, line: 38, column: 2)
!1393 = !DILocation(line: 38, column: 2, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1392, file: !1377, line: 38, column: 2)
!1395 = !DILocation(line: 38, column: 2, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !1377, line: 38, column: 2)
!1397 = !DILocation(line: 39, column: 1, scope: !1376)
!1398 = distinct !DISubprogram(name: "once_deferred", scope: !3, file: !3, line: 14, type: !94, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DILocalVariable(name: "w", arg: 1, scope: !1398, file: !3, line: 14, type: !96)
!1401 = !DILocalVariable(name: "work", scope: !1398, file: !3, line: 16, type: !72)
!1402 = !DILocalVariable(name: "__mptr", scope: !1403, file: !3, line: 18, type: !61)
!1403 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 18, column: 9)
!1404 = !DILocation(line: 14, column: 47, scope: !1398)
!1405 = !DILocation(line: 16, column: 2, scope: !1398)
!1406 = !DILocation(line: 16, column: 20, scope: !1398)
!1407 = !DILocation(line: 18, column: 9, scope: !1403)
!1408 = !DILocation(line: 18, column: 9, scope: !1398)
!1409 = !DILocation(line: 18, column: 7, scope: !1398)
!1410 = !DILocation(line: 19, column: 2, scope: !1398)
!1411 = !DILocation(line: 19, column: 2, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 19, column: 2)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 19, column: 2)
!1414 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 19, column: 2)
!1415 = !DILocation(line: 19, column: 2, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 19, column: 2)
!1417 = !DILocation(line: 19, column: 2, scope: !1413)
!1418 = !DILocation(line: 19, column: 2, scope: !1414)
!1419 = !DILocation(line: 19, column: 2, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 19, column: 2)
!1421 = !DILocation(line: 19, column: 2, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 19, column: 2)
!1423 = !DILocation(line: 19, column: 2, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 19, column: 2)
!1425 = !{i64 2152376405, i64 2152376434, i64 2152376480, i64 2152376538, i64 2152376592, i64 2152376646, i64 2152376701, i64 2152376732}
!1426 = !DILocation(line: 20, column: 2, scope: !1398)
!1427 = !DILocation(line: 21, column: 13, scope: !1398)
!1428 = !DILocation(line: 21, column: 19, scope: !1398)
!1429 = !DILocation(line: 21, column: 2, scope: !1398)
!1430 = !DILocation(line: 22, column: 8, scope: !1398)
!1431 = !DILocation(line: 22, column: 2, scope: !1398)
!1432 = !DILocation(line: 23, column: 1, scope: !1398)
!1433 = !DISubprogram(name: "__module_get", scope: !12, file: !12, line: 664, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1434 = distinct !DISubprogram(name: "schedule_work", scope: !25, file: !25, line: 621, type: !1435, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!554, !96}
!1437 = !{!1438}
!1438 = !DILocalVariable(name: "work", arg: 1, scope: !1434, file: !25, line: 621, type: !96)
!1439 = !DILocation(line: 621, column: 54, scope: !1434)
!1440 = !DILocation(line: 623, column: 20, scope: !1434)
!1441 = !DILocation(line: 623, column: 31, scope: !1434)
!1442 = !DILocation(line: 623, column: 9, scope: !1434)
!1443 = !DILocation(line: 623, column: 2, scope: !1434)
!1444 = !DISubprogram(name: "kmalloc_large", scope: !51, file: !51, line: 531, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1445 = distinct !DISubprogram(name: "__kmalloc_index", scope: !51, file: !51, line: 444, type: !1446, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!7, !268, !554}
!1448 = !{!1449, !1450}
!1449 = !DILocalVariable(name: "size", arg: 1, scope: !1445, file: !51, line: 444, type: !268)
!1450 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1445, file: !51, line: 445, type: !554)
!1451 = !DILocation(line: 444, column: 60, scope: !1445)
!1452 = !DILocation(line: 445, column: 16, scope: !1445)
!1453 = !DILocation(line: 447, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 447, column: 6)
!1455 = !DILocation(line: 447, column: 6, scope: !1445)
!1456 = !DILocation(line: 448, column: 3, scope: !1454)
!1457 = !DILocation(line: 450, column: 6, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 450, column: 6)
!1459 = !DILocation(line: 450, column: 11, scope: !1458)
!1460 = !DILocation(line: 450, column: 6, scope: !1445)
!1461 = !DILocation(line: 451, column: 3, scope: !1458)
!1462 = !DILocation(line: 453, column: 32, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 453, column: 6)
!1464 = !DILocation(line: 453, column: 37, scope: !1463)
!1465 = !DILocation(line: 453, column: 42, scope: !1463)
!1466 = !DILocation(line: 453, column: 45, scope: !1463)
!1467 = !DILocation(line: 453, column: 50, scope: !1463)
!1468 = !DILocation(line: 453, column: 6, scope: !1445)
!1469 = !DILocation(line: 454, column: 3, scope: !1463)
!1470 = !DILocation(line: 455, column: 32, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 455, column: 6)
!1472 = !DILocation(line: 455, column: 37, scope: !1471)
!1473 = !DILocation(line: 455, column: 43, scope: !1471)
!1474 = !DILocation(line: 455, column: 46, scope: !1471)
!1475 = !DILocation(line: 455, column: 51, scope: !1471)
!1476 = !DILocation(line: 455, column: 6, scope: !1445)
!1477 = !DILocation(line: 456, column: 3, scope: !1471)
!1478 = !DILocation(line: 457, column: 6, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 457, column: 6)
!1480 = !DILocation(line: 457, column: 11, scope: !1479)
!1481 = !DILocation(line: 457, column: 6, scope: !1445)
!1482 = !DILocation(line: 457, column: 26, scope: !1479)
!1483 = !DILocation(line: 458, column: 6, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 458, column: 6)
!1485 = !DILocation(line: 458, column: 11, scope: !1484)
!1486 = !DILocation(line: 458, column: 6, scope: !1445)
!1487 = !DILocation(line: 458, column: 26, scope: !1484)
!1488 = !DILocation(line: 459, column: 6, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 459, column: 6)
!1490 = !DILocation(line: 459, column: 11, scope: !1489)
!1491 = !DILocation(line: 459, column: 6, scope: !1445)
!1492 = !DILocation(line: 459, column: 26, scope: !1489)
!1493 = !DILocation(line: 460, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 460, column: 6)
!1495 = !DILocation(line: 460, column: 11, scope: !1494)
!1496 = !DILocation(line: 460, column: 6, scope: !1445)
!1497 = !DILocation(line: 460, column: 26, scope: !1494)
!1498 = !DILocation(line: 461, column: 6, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 461, column: 6)
!1500 = !DILocation(line: 461, column: 11, scope: !1499)
!1501 = !DILocation(line: 461, column: 6, scope: !1445)
!1502 = !DILocation(line: 461, column: 26, scope: !1499)
!1503 = !DILocation(line: 462, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 462, column: 6)
!1505 = !DILocation(line: 462, column: 11, scope: !1504)
!1506 = !DILocation(line: 462, column: 6, scope: !1445)
!1507 = !DILocation(line: 462, column: 26, scope: !1504)
!1508 = !DILocation(line: 463, column: 6, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 463, column: 6)
!1510 = !DILocation(line: 463, column: 11, scope: !1509)
!1511 = !DILocation(line: 463, column: 6, scope: !1445)
!1512 = !DILocation(line: 463, column: 26, scope: !1509)
!1513 = !DILocation(line: 464, column: 6, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 464, column: 6)
!1515 = !DILocation(line: 464, column: 11, scope: !1514)
!1516 = !DILocation(line: 464, column: 6, scope: !1445)
!1517 = !DILocation(line: 464, column: 26, scope: !1514)
!1518 = !DILocation(line: 465, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 465, column: 6)
!1520 = !DILocation(line: 465, column: 11, scope: !1519)
!1521 = !DILocation(line: 465, column: 6, scope: !1445)
!1522 = !DILocation(line: 465, column: 26, scope: !1519)
!1523 = !DILocation(line: 466, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 466, column: 6)
!1525 = !DILocation(line: 466, column: 11, scope: !1524)
!1526 = !DILocation(line: 466, column: 6, scope: !1445)
!1527 = !DILocation(line: 466, column: 26, scope: !1524)
!1528 = !DILocation(line: 467, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 467, column: 6)
!1530 = !DILocation(line: 467, column: 11, scope: !1529)
!1531 = !DILocation(line: 467, column: 6, scope: !1445)
!1532 = !DILocation(line: 467, column: 26, scope: !1529)
!1533 = !DILocation(line: 468, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 468, column: 6)
!1535 = !DILocation(line: 468, column: 11, scope: !1534)
!1536 = !DILocation(line: 468, column: 6, scope: !1445)
!1537 = !DILocation(line: 468, column: 26, scope: !1534)
!1538 = !DILocation(line: 469, column: 6, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 469, column: 6)
!1540 = !DILocation(line: 469, column: 11, scope: !1539)
!1541 = !DILocation(line: 469, column: 6, scope: !1445)
!1542 = !DILocation(line: 469, column: 26, scope: !1539)
!1543 = !DILocation(line: 470, column: 6, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 470, column: 6)
!1545 = !DILocation(line: 470, column: 11, scope: !1544)
!1546 = !DILocation(line: 470, column: 6, scope: !1445)
!1547 = !DILocation(line: 470, column: 26, scope: !1544)
!1548 = !DILocation(line: 471, column: 6, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 471, column: 6)
!1550 = !DILocation(line: 471, column: 11, scope: !1549)
!1551 = !DILocation(line: 471, column: 6, scope: !1445)
!1552 = !DILocation(line: 471, column: 26, scope: !1549)
!1553 = !DILocation(line: 472, column: 6, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 472, column: 6)
!1555 = !DILocation(line: 472, column: 11, scope: !1554)
!1556 = !DILocation(line: 472, column: 6, scope: !1445)
!1557 = !DILocation(line: 472, column: 26, scope: !1554)
!1558 = !DILocation(line: 473, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 473, column: 6)
!1560 = !DILocation(line: 473, column: 11, scope: !1559)
!1561 = !DILocation(line: 473, column: 6, scope: !1445)
!1562 = !DILocation(line: 473, column: 26, scope: !1559)
!1563 = !DILocation(line: 474, column: 6, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 474, column: 6)
!1565 = !DILocation(line: 474, column: 11, scope: !1564)
!1566 = !DILocation(line: 474, column: 6, scope: !1445)
!1567 = !DILocation(line: 474, column: 27, scope: !1564)
!1568 = !DILocation(line: 475, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 475, column: 6)
!1570 = !DILocation(line: 475, column: 11, scope: !1569)
!1571 = !DILocation(line: 475, column: 6, scope: !1445)
!1572 = !DILocation(line: 475, column: 32, scope: !1569)
!1573 = !DILocation(line: 477, column: 50, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1445, file: !51, line: 477, column: 6)
!1575 = !DILocation(line: 477, column: 6, scope: !1445)
!1576 = !DILocation(line: 478, column: 3, scope: !1574)
!1577 = !DILocation(line: 478, column: 3, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !51, line: 478, column: 3)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !51, line: 478, column: 3)
!1580 = !{i32 -2143560990}
!1581 = !DILocation(line: 478, column: 3, scope: !1579)
!1582 = !DILocation(line: 480, column: 3, scope: !1574)
!1583 = !DILocation(line: 480, column: 3, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1574, file: !51, line: 480, column: 3)
!1585 = !DILocation(line: 480, column: 3, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1584, file: !51, line: 480, column: 3)
!1587 = !DILocation(line: 480, column: 3, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !51, line: 480, column: 3)
!1589 = !{i64 2151406509, i64 2151406538, i64 2151406584, i64 2151406642, i64 2151406696, i64 2151406750, i64 2151406805, i64 2151406836}
!1590 = !DILocation(line: 483, column: 2, scope: !1445)
!1591 = !DILocation(line: 484, column: 1, scope: !1445)
!1592 = !DISubprogram(name: "kmalloc_trace", scope: !51, file: !51, line: 525, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!61, !1595, !62, !268}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1597, line: 11, flags: DIFlagFwdDecl)
!1597 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1598 = distinct !DISubprogram(name: "kmalloc_type", scope: !51, file: !51, line: 401, type: !1599, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1601)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!50, !62, !64}
!1601 = !{!1602, !1603}
!1602 = !DILocalVariable(name: "flags", arg: 1, scope: !1598, file: !51, line: 401, type: !62)
!1603 = !DILocalVariable(name: "caller", arg: 2, scope: !1598, file: !51, line: 401, type: !64)
!1604 = !DILocation(line: 401, column: 67, scope: !1598)
!1605 = !DILocation(line: 401, column: 88, scope: !1598)
!1606 = !DILocation(line: 407, column: 6, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1598, file: !51, line: 407, column: 6)
!1608 = !DILocation(line: 407, column: 6, scope: !1598)
!1609 = !DILocation(line: 413, column: 3, scope: !1607)
!1610 = !DILocation(line: 423, column: 38, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1598, file: !51, line: 423, column: 6)
!1612 = !DILocation(line: 423, column: 44, scope: !1611)
!1613 = !DILocation(line: 423, column: 6, scope: !1598)
!1614 = !DILocation(line: 424, column: 3, scope: !1611)
!1615 = !DILocation(line: 426, column: 3, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1598, file: !51, line: 425, column: 6)
!1617 = !DILocation(line: 429, column: 1, scope: !1598)
!1618 = !DISubprogram(name: "__kmalloc", scope: !51, file: !51, line: 488, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1619 = !DISubprogram(name: "__compiletime_assert_117", scope: !51, file: !51, line: 478, type: !1127, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1620 = !DISubprogram(name: "static_key_count", scope: !100, file: !100, line: 232, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!110, !1130}
!1623 = !DISubprogram(name: "static_key_disable", scope: !100, file: !100, line: 234, type: !1624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1130}
!1626 = !DISubprogram(name: "module_put", scope: !12, file: !12, line: 706, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1627 = !DISubprogram(name: "kfree", scope: !51, file: !51, line: 227, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !487}
!1630 = distinct !DISubprogram(name: "queue_work", scope: !25, file: !25, line: 559, type: !1631, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!554, !1091, !96}
!1633 = !{!1634, !1635}
!1634 = !DILocalVariable(name: "wq", arg: 1, scope: !1630, file: !25, line: 559, type: !1091)
!1635 = !DILocalVariable(name: "work", arg: 2, scope: !1630, file: !25, line: 560, type: !96)
!1636 = !DILocation(line: 559, column: 56, scope: !1630)
!1637 = !DILocation(line: 560, column: 30, scope: !1630)
!1638 = !DILocation(line: 562, column: 41, scope: !1630)
!1639 = !DILocation(line: 562, column: 45, scope: !1630)
!1640 = !DILocation(line: 562, column: 9, scope: !1630)
!1641 = !DILocation(line: 562, column: 2, scope: !1630)
!1642 = !DISubprogram(name: "queue_work_on", scope: !25, file: !25, line: 496, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!554, !110, !1091, !96}
