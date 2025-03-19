; ModuleID = 'drivers/base/map.c'
source_filename = "drivers/base/map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe = type { ptr, i32, i64, ptr, ptr, ptr, ptr }
%struct.kobj_map = type { [255 x ptr], ptr }

@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobj_map(ptr noundef %domain, i32 noundef %dev, i64 noundef %range, ptr noundef %module, ptr noundef %probe, ptr noundef %lock, ptr noundef %data) #0 align 16 !dbg !53 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  %range.addr = alloca i64, align 8
  %module.addr = alloca ptr, align 8
  %probe.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !1128, metadata !DIExpression()), !dbg !1144
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1129, metadata !DIExpression()), !dbg !1145
  store i64 %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !1130, metadata !DIExpression()), !dbg !1146
  store ptr %module, ptr %module.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module.addr, metadata !1131, metadata !DIExpression()), !dbg !1147
  store ptr %probe, ptr %probe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !1132, metadata !DIExpression()), !dbg !1148
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1133, metadata !DIExpression()), !dbg !1149
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1134, metadata !DIExpression()), !dbg !1150
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #14, !dbg !1151
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1135, metadata !DIExpression()), !dbg !1152
  %0 = load i32, ptr %dev.addr, align 4, !dbg !1153
  %conv = zext i32 %0 to i64, !dbg !1153
  %1 = load i64, ptr %range.addr, align 8, !dbg !1153
  %add = add i64 %conv, %1, !dbg !1153
  %sub = sub i64 %add, 1, !dbg !1153
  %shr = lshr i64 %sub, 20, !dbg !1153
  %conv1 = trunc i64 %shr to i32, !dbg !1153
  %2 = load i32, ptr %dev.addr, align 4, !dbg !1154
  %shr2 = lshr i32 %2, 20, !dbg !1154
  %sub3 = sub i32 %conv1, %shr2, !dbg !1155
  %add4 = add i32 %sub3, 1, !dbg !1156
  store i32 %add4, ptr %n, align 4, !dbg !1152
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1136, metadata !DIExpression()), !dbg !1158
  %3 = load i32, ptr %dev.addr, align 4, !dbg !1159
  %shr5 = lshr i32 %3, 20, !dbg !1159
  store i32 %shr5, ptr %index, align 4, !dbg !1158
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1137, metadata !DIExpression()), !dbg !1161
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1138, metadata !DIExpression()), !dbg !1163
  %4 = load i32, ptr %n, align 4, !dbg !1164
  %cmp = icmp ugt i32 %4, 255, !dbg !1166
  br i1 %cmp, label %if.then, label %if.end, !dbg !1167

if.then:                                          ; preds = %entry
  store i32 255, ptr %n, align 4, !dbg !1168
  br label %if.end, !dbg !1169

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %n, align 4, !dbg !1170
  %conv7 = zext i32 %5 to i64, !dbg !1170
  %call = call noalias ptr @kmalloc_array(i64 noundef %conv7, i64 noundef 56, i32 noundef 3264) #15, !dbg !1171
  store ptr %call, ptr %p, align 8, !dbg !1172
  %6 = load ptr, ptr %p, align 8, !dbg !1173
  %cmp8 = icmp eq ptr %6, null, !dbg !1175
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1176

if.then10:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !1177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1177

if.end11:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !1178
  br label %for.cond, !dbg !1180

for.cond:                                         ; preds = %for.inc, %if.end11
  %7 = load i32, ptr %i, align 4, !dbg !1181
  %8 = load i32, ptr %n, align 4, !dbg !1183
  %cmp12 = icmp ult i32 %7, %8, !dbg !1184
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1185

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %module.addr, align 8, !dbg !1186
  %10 = load ptr, ptr %p, align 8, !dbg !1188
  %owner = getelementptr inbounds %struct.probe, ptr %10, i32 0, i32 3, !dbg !1189
  store ptr %9, ptr %owner, align 8, !dbg !1190
  %11 = load ptr, ptr %probe.addr, align 8, !dbg !1191
  %12 = load ptr, ptr %p, align 8, !dbg !1192
  %get = getelementptr inbounds %struct.probe, ptr %12, i32 0, i32 4, !dbg !1193
  store ptr %11, ptr %get, align 8, !dbg !1194
  %13 = load ptr, ptr %lock.addr, align 8, !dbg !1195
  %14 = load ptr, ptr %p, align 8, !dbg !1196
  %lock14 = getelementptr inbounds %struct.probe, ptr %14, i32 0, i32 5, !dbg !1197
  store ptr %13, ptr %lock14, align 8, !dbg !1198
  %15 = load i32, ptr %dev.addr, align 4, !dbg !1199
  %16 = load ptr, ptr %p, align 8, !dbg !1200
  %dev15 = getelementptr inbounds %struct.probe, ptr %16, i32 0, i32 1, !dbg !1201
  store i32 %15, ptr %dev15, align 8, !dbg !1202
  %17 = load i64, ptr %range.addr, align 8, !dbg !1203
  %18 = load ptr, ptr %p, align 8, !dbg !1204
  %range16 = getelementptr inbounds %struct.probe, ptr %18, i32 0, i32 2, !dbg !1205
  store i64 %17, ptr %range16, align 8, !dbg !1206
  %19 = load ptr, ptr %data.addr, align 8, !dbg !1207
  %20 = load ptr, ptr %p, align 8, !dbg !1208
  %data17 = getelementptr inbounds %struct.probe, ptr %20, i32 0, i32 6, !dbg !1209
  store ptr %19, ptr %data17, align 8, !dbg !1210
  br label %for.inc, !dbg !1211

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !1212
  %inc = add i32 %21, 1, !dbg !1212
  store i32 %inc, ptr %i, align 4, !dbg !1212
  %22 = load ptr, ptr %p, align 8, !dbg !1213
  %incdec.ptr = getelementptr %struct.probe, ptr %22, i32 1, !dbg !1213
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1213
  br label %for.cond, !dbg !1214, !llvm.loop !1215

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %domain.addr, align 8, !dbg !1219
  %lock18 = getelementptr inbounds %struct.kobj_map, ptr %23, i32 0, i32 1, !dbg !1220
  %24 = load ptr, ptr %lock18, align 8, !dbg !1220
  call void @mutex_lock(ptr noundef %24) #16, !dbg !1221
  store i32 0, ptr %i, align 4, !dbg !1222
  %25 = load i32, ptr %n, align 4, !dbg !1223
  %26 = load ptr, ptr %p, align 8, !dbg !1224
  %idx.ext = zext i32 %25 to i64, !dbg !1224
  %idx.neg = sub i64 0, %idx.ext, !dbg !1224
  %add.ptr = getelementptr %struct.probe, ptr %26, i64 %idx.neg, !dbg !1224
  store ptr %add.ptr, ptr %p, align 8, !dbg !1224
  br label %for.cond19, !dbg !1225

for.cond19:                                       ; preds = %for.inc27, %for.end
  %27 = load i32, ptr %i, align 4, !dbg !1226
  %28 = load i32, ptr %n, align 4, !dbg !1227
  %cmp20 = icmp ult i32 %27, %28, !dbg !1228
  br i1 %cmp20, label %for.body22, label %for.end31, !dbg !1229

for.body22:                                       ; preds = %for.cond19
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1139, metadata !DIExpression()), !dbg !1231
  %29 = load ptr, ptr %domain.addr, align 8, !dbg !1232
  %probes = getelementptr inbounds %struct.kobj_map, ptr %29, i32 0, i32 0, !dbg !1233
  %30 = load i32, ptr %index, align 4, !dbg !1234
  %rem = urem i32 %30, 255, !dbg !1235
  %idxprom = zext i32 %rem to i64, !dbg !1232
  %arrayidx = getelementptr [255 x ptr], ptr %probes, i64 0, i64 %idxprom, !dbg !1232
  store ptr %arrayidx, ptr %s, align 8, !dbg !1231
  br label %while.cond, !dbg !1236

while.cond:                                       ; preds = %while.body, %for.body22
  %31 = load ptr, ptr %s, align 8, !dbg !1237
  %32 = load ptr, ptr %31, align 8, !dbg !1238
  %tobool = icmp ne ptr %32, null, !dbg !1238
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1239

land.rhs:                                         ; preds = %while.cond
  %33 = load ptr, ptr %s, align 8, !dbg !1240
  %34 = load ptr, ptr %33, align 8, !dbg !1241
  %range23 = getelementptr inbounds %struct.probe, ptr %34, i32 0, i32 2, !dbg !1242
  %35 = load i64, ptr %range23, align 8, !dbg !1242
  %36 = load i64, ptr %range.addr, align 8, !dbg !1243
  %cmp24 = icmp ult i64 %35, %36, !dbg !1244
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %37 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ], !dbg !1245
  br i1 %37, label %while.body, label %while.end, !dbg !1236

while.body:                                       ; preds = %land.end
  %38 = load ptr, ptr %s, align 8, !dbg !1246
  %39 = load ptr, ptr %38, align 8, !dbg !1247
  %next = getelementptr inbounds %struct.probe, ptr %39, i32 0, i32 0, !dbg !1248
  store ptr %next, ptr %s, align 8, !dbg !1249
  br label %while.cond, !dbg !1236, !llvm.loop !1250

while.end:                                        ; preds = %land.end
  %40 = load ptr, ptr %s, align 8, !dbg !1251
  %41 = load ptr, ptr %40, align 8, !dbg !1252
  %42 = load ptr, ptr %p, align 8, !dbg !1253
  %next26 = getelementptr inbounds %struct.probe, ptr %42, i32 0, i32 0, !dbg !1254
  store ptr %41, ptr %next26, align 8, !dbg !1255
  %43 = load ptr, ptr %p, align 8, !dbg !1256
  %44 = load ptr, ptr %s, align 8, !dbg !1257
  store ptr %43, ptr %44, align 8, !dbg !1258
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !1259
  br label %for.inc27, !dbg !1260

for.inc27:                                        ; preds = %while.end
  %45 = load i32, ptr %i, align 4, !dbg !1261
  %inc28 = add i32 %45, 1, !dbg !1261
  store i32 %inc28, ptr %i, align 4, !dbg !1261
  %46 = load ptr, ptr %p, align 8, !dbg !1262
  %incdec.ptr29 = getelementptr %struct.probe, ptr %46, i32 1, !dbg !1262
  store ptr %incdec.ptr29, ptr %p, align 8, !dbg !1262
  %47 = load i32, ptr %index, align 4, !dbg !1263
  %inc30 = add i32 %47, 1, !dbg !1263
  store i32 %inc30, ptr %index, align 4, !dbg !1263
  br label %for.cond19, !dbg !1264, !llvm.loop !1265

for.end31:                                        ; preds = %for.cond19
  %48 = load ptr, ptr %domain.addr, align 8, !dbg !1267
  %lock32 = getelementptr inbounds %struct.kobj_map, ptr %48, i32 0, i32 1, !dbg !1268
  %49 = load ptr, ptr %lock32, align 8, !dbg !1268
  call void @mutex_unlock(ptr noundef %49) #16, !dbg !1269
  store i32 0, ptr %retval, align 4, !dbg !1270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1270

cleanup:                                          ; preds = %for.end31, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #14, !dbg !1271
  %50 = load i32, ptr %retval, align 4, !dbg !1271
  ret i32 %50, !dbg !1271
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !1272 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1276, metadata !DIExpression()), !dbg !1280
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1277, metadata !DIExpression()), !dbg !1281
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1278, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !1283
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !1279, metadata !DIExpression()), !dbg !1284
  %0 = load i64, ptr %n.addr, align 8, !dbg !1285
  %1 = load i64, ptr %size.addr, align 8, !dbg !1285
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !1285
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1285
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1285
  store i64 %4, ptr %bytes, align 8, !dbg !1285
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !1285
  %lnot = xor i1 %call, true, !dbg !1285
  %lnot1 = xor i1 %lnot, true, !dbg !1285
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1285
  %conv = sext i32 %lnot.ext to i64, !dbg !1285
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1285
  %tobool = icmp ne i64 %expval, 0, !dbg !1285
  br i1 %tobool, label %if.then, label %if.end, !dbg !1287

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1288

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !1289
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !1291
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !1292

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !1293
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !1294
  br i1 %8, label %if.then2, label %if.end4, !dbg !1295

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !1296
  %10 = load i32, ptr %flags.addr, align 4, !dbg !1297
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #17, !dbg !1298
  store ptr %call3, ptr %retval, align 8, !dbg !1299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1299

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !1300
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1301
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #17, !dbg !1302
  store ptr %call5, ptr %retval, align 8, !dbg !1303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1303

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !1304
  %13 = load ptr, ptr %retval, align 8, !dbg !1304
  ret ptr %13, !dbg !1304
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1305 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1308 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kobj_unmap(ptr noundef %domain, i32 noundef %dev, i64 noundef %range) #0 align 16 !dbg !1309 {
entry:
  %domain.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  %range.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %found = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !1313, metadata !DIExpression()), !dbg !1328
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1314, metadata !DIExpression()), !dbg !1329
  store i64 %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !1315, metadata !DIExpression()), !dbg !1330
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #14, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1316, metadata !DIExpression()), !dbg !1332
  %0 = load i32, ptr %dev.addr, align 4, !dbg !1333
  %conv = zext i32 %0 to i64, !dbg !1333
  %1 = load i64, ptr %range.addr, align 8, !dbg !1333
  %add = add i64 %conv, %1, !dbg !1333
  %sub = sub i64 %add, 1, !dbg !1333
  %shr = lshr i64 %sub, 20, !dbg !1333
  %conv1 = trunc i64 %shr to i32, !dbg !1333
  %2 = load i32, ptr %dev.addr, align 4, !dbg !1334
  %shr2 = lshr i32 %2, 20, !dbg !1334
  %sub3 = sub i32 %conv1, %shr2, !dbg !1335
  %add4 = add i32 %sub3, 1, !dbg !1336
  store i32 %add4, ptr %n, align 4, !dbg !1332
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1337
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1317, metadata !DIExpression()), !dbg !1338
  %3 = load i32, ptr %dev.addr, align 4, !dbg !1339
  %shr5 = lshr i32 %3, 20, !dbg !1339
  store i32 %shr5, ptr %index, align 4, !dbg !1338
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1340
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1318, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #14, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %found, metadata !1319, metadata !DIExpression()), !dbg !1343
  store ptr null, ptr %found, align 8, !dbg !1343
  %4 = load i32, ptr %n, align 4, !dbg !1344
  %cmp = icmp ugt i32 %4, 255, !dbg !1346
  br i1 %cmp, label %if.then, label %if.end, !dbg !1347

if.then:                                          ; preds = %entry
  store i32 255, ptr %n, align 4, !dbg !1348
  br label %if.end, !dbg !1349

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %domain.addr, align 8, !dbg !1350
  %lock = getelementptr inbounds %struct.kobj_map, ptr %5, i32 0, i32 1, !dbg !1351
  %6 = load ptr, ptr %lock, align 8, !dbg !1351
  call void @mutex_lock(ptr noundef %6) #16, !dbg !1352
  store i32 0, ptr %i, align 4, !dbg !1353
  br label %for.cond, !dbg !1354

for.cond:                                         ; preds = %for.inc23, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !1355
  %8 = load i32, ptr %n, align 4, !dbg !1356
  %cmp7 = icmp ult i32 %7, %8, !dbg !1357
  br i1 %cmp7, label %for.body, label %for.end25, !dbg !1358

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1320, metadata !DIExpression()), !dbg !1360
  %9 = load ptr, ptr %domain.addr, align 8, !dbg !1361
  %probes = getelementptr inbounds %struct.kobj_map, ptr %9, i32 0, i32 0, !dbg !1362
  %10 = load i32, ptr %index, align 4, !dbg !1363
  %rem = urem i32 %10, 255, !dbg !1364
  %idxprom = zext i32 %rem to i64, !dbg !1361
  %arrayidx = getelementptr [255 x ptr], ptr %probes, i64 0, i64 %idxprom, !dbg !1361
  store ptr %arrayidx, ptr %s, align 8, !dbg !1365
  br label %for.cond9, !dbg !1366

for.cond9:                                        ; preds = %for.inc, %for.body
  %11 = load ptr, ptr %s, align 8, !dbg !1367
  %12 = load ptr, ptr %11, align 8, !dbg !1368
  %tobool = icmp ne ptr %12, null, !dbg !1369
  br i1 %tobool, label %for.body10, label %for.end, !dbg !1369

for.body10:                                       ; preds = %for.cond9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1324, metadata !DIExpression()), !dbg !1371
  %13 = load ptr, ptr %s, align 8, !dbg !1372
  %14 = load ptr, ptr %13, align 8, !dbg !1373
  store ptr %14, ptr %p, align 8, !dbg !1371
  %15 = load ptr, ptr %p, align 8, !dbg !1374
  %dev11 = getelementptr inbounds %struct.probe, ptr %15, i32 0, i32 1, !dbg !1376
  %16 = load i32, ptr %dev11, align 8, !dbg !1376
  %17 = load i32, ptr %dev.addr, align 4, !dbg !1377
  %cmp12 = icmp eq i32 %16, %17, !dbg !1378
  br i1 %cmp12, label %land.lhs.true, label %if.end21, !dbg !1379

land.lhs.true:                                    ; preds = %for.body10
  %18 = load ptr, ptr %p, align 8, !dbg !1380
  %range14 = getelementptr inbounds %struct.probe, ptr %18, i32 0, i32 2, !dbg !1381
  %19 = load i64, ptr %range14, align 8, !dbg !1381
  %20 = load i64, ptr %range.addr, align 8, !dbg !1382
  %cmp15 = icmp eq i64 %19, %20, !dbg !1383
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !1384

if.then17:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %p, align 8, !dbg !1385
  %next = getelementptr inbounds %struct.probe, ptr %21, i32 0, i32 0, !dbg !1387
  %22 = load ptr, ptr %next, align 8, !dbg !1387
  %23 = load ptr, ptr %s, align 8, !dbg !1388
  store ptr %22, ptr %23, align 8, !dbg !1389
  %24 = load ptr, ptr %found, align 8, !dbg !1390
  %tobool18 = icmp ne ptr %24, null, !dbg !1390
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1392

if.then19:                                        ; preds = %if.then17
  %25 = load ptr, ptr %p, align 8, !dbg !1393
  store ptr %25, ptr %found, align 8, !dbg !1394
  br label %if.end20, !dbg !1395

if.end20:                                         ; preds = %if.then19, %if.then17
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1396

if.end21:                                         ; preds = %land.lhs.true, %for.body10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1397
  br label %cleanup, !dbg !1397

cleanup:                                          ; preds = %if.end21, %if.end20
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1397
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1398

for.inc:                                          ; preds = %cleanup.cont
  %26 = load ptr, ptr %s, align 8, !dbg !1399
  %27 = load ptr, ptr %26, align 8, !dbg !1400
  %next22 = getelementptr inbounds %struct.probe, ptr %27, i32 0, i32 0, !dbg !1401
  store ptr %next22, ptr %s, align 8, !dbg !1402
  br label %for.cond9, !dbg !1403, !llvm.loop !1404

for.end:                                          ; preds = %cleanup, %for.cond9
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !1406
  br label %for.inc23, !dbg !1407

for.inc23:                                        ; preds = %for.end
  %28 = load i32, ptr %i, align 4, !dbg !1408
  %inc = add i32 %28, 1, !dbg !1408
  store i32 %inc, ptr %i, align 4, !dbg !1408
  %29 = load i32, ptr %index, align 4, !dbg !1409
  %inc24 = add i32 %29, 1, !dbg !1409
  store i32 %inc24, ptr %index, align 4, !dbg !1409
  br label %for.cond, !dbg !1410, !llvm.loop !1411

for.end25:                                        ; preds = %for.cond
  %30 = load ptr, ptr %domain.addr, align 8, !dbg !1413
  %lock26 = getelementptr inbounds %struct.kobj_map, ptr %30, i32 0, i32 1, !dbg !1414
  %31 = load ptr, ptr %lock26, align 8, !dbg !1414
  call void @mutex_unlock(ptr noundef %31) #16, !dbg !1415
  %32 = load ptr, ptr %found, align 8, !dbg !1416
  call void @kfree(ptr noundef %32) #16, !dbg !1417
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #14, !dbg !1418
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1418
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1418
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #14, !dbg !1418
  ret void, !dbg !1418

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1419 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobj_lookup(ptr noundef %domain, i32 noundef %dev, ptr noundef %index) #0 align 16 !dbg !1422 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  %index.addr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %p = alloca ptr, align 8
  %best = alloca i64, align 8
  %probe = alloca ptr, align 8
  %owner = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !1426, metadata !DIExpression()), !dbg !1440
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1427, metadata !DIExpression()), !dbg !1441
  store ptr %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1428, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #14, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !1429, metadata !DIExpression()), !dbg !1444
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1430, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 8, ptr %best) #14, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %best, metadata !1431, metadata !DIExpression()), !dbg !1448
  store i64 -1, ptr %best, align 8, !dbg !1448
  br label %retry, !dbg !1447

retry:                                            ; preds = %cleanup, %entry
  call void @llvm.dbg.label(metadata !1432), !dbg !1449
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !1450
  %lock = getelementptr inbounds %struct.kobj_map, ptr %0, i32 0, i32 1, !dbg !1451
  %1 = load ptr, ptr %lock, align 8, !dbg !1451
  call void @mutex_lock(ptr noundef %1) #16, !dbg !1452
  %2 = load ptr, ptr %domain.addr, align 8, !dbg !1453
  %probes = getelementptr inbounds %struct.kobj_map, ptr %2, i32 0, i32 0, !dbg !1454
  %3 = load i32, ptr %dev.addr, align 4, !dbg !1455
  %shr = lshr i32 %3, 20, !dbg !1455
  %rem = urem i32 %shr, 255, !dbg !1456
  %idxprom = zext i32 %rem to i64, !dbg !1453
  %arrayidx = getelementptr [255 x ptr], ptr %probes, i64 0, i64 %idxprom, !dbg !1453
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1453
  store ptr %4, ptr %p, align 8, !dbg !1457
  br label %for.cond, !dbg !1458

for.cond:                                         ; preds = %for.inc, %retry
  %5 = load ptr, ptr %p, align 8, !dbg !1459
  %tobool = icmp ne ptr %5, null, !dbg !1460
  br i1 %tobool, label %for.body, label %for.end, !dbg !1460

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %probe) #14, !dbg !1461
  call void @llvm.dbg.declare(metadata ptr %probe, metadata !1433, metadata !DIExpression()), !dbg !1462
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #14, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !1438, metadata !DIExpression()), !dbg !1464
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !1465
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1439, metadata !DIExpression()), !dbg !1466
  %6 = load ptr, ptr %p, align 8, !dbg !1467
  %dev1 = getelementptr inbounds %struct.probe, ptr %6, i32 0, i32 1, !dbg !1469
  %7 = load i32, ptr %dev1, align 8, !dbg !1469
  %8 = load i32, ptr %dev.addr, align 4, !dbg !1470
  %cmp = icmp ugt i32 %7, %8, !dbg !1471
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1472

lor.lhs.false:                                    ; preds = %for.body
  %9 = load ptr, ptr %p, align 8, !dbg !1473
  %dev2 = getelementptr inbounds %struct.probe, ptr %9, i32 0, i32 1, !dbg !1474
  %10 = load i32, ptr %dev2, align 8, !dbg !1474
  %conv = zext i32 %10 to i64, !dbg !1473
  %11 = load ptr, ptr %p, align 8, !dbg !1475
  %range = getelementptr inbounds %struct.probe, ptr %11, i32 0, i32 2, !dbg !1476
  %12 = load i64, ptr %range, align 8, !dbg !1476
  %add = add i64 %conv, %12, !dbg !1477
  %sub = sub i64 %add, 1, !dbg !1478
  %13 = load i32, ptr %dev.addr, align 4, !dbg !1479
  %conv3 = zext i32 %13 to i64, !dbg !1479
  %cmp4 = icmp ult i64 %sub, %conv3, !dbg !1480
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1481

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1482

if.end:                                           ; preds = %lor.lhs.false
  %14 = load ptr, ptr %p, align 8, !dbg !1483
  %range6 = getelementptr inbounds %struct.probe, ptr %14, i32 0, i32 2, !dbg !1485
  %15 = load i64, ptr %range6, align 8, !dbg !1485
  %sub7 = sub i64 %15, 1, !dbg !1486
  %16 = load i64, ptr %best, align 8, !dbg !1487
  %cmp8 = icmp uge i64 %sub7, %16, !dbg !1488
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1489

if.then10:                                        ; preds = %if.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1490

if.end11:                                         ; preds = %if.end
  %17 = load ptr, ptr %p, align 8, !dbg !1491
  %owner12 = getelementptr inbounds %struct.probe, ptr %17, i32 0, i32 3, !dbg !1493
  %18 = load ptr, ptr %owner12, align 8, !dbg !1493
  %call = call zeroext i1 @try_module_get(ptr noundef %18) #16, !dbg !1494
  br i1 %call, label %if.end14, label %if.then13, !dbg !1495

if.then13:                                        ; preds = %if.end11
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1496

if.end14:                                         ; preds = %if.end11
  %19 = load ptr, ptr %p, align 8, !dbg !1497
  %owner15 = getelementptr inbounds %struct.probe, ptr %19, i32 0, i32 3, !dbg !1498
  %20 = load ptr, ptr %owner15, align 8, !dbg !1498
  store ptr %20, ptr %owner, align 8, !dbg !1499
  %21 = load ptr, ptr %p, align 8, !dbg !1500
  %data16 = getelementptr inbounds %struct.probe, ptr %21, i32 0, i32 6, !dbg !1501
  %22 = load ptr, ptr %data16, align 8, !dbg !1501
  store ptr %22, ptr %data, align 8, !dbg !1502
  %23 = load ptr, ptr %p, align 8, !dbg !1503
  %get = getelementptr inbounds %struct.probe, ptr %23, i32 0, i32 4, !dbg !1504
  %24 = load ptr, ptr %get, align 8, !dbg !1504
  store ptr %24, ptr %probe, align 8, !dbg !1505
  %25 = load ptr, ptr %p, align 8, !dbg !1506
  %range17 = getelementptr inbounds %struct.probe, ptr %25, i32 0, i32 2, !dbg !1507
  %26 = load i64, ptr %range17, align 8, !dbg !1507
  %sub18 = sub i64 %26, 1, !dbg !1508
  store i64 %sub18, ptr %best, align 8, !dbg !1509
  %27 = load i32, ptr %dev.addr, align 4, !dbg !1510
  %28 = load ptr, ptr %p, align 8, !dbg !1511
  %dev19 = getelementptr inbounds %struct.probe, ptr %28, i32 0, i32 1, !dbg !1512
  %29 = load i32, ptr %dev19, align 8, !dbg !1512
  %sub20 = sub i32 %27, %29, !dbg !1513
  %30 = load ptr, ptr %index.addr, align 8, !dbg !1514
  store i32 %sub20, ptr %30, align 4, !dbg !1515
  %31 = load ptr, ptr %p, align 8, !dbg !1516
  %lock21 = getelementptr inbounds %struct.probe, ptr %31, i32 0, i32 5, !dbg !1518
  %32 = load ptr, ptr %lock21, align 8, !dbg !1518
  %tobool22 = icmp ne ptr %32, null, !dbg !1516
  br i1 %tobool22, label %land.lhs.true, label %if.end28, !dbg !1519

land.lhs.true:                                    ; preds = %if.end14
  %33 = load ptr, ptr %p, align 8, !dbg !1520
  %lock23 = getelementptr inbounds %struct.probe, ptr %33, i32 0, i32 5, !dbg !1521
  %34 = load ptr, ptr %lock23, align 8, !dbg !1521
  %35 = load i32, ptr %dev.addr, align 4, !dbg !1522
  %36 = load ptr, ptr %data, align 8, !dbg !1523
  %call24 = call i32 %34(i32 noundef %35, ptr noundef %36) #16, !dbg !1520
  %cmp25 = icmp slt i32 %call24, 0, !dbg !1524
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1525

if.then27:                                        ; preds = %land.lhs.true
  %37 = load ptr, ptr %owner, align 8, !dbg !1526
  call void @module_put(ptr noundef %37) #16, !dbg !1528
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1529

if.end28:                                         ; preds = %land.lhs.true, %if.end14
  %38 = load ptr, ptr %domain.addr, align 8, !dbg !1530
  %lock29 = getelementptr inbounds %struct.kobj_map, ptr %38, i32 0, i32 1, !dbg !1531
  %39 = load ptr, ptr %lock29, align 8, !dbg !1531
  call void @mutex_unlock(ptr noundef %39) #16, !dbg !1532
  %40 = load ptr, ptr %probe, align 8, !dbg !1533
  %41 = load i32, ptr %dev.addr, align 4, !dbg !1534
  %42 = load ptr, ptr %index.addr, align 8, !dbg !1535
  %43 = load ptr, ptr %data, align 8, !dbg !1536
  %call30 = call ptr %40(i32 noundef %41, ptr noundef %42, ptr noundef %43) #16, !dbg !1533
  store ptr %call30, ptr %kobj, align 8, !dbg !1537
  %44 = load ptr, ptr %owner, align 8, !dbg !1538
  call void @module_put(ptr noundef %44) #16, !dbg !1539
  %45 = load ptr, ptr %kobj, align 8, !dbg !1540
  %tobool31 = icmp ne ptr %45, null, !dbg !1540
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1542

if.then32:                                        ; preds = %if.end28
  %46 = load ptr, ptr %kobj, align 8, !dbg !1543
  store ptr %46, ptr %retval, align 8, !dbg !1544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1544

if.end33:                                         ; preds = %if.end28
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1545

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then27, %if.then13, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #14, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr %probe) #14, !dbg !1546
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup37 [
    i32 5, label %for.inc
    i32 3, label %for.end
    i32 2, label %retry
  ]

for.inc:                                          ; preds = %cleanup
  %47 = load ptr, ptr %p, align 8, !dbg !1547
  %next = getelementptr inbounds %struct.probe, ptr %47, i32 0, i32 0, !dbg !1548
  %48 = load ptr, ptr %next, align 8, !dbg !1548
  store ptr %48, ptr %p, align 8, !dbg !1549
  br label %for.cond, !dbg !1550, !llvm.loop !1551

for.end:                                          ; preds = %cleanup, %for.cond
  %49 = load ptr, ptr %domain.addr, align 8, !dbg !1553
  %lock36 = getelementptr inbounds %struct.kobj_map, ptr %49, i32 0, i32 1, !dbg !1554
  %50 = load ptr, ptr %lock36, align 8, !dbg !1554
  call void @mutex_unlock(ptr noundef %50) #16, !dbg !1555
  store ptr null, ptr %retval, align 8, !dbg !1556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !1556

cleanup37:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %best) #14, !dbg !1557
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1557
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #14, !dbg !1557
  %51 = load ptr, ptr %retval, align 8, !dbg !1557
  ret ptr %51, !dbg !1557
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1558 dso_local zeroext i1 @try_module_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1561 dso_local void @module_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobj_map_init(ptr noundef %base_probe, ptr noundef %lock) #0 align 16 !dbg !1562 {
entry:
  %retval = alloca ptr, align 8
  %base_probe.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %base = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %base_probe, ptr %base_probe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base_probe.addr, metadata !1566, metadata !DIExpression()), !dbg !1571
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1567, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1568, metadata !DIExpression()), !dbg !1574
  %call = call noalias ptr @kmalloc(i64 noundef 2048, i32 noundef 3264) #17, !dbg !1575
  store ptr %call, ptr %p, align 8, !dbg !1574
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #14, !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %base, metadata !1569, metadata !DIExpression()), !dbg !1577
  %call1 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #17, !dbg !1578
  store ptr %call1, ptr %base, align 8, !dbg !1577
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1570, metadata !DIExpression()), !dbg !1580
  %0 = load ptr, ptr %p, align 8, !dbg !1581
  %cmp = icmp eq ptr %0, null, !dbg !1583
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1584

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %base, align 8, !dbg !1585
  %cmp2 = icmp eq ptr %1, null, !dbg !1586
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1587

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %p, align 8, !dbg !1588
  call void @kfree(ptr noundef %2) #16, !dbg !1590
  %3 = load ptr, ptr %base, align 8, !dbg !1591
  call void @kfree(ptr noundef %3) #16, !dbg !1592
  store ptr null, ptr %retval, align 8, !dbg !1593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1593

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %base, align 8, !dbg !1594
  %dev = getelementptr inbounds %struct.probe, ptr %4, i32 0, i32 1, !dbg !1595
  store i32 1, ptr %dev, align 8, !dbg !1596
  %5 = load ptr, ptr %base, align 8, !dbg !1597
  %range = getelementptr inbounds %struct.probe, ptr %5, i32 0, i32 2, !dbg !1598
  store i64 -1, ptr %range, align 8, !dbg !1599
  %6 = load ptr, ptr %base_probe.addr, align 8, !dbg !1600
  %7 = load ptr, ptr %base, align 8, !dbg !1601
  %get = getelementptr inbounds %struct.probe, ptr %7, i32 0, i32 4, !dbg !1602
  store ptr %6, ptr %get, align 8, !dbg !1603
  store i32 0, ptr %i, align 4, !dbg !1604
  br label %for.cond, !dbg !1606

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4, !dbg !1607
  %cmp3 = icmp slt i32 %8, 255, !dbg !1609
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1610

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %base, align 8, !dbg !1611
  %10 = load ptr, ptr %p, align 8, !dbg !1612
  %probes = getelementptr inbounds %struct.kobj_map, ptr %10, i32 0, i32 0, !dbg !1613
  %11 = load i32, ptr %i, align 4, !dbg !1614
  %idxprom = sext i32 %11 to i64, !dbg !1612
  %arrayidx = getelementptr [255 x ptr], ptr %probes, i64 0, i64 %idxprom, !dbg !1612
  store ptr %9, ptr %arrayidx, align 8, !dbg !1615
  br label %for.inc, !dbg !1612

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !1616
  %inc = add i32 %12, 1, !dbg !1616
  store i32 %inc, ptr %i, align 4, !dbg !1616
  br label %for.cond, !dbg !1617, !llvm.loop !1618

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %lock.addr, align 8, !dbg !1620
  %14 = load ptr, ptr %p, align 8, !dbg !1621
  %lock4 = getelementptr inbounds %struct.kobj_map, ptr %14, i32 0, i32 1, !dbg !1622
  store ptr %13, ptr %lock4, align 8, !dbg !1623
  %15 = load ptr, ptr %p, align 8, !dbg !1624
  store ptr %15, ptr %retval, align 8, !dbg !1625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1625

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1626
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #14, !dbg !1626
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1626
  %16 = load ptr, ptr %retval, align 8, !dbg !1626
  ret ptr %16, !dbg !1626
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1627 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1631, metadata !DIExpression()), !dbg !1636
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1632, metadata !DIExpression()), !dbg !1637
  %0 = load i64, ptr %size.addr, align 8, !dbg !1638
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1639
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1640

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1641
  %tobool = icmp ne i64 %2, 0, !dbg !1641
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1642

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1643
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1633, metadata !DIExpression()), !dbg !1644
  %3 = load i64, ptr %size.addr, align 8, !dbg !1645
  %cmp = icmp ugt i64 %3, 8192, !dbg !1647
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1648

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1649
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1650
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1651
  store ptr %call, ptr %retval, align 8, !dbg !1652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1652

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1653
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !1653
  store i32 %call2, ptr %index, align 4, !dbg !1654
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1655
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1656
  %9 = ptrtoint ptr %8 to i64, !dbg !1656
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !1657
  %idxprom = zext i32 %call3 to i64, !dbg !1658
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1658
  %10 = load i32, ptr %index, align 4, !dbg !1659
  %idxprom4 = zext i32 %10 to i64, !dbg !1658
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1658
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1658
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1660
  %13 = load i64, ptr %size.addr, align 8, !dbg !1661
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !1662
  store ptr %call6, ptr %retval, align 8, !dbg !1663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1663

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1664
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1665
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1666
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !1667
  store ptr %call8, ptr %retval, align 8, !dbg !1668
  br label %return, !dbg !1668

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1669
  ret ptr %16, !dbg !1669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1670 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1672, metadata !DIExpression()), !dbg !1674
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1673, metadata !DIExpression()), !dbg !1675
  %0 = load i64, ptr %size.addr, align 8, !dbg !1676
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1677
  %or = or i32 %1, 256, !dbg !1678
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1679
  ret ptr %call, !dbg !1680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #7 align 16 !dbg !1681 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !1686, metadata !DIExpression()), !dbg !1687
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !1688, !range !1689, !noundef !311
  %tobool = trunc i8 %0 to i1, !dbg !1688
  %lnot = xor i1 %tobool, true, !dbg !1688
  %lnot1 = xor i1 %lnot, true, !dbg !1688
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1688
  %conv = sext i32 %lnot.ext to i64, !dbg !1688
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1688
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1688
  ret i1 %tobool2, !dbg !1690
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1691 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1692 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !1693 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1697, metadata !DIExpression()), !dbg !1699
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1698, metadata !DIExpression()), !dbg !1700
  %0 = load i64, ptr %size.addr, align 8, !dbg !1701
  %tobool = icmp ne i64 %0, 0, !dbg !1701
  br i1 %tobool, label %if.end, label %if.then, !dbg !1703

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1704
  br label %return, !dbg !1704

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1705
  %cmp = icmp ule i64 %1, 8, !dbg !1707
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1708

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1709
  br label %return, !dbg !1709

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1710
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1712
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1713

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1714
  %cmp4 = icmp ule i64 %3, 96, !dbg !1715
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1716

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1717
  br label %return, !dbg !1717

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1718
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1720
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1721

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1722
  %cmp9 = icmp ule i64 %5, 192, !dbg !1723
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1724

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1725
  br label %return, !dbg !1725

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1726
  %cmp12 = icmp ule i64 %6, 8, !dbg !1728
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1729

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1730
  br label %return, !dbg !1730

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1731
  %cmp15 = icmp ule i64 %7, 16, !dbg !1733
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1734

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1735
  br label %return, !dbg !1735

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1736
  %cmp18 = icmp ule i64 %8, 32, !dbg !1738
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1739

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1740
  br label %return, !dbg !1740

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1741
  %cmp21 = icmp ule i64 %9, 64, !dbg !1743
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1744

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1745
  br label %return, !dbg !1745

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1746
  %cmp24 = icmp ule i64 %10, 128, !dbg !1748
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1749

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1750
  br label %return, !dbg !1750

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1751
  %cmp27 = icmp ule i64 %11, 256, !dbg !1753
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1754

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1755
  br label %return, !dbg !1755

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1756
  %cmp30 = icmp ule i64 %12, 512, !dbg !1758
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1759

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1760
  br label %return, !dbg !1760

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1761
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1763
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1764

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1765
  br label %return, !dbg !1765

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1766
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1768
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1769

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1770
  br label %return, !dbg !1770

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1771
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1773
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1774

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1775
  br label %return, !dbg !1775

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1776
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1778
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1779

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1780
  br label %return, !dbg !1780

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1781
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1783
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1784

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1785
  br label %return, !dbg !1785

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1786
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1788
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1789

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1790
  br label %return, !dbg !1790

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1791
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1793
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1794

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1795
  br label %return, !dbg !1795

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1796
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1798
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1799

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1800
  br label %return, !dbg !1800

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1801
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1803
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1804

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1805
  br label %return, !dbg !1805

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1806
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1808
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1809

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1810
  br label %return, !dbg !1810

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1811
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1813
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1814

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1815
  br label %return, !dbg !1815

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1816
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1818
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1819

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1820
  br label %return, !dbg !1820

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1821, !range !1689, !noundef !311
  %tobool69 = trunc i8 %25 to i1, !dbg !1821
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1823

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1824

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #19, !dbg !1825, !srcloc !1828
  unreachable, !dbg !1825

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1829

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1830

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1831

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1833

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1831

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !1835, !srcloc !1837
  br label %do.end75, !dbg !1835

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1831

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1838
  br label %return, !dbg !1838

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1839
  ret i32 %26, !dbg !1839
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1840 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !1846 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1850, metadata !DIExpression()), !dbg !1852
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1851, metadata !DIExpression()), !dbg !1853
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1854
  %and = and i32 %0, 17, !dbg !1854
  %cmp = icmp eq i32 %and, 0, !dbg !1854
  %lnot = xor i1 %cmp, true, !dbg !1854
  %lnot1 = xor i1 %lnot, true, !dbg !1854
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1854
  %conv = sext i32 %lnot.ext to i64, !dbg !1854
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1854
  %tobool = icmp ne i64 %expval, 0, !dbg !1854
  br i1 %tobool, label %if.then, label %if.end, !dbg !1856

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1857
  br label %return, !dbg !1857

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1858
  %and2 = and i32 %1, 1, !dbg !1860
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1860
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1861

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1862
  br label %return, !dbg !1862

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1863
  br label %return, !dbg !1863

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1865
  ret i32 %2, !dbg !1865
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1866 dso_local void @__compiletime_assert_196() #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0,1) }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.map.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/map\22 -D KBUILD_BASENAME=\22map\22 -D KBUILD_MODNAME=\22map\22 -D __KBUILD_MODNAME=kmod_map -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/map.ll drivers/base/map.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !38, globals: !43, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "drivers/base/map.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b7c65f46c497d668980272232b701be")
!9 = !{!10, !18, !24, !29}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !11, line: 312, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!15 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!16 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!17 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !19, line: 26, baseType: !12, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!22 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!23 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 10, baseType: !12, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "false", value: 0)
!28 = !DIEnumerator(name: "true", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !12, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36, !37}
!31 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!32 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!33 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!34 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!35 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!36 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!37 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!38 = !{!12, !39, !41, !42}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !40, line: 154, baseType: !12)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !{!0}
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 8, !"cf-protection-branch", i32 1}
!48 = !{i32 4, !"function_return_thunk_extern", i32 1}
!49 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!50 = !{i32 1, !"Code Model", i32 2}
!51 = !{i32 1, !"override-stack-alignment", i32 8}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = distinct !DISubprogram(name: "kobj_map", scope: !8, file: !8, line: 32, type: !54, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1127)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !57, !67, !42, !75, !1113, !1119, !41}
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_map", file: !8, line: 19, size: 16384, elements: !59)
!59 = !{!60, !1125}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "probes", scope: !58, file: !8, line: 28, baseType: !61, size: 16320)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16320, elements: !1123)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "probe", file: !8, line: 20, size: 448, elements: !64)
!64 = !{!65, !66, !73, !74, !1112, !1118, !1122}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !63, file: !8, line: 21, baseType: !62, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !63, file: !8, line: 22, baseType: !67, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !40, line: 21, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !40, line: 18, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !70, line: 21, baseType: !71)
!70 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !72, line: 27, baseType: !12)
!72 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !63, file: !8, line: 23, baseType: !42, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !63, file: !8, line: 24, baseType: !75, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !11, line: 402, size: 9216, align: 512, elements: !77)
!77 = !{!78, !79, !85, !89, !767, !793, !794, !795, !796, !800, !803, !804, !805, !858, !859, !860, !861, !862, !863, !864, !865, !868, !872, !892, !910, !911, !912, !913, !922, !945, !946, !949, !952, !953, !954, !955, !956, !957, !958, !963, !964, !1070, !1078, !1079, !1080, !1082, !1086, !1087, !1091, !1092, !1093, !1094, !1096, !1097, !1098, !1105, !1106, !1107, !1111}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !76, file: !11, line: 403, baseType: !10, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !76, file: !11, line: 406, baseType: !80, size: 128, offset: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !40, line: 190, size: 128, elements: !81)
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !40, line: 191, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !40, line: 191, baseType: !83, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !11, line: 409, baseType: !86, size: 448, offset: 192)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 56)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !76, file: !11, line: 417, baseType: !90, size: 768, offset: 640)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !11, line: 45, size: 768, elements: !91)
!91 = !{!92, !750, !751, !752, !755}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !90, file: !11, line: 46, baseType: !93, size: 512)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !94, line: 64, size: 512, elements: !95)
!94 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!95 = !{!96, !99, !100, !102, !189, !620, !735, !745, !746, !747, !748, !749}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !94, line: 65, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !93, file: !94, line: 66, baseType: !80, size: 128, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !94, line: 67, baseType: !101, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !93, file: !94, line: 68, baseType: !103, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !94, line: 168, size: 768, elements: !105)
!105 = !{!106, !107, !148, !149}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !104, file: !94, line: 169, baseType: !80, size: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !104, file: !94, line: 170, baseType: !108, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !109, line: 29, baseType: !110)
!109 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !109, line: 17, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !109, line: 18, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !109, line: 18, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !113, file: !109, line: 19, baseType: !116, size: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !117, line: 14, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !116, file: !117, line: 15, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !121, line: 44, baseType: !122)
!121 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !121, line: 14, size: 32, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !121, line: 15, baseType: !125, size: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !121, line: 15, size: 32, elements: !126)
!126 = !{!127, !132, !140}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !125, file: !121, line: 16, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !40, line: 174, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 172, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !129, file: !40, line: 173, baseType: !56, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !121, line: 24, baseType: !133, size: 16)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !121, line: 24, size: 16, elements: !134)
!134 = !{!135, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !133, file: !121, line: 25, baseType: !136, size: 8)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !70, line: 17, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !72, line: 21, baseType: !138)
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !133, file: !121, line: 26, baseType: !136, size: 8, offset: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !121, line: 28, baseType: !141, size: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !121, line: 28, size: 32, elements: !142)
!142 = !{!143, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !141, file: !121, line: 29, baseType: !144, size: 16)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !70, line: 19, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !72, line: 24, baseType: !146)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !141, file: !121, line: 30, baseType: !144, size: 16, offset: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !104, file: !94, line: 171, baseType: !93, size: 512, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !104, file: !94, line: 172, baseType: !150, size: 64, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !94, line: 133, size: 192, elements: !153)
!153 = !{!154, !161, !166}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !152, file: !94, line: 134, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!56, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !94, line: 135, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!97, !159}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !152, file: !94, line: 136, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!56, !159, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !94, line: 125, size: 20736, elements: !173)
!173 = !{!174, !179, !183, !184, !188}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !172, file: !94, line: 126, baseType: !175, size: 192)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 192, elements: !177)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!177 = !{!178}
!178 = !DISubrange(count: 3)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !172, file: !94, line: 127, baseType: !180, size: 4096, offset: 192)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 4096, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !172, file: !94, line: 128, baseType: !56, size: 32, offset: 4288)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !172, file: !94, line: 129, baseType: !185, size: 16384, offset: 4320)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 2048)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !172, file: !94, line: 130, baseType: !56, size: 32, offset: 20704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !93, file: !94, line: 69, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !94, line: 116, size: 384, elements: !193)
!193 = !{!194, !198, !226, !567, !598, !602}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !192, file: !94, line: 117, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !101}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !192, file: !94, line: 118, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !202, line: 254, size: 128, elements: !203)
!202 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!203 = !{!204, !219}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !201, file: !202, line: 255, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !101, !213, !176}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !40, line: 66, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !210, line: 73, baseType: !211)
!210 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !210, line: 15, baseType: !212)
!212 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !202, line: 30, size: 128, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !202, line: 31, baseType: !97, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !214, file: !202, line: 32, baseType: !218, size: 16, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !40, line: 24, baseType: !146)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !201, file: !202, line: 256, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!208, !101, !213, !97, !223}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 61, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !210, line: 72, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !210, line: 16, baseType: !42)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !192, file: !94, line: 119, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !202, line: 84, size: 320, elements: !231)
!231 = !{!232, !233, !237, !563, !565}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !202, line: 85, baseType: !97, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !230, file: !202, line: 86, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!218, !101, !213, !56}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !230, file: !202, line: 88, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!218, !101, !241, !56}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !202, line: 175, size: 512, elements: !243)
!243 = !{!244, !245, !246, !247, !254, !264, !265}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !242, file: !202, line: 176, baseType: !214, size: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !242, file: !202, line: 177, baseType: !223, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !242, file: !202, line: 178, baseType: !41, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !242, file: !202, line: 179, baseType: !248, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !253, line: 32, flags: DIFlagFwdDecl)
!253 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!254 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !242, file: !202, line: 180, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!208, !258, !101, !241, !176, !261, !223}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !260, line: 537, flags: DIFlagFwdDecl)
!260 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !40, line: 52, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !210, line: 88, baseType: !263)
!263 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !242, file: !202, line: 182, baseType: !255, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !242, file: !202, line: 184, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!56, !258, !101, !241, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !253, line: 625, size: 1344, elements: !271)
!271 = !{!272, !289, !512, !518, !525, !526, !531, !534, !546, !547, !550, !554, !555, !556, !557, !558, !561}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !253, line: 628, baseType: !273, size: 128)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !253, line: 628, size: 128, elements: !274)
!274 = !{!275, !280}
!275 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !253, line: 629, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !273, file: !253, line: 629, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !276, file: !253, line: 631, baseType: !42, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !276, file: !253, line: 632, baseType: !42, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !273, file: !253, line: 635, baseType: !281, size: 128, align: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !40, line: 232, size: 128, align: 64, elements: !282)
!282 = !{!283, !285}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !40, line: 233, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !281, file: !40, line: 234, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !284}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !270, file: !253, line: 639, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !253, line: 733, size: 10240, elements: !292)
!292 = !{!293, !508}
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !253, line: 734, baseType: !294, size: 10240)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !253, line: 734, size: 10240, elements: !295)
!295 = !{!296, !300, !314, !318, !319, !320, !321, !322, !323, !331, !332, !333, !342, !343, !352, !353, !354, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !401, !415, !418, !473, !474, !475, !478, !482, !483, !486, !487, !488, !495, !496}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !253, line: 739, baseType: !297, size: 512, align: 512)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !253, line: 739, size: 512, align: 512, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !297, file: !253, line: 747, baseType: !128, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !294, file: !253, line: 750, baseType: !301, size: 128, offset: 512)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !302, line: 218, size: 128, elements: !303)
!302 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!303 = !{!304, !312, !313}
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !302, line: 219, baseType: !305, size: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !302, line: 219, size: 32, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !305, file: !302, line: 220, baseType: !108, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !305, file: !302, line: 221, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !302, line: 197, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 197, elements: !311)
!311 = !{}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !301, file: !302, line: 223, baseType: !12, size: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !301, file: !302, line: 224, baseType: !41, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !294, file: !253, line: 752, baseType: !315, size: 64, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!42, !258, !42, !42, !42, !42}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !294, file: !253, line: 756, baseType: !42, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !294, file: !253, line: 757, baseType: !42, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !294, file: !253, line: 760, baseType: !42, size: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !294, file: !253, line: 761, baseType: !42, size: 64, offset: 896)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !294, file: !253, line: 763, baseType: !42, size: 64, offset: 960)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !294, file: !253, line: 764, baseType: !324, size: 64, offset: 1024)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !260, line: 299, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 299, size: 64, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !326, file: !260, line: 299, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !330, line: 18, baseType: !42)
!330 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!331 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !294, file: !253, line: 773, baseType: !128, size: 32, offset: 1088)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !294, file: !253, line: 785, baseType: !128, size: 32, offset: 1120)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !294, file: !253, line: 795, baseType: !334, size: 64, offset: 1152)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !253, line: 726, size: 128, elements: !336)
!336 = !{!337, !341}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !335, file: !253, line: 727, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !70, line: 23, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !72, line: 31, baseType: !340)
!340 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !335, file: !253, line: 728, baseType: !56, size: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !294, file: !253, line: 801, baseType: !42, size: 64, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !294, file: !253, line: 804, baseType: !344, size: 64, offset: 1280)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !345, line: 13, baseType: !346)
!345 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !40, line: 181, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 179, size: 64, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !347, file: !40, line: 180, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !70, line: 22, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !72, line: 30, baseType: !263)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !294, file: !253, line: 806, baseType: !56, size: 32, offset: 1344)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !294, file: !253, line: 808, baseType: !108, size: 32, offset: 1376)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !294, file: !253, line: 823, baseType: !355, size: 320, offset: 1408)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !356, line: 48, size: 320, elements: !357)
!356 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!357 = !{!358, !359, !360, !365, !367}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !355, file: !356, line: 49, baseType: !344, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !355, file: !356, line: 55, baseType: !344, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !355, file: !356, line: 57, baseType: !361, size: 32, offset: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !362, line: 15, size: 32, elements: !363)
!362 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !361, file: !362, line: 20, baseType: !128, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !355, file: !356, line: 59, baseType: !366, size: 32, offset: 160)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !117, line: 23, baseType: !116)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !355, file: !356, line: 60, baseType: !80, size: 128, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !294, file: !253, line: 825, baseType: !80, size: 128, offset: 1728)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !294, file: !253, line: 845, baseType: !56, size: 32, offset: 1856)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !294, file: !253, line: 849, baseType: !42, size: 64, offset: 1920)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !294, file: !253, line: 850, baseType: !42, size: 64, offset: 1984)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !294, file: !253, line: 852, baseType: !42, size: 64, offset: 2048)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !294, file: !253, line: 853, baseType: !42, size: 64, offset: 2112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !294, file: !253, line: 854, baseType: !346, size: 64, offset: 2176)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !294, file: !253, line: 855, baseType: !42, size: 64, offset: 2240)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !294, file: !253, line: 856, baseType: !42, size: 64, offset: 2304)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !294, file: !253, line: 857, baseType: !42, size: 64, offset: 2368)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !294, file: !253, line: 858, baseType: !42, size: 64, offset: 2432)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !294, file: !253, line: 865, baseType: !380, size: 32, offset: 2496)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !381, line: 69, baseType: !382)
!381 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !381, line: 64, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !382, file: !381, line: 65, baseType: !12, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !294, file: !253, line: 867, baseType: !108, size: 32, offset: 2528)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !294, file: !253, line: 869, baseType: !42, size: 64, offset: 2560)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !294, file: !253, line: 869, baseType: !42, size: 64, offset: 2624)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !294, file: !253, line: 869, baseType: !42, size: 64, offset: 2688)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !294, file: !253, line: 869, baseType: !42, size: 64, offset: 2752)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !294, file: !253, line: 870, baseType: !42, size: 64, offset: 2816)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !294, file: !253, line: 870, baseType: !42, size: 64, offset: 2880)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !294, file: !253, line: 870, baseType: !42, size: 64, offset: 2944)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !294, file: !253, line: 871, baseType: !42, size: 64, offset: 3008)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !294, file: !253, line: 871, baseType: !42, size: 64, offset: 3072)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !294, file: !253, line: 871, baseType: !42, size: 64, offset: 3136)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !294, file: !253, line: 871, baseType: !42, size: 64, offset: 3200)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !294, file: !253, line: 873, baseType: !398, size: 3328, offset: 3264)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3328, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 52)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !294, file: !253, line: 875, baseType: !402, size: 1280, offset: 6592)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 1280, elements: !413)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !404, line: 22, size: 320, elements: !405)
!404 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!405 = !{!406, !407, !408, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !403, file: !404, line: 23, baseType: !366, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !403, file: !404, line: 24, baseType: !350, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !403, file: !404, line: 26, baseType: !80, size: 128, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !403, file: !404, line: 28, baseType: !410, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !70, line: 20, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !72, line: 26, baseType: !56)
!413 = !{!414}
!414 = !DISubrange(count: 4)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !294, file: !253, line: 877, baseType: !416, size: 64, offset: 7872)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !253, line: 877, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !294, file: !253, line: 880, baseType: !419, size: 1088, offset: 7936)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !420, line: 72, baseType: !421)
!420 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 23, size: 1088, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !430, !431, !439, !440, !467, !468, !469}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !421, file: !420, line: 28, baseType: !338, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !421, file: !420, line: 38, baseType: !346, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !421, file: !420, line: 40, baseType: !42, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !421, file: !420, line: 43, baseType: !355, size: 320, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !421, file: !420, line: 44, baseType: !428, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !420, line: 44, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !420, line: 48, baseType: !42, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !421, file: !420, line: 59, baseType: !432, size: 256, offset: 640)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !433, line: 66, size: 256, elements: !434)
!433 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!434 = !{!435, !436, !437, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !432, file: !433, line: 67, baseType: !344, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !432, file: !433, line: 68, baseType: !366, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !432, file: !433, line: 70, baseType: !361, size: 32, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !432, file: !433, line: 72, baseType: !80, size: 128, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !421, file: !420, line: 60, baseType: !41, size: 64, offset: 896)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !421, file: !420, line: 61, baseType: !441, size: 64, offset: 960)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !444, line: 13, size: 1216, elements: !445)
!444 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!445 = !{!446, !447, !448, !449, !450, !451, !452, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !443, file: !444, line: 14, baseType: !41, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !443, file: !444, line: 15, baseType: !42, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !443, file: !444, line: 17, baseType: !42, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !443, file: !444, line: 17, baseType: !42, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !443, file: !444, line: 18, baseType: !42, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !443, file: !444, line: 18, baseType: !42, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !443, file: !444, line: 19, baseType: !453, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !443, file: !444, line: 21, baseType: !212, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !443, file: !444, line: 23, baseType: !212, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !443, file: !444, line: 24, baseType: !212, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !443, file: !444, line: 25, baseType: !212, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !443, file: !444, line: 26, baseType: !212, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !443, file: !444, line: 27, baseType: !212, size: 64, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !443, file: !444, line: 28, baseType: !212, size: 64, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !443, file: !444, line: 29, baseType: !212, size: 64, offset: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !443, file: !444, line: 30, baseType: !212, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !443, file: !444, line: 31, baseType: !212, size: 64, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !443, file: !444, line: 32, baseType: !212, size: 64, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !443, file: !444, line: 33, baseType: !212, size: 64, offset: 1152)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !421, file: !420, line: 63, baseType: !128, size: 32, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !421, file: !420, line: 69, baseType: !144, size: 16, offset: 1056)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !421, file: !420, line: 70, baseType: !470, size: 16, offset: 1072)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !70, line: 18, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !72, line: 23, baseType: !472)
!472 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !253, line: 882, baseType: !42, size: 64, offset: 9024)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !294, file: !253, line: 885, baseType: !108, size: 32, offset: 9088)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !294, file: !253, line: 886, baseType: !476, size: 64, offset: 9152)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !253, line: 732, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !294, file: !253, line: 901, baseType: !479, size: 64, offset: 9216)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !481, line: 18, flags: DIFlagFwdDecl)
!481 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!482 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !294, file: !253, line: 904, baseType: !258, size: 64, offset: 9280)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !294, file: !253, line: 906, baseType: !484, size: 64, offset: 9344)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !253, line: 906, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !294, file: !253, line: 930, baseType: !128, size: 32, offset: 9408)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !294, file: !253, line: 933, baseType: !128, size: 32, offset: 9440)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !294, file: !253, line: 935, baseType: !489, size: 64, offset: 9472)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !490, line: 103, size: 64, elements: !491)
!490 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !489, file: !490, line: 104, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !490, line: 101, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !294, file: !253, line: 940, baseType: !344, size: 64, offset: 9536)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !294, file: !253, line: 942, baseType: !497, size: 256, offset: 9600)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !498, line: 98, size: 256, elements: !499)
!498 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!499 = !{!500, !501, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !497, file: !498, line: 99, baseType: !344, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !497, file: !498, line: 100, baseType: !80, size: 128, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !497, file: !498, line: 101, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !498, line: 21, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !291, file: !253, line: 986, baseType: !509, offset: 10240)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: -1)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !270, file: !253, line: 640, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !260, line: 297, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !260, line: 297, size: 64, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !514, file: !260, line: 297, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !330, line: 19, baseType: !42)
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !253, line: 646, baseType: !519, size: 64, offset: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !253, line: 646, size: 64, elements: !520)
!520 = !{!521, !524}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !519, file: !253, line: 647, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !253, line: 542, baseType: !42)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !519, file: !253, line: 648, baseType: !523, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !270, file: !253, line: 666, baseType: !56, size: 32, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !270, file: !253, line: 667, baseType: !527, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !253, line: 579, size: 320, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !528, file: !253, line: 580, baseType: !355, size: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !270, file: !253, line: 670, baseType: !532, size: 8, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !40, line: 35, baseType: !533)
!533 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !270, file: !253, line: 681, baseType: !535, size: 256, offset: 512)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !253, line: 678, size: 256, elements: !536)
!536 = !{!537, !545}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !535, file: !253, line: 679, baseType: !538, size: 192, align: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !539, line: 5, size: 192, align: 64, elements: !540)
!539 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!540 = !{!541, !542, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !538, file: !539, line: 6, baseType: !42, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !538, file: !539, line: 7, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !538, file: !539, line: 8, baseType: !543, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !535, file: !253, line: 680, baseType: !42, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !270, file: !253, line: 689, baseType: !80, size: 128, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !270, file: !253, line: 691, baseType: !548, size: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !253, line: 691, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !270, file: !253, line: 694, baseType: !551, size: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !253, line: 694, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !270, file: !253, line: 697, baseType: !42, size: 64, offset: 1024)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !270, file: !253, line: 699, baseType: !258, size: 64, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !270, file: !253, line: 700, baseType: !41, size: 64, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !270, file: !253, line: 711, baseType: !344, size: 64, offset: 1216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !270, file: !253, line: 717, baseType: !559, size: 64, offset: 1280)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !253, line: 717, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !270, file: !253, line: 722, baseType: !562, offset: 1344)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !253, line: 570, elements: !311)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !230, file: !202, line: 90, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !230, file: !202, line: 91, baseType: !566, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !192, file: !94, line: 120, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!571, !159}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !19, line: 39, size: 384, elements: !574)
!574 = !{!575, !576, !580, !584, !590, !594}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !19, line: 40, baseType: !18, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !573, file: !19, line: 41, baseType: !577, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!532}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !573, file: !19, line: 42, baseType: !581, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!41}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !573, file: !19, line: 43, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!453, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !19, line: 19, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !573, file: !19, line: 44, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!453}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !573, file: !19, line: 45, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !41}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !192, file: !94, line: 121, baseType: !599, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!453, !159}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !192, file: !94, line: 122, baseType: !603, size: 64, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !159, !606, !613}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !481, line: 23, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 21, size: 32, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !608, file: !481, line: 22, baseType: !611, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !40, line: 37, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !210, line: 49, baseType: !12)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !481, line: 28, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 26, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !615, file: !481, line: 27, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !40, line: 38, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !210, line: 50, baseType: !12)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !93, file: !94, line: 70, baseType: !621, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !623, line: 190, size: 1152, elements: !624)
!623 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !727, !728, !729, !730, !731, !734}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !622, file: !623, line: 191, baseType: !128, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !622, file: !623, line: 192, baseType: !128, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !622, file: !623, line: 202, baseType: !621, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !622, file: !623, line: 203, baseType: !97, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !622, file: !623, line: 205, baseType: !538, size: 192, align: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !622, file: !623, line: 207, baseType: !453, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !622, file: !623, line: 208, baseType: !12, size: 32, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !623, line: 209, baseType: !633, size: 256, offset: 512)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !623, line: 209, size: 256, elements: !634)
!634 = !{!635, !647, !651}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !633, file: !623, line: 210, baseType: !636, size: 256)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !623, line: 153, size: 256, elements: !637)
!637 = !{!638, !639, !643, !646}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !636, file: !623, line: 154, baseType: !42, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !636, file: !623, line: 156, baseType: !640, size: 64, offset: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !539, line: 12, size: 64, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !640, file: !539, line: 13, baseType: !543, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !636, file: !623, line: 162, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !623, line: 162, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !636, file: !623, line: 167, baseType: !42, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !633, file: !623, line: 211, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !623, line: 170, size: 64, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !648, file: !623, line: 171, baseType: !621, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !633, file: !623, line: 212, baseType: !652, size: 256)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !623, line: 174, size: 256, elements: !653)
!653 = !{!654, !722, !725, !726}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !652, file: !623, line: 175, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !623, line: 271, size: 768, elements: !658)
!658 = !{!659, !682, !686, !690, !695, !699, !703, !707, !708, !709, !710, !718}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !657, file: !623, line: 276, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!56, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !623, line: 251, size: 1216, elements: !665)
!665 = !{!666, !667, !668, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !664, file: !623, line: 253, baseType: !621, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !664, file: !623, line: 254, baseType: !258, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !664, file: !623, line: 255, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !671, line: 66, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !664, file: !623, line: 256, baseType: !41, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !664, file: !623, line: 259, baseType: !432, size: 256, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !664, file: !623, line: 260, baseType: !432, size: 256, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !664, file: !623, line: 261, baseType: !56, size: 32, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !664, file: !623, line: 262, baseType: !80, size: 128, offset: 832)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !664, file: !623, line: 263, baseType: !176, size: 64, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !664, file: !623, line: 265, baseType: !223, size: 64, offset: 1024)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !664, file: !623, line: 266, baseType: !532, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !664, file: !623, line: 267, baseType: !532, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !664, file: !623, line: 268, baseType: !551, size: 64, offset: 1152)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !657, file: !623, line: 277, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !663}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !657, file: !623, line: 290, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!56, !669, !41}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !657, file: !623, line: 292, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!41, !669, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !657, file: !623, line: 293, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!41, !669, !41, !694}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !657, file: !623, line: 294, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !669, !41}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !657, file: !623, line: 296, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!208, !663, !176, !223, !261}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !657, file: !623, line: 306, baseType: !223, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !657, file: !623, line: 313, baseType: !532, size: 8, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !657, file: !623, line: 314, baseType: !704, size: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !657, file: !623, line: 317, baseType: !711, size: 64, offset: 640)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!714, !663, !716}
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !715, line: 59, baseType: !12)
!715 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !623, line: 31, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !657, file: !623, line: 320, baseType: !719, size: 64, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!56, !663, !269}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !652, file: !623, line: 176, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !623, line: 35, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !652, file: !623, line: 177, baseType: !261, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !652, file: !623, line: 178, baseType: !621, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !622, file: !623, line: 215, baseType: !41, size: 64, offset: 768)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !622, file: !623, line: 221, baseType: !338, size: 64, offset: 832)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !623, line: 223, baseType: !146, size: 16, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !622, file: !623, line: 224, baseType: !218, size: 16, offset: 912)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !622, file: !623, line: 225, baseType: !732, size: 64, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !623, line: 36, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !622, file: !623, line: 227, baseType: !281, size: 128, align: 64, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !93, file: !94, line: 71, baseType: !736, size: 32, offset: 448)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !737, line: 19, size: 32, elements: !738)
!737 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !736, file: !737, line: 20, baseType: !740, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !741, line: 113, baseType: !742)
!741 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !741, line: 111, size: 32, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !742, file: !741, line: 112, baseType: !128, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !93, file: !94, line: 73, baseType: !12, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !93, file: !94, line: 74, baseType: !12, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !93, file: !94, line: 75, baseType: !12, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !93, file: !94, line: 76, baseType: !12, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !93, file: !94, line: 77, baseType: !12, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !90, file: !11, line: 47, baseType: !75, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !90, file: !11, line: 48, baseType: !101, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !90, file: !11, line: 49, baseType: !753, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !11, line: 49, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !90, file: !11, line: 50, baseType: !756, size: 64, offset: 704)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !758, line: 26, size: 256, elements: !759)
!758 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !757, file: !758, line: 27, baseType: !12, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !757, file: !758, line: 28, baseType: !762, size: 192, offset: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !763, line: 43, size: 192, elements: !764)
!763 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !762, file: !763, line: 44, baseType: !366, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !762, file: !763, line: 45, baseType: !80, size: 128, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !76, file: !11, line: 418, baseType: !768, size: 64, offset: 1408)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !11, line: 53, size: 448, elements: !770)
!770 = !{!771, !772, !777, !781, !785, !789}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !769, file: !11, line: 54, baseType: !214, size: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !769, file: !11, line: 55, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!208, !768, !776, !176}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !769, file: !11, line: 57, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!208, !768, !776, !97, !223}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !769, file: !11, line: 59, baseType: !782, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !75, !97}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !769, file: !11, line: 60, baseType: !786, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!56, !75}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !769, file: !11, line: 61, baseType: !790, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !75}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !76, file: !11, line: 419, baseType: !97, size: 64, offset: 1472)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !76, file: !11, line: 420, baseType: !97, size: 64, offset: 1536)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !76, file: !11, line: 421, baseType: !101, size: 64, offset: 1600)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !76, file: !11, line: 424, baseType: !797, size: 64, offset: 1664)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !11, line: 424, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !76, file: !11, line: 425, baseType: !801, size: 64, offset: 1728)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !76, file: !11, line: 426, baseType: !12, size: 32, offset: 1792)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !76, file: !11, line: 435, baseType: !432, size: 256, offset: 1856)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !76, file: !11, line: 437, baseType: !806, size: 64, offset: 2112)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !808, line: 69, size: 320, elements: !809)
!808 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!809 = !{!810, !811, !812, !829, !831, !835, !836}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !807, file: !808, line: 70, baseType: !97, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !807, file: !808, line: 71, baseType: !75, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !807, file: !808, line: 72, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !808, line: 47, size: 256, elements: !816)
!816 = !{!817, !818, !824, !828}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !808, line: 49, baseType: !12, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !815, file: !808, line: 51, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!56, !97, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !815, file: !808, line: 53, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!56, !176, !822}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !815, file: !808, line: 55, baseType: !595, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !807, file: !808, line: 73, baseType: !830, size: 16, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !807, file: !808, line: 74, baseType: !832, size: 8, offset: 208)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !70, line: 16, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !72, line: 20, baseType: !834)
!834 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !808, line: 75, baseType: !136, size: 8, offset: 216)
!836 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !808, line: 76, baseType: !837, size: 64, offset: 256)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !808, line: 76, size: 64, elements: !838)
!838 = !{!839, !840, !847}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !837, file: !808, line: 77, baseType: !41, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !837, file: !808, line: 78, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !808, line: 86, size: 128, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !843, file: !808, line: 87, baseType: !12, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !843, file: !808, line: 88, baseType: !176, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !837, file: !808, line: 79, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !808, line: 92, size: 256, elements: !851)
!851 = !{!852, !853, !854, !856, !857}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !850, file: !808, line: 94, baseType: !12, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !850, file: !808, line: 95, baseType: !12, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !850, file: !808, line: 96, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !850, file: !808, line: 97, baseType: !813, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !850, file: !808, line: 98, baseType: !41, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !76, file: !11, line: 438, baseType: !12, size: 32, offset: 2176)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !76, file: !11, line: 441, baseType: !12, size: 32, offset: 2208)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !76, file: !11, line: 442, baseType: !797, size: 64, offset: 2240)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !76, file: !11, line: 443, baseType: !801, size: 64, offset: 2304)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !76, file: !11, line: 444, baseType: !532, size: 8, offset: 2368)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !76, file: !11, line: 451, baseType: !532, size: 8, offset: 2376)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !76, file: !11, line: 454, baseType: !12, size: 32, offset: 2400)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !76, file: !11, line: 455, baseType: !866, size: 64, offset: 2432)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !11, line: 43, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !76, file: !11, line: 458, baseType: !869, size: 64, offset: 2496)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!56}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !76, file: !11, line: 460, baseType: !873, size: 4032, align: 512, offset: 2560)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 4032, elements: !890)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !11, line: 362, size: 576, elements: !875)
!875 = !{!876, !877, !878}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !874, file: !11, line: 363, baseType: !41, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !874, file: !11, line: 364, baseType: !12, size: 32, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !874, file: !11, line: 367, baseType: !879, size: 448, offset: 128)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !11, line: 319, size: 448, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !879, file: !11, line: 320, baseType: !75, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !879, file: !11, line: 321, baseType: !883, size: 384, offset: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !884, line: 40, size: 384, elements: !885)
!884 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !883, file: !884, line: 41, baseType: !887, size: 384, align: 64)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 384, align: 64, elements: !888)
!888 = !{!889}
!889 = !DISubrange(count: 2)
!890 = !{!891}
!891 = !DISubrange(count: 7)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !76, file: !11, line: 463, baseType: !893, size: 192, offset: 6592)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !894, line: 8, size: 192, elements: !895)
!894 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!895 = !{!896, !897, !899}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !893, file: !894, line: 10, baseType: !12, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !893, file: !894, line: 11, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !893, file: !894, line: 12, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !902, line: 59, size: 48, elements: !903)
!902 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!903 = !{!904, !905, !906, !907, !908, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !901, file: !902, line: 60, baseType: !470, size: 16)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !901, file: !902, line: 61, baseType: !470, size: 16, offset: 16)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !901, file: !902, line: 63, baseType: !12, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !901, file: !902, line: 64, baseType: !12, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !901, file: !902, line: 65, baseType: !12, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !901, file: !902, line: 66, baseType: !12, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !76, file: !11, line: 465, baseType: !42, size: 64, offset: 6784)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !76, file: !11, line: 469, baseType: !12, size: 32, offset: 6848)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !76, file: !11, line: 470, baseType: !80, size: 128, offset: 6912)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !76, file: !11, line: 471, baseType: !914, size: 64, offset: 7040)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !916, line: 33, size: 96, elements: !917)
!916 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!917 = !{!918, !919, !920, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !915, file: !916, line: 37, baseType: !56, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !915, file: !916, line: 43, baseType: !56, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !915, file: !916, line: 45, baseType: !146, size: 16, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !915, file: !916, line: 47, baseType: !146, size: 16, offset: 80)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !76, file: !11, line: 476, baseType: !923, size: 64, offset: 7104)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !11, line: 378, size: 256, elements: !925)
!925 = !{!926, !942, !943, !944}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !924, file: !11, line: 379, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !929, line: 204, baseType: !930)
!929 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !929, line: 197, size: 192, elements: !931)
!931 = !{!932, !934, !935, !936, !938, !940}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !930, file: !929, line: 198, baseType: !933, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !929, line: 21, baseType: !71)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !930, file: !929, line: 199, baseType: !138, size: 8, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !930, file: !929, line: 200, baseType: !138, size: 8, offset: 40)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !930, file: !929, line: 201, baseType: !937, size: 16, offset: 48)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !929, line: 17, baseType: !145)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !930, file: !929, line: 202, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !929, line: 16, baseType: !339)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !930, file: !929, line: 203, baseType: !941, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !929, line: 22, baseType: !339)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !924, file: !11, line: 380, baseType: !12, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !924, file: !11, line: 381, baseType: !176, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !924, file: !11, line: 382, baseType: !176, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !76, file: !11, line: 477, baseType: !924, size: 256, offset: 7168)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !76, file: !11, line: 480, baseType: !947, size: 64, offset: 7424)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !11, line: 480, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !76, file: !11, line: 483, baseType: !950, size: 64, offset: 7488)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !11, line: 483, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !76, file: !11, line: 488, baseType: !176, size: 64, offset: 7552)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !76, file: !11, line: 492, baseType: !41, size: 64, offset: 7616)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !76, file: !11, line: 493, baseType: !12, size: 32, offset: 7680)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !76, file: !11, line: 495, baseType: !41, size: 64, offset: 7744)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !76, file: !11, line: 496, baseType: !12, size: 32, offset: 7808)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !76, file: !11, line: 499, baseType: !12, size: 32, offset: 7840)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !76, file: !11, line: 500, baseType: !959, size: 64, offset: 7872)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !961, line: 45, baseType: !962)
!961 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !76, file: !11, line: 503, baseType: !12, size: 32, offset: 7936)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !76, file: !11, line: 504, baseType: !965, size: 64, offset: 8000)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !968, line: 96, size: 192, elements: !969)
!968 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!969 = !{!970, !971, !1031, !1034}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !967, file: !968, line: 97, baseType: !12, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !967, file: !968, line: 98, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !968, line: 24, size: 3072, elements: !974)
!974 = !{!975, !977, !978, !979, !980, !994, !995, !996, !997, !1015, !1016, !1017, !1028, !1029, !1030}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !973, file: !968, line: 26, baseType: !976, size: 128)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 128, elements: !888)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !973, file: !968, line: 27, baseType: !976, size: 128, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !973, file: !968, line: 28, baseType: !56, size: 32, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !973, file: !968, line: 31, baseType: !108, size: 32, align: 512, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !973, file: !968, line: 32, baseType: !981, size: 960, offset: 576)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !982, line: 206, size: 960, elements: !983)
!982 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!983 = !{!984, !985, !988, !990, !991, !993}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !981, file: !982, line: 207, baseType: !284, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !981, file: !982, line: 208, baseType: !986, size: 256, offset: 64)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 256, elements: !413)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !981, file: !982, line: 209, baseType: !989, size: 256, offset: 320)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !413)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !981, file: !982, line: 213, baseType: !212, size: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !981, file: !982, line: 215, baseType: !992, size: 256, offset: 640)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !413)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !982, line: 216, baseType: !136, size: 8, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !973, file: !968, line: 33, baseType: !42, size: 64, offset: 1536)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !973, file: !968, line: 34, baseType: !42, size: 64, offset: 1600)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !973, file: !968, line: 35, baseType: !532, size: 8, offset: 1664)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !973, file: !968, line: 36, baseType: !998, size: 320, offset: 1728)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !999, line: 11, size: 320, elements: !1000)
!999 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1000 = !{!1001, !1008, !1009, !1014}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !998, file: !999, line: 16, baseType: !1002, size: 128)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !40, line: 198, size: 128, elements: !1003)
!1003 = !{!1004, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1002, file: !40, line: 199, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1002, file: !40, line: 199, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !998, file: !999, line: 17, baseType: !42, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !998, file: !999, line: 18, baseType: !1010, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !998, file: !999, line: 19, baseType: !69, size: 32, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !973, file: !968, line: 37, baseType: !497, size: 256, offset: 2048)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !973, file: !968, line: 38, baseType: !281, size: 128, align: 64, offset: 2304)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !973, file: !968, line: 39, baseType: !1018, size: 64, offset: 2432)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !968, line: 49, size: 768, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1019, file: !968, line: 50, baseType: !108, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1019, file: !968, line: 51, baseType: !989, size: 256, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1019, file: !968, line: 53, baseType: !989, size: 256, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1019, file: !968, line: 54, baseType: !42, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1019, file: !968, line: 55, baseType: !1018, size: 64, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1019, file: !968, line: 56, baseType: !56, size: 32, offset: 704)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1019, file: !968, line: 57, baseType: !56, size: 32, offset: 736)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !973, file: !968, line: 40, baseType: !42, size: 64, offset: 2496)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !973, file: !968, line: 42, baseType: !56, size: 32, offset: 2560)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !973, file: !968, line: 43, baseType: !966, size: 64, offset: 2624)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !967, file: !968, line: 99, baseType: !1032, offset: 128)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1033, line: 211, elements: !311)
!1033 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !967, file: !968, line: 100, baseType: !1035, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !968, line: 63, size: 3008, elements: !1037)
!1037 = !{!1038, !1039, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1069}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1036, file: !968, line: 64, baseType: !1018, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1036, file: !968, line: 65, baseType: !1040, size: 192, offset: 64)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, size: 192, elements: !177)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1036, file: !968, line: 67, baseType: !56, size: 32, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1036, file: !968, line: 68, baseType: !432, size: 256, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1036, file: !968, line: 69, baseType: !108, size: 32, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1036, file: !968, line: 70, baseType: !432, size: 256, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1036, file: !968, line: 71, baseType: !42, size: 64, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1036, file: !968, line: 72, baseType: !42, size: 64, offset: 960)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1036, file: !968, line: 73, baseType: !42, size: 64, offset: 1024)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1036, file: !968, line: 74, baseType: !42, size: 64, offset: 1088)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1036, file: !968, line: 75, baseType: !42, size: 64, offset: 1152)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1036, file: !968, line: 76, baseType: !42, size: 64, offset: 1216)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1036, file: !968, line: 77, baseType: !42, size: 64, offset: 1280)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1036, file: !968, line: 78, baseType: !42, size: 64, offset: 1344)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1036, file: !968, line: 79, baseType: !532, size: 8, offset: 1408)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1036, file: !968, line: 80, baseType: !42, size: 64, offset: 1472)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1036, file: !968, line: 81, baseType: !432, size: 256, offset: 1536)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1036, file: !968, line: 82, baseType: !757, size: 256, offset: 1792)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1036, file: !968, line: 84, baseType: !128, size: 32, offset: 2048)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1036, file: !968, line: 87, baseType: !42, size: 64, offset: 2112)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1036, file: !968, line: 88, baseType: !42, size: 64, offset: 2176)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1036, file: !968, line: 89, baseType: !1061, size: 704, offset: 2240)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !498, line: 111, size: 704, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1068}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1061, file: !498, line: 112, baseType: !497, size: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1061, file: !498, line: 113, baseType: !998, size: 320, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1061, file: !498, line: 116, baseType: !1066, size: 64, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !498, line: 18, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1061, file: !498, line: 117, baseType: !56, size: 32, offset: 640)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1036, file: !968, line: 90, baseType: !966, size: 64, offset: 2944)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !76, file: !11, line: 515, baseType: !1071, size: 64, offset: 8064)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1073, line: 117, size: 128, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1072, file: !1073, line: 118, baseType: !411, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1072, file: !1073, line: 119, baseType: !411, size: 32, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1072, file: !1073, line: 120, baseType: !212, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !76, file: !11, line: 516, baseType: !12, size: 32, offset: 8128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !76, file: !11, line: 519, baseType: !12, size: 32, offset: 8160)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !76, file: !11, line: 520, baseType: !1081, size: 64, offset: 8192)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !76, file: !11, line: 523, baseType: !1083, size: 64, offset: 8256)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !11, line: 523, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !76, file: !11, line: 524, baseType: !12, size: 32, offset: 8320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !76, file: !11, line: 525, baseType: !1088, size: 64, offset: 8384)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !11, line: 525, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !76, file: !11, line: 526, baseType: !12, size: 32, offset: 8448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !76, file: !11, line: 533, baseType: !41, size: 64, offset: 8512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !76, file: !11, line: 534, baseType: !12, size: 32, offset: 8576)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !76, file: !11, line: 535, baseType: !1095, size: 64, offset: 8640)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !76, file: !11, line: 536, baseType: !12, size: 32, offset: 8704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !76, file: !11, line: 539, baseType: !56, size: 32, offset: 8736)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !76, file: !11, line: 540, baseType: !1099, size: 64, offset: 8768)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1101, line: 32, size: 64, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1100, file: !1101, line: 33, baseType: !411, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1100, file: !1101, line: 34, baseType: !411, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !76, file: !11, line: 563, baseType: !80, size: 128, offset: 8832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !76, file: !11, line: 565, baseType: !80, size: 128, offset: 8960)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !76, file: !11, line: 568, baseType: !1108, size: 64, offset: 9088)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !76, file: !11, line: 570, baseType: !128, size: 32, offset: 9152)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !63, file: !8, line: 25, baseType: !1113, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "kobj_probe_t", file: !1115, line: 11, baseType: !1116)
!1115 = !DIFile(filename: "./include/linux/kobj_map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f81881f01cd1ea0e592087515e48327")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!101, !67, !898, !41}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !63, file: !8, line: 26, baseType: !1119, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!56, !67, !41}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !63, file: !8, line: 27, baseType: !41, size: 64, offset: 384)
!1123 = !{!1124}
!1124 = !DISubrange(count: 255)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !58, file: !8, line: 29, baseType: !1126, size: 64, offset: 16320)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1128 = !DILocalVariable(name: "domain", arg: 1, scope: !53, file: !8, line: 32, type: !57)
!1129 = !DILocalVariable(name: "dev", arg: 2, scope: !53, file: !8, line: 32, type: !67)
!1130 = !DILocalVariable(name: "range", arg: 3, scope: !53, file: !8, line: 32, type: !42)
!1131 = !DILocalVariable(name: "module", arg: 4, scope: !53, file: !8, line: 33, type: !75)
!1132 = !DILocalVariable(name: "probe", arg: 5, scope: !53, file: !8, line: 33, type: !1113)
!1133 = !DILocalVariable(name: "lock", arg: 6, scope: !53, file: !8, line: 34, type: !1119)
!1134 = !DILocalVariable(name: "data", arg: 7, scope: !53, file: !8, line: 34, type: !41)
!1135 = !DILocalVariable(name: "n", scope: !53, file: !8, line: 36, type: !12)
!1136 = !DILocalVariable(name: "index", scope: !53, file: !8, line: 37, type: !12)
!1137 = !DILocalVariable(name: "i", scope: !53, file: !8, line: 38, type: !12)
!1138 = !DILocalVariable(name: "p", scope: !53, file: !8, line: 39, type: !62)
!1139 = !DILocalVariable(name: "s", scope: !1140, file: !8, line: 58, type: !1143)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !8, line: 57, column: 48)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !8, line: 57, column: 2)
!1142 = distinct !DILexicalBlock(scope: !53, file: !8, line: 57, column: 2)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1144 = !DILocation(line: 32, column: 31, scope: !53)
!1145 = !DILocation(line: 32, column: 45, scope: !53)
!1146 = !DILocation(line: 32, column: 64, scope: !53)
!1147 = !DILocation(line: 33, column: 22, scope: !53)
!1148 = !DILocation(line: 33, column: 44, scope: !53)
!1149 = !DILocation(line: 34, column: 13, scope: !53)
!1150 = !DILocation(line: 34, column: 41, scope: !53)
!1151 = !DILocation(line: 36, column: 2, scope: !53)
!1152 = !DILocation(line: 36, column: 15, scope: !53)
!1153 = !DILocation(line: 36, column: 19, scope: !53)
!1154 = !DILocation(line: 36, column: 44, scope: !53)
!1155 = !DILocation(line: 36, column: 42, scope: !53)
!1156 = !DILocation(line: 36, column: 55, scope: !53)
!1157 = !DILocation(line: 37, column: 2, scope: !53)
!1158 = !DILocation(line: 37, column: 15, scope: !53)
!1159 = !DILocation(line: 37, column: 23, scope: !53)
!1160 = !DILocation(line: 38, column: 2, scope: !53)
!1161 = !DILocation(line: 38, column: 15, scope: !53)
!1162 = !DILocation(line: 39, column: 2, scope: !53)
!1163 = !DILocation(line: 39, column: 16, scope: !53)
!1164 = !DILocation(line: 41, column: 6, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !53, file: !8, line: 41, column: 6)
!1166 = !DILocation(line: 41, column: 8, scope: !1165)
!1167 = !DILocation(line: 41, column: 6, scope: !53)
!1168 = !DILocation(line: 42, column: 5, scope: !1165)
!1169 = !DILocation(line: 42, column: 3, scope: !1165)
!1170 = !DILocation(line: 44, column: 20, scope: !53)
!1171 = !DILocation(line: 44, column: 6, scope: !53)
!1172 = !DILocation(line: 44, column: 4, scope: !53)
!1173 = !DILocation(line: 45, column: 6, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !53, file: !8, line: 45, column: 6)
!1175 = !DILocation(line: 45, column: 8, scope: !1174)
!1176 = !DILocation(line: 45, column: 6, scope: !53)
!1177 = !DILocation(line: 46, column: 3, scope: !1174)
!1178 = !DILocation(line: 48, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !53, file: !8, line: 48, column: 2)
!1180 = !DILocation(line: 48, column: 7, scope: !1179)
!1181 = !DILocation(line: 48, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !8, line: 48, column: 2)
!1183 = !DILocation(line: 48, column: 18, scope: !1182)
!1184 = !DILocation(line: 48, column: 16, scope: !1182)
!1185 = !DILocation(line: 48, column: 2, scope: !1179)
!1186 = !DILocation(line: 49, column: 14, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !8, line: 48, column: 31)
!1188 = !DILocation(line: 49, column: 3, scope: !1187)
!1189 = !DILocation(line: 49, column: 6, scope: !1187)
!1190 = !DILocation(line: 49, column: 12, scope: !1187)
!1191 = !DILocation(line: 50, column: 12, scope: !1187)
!1192 = !DILocation(line: 50, column: 3, scope: !1187)
!1193 = !DILocation(line: 50, column: 6, scope: !1187)
!1194 = !DILocation(line: 50, column: 10, scope: !1187)
!1195 = !DILocation(line: 51, column: 13, scope: !1187)
!1196 = !DILocation(line: 51, column: 3, scope: !1187)
!1197 = !DILocation(line: 51, column: 6, scope: !1187)
!1198 = !DILocation(line: 51, column: 11, scope: !1187)
!1199 = !DILocation(line: 52, column: 12, scope: !1187)
!1200 = !DILocation(line: 52, column: 3, scope: !1187)
!1201 = !DILocation(line: 52, column: 6, scope: !1187)
!1202 = !DILocation(line: 52, column: 10, scope: !1187)
!1203 = !DILocation(line: 53, column: 14, scope: !1187)
!1204 = !DILocation(line: 53, column: 3, scope: !1187)
!1205 = !DILocation(line: 53, column: 6, scope: !1187)
!1206 = !DILocation(line: 53, column: 12, scope: !1187)
!1207 = !DILocation(line: 54, column: 13, scope: !1187)
!1208 = !DILocation(line: 54, column: 3, scope: !1187)
!1209 = !DILocation(line: 54, column: 6, scope: !1187)
!1210 = !DILocation(line: 54, column: 11, scope: !1187)
!1211 = !DILocation(line: 55, column: 2, scope: !1187)
!1212 = !DILocation(line: 48, column: 22, scope: !1182)
!1213 = !DILocation(line: 48, column: 27, scope: !1182)
!1214 = !DILocation(line: 48, column: 2, scope: !1182)
!1215 = distinct !{!1215, !1185, !1216, !1217, !1218}
!1216 = !DILocation(line: 55, column: 2, scope: !1179)
!1217 = !{!"llvm.loop.mustprogress"}
!1218 = !{!"llvm.loop.unroll.disable"}
!1219 = !DILocation(line: 56, column: 13, scope: !53)
!1220 = !DILocation(line: 56, column: 21, scope: !53)
!1221 = !DILocation(line: 56, column: 2, scope: !53)
!1222 = !DILocation(line: 57, column: 9, scope: !1142)
!1223 = !DILocation(line: 57, column: 19, scope: !1142)
!1224 = !DILocation(line: 57, column: 16, scope: !1142)
!1225 = !DILocation(line: 57, column: 7, scope: !1142)
!1226 = !DILocation(line: 57, column: 22, scope: !1141)
!1227 = !DILocation(line: 57, column: 26, scope: !1141)
!1228 = !DILocation(line: 57, column: 24, scope: !1141)
!1229 = !DILocation(line: 57, column: 2, scope: !1142)
!1230 = !DILocation(line: 58, column: 3, scope: !1140)
!1231 = !DILocation(line: 58, column: 18, scope: !1140)
!1232 = !DILocation(line: 58, column: 23, scope: !1140)
!1233 = !DILocation(line: 58, column: 31, scope: !1140)
!1234 = !DILocation(line: 58, column: 38, scope: !1140)
!1235 = !DILocation(line: 58, column: 44, scope: !1140)
!1236 = !DILocation(line: 59, column: 3, scope: !1140)
!1237 = !DILocation(line: 59, column: 11, scope: !1140)
!1238 = !DILocation(line: 59, column: 10, scope: !1140)
!1239 = !DILocation(line: 59, column: 13, scope: !1140)
!1240 = !DILocation(line: 59, column: 18, scope: !1140)
!1241 = !DILocation(line: 59, column: 17, scope: !1140)
!1242 = !DILocation(line: 59, column: 22, scope: !1140)
!1243 = !DILocation(line: 59, column: 30, scope: !1140)
!1244 = !DILocation(line: 59, column: 28, scope: !1140)
!1245 = !DILocation(line: 0, scope: !1140)
!1246 = !DILocation(line: 60, column: 11, scope: !1140)
!1247 = !DILocation(line: 60, column: 10, scope: !1140)
!1248 = !DILocation(line: 60, column: 15, scope: !1140)
!1249 = !DILocation(line: 60, column: 6, scope: !1140)
!1250 = distinct !{!1250, !1236, !1248, !1217, !1218}
!1251 = !DILocation(line: 61, column: 14, scope: !1140)
!1252 = !DILocation(line: 61, column: 13, scope: !1140)
!1253 = !DILocation(line: 61, column: 3, scope: !1140)
!1254 = !DILocation(line: 61, column: 6, scope: !1140)
!1255 = !DILocation(line: 61, column: 11, scope: !1140)
!1256 = !DILocation(line: 62, column: 8, scope: !1140)
!1257 = !DILocation(line: 62, column: 4, scope: !1140)
!1258 = !DILocation(line: 62, column: 6, scope: !1140)
!1259 = !DILocation(line: 63, column: 2, scope: !1141)
!1260 = !DILocation(line: 63, column: 2, scope: !1140)
!1261 = !DILocation(line: 57, column: 30, scope: !1141)
!1262 = !DILocation(line: 57, column: 35, scope: !1141)
!1263 = !DILocation(line: 57, column: 44, scope: !1141)
!1264 = !DILocation(line: 57, column: 2, scope: !1141)
!1265 = distinct !{!1265, !1229, !1266, !1217, !1218}
!1266 = !DILocation(line: 63, column: 2, scope: !1142)
!1267 = !DILocation(line: 64, column: 15, scope: !53)
!1268 = !DILocation(line: 64, column: 23, scope: !53)
!1269 = !DILocation(line: 64, column: 2, scope: !53)
!1270 = !DILocation(line: 65, column: 2, scope: !53)
!1271 = !DILocation(line: 66, column: 1, scope: !53)
!1272 = distinct !DISubprogram(name: "kmalloc_array", scope: !2, file: !2, line: 629, type: !1273, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!41, !223, !223, !39}
!1275 = !{!1276, !1277, !1278, !1279}
!1276 = !DILocalVariable(name: "n", arg: 1, scope: !1272, file: !2, line: 629, type: !223)
!1277 = !DILocalVariable(name: "size", arg: 2, scope: !1272, file: !2, line: 629, type: !223)
!1278 = !DILocalVariable(name: "flags", arg: 3, scope: !1272, file: !2, line: 629, type: !39)
!1279 = !DILocalVariable(name: "bytes", scope: !1272, file: !2, line: 631, type: !223)
!1280 = !DILocation(line: 629, column: 61, scope: !1272)
!1281 = !DILocation(line: 629, column: 71, scope: !1272)
!1282 = !DILocation(line: 629, column: 83, scope: !1272)
!1283 = !DILocation(line: 631, column: 2, scope: !1272)
!1284 = !DILocation(line: 631, column: 9, scope: !1272)
!1285 = !DILocation(line: 633, column: 6, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 633, column: 6)
!1287 = !DILocation(line: 633, column: 6, scope: !1272)
!1288 = !DILocation(line: 634, column: 3, scope: !1286)
!1289 = !DILocation(line: 635, column: 27, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 635, column: 6)
!1291 = !DILocation(line: 635, column: 6, scope: !1290)
!1292 = !DILocation(line: 635, column: 30, scope: !1290)
!1293 = !DILocation(line: 635, column: 54, scope: !1290)
!1294 = !DILocation(line: 635, column: 33, scope: !1290)
!1295 = !DILocation(line: 635, column: 6, scope: !1272)
!1296 = !DILocation(line: 636, column: 18, scope: !1290)
!1297 = !DILocation(line: 636, column: 25, scope: !1290)
!1298 = !DILocation(line: 636, column: 10, scope: !1290)
!1299 = !DILocation(line: 636, column: 3, scope: !1290)
!1300 = !DILocation(line: 637, column: 19, scope: !1272)
!1301 = !DILocation(line: 637, column: 26, scope: !1272)
!1302 = !DILocation(line: 637, column: 9, scope: !1272)
!1303 = !DILocation(line: 637, column: 2, scope: !1272)
!1304 = !DILocation(line: 638, column: 1, scope: !1272)
!1305 = !DISubprogram(name: "mutex_lock", scope: !433, file: !433, line: 227, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !1126}
!1308 = !DISubprogram(name: "mutex_unlock", scope: !433, file: !433, line: 246, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = distinct !DISubprogram(name: "kobj_unmap", scope: !8, file: !8, line: 68, type: !1310, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !57, !67, !42}
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1324}
!1313 = !DILocalVariable(name: "domain", arg: 1, scope: !1309, file: !8, line: 68, type: !57)
!1314 = !DILocalVariable(name: "dev", arg: 2, scope: !1309, file: !8, line: 68, type: !67)
!1315 = !DILocalVariable(name: "range", arg: 3, scope: !1309, file: !8, line: 68, type: !42)
!1316 = !DILocalVariable(name: "n", scope: !1309, file: !8, line: 70, type: !12)
!1317 = !DILocalVariable(name: "index", scope: !1309, file: !8, line: 71, type: !12)
!1318 = !DILocalVariable(name: "i", scope: !1309, file: !8, line: 72, type: !12)
!1319 = !DILocalVariable(name: "found", scope: !1309, file: !8, line: 73, type: !62)
!1320 = !DILocalVariable(name: "s", scope: !1321, file: !8, line: 80, type: !1143)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !8, line: 79, column: 35)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !8, line: 79, column: 2)
!1323 = distinct !DILexicalBlock(scope: !1309, file: !8, line: 79, column: 2)
!1324 = !DILocalVariable(name: "p", scope: !1325, file: !8, line: 82, type: !62)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !8, line: 81, column: 63)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !8, line: 81, column: 3)
!1327 = distinct !DILexicalBlock(scope: !1321, file: !8, line: 81, column: 3)
!1328 = !DILocation(line: 68, column: 34, scope: !1309)
!1329 = !DILocation(line: 68, column: 48, scope: !1309)
!1330 = !DILocation(line: 68, column: 67, scope: !1309)
!1331 = !DILocation(line: 70, column: 2, scope: !1309)
!1332 = !DILocation(line: 70, column: 15, scope: !1309)
!1333 = !DILocation(line: 70, column: 19, scope: !1309)
!1334 = !DILocation(line: 70, column: 44, scope: !1309)
!1335 = !DILocation(line: 70, column: 42, scope: !1309)
!1336 = !DILocation(line: 70, column: 55, scope: !1309)
!1337 = !DILocation(line: 71, column: 2, scope: !1309)
!1338 = !DILocation(line: 71, column: 15, scope: !1309)
!1339 = !DILocation(line: 71, column: 23, scope: !1309)
!1340 = !DILocation(line: 72, column: 2, scope: !1309)
!1341 = !DILocation(line: 72, column: 15, scope: !1309)
!1342 = !DILocation(line: 73, column: 2, scope: !1309)
!1343 = !DILocation(line: 73, column: 16, scope: !1309)
!1344 = !DILocation(line: 75, column: 6, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1309, file: !8, line: 75, column: 6)
!1346 = !DILocation(line: 75, column: 8, scope: !1345)
!1347 = !DILocation(line: 75, column: 6, scope: !1309)
!1348 = !DILocation(line: 76, column: 5, scope: !1345)
!1349 = !DILocation(line: 76, column: 3, scope: !1345)
!1350 = !DILocation(line: 78, column: 13, scope: !1309)
!1351 = !DILocation(line: 78, column: 21, scope: !1309)
!1352 = !DILocation(line: 78, column: 2, scope: !1309)
!1353 = !DILocation(line: 79, column: 9, scope: !1323)
!1354 = !DILocation(line: 79, column: 7, scope: !1323)
!1355 = !DILocation(line: 79, column: 14, scope: !1322)
!1356 = !DILocation(line: 79, column: 18, scope: !1322)
!1357 = !DILocation(line: 79, column: 16, scope: !1322)
!1358 = !DILocation(line: 79, column: 2, scope: !1323)
!1359 = !DILocation(line: 80, column: 3, scope: !1321)
!1360 = !DILocation(line: 80, column: 18, scope: !1321)
!1361 = !DILocation(line: 81, column: 13, scope: !1327)
!1362 = !DILocation(line: 81, column: 21, scope: !1327)
!1363 = !DILocation(line: 81, column: 28, scope: !1327)
!1364 = !DILocation(line: 81, column: 34, scope: !1327)
!1365 = !DILocation(line: 81, column: 10, scope: !1327)
!1366 = !DILocation(line: 81, column: 8, scope: !1327)
!1367 = !DILocation(line: 81, column: 43, scope: !1326)
!1368 = !DILocation(line: 81, column: 42, scope: !1326)
!1369 = !DILocation(line: 81, column: 3, scope: !1327)
!1370 = !DILocation(line: 82, column: 4, scope: !1325)
!1371 = !DILocation(line: 82, column: 18, scope: !1325)
!1372 = !DILocation(line: 82, column: 23, scope: !1325)
!1373 = !DILocation(line: 82, column: 22, scope: !1325)
!1374 = !DILocation(line: 83, column: 8, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1325, file: !8, line: 83, column: 8)
!1376 = !DILocation(line: 83, column: 11, scope: !1375)
!1377 = !DILocation(line: 83, column: 18, scope: !1375)
!1378 = !DILocation(line: 83, column: 15, scope: !1375)
!1379 = !DILocation(line: 83, column: 22, scope: !1375)
!1380 = !DILocation(line: 83, column: 25, scope: !1375)
!1381 = !DILocation(line: 83, column: 28, scope: !1375)
!1382 = !DILocation(line: 83, column: 37, scope: !1375)
!1383 = !DILocation(line: 83, column: 34, scope: !1375)
!1384 = !DILocation(line: 83, column: 8, scope: !1325)
!1385 = !DILocation(line: 84, column: 10, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1375, file: !8, line: 83, column: 44)
!1387 = !DILocation(line: 84, column: 13, scope: !1386)
!1388 = !DILocation(line: 84, column: 6, scope: !1386)
!1389 = !DILocation(line: 84, column: 8, scope: !1386)
!1390 = !DILocation(line: 85, column: 10, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !8, line: 85, column: 9)
!1392 = !DILocation(line: 85, column: 9, scope: !1386)
!1393 = !DILocation(line: 86, column: 14, scope: !1391)
!1394 = !DILocation(line: 86, column: 12, scope: !1391)
!1395 = !DILocation(line: 86, column: 6, scope: !1391)
!1396 = !DILocation(line: 87, column: 5, scope: !1386)
!1397 = !DILocation(line: 89, column: 3, scope: !1326)
!1398 = !DILocation(line: 89, column: 3, scope: !1325)
!1399 = !DILocation(line: 81, column: 53, scope: !1326)
!1400 = !DILocation(line: 81, column: 52, scope: !1326)
!1401 = !DILocation(line: 81, column: 57, scope: !1326)
!1402 = !DILocation(line: 81, column: 48, scope: !1326)
!1403 = !DILocation(line: 81, column: 3, scope: !1326)
!1404 = distinct !{!1404, !1369, !1405, !1217, !1218}
!1405 = !DILocation(line: 89, column: 3, scope: !1327)
!1406 = !DILocation(line: 90, column: 2, scope: !1322)
!1407 = !DILocation(line: 90, column: 2, scope: !1321)
!1408 = !DILocation(line: 79, column: 22, scope: !1322)
!1409 = !DILocation(line: 79, column: 31, scope: !1322)
!1410 = !DILocation(line: 79, column: 2, scope: !1322)
!1411 = distinct !{!1411, !1358, !1412, !1217, !1218}
!1412 = !DILocation(line: 90, column: 2, scope: !1323)
!1413 = !DILocation(line: 91, column: 15, scope: !1309)
!1414 = !DILocation(line: 91, column: 23, scope: !1309)
!1415 = !DILocation(line: 91, column: 2, scope: !1309)
!1416 = !DILocation(line: 92, column: 8, scope: !1309)
!1417 = !DILocation(line: 92, column: 2, scope: !1309)
!1418 = !DILocation(line: 93, column: 1, scope: !1309)
!1419 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !453}
!1422 = distinct !DISubprogram(name: "kobj_lookup", scope: !8, file: !8, line: 95, type: !1423, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!101, !57, !67, !898}
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1438, !1439}
!1426 = !DILocalVariable(name: "domain", arg: 1, scope: !1422, file: !8, line: 95, type: !57)
!1427 = !DILocalVariable(name: "dev", arg: 2, scope: !1422, file: !8, line: 95, type: !67)
!1428 = !DILocalVariable(name: "index", arg: 3, scope: !1422, file: !8, line: 95, type: !898)
!1429 = !DILocalVariable(name: "kobj", scope: !1422, file: !8, line: 97, type: !101)
!1430 = !DILocalVariable(name: "p", scope: !1422, file: !8, line: 98, type: !62)
!1431 = !DILocalVariable(name: "best", scope: !1422, file: !8, line: 99, type: !42)
!1432 = !DILabel(scope: !1422, name: "retry", file: !8, line: 101)
!1433 = !DILocalVariable(name: "probe", scope: !1434, file: !8, line: 104, type: !1437)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !8, line: 103, column: 61)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !8, line: 103, column: 2)
!1436 = distinct !DILexicalBlock(scope: !1422, file: !8, line: 103, column: 2)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1438 = !DILocalVariable(name: "owner", scope: !1434, file: !8, line: 105, type: !75)
!1439 = !DILocalVariable(name: "data", scope: !1434, file: !8, line: 106, type: !41)
!1440 = !DILocation(line: 95, column: 46, scope: !1422)
!1441 = !DILocation(line: 95, column: 60, scope: !1422)
!1442 = !DILocation(line: 95, column: 70, scope: !1422)
!1443 = !DILocation(line: 97, column: 2, scope: !1422)
!1444 = !DILocation(line: 97, column: 18, scope: !1422)
!1445 = !DILocation(line: 98, column: 2, scope: !1422)
!1446 = !DILocation(line: 98, column: 16, scope: !1422)
!1447 = !DILocation(line: 99, column: 2, scope: !1422)
!1448 = !DILocation(line: 99, column: 16, scope: !1422)
!1449 = !DILocation(line: 101, column: 1, scope: !1422)
!1450 = !DILocation(line: 102, column: 13, scope: !1422)
!1451 = !DILocation(line: 102, column: 21, scope: !1422)
!1452 = !DILocation(line: 102, column: 2, scope: !1422)
!1453 = !DILocation(line: 103, column: 11, scope: !1436)
!1454 = !DILocation(line: 103, column: 19, scope: !1436)
!1455 = !DILocation(line: 103, column: 26, scope: !1436)
!1456 = !DILocation(line: 103, column: 37, scope: !1436)
!1457 = !DILocation(line: 103, column: 9, scope: !1436)
!1458 = !DILocation(line: 103, column: 7, scope: !1436)
!1459 = !DILocation(line: 103, column: 45, scope: !1435)
!1460 = !DILocation(line: 103, column: 2, scope: !1436)
!1461 = !DILocation(line: 104, column: 3, scope: !1434)
!1462 = !DILocation(line: 104, column: 21, scope: !1434)
!1463 = !DILocation(line: 105, column: 3, scope: !1434)
!1464 = !DILocation(line: 105, column: 18, scope: !1434)
!1465 = !DILocation(line: 106, column: 3, scope: !1434)
!1466 = !DILocation(line: 106, column: 9, scope: !1434)
!1467 = !DILocation(line: 108, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1434, file: !8, line: 108, column: 7)
!1469 = !DILocation(line: 108, column: 10, scope: !1468)
!1470 = !DILocation(line: 108, column: 16, scope: !1468)
!1471 = !DILocation(line: 108, column: 14, scope: !1468)
!1472 = !DILocation(line: 108, column: 20, scope: !1468)
!1473 = !DILocation(line: 108, column: 23, scope: !1468)
!1474 = !DILocation(line: 108, column: 26, scope: !1468)
!1475 = !DILocation(line: 108, column: 32, scope: !1468)
!1476 = !DILocation(line: 108, column: 35, scope: !1468)
!1477 = !DILocation(line: 108, column: 30, scope: !1468)
!1478 = !DILocation(line: 108, column: 41, scope: !1468)
!1479 = !DILocation(line: 108, column: 47, scope: !1468)
!1480 = !DILocation(line: 108, column: 45, scope: !1468)
!1481 = !DILocation(line: 108, column: 7, scope: !1434)
!1482 = !DILocation(line: 109, column: 4, scope: !1468)
!1483 = !DILocation(line: 110, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1434, file: !8, line: 110, column: 7)
!1485 = !DILocation(line: 110, column: 10, scope: !1484)
!1486 = !DILocation(line: 110, column: 16, scope: !1484)
!1487 = !DILocation(line: 110, column: 23, scope: !1484)
!1488 = !DILocation(line: 110, column: 20, scope: !1484)
!1489 = !DILocation(line: 110, column: 7, scope: !1434)
!1490 = !DILocation(line: 111, column: 4, scope: !1484)
!1491 = !DILocation(line: 112, column: 23, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1434, file: !8, line: 112, column: 7)
!1493 = !DILocation(line: 112, column: 26, scope: !1492)
!1494 = !DILocation(line: 112, column: 8, scope: !1492)
!1495 = !DILocation(line: 112, column: 7, scope: !1434)
!1496 = !DILocation(line: 113, column: 4, scope: !1492)
!1497 = !DILocation(line: 114, column: 11, scope: !1434)
!1498 = !DILocation(line: 114, column: 14, scope: !1434)
!1499 = !DILocation(line: 114, column: 9, scope: !1434)
!1500 = !DILocation(line: 115, column: 10, scope: !1434)
!1501 = !DILocation(line: 115, column: 13, scope: !1434)
!1502 = !DILocation(line: 115, column: 8, scope: !1434)
!1503 = !DILocation(line: 116, column: 11, scope: !1434)
!1504 = !DILocation(line: 116, column: 14, scope: !1434)
!1505 = !DILocation(line: 116, column: 9, scope: !1434)
!1506 = !DILocation(line: 117, column: 10, scope: !1434)
!1507 = !DILocation(line: 117, column: 13, scope: !1434)
!1508 = !DILocation(line: 117, column: 19, scope: !1434)
!1509 = !DILocation(line: 117, column: 8, scope: !1434)
!1510 = !DILocation(line: 118, column: 12, scope: !1434)
!1511 = !DILocation(line: 118, column: 18, scope: !1434)
!1512 = !DILocation(line: 118, column: 21, scope: !1434)
!1513 = !DILocation(line: 118, column: 16, scope: !1434)
!1514 = !DILocation(line: 118, column: 4, scope: !1434)
!1515 = !DILocation(line: 118, column: 10, scope: !1434)
!1516 = !DILocation(line: 119, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1434, file: !8, line: 119, column: 7)
!1518 = !DILocation(line: 119, column: 10, scope: !1517)
!1519 = !DILocation(line: 119, column: 15, scope: !1517)
!1520 = !DILocation(line: 119, column: 18, scope: !1517)
!1521 = !DILocation(line: 119, column: 21, scope: !1517)
!1522 = !DILocation(line: 119, column: 26, scope: !1517)
!1523 = !DILocation(line: 119, column: 31, scope: !1517)
!1524 = !DILocation(line: 119, column: 37, scope: !1517)
!1525 = !DILocation(line: 119, column: 7, scope: !1434)
!1526 = !DILocation(line: 120, column: 15, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1517, file: !8, line: 119, column: 42)
!1528 = !DILocation(line: 120, column: 4, scope: !1527)
!1529 = !DILocation(line: 121, column: 4, scope: !1527)
!1530 = !DILocation(line: 123, column: 16, scope: !1434)
!1531 = !DILocation(line: 123, column: 24, scope: !1434)
!1532 = !DILocation(line: 123, column: 3, scope: !1434)
!1533 = !DILocation(line: 124, column: 10, scope: !1434)
!1534 = !DILocation(line: 124, column: 16, scope: !1434)
!1535 = !DILocation(line: 124, column: 21, scope: !1434)
!1536 = !DILocation(line: 124, column: 28, scope: !1434)
!1537 = !DILocation(line: 124, column: 8, scope: !1434)
!1538 = !DILocation(line: 126, column: 14, scope: !1434)
!1539 = !DILocation(line: 126, column: 3, scope: !1434)
!1540 = !DILocation(line: 127, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1434, file: !8, line: 127, column: 7)
!1542 = !DILocation(line: 127, column: 7, scope: !1434)
!1543 = !DILocation(line: 128, column: 11, scope: !1541)
!1544 = !DILocation(line: 128, column: 4, scope: !1541)
!1545 = !DILocation(line: 129, column: 3, scope: !1434)
!1546 = !DILocation(line: 130, column: 2, scope: !1435)
!1547 = !DILocation(line: 103, column: 52, scope: !1435)
!1548 = !DILocation(line: 103, column: 55, scope: !1435)
!1549 = !DILocation(line: 103, column: 50, scope: !1435)
!1550 = !DILocation(line: 103, column: 2, scope: !1435)
!1551 = distinct !{!1551, !1460, !1552, !1217, !1218}
!1552 = !DILocation(line: 130, column: 2, scope: !1436)
!1553 = !DILocation(line: 131, column: 15, scope: !1422)
!1554 = !DILocation(line: 131, column: 23, scope: !1422)
!1555 = !DILocation(line: 131, column: 2, scope: !1422)
!1556 = !DILocation(line: 132, column: 2, scope: !1422)
!1557 = !DILocation(line: 133, column: 1, scope: !1422)
!1558 = !DISubprogram(name: "try_module_get", scope: !11, file: !11, line: 696, type: !1559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!532, !75}
!1561 = !DISubprogram(name: "module_put", scope: !11, file: !11, line: 706, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1562 = distinct !DISubprogram(name: "kobj_map_init", scope: !8, file: !8, line: 135, type: !1563, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!57, !1113, !1126}
!1565 = !{!1566, !1567, !1568, !1569, !1570}
!1566 = !DILocalVariable(name: "base_probe", arg: 1, scope: !1562, file: !8, line: 135, type: !1113)
!1567 = !DILocalVariable(name: "lock", arg: 2, scope: !1562, file: !8, line: 135, type: !1126)
!1568 = !DILocalVariable(name: "p", scope: !1562, file: !8, line: 137, type: !57)
!1569 = !DILocalVariable(name: "base", scope: !1562, file: !8, line: 138, type: !62)
!1570 = !DILocalVariable(name: "i", scope: !1562, file: !8, line: 139, type: !56)
!1571 = !DILocation(line: 135, column: 46, scope: !1562)
!1572 = !DILocation(line: 135, column: 72, scope: !1562)
!1573 = !DILocation(line: 137, column: 2, scope: !1562)
!1574 = !DILocation(line: 137, column: 19, scope: !1562)
!1575 = !DILocation(line: 137, column: 23, scope: !1562)
!1576 = !DILocation(line: 138, column: 2, scope: !1562)
!1577 = !DILocation(line: 138, column: 16, scope: !1562)
!1578 = !DILocation(line: 138, column: 23, scope: !1562)
!1579 = !DILocation(line: 139, column: 2, scope: !1562)
!1580 = !DILocation(line: 139, column: 6, scope: !1562)
!1581 = !DILocation(line: 141, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1562, file: !8, line: 141, column: 6)
!1583 = !DILocation(line: 141, column: 9, scope: !1582)
!1584 = !DILocation(line: 141, column: 18, scope: !1582)
!1585 = !DILocation(line: 141, column: 22, scope: !1582)
!1586 = !DILocation(line: 141, column: 27, scope: !1582)
!1587 = !DILocation(line: 141, column: 6, scope: !1562)
!1588 = !DILocation(line: 142, column: 9, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1582, file: !8, line: 141, column: 37)
!1590 = !DILocation(line: 142, column: 3, scope: !1589)
!1591 = !DILocation(line: 143, column: 9, scope: !1589)
!1592 = !DILocation(line: 143, column: 3, scope: !1589)
!1593 = !DILocation(line: 144, column: 3, scope: !1589)
!1594 = !DILocation(line: 147, column: 2, scope: !1562)
!1595 = !DILocation(line: 147, column: 8, scope: !1562)
!1596 = !DILocation(line: 147, column: 12, scope: !1562)
!1597 = !DILocation(line: 148, column: 2, scope: !1562)
!1598 = !DILocation(line: 148, column: 8, scope: !1562)
!1599 = !DILocation(line: 148, column: 14, scope: !1562)
!1600 = !DILocation(line: 149, column: 14, scope: !1562)
!1601 = !DILocation(line: 149, column: 2, scope: !1562)
!1602 = !DILocation(line: 149, column: 8, scope: !1562)
!1603 = !DILocation(line: 149, column: 12, scope: !1562)
!1604 = !DILocation(line: 150, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1562, file: !8, line: 150, column: 2)
!1606 = !DILocation(line: 150, column: 7, scope: !1605)
!1607 = !DILocation(line: 150, column: 14, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !8, line: 150, column: 2)
!1609 = !DILocation(line: 150, column: 16, scope: !1608)
!1610 = !DILocation(line: 150, column: 2, scope: !1605)
!1611 = !DILocation(line: 151, column: 18, scope: !1608)
!1612 = !DILocation(line: 151, column: 3, scope: !1608)
!1613 = !DILocation(line: 151, column: 6, scope: !1608)
!1614 = !DILocation(line: 151, column: 13, scope: !1608)
!1615 = !DILocation(line: 151, column: 16, scope: !1608)
!1616 = !DILocation(line: 150, column: 24, scope: !1608)
!1617 = !DILocation(line: 150, column: 2, scope: !1608)
!1618 = distinct !{!1618, !1610, !1619, !1217, !1218}
!1619 = !DILocation(line: 151, column: 18, scope: !1605)
!1620 = !DILocation(line: 152, column: 12, scope: !1562)
!1621 = !DILocation(line: 152, column: 2, scope: !1562)
!1622 = !DILocation(line: 152, column: 5, scope: !1562)
!1623 = !DILocation(line: 152, column: 10, scope: !1562)
!1624 = !DILocation(line: 153, column: 9, scope: !1562)
!1625 = !DILocation(line: 153, column: 2, scope: !1562)
!1626 = !DILocation(line: 154, column: 1, scope: !1562)
!1627 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !1628, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!41, !223, !39}
!1630 = !{!1631, !1632, !1633}
!1631 = !DILocalVariable(name: "size", arg: 1, scope: !1627, file: !2, line: 591, type: !223)
!1632 = !DILocalVariable(name: "flags", arg: 2, scope: !1627, file: !2, line: 591, type: !39)
!1633 = !DILocalVariable(name: "index", scope: !1634, file: !2, line: 594, type: !12)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 593, column: 42)
!1635 = distinct !DILexicalBlock(scope: !1627, file: !2, line: 593, column: 6)
!1636 = !DILocation(line: 591, column: 61, scope: !1627)
!1637 = !DILocation(line: 591, column: 73, scope: !1627)
!1638 = !DILocation(line: 593, column: 27, scope: !1635)
!1639 = !DILocation(line: 593, column: 6, scope: !1635)
!1640 = !DILocation(line: 593, column: 33, scope: !1635)
!1641 = !DILocation(line: 593, column: 36, scope: !1635)
!1642 = !DILocation(line: 593, column: 6, scope: !1627)
!1643 = !DILocation(line: 594, column: 3, scope: !1634)
!1644 = !DILocation(line: 594, column: 16, scope: !1634)
!1645 = !DILocation(line: 596, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1634, file: !2, line: 596, column: 7)
!1647 = !DILocation(line: 596, column: 12, scope: !1646)
!1648 = !DILocation(line: 596, column: 7, scope: !1634)
!1649 = !DILocation(line: 597, column: 25, scope: !1646)
!1650 = !DILocation(line: 597, column: 31, scope: !1646)
!1651 = !DILocation(line: 597, column: 11, scope: !1646)
!1652 = !DILocation(line: 597, column: 4, scope: !1646)
!1653 = !DILocation(line: 599, column: 11, scope: !1634)
!1654 = !DILocation(line: 599, column: 9, scope: !1634)
!1655 = !DILocation(line: 601, column: 33, scope: !1634)
!1656 = !DILocation(line: 601, column: 40, scope: !1634)
!1657 = !DILocation(line: 601, column: 20, scope: !1634)
!1658 = !DILocation(line: 601, column: 5, scope: !1634)
!1659 = !DILocation(line: 601, column: 51, scope: !1634)
!1660 = !DILocation(line: 602, column: 5, scope: !1634)
!1661 = !DILocation(line: 602, column: 12, scope: !1634)
!1662 = !DILocation(line: 600, column: 10, scope: !1634)
!1663 = !DILocation(line: 600, column: 3, scope: !1634)
!1664 = !DILocation(line: 603, column: 2, scope: !1635)
!1665 = !DILocation(line: 604, column: 19, scope: !1627)
!1666 = !DILocation(line: 604, column: 25, scope: !1627)
!1667 = !DILocation(line: 604, column: 9, scope: !1627)
!1668 = !DILocation(line: 604, column: 2, scope: !1627)
!1669 = !DILocation(line: 605, column: 1, scope: !1627)
!1670 = distinct !DISubprogram(name: "kzalloc", scope: !2, file: !2, line: 719, type: !1628, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1671)
!1671 = !{!1672, !1673}
!1672 = !DILocalVariable(name: "size", arg: 1, scope: !1670, file: !2, line: 719, type: !223)
!1673 = !DILocalVariable(name: "flags", arg: 2, scope: !1670, file: !2, line: 719, type: !39)
!1674 = !DILocation(line: 719, column: 52, scope: !1670)
!1675 = !DILocation(line: 719, column: 64, scope: !1670)
!1676 = !DILocation(line: 721, column: 17, scope: !1670)
!1677 = !DILocation(line: 721, column: 23, scope: !1670)
!1678 = !DILocation(line: 721, column: 29, scope: !1670)
!1679 = !DILocation(line: 721, column: 9, scope: !1670)
!1680 = !DILocation(line: 721, column: 2, scope: !1670)
!1681 = distinct !DISubprogram(name: "__must_check_overflow", scope: !1682, file: !1682, line: 51, type: !1683, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1685)
!1682 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!532, !532}
!1685 = !{!1686}
!1686 = !DILocalVariable(name: "overflow", arg: 1, scope: !1681, file: !1682, line: 51, type: !532)
!1687 = !DILocation(line: 51, column: 60, scope: !1681)
!1688 = !DILocation(line: 53, column: 9, scope: !1681)
!1689 = !{i8 0, i8 2}
!1690 = !DILocation(line: 53, column: 2, scope: !1681)
!1691 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1692 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1693 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !1694, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!12, !223, !532}
!1696 = !{!1697, !1698}
!1697 = !DILocalVariable(name: "size", arg: 1, scope: !1693, file: !2, line: 444, type: !223)
!1698 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1693, file: !2, line: 445, type: !532)
!1699 = !DILocation(line: 444, column: 60, scope: !1693)
!1700 = !DILocation(line: 445, column: 16, scope: !1693)
!1701 = !DILocation(line: 447, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 447, column: 6)
!1703 = !DILocation(line: 447, column: 6, scope: !1693)
!1704 = !DILocation(line: 448, column: 3, scope: !1702)
!1705 = !DILocation(line: 450, column: 6, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 450, column: 6)
!1707 = !DILocation(line: 450, column: 11, scope: !1706)
!1708 = !DILocation(line: 450, column: 6, scope: !1693)
!1709 = !DILocation(line: 451, column: 3, scope: !1706)
!1710 = !DILocation(line: 453, column: 32, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 453, column: 6)
!1712 = !DILocation(line: 453, column: 37, scope: !1711)
!1713 = !DILocation(line: 453, column: 42, scope: !1711)
!1714 = !DILocation(line: 453, column: 45, scope: !1711)
!1715 = !DILocation(line: 453, column: 50, scope: !1711)
!1716 = !DILocation(line: 453, column: 6, scope: !1693)
!1717 = !DILocation(line: 454, column: 3, scope: !1711)
!1718 = !DILocation(line: 455, column: 32, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 455, column: 6)
!1720 = !DILocation(line: 455, column: 37, scope: !1719)
!1721 = !DILocation(line: 455, column: 43, scope: !1719)
!1722 = !DILocation(line: 455, column: 46, scope: !1719)
!1723 = !DILocation(line: 455, column: 51, scope: !1719)
!1724 = !DILocation(line: 455, column: 6, scope: !1693)
!1725 = !DILocation(line: 456, column: 3, scope: !1719)
!1726 = !DILocation(line: 457, column: 6, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 457, column: 6)
!1728 = !DILocation(line: 457, column: 11, scope: !1727)
!1729 = !DILocation(line: 457, column: 6, scope: !1693)
!1730 = !DILocation(line: 457, column: 26, scope: !1727)
!1731 = !DILocation(line: 458, column: 6, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 458, column: 6)
!1733 = !DILocation(line: 458, column: 11, scope: !1732)
!1734 = !DILocation(line: 458, column: 6, scope: !1693)
!1735 = !DILocation(line: 458, column: 26, scope: !1732)
!1736 = !DILocation(line: 459, column: 6, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 459, column: 6)
!1738 = !DILocation(line: 459, column: 11, scope: !1737)
!1739 = !DILocation(line: 459, column: 6, scope: !1693)
!1740 = !DILocation(line: 459, column: 26, scope: !1737)
!1741 = !DILocation(line: 460, column: 6, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 460, column: 6)
!1743 = !DILocation(line: 460, column: 11, scope: !1742)
!1744 = !DILocation(line: 460, column: 6, scope: !1693)
!1745 = !DILocation(line: 460, column: 26, scope: !1742)
!1746 = !DILocation(line: 461, column: 6, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 461, column: 6)
!1748 = !DILocation(line: 461, column: 11, scope: !1747)
!1749 = !DILocation(line: 461, column: 6, scope: !1693)
!1750 = !DILocation(line: 461, column: 26, scope: !1747)
!1751 = !DILocation(line: 462, column: 6, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 462, column: 6)
!1753 = !DILocation(line: 462, column: 11, scope: !1752)
!1754 = !DILocation(line: 462, column: 6, scope: !1693)
!1755 = !DILocation(line: 462, column: 26, scope: !1752)
!1756 = !DILocation(line: 463, column: 6, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 463, column: 6)
!1758 = !DILocation(line: 463, column: 11, scope: !1757)
!1759 = !DILocation(line: 463, column: 6, scope: !1693)
!1760 = !DILocation(line: 463, column: 26, scope: !1757)
!1761 = !DILocation(line: 464, column: 6, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 464, column: 6)
!1763 = !DILocation(line: 464, column: 11, scope: !1762)
!1764 = !DILocation(line: 464, column: 6, scope: !1693)
!1765 = !DILocation(line: 464, column: 26, scope: !1762)
!1766 = !DILocation(line: 465, column: 6, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 465, column: 6)
!1768 = !DILocation(line: 465, column: 11, scope: !1767)
!1769 = !DILocation(line: 465, column: 6, scope: !1693)
!1770 = !DILocation(line: 465, column: 26, scope: !1767)
!1771 = !DILocation(line: 466, column: 6, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 466, column: 6)
!1773 = !DILocation(line: 466, column: 11, scope: !1772)
!1774 = !DILocation(line: 466, column: 6, scope: !1693)
!1775 = !DILocation(line: 466, column: 26, scope: !1772)
!1776 = !DILocation(line: 467, column: 6, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 467, column: 6)
!1778 = !DILocation(line: 467, column: 11, scope: !1777)
!1779 = !DILocation(line: 467, column: 6, scope: !1693)
!1780 = !DILocation(line: 467, column: 26, scope: !1777)
!1781 = !DILocation(line: 468, column: 6, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 468, column: 6)
!1783 = !DILocation(line: 468, column: 11, scope: !1782)
!1784 = !DILocation(line: 468, column: 6, scope: !1693)
!1785 = !DILocation(line: 468, column: 26, scope: !1782)
!1786 = !DILocation(line: 469, column: 6, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 469, column: 6)
!1788 = !DILocation(line: 469, column: 11, scope: !1787)
!1789 = !DILocation(line: 469, column: 6, scope: !1693)
!1790 = !DILocation(line: 469, column: 26, scope: !1787)
!1791 = !DILocation(line: 470, column: 6, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 470, column: 6)
!1793 = !DILocation(line: 470, column: 11, scope: !1792)
!1794 = !DILocation(line: 470, column: 6, scope: !1693)
!1795 = !DILocation(line: 470, column: 26, scope: !1792)
!1796 = !DILocation(line: 471, column: 6, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 471, column: 6)
!1798 = !DILocation(line: 471, column: 11, scope: !1797)
!1799 = !DILocation(line: 471, column: 6, scope: !1693)
!1800 = !DILocation(line: 471, column: 26, scope: !1797)
!1801 = !DILocation(line: 472, column: 6, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 472, column: 6)
!1803 = !DILocation(line: 472, column: 11, scope: !1802)
!1804 = !DILocation(line: 472, column: 6, scope: !1693)
!1805 = !DILocation(line: 472, column: 26, scope: !1802)
!1806 = !DILocation(line: 473, column: 6, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 473, column: 6)
!1808 = !DILocation(line: 473, column: 11, scope: !1807)
!1809 = !DILocation(line: 473, column: 6, scope: !1693)
!1810 = !DILocation(line: 473, column: 26, scope: !1807)
!1811 = !DILocation(line: 474, column: 6, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 474, column: 6)
!1813 = !DILocation(line: 474, column: 11, scope: !1812)
!1814 = !DILocation(line: 474, column: 6, scope: !1693)
!1815 = !DILocation(line: 474, column: 27, scope: !1812)
!1816 = !DILocation(line: 475, column: 6, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 475, column: 6)
!1818 = !DILocation(line: 475, column: 11, scope: !1817)
!1819 = !DILocation(line: 475, column: 6, scope: !1693)
!1820 = !DILocation(line: 475, column: 32, scope: !1817)
!1821 = !DILocation(line: 477, column: 50, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 477, column: 6)
!1823 = !DILocation(line: 477, column: 6, scope: !1693)
!1824 = !DILocation(line: 478, column: 3, scope: !1822)
!1825 = !DILocation(line: 478, column: 3, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 478, column: 3)
!1827 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 478, column: 3)
!1828 = !{i32 -2142601559}
!1829 = !DILocation(line: 478, column: 3, scope: !1827)
!1830 = !DILocation(line: 480, column: 3, scope: !1822)
!1831 = !DILocation(line: 480, column: 3, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 480, column: 3)
!1833 = !DILocation(line: 480, column: 3, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 480, column: 3)
!1835 = !DILocation(line: 480, column: 3, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 480, column: 3)
!1837 = !{i64 2152365940, i64 2152365969, i64 2152366015, i64 2152366073, i64 2152366127, i64 2152366181, i64 2152366236, i64 2152366267}
!1838 = !DILocation(line: 483, column: 2, scope: !1693)
!1839 = !DILocation(line: 484, column: 1, scope: !1693)
!1840 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !1841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!41, !1843, !39, !223}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1845, line: 11, flags: DIFlagFwdDecl)
!1845 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1846 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !1847, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!29, !39, !42}
!1849 = !{!1850, !1851}
!1850 = !DILocalVariable(name: "flags", arg: 1, scope: !1846, file: !2, line: 401, type: !39)
!1851 = !DILocalVariable(name: "caller", arg: 2, scope: !1846, file: !2, line: 401, type: !42)
!1852 = !DILocation(line: 401, column: 67, scope: !1846)
!1853 = !DILocation(line: 401, column: 88, scope: !1846)
!1854 = !DILocation(line: 407, column: 6, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 407, column: 6)
!1856 = !DILocation(line: 407, column: 6, scope: !1846)
!1857 = !DILocation(line: 413, column: 3, scope: !1855)
!1858 = !DILocation(line: 423, column: 38, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 423, column: 6)
!1860 = !DILocation(line: 423, column: 44, scope: !1859)
!1861 = !DILocation(line: 423, column: 6, scope: !1846)
!1862 = !DILocation(line: 424, column: 3, scope: !1859)
!1863 = !DILocation(line: 426, column: 3, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 425, column: 6)
!1865 = !DILocation(line: 429, column: 1, scope: !1846)
!1866 = !DISubprogram(name: "__compiletime_assert_196", scope: !2, file: !2, line: 478, type: !1109, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
