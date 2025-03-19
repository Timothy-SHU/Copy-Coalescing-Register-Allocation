; ModuleID = 'drivers/acpi/acpica/utresrc.c'
source_filename = "drivers/acpi/acpica/utresrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml_resource_common_serialbus = type <{ i8, i16, i8, i8, i8, i8, i16, i8, i16 }>
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }

@acpi_gbl_resource_aml_sizes = hidden constant [36 x i8] c"\00\00\00\00\03\02\01\00\07\03\05\00\00\00\00\01\00\09\0C\00\00\11\09\17\0D\06+5\14\0F\09\11\0B\0E\11\09", align 16, !dbg !0
@acpi_gbl_resource_aml_serial_bus_sizes = hidden constant [5 x i8] c"\00\0F\12\13\09", align 1, !dbg !390
@__const.acpi_ut_walk_aml_resources.end_tag = private unnamed_addr constant [2 x i8] c"y\00", align 1
@acpi_gbl_resource_types = internal constant [36 x i8] c"\00\00\00\00\03\01\03\01\01\01\01\00\00\00\02\01\00\01\01\00\02\01\01\02\02\02\02\01\02\02\02\02\02\02\02\02", align 16, !dbg !412
@_acpi_module_name = internal constant [8 x i8] c"utresrc\00", align 1, !dbg !417
@.str = private unnamed_addr constant [67 x i8] c"Invalid/unsupported SerialBus resource descriptor: BusType 0x%2.2X\00", align 1, !dbg !396
@.str.1 = private unnamed_addr constant [54 x i8] c"Invalid/unsupported resource descriptor: Type 0x%2.2X\00", align 1, !dbg !402
@.str.2 = private unnamed_addr constant [84 x i8] c"Invalid resource descriptor length: Type 0x%2.2X, Length 0x%4.4X, MinLength 0x%4.4X\00", align 1, !dbg !407

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_walk_aml_resources(ptr noundef %walk_state, ptr noundef %aml, i64 noundef %aml_length, ptr noundef %user_function, ptr noundef %context) #0 align 16 !dbg !432 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %aml.addr = alloca ptr, align 8
  %aml_length.addr = alloca i64, align 8
  %user_function.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %end_aml = alloca ptr, align 8
  %resource_index = alloca i8, align 1
  %length = alloca i32, align 4
  %offset = alloca i32, align 4
  %end_tag = alloca [2 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1196, metadata !DIExpression()), !dbg !1208
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1197, metadata !DIExpression()), !dbg !1209
  store i64 %aml_length, ptr %aml_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_length.addr, metadata !1198, metadata !DIExpression()), !dbg !1210
  store ptr %user_function, ptr %user_function.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_function.addr, metadata !1199, metadata !DIExpression()), !dbg !1211
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1200, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1201, metadata !DIExpression()), !dbg !1214
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_aml) #5, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %end_aml, metadata !1202, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 1, ptr %resource_index) #5, !dbg !1217
  call void @llvm.dbg.declare(metadata ptr %resource_index, metadata !1203, metadata !DIExpression()), !dbg !1218
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #5, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1204, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #5, !dbg !1221
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1205, metadata !DIExpression()), !dbg !1222
  store i32 0, ptr %offset, align 4, !dbg !1222
  call void @llvm.lifetime.start.p0(i64 2, ptr %end_tag) #5, !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %end_tag, metadata !1206, metadata !DIExpression()), !dbg !1224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %end_tag, ptr align 1 @__const.acpi_ut_walk_aml_resources.end_tag, i64 2, i1 false), !dbg !1224
  %0 = load i64, ptr %aml_length.addr, align 8, !dbg !1225
  %cmp = icmp ult i64 %0, 2, !dbg !1227
  br i1 %cmp, label %if.then, label %if.end, !dbg !1228

if.then:                                          ; preds = %entry
  store i32 12316, ptr %retval, align 4, !dbg !1229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1229

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %aml.addr, align 8, !dbg !1231
  %2 = load i64, ptr %aml_length.addr, align 8, !dbg !1232
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !1233
  store ptr %add.ptr, ptr %end_aml, align 8, !dbg !1234
  br label %while.cond, !dbg !1235

while.cond:                                       ; preds = %if.end24, %if.end
  %3 = load ptr, ptr %aml.addr, align 8, !dbg !1236
  %4 = load ptr, ptr %end_aml, align 8, !dbg !1237
  %cmp1 = icmp ult ptr %3, %4, !dbg !1238
  br i1 %cmp1, label %while.body, label %while.end, !dbg !1235

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1239
  %6 = load ptr, ptr %aml.addr, align 8, !dbg !1241
  %call = call i32 @acpi_ut_validate_resource(ptr noundef %5, ptr noundef %6, ptr noundef %resource_index) #6, !dbg !1242
  store i32 %call, ptr %status, align 4, !dbg !1243
  %7 = load i32, ptr %status, align 4, !dbg !1244
  %tobool = icmp ne i32 %7, 0, !dbg !1244
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1246

if.then2:                                         ; preds = %while.body
  %8 = load i32, ptr %status, align 4, !dbg !1247
  store i32 %8, ptr %retval, align 4, !dbg !1247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1247

if.end3:                                          ; preds = %while.body
  %9 = load ptr, ptr %aml.addr, align 8, !dbg !1249
  %call4 = call i32 @acpi_ut_get_descriptor_length(ptr noundef %9) #6, !dbg !1250
  store i32 %call4, ptr %length, align 4, !dbg !1251
  %10 = load ptr, ptr %user_function.addr, align 8, !dbg !1252
  %tobool5 = icmp ne ptr %10, null, !dbg !1252
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !1254

if.then6:                                         ; preds = %if.end3
  %11 = load ptr, ptr %user_function.addr, align 8, !dbg !1255
  %12 = load ptr, ptr %aml.addr, align 8, !dbg !1257
  %13 = load i32, ptr %length, align 4, !dbg !1258
  %14 = load i32, ptr %offset, align 4, !dbg !1259
  %15 = load i8, ptr %resource_index, align 1, !dbg !1260
  %16 = load ptr, ptr %context.addr, align 8, !dbg !1261
  %call7 = call i32 %11(ptr noundef %12, i32 noundef %13, i32 noundef %14, i8 noundef zeroext %15, ptr noundef %16) #6, !dbg !1255
  store i32 %call7, ptr %status, align 4, !dbg !1262
  %17 = load i32, ptr %status, align 4, !dbg !1263
  %tobool8 = icmp ne i32 %17, 0, !dbg !1263
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1265

if.then9:                                         ; preds = %if.then6
  %18 = load i32, ptr %status, align 4, !dbg !1266
  store i32 %18, ptr %retval, align 4, !dbg !1266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1266

if.end10:                                         ; preds = %if.then6
  br label %if.end11, !dbg !1268

if.end11:                                         ; preds = %if.end10, %if.end3
  %19 = load ptr, ptr %aml.addr, align 8, !dbg !1269
  %call12 = call zeroext i8 @acpi_ut_get_resource_type(ptr noundef %19) #6, !dbg !1271
  %conv = zext i8 %call12 to i32, !dbg !1271
  %cmp13 = icmp eq i32 %conv, 120, !dbg !1272
  br i1 %cmp13, label %if.then15, label %if.end24, !dbg !1273

if.then15:                                        ; preds = %if.end11
  %20 = load ptr, ptr %aml.addr, align 8, !dbg !1274
  %add.ptr16 = getelementptr i8, ptr %20, i64 1, !dbg !1277
  %21 = load ptr, ptr %end_aml, align 8, !dbg !1278
  %cmp17 = icmp uge ptr %add.ptr16, %21, !dbg !1279
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1280

if.then19:                                        ; preds = %if.then15
  store i32 12316, ptr %retval, align 4, !dbg !1281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1281

if.end20:                                         ; preds = %if.then15
  %22 = load ptr, ptr %user_function.addr, align 8, !dbg !1283
  %tobool21 = icmp ne ptr %22, null, !dbg !1283
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1285

if.then22:                                        ; preds = %if.end20
  %23 = load ptr, ptr %aml.addr, align 8, !dbg !1286
  %24 = load ptr, ptr %context.addr, align 8, !dbg !1288
  store ptr %23, ptr %24, align 8, !dbg !1289
  br label %if.end23, !dbg !1290

if.end23:                                         ; preds = %if.then22, %if.end20
  store i32 0, ptr %retval, align 4, !dbg !1291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1291

if.end24:                                         ; preds = %if.end11
  %25 = load i32, ptr %length, align 4, !dbg !1292
  %26 = load ptr, ptr %aml.addr, align 8, !dbg !1293
  %idx.ext = zext i32 %25 to i64, !dbg !1293
  %add.ptr25 = getelementptr i8, ptr %26, i64 %idx.ext, !dbg !1293
  store ptr %add.ptr25, ptr %aml.addr, align 8, !dbg !1293
  %27 = load i32, ptr %length, align 4, !dbg !1294
  %28 = load i32, ptr %offset, align 4, !dbg !1295
  %add = add i32 %28, %27, !dbg !1295
  store i32 %add, ptr %offset, align 4, !dbg !1295
  br label %while.cond, !dbg !1235, !llvm.loop !1296

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %user_function.addr, align 8, !dbg !1300
  %tobool26 = icmp ne ptr %29, null, !dbg !1300
  br i1 %tobool26, label %if.then27, label %if.end34, !dbg !1302

if.then27:                                        ; preds = %while.end
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !1303
  %arraydecay = getelementptr inbounds [2 x i8], ptr %end_tag, i64 0, i64 0, !dbg !1305
  %call28 = call i32 @acpi_ut_validate_resource(ptr noundef %30, ptr noundef %arraydecay, ptr noundef %resource_index) #6, !dbg !1306
  %31 = load ptr, ptr %user_function.addr, align 8, !dbg !1307
  %arraydecay29 = getelementptr inbounds [2 x i8], ptr %end_tag, i64 0, i64 0, !dbg !1308
  %32 = load i32, ptr %offset, align 4, !dbg !1309
  %33 = load i8, ptr %resource_index, align 1, !dbg !1310
  %34 = load ptr, ptr %context.addr, align 8, !dbg !1311
  %call30 = call i32 %31(ptr noundef %arraydecay29, i32 noundef 2, i32 noundef %32, i8 noundef zeroext %33, ptr noundef %34) #6, !dbg !1307
  store i32 %call30, ptr %status, align 4, !dbg !1312
  %35 = load i32, ptr %status, align 4, !dbg !1313
  %tobool31 = icmp ne i32 %35, 0, !dbg !1313
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1315

if.then32:                                        ; preds = %if.then27
  %36 = load i32, ptr %status, align 4, !dbg !1316
  store i32 %36, ptr %retval, align 4, !dbg !1316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1316

if.end33:                                         ; preds = %if.then27
  br label %if.end34, !dbg !1318

if.end34:                                         ; preds = %if.end33, %while.end
  store i32 12316, ptr %retval, align 4, !dbg !1319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1319

cleanup:                                          ; preds = %if.end34, %if.then32, %if.end23, %if.then19, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %end_tag) #5, !dbg !1320
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #5, !dbg !1320
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #5, !dbg !1320
  call void @llvm.lifetime.end.p0(i64 1, ptr %resource_index) #5, !dbg !1320
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_aml) #5, !dbg !1320
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1320
  %37 = load i32, ptr %retval, align 4, !dbg !1320
  ret i32 %37, !dbg !1320
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_validate_resource(ptr noundef %walk_state, ptr noundef %aml, ptr noundef %return_index) #0 align 16 !dbg !1321 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %aml.addr = alloca ptr, align 8
  %return_index.addr = alloca ptr, align 8
  %aml_resource = alloca ptr, align 8
  %resource_type = alloca i8, align 1
  %resource_index = alloca i8, align 1
  %resource_length = alloca i16, align 2
  %minimum_resource_length = alloca i16, align 2
  %common_serial_bus = alloca %struct.aml_resource_common_serialbus, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1325, metadata !DIExpression()), !dbg !1340
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1326, metadata !DIExpression()), !dbg !1341
  store ptr %return_index, ptr %return_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_index.addr, metadata !1327, metadata !DIExpression()), !dbg !1342
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_resource) #5, !dbg !1343
  call void @llvm.dbg.declare(metadata ptr %aml_resource, metadata !1328, metadata !DIExpression()), !dbg !1344
  call void @llvm.lifetime.start.p0(i64 1, ptr %resource_type) #5, !dbg !1345
  call void @llvm.dbg.declare(metadata ptr %resource_type, metadata !1329, metadata !DIExpression()), !dbg !1346
  call void @llvm.lifetime.start.p0(i64 1, ptr %resource_index) #5, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %resource_index, metadata !1330, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0(i64 2, ptr %resource_length) #5, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %resource_length, metadata !1331, metadata !DIExpression()), !dbg !1350
  call void @llvm.lifetime.start.p0(i64 2, ptr %minimum_resource_length) #5, !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %minimum_resource_length, metadata !1334, metadata !DIExpression()), !dbg !1352
  %0 = load ptr, ptr %aml.addr, align 8, !dbg !1353
  %1 = ptrtoint ptr %0 to i64, !dbg !1353
  %2 = inttoptr i64 %1 to ptr, !dbg !1353
  %3 = load i8, ptr %2, align 1, !dbg !1353
  store i8 %3, ptr %resource_type, align 1, !dbg !1354
  %4 = load i8, ptr %resource_type, align 1, !dbg !1355
  %conv = zext i8 %4 to i32, !dbg !1355
  %and = and i32 %conv, 128, !dbg !1357
  %tobool = icmp ne i32 %and, 0, !dbg !1357
  br i1 %tobool, label %if.then, label %if.else, !dbg !1358

if.then:                                          ; preds = %entry
  %5 = load i8, ptr %resource_type, align 1, !dbg !1359
  %conv1 = zext i8 %5 to i32, !dbg !1359
  %cmp = icmp sgt i32 %conv1, 148, !dbg !1362
  br i1 %cmp, label %if.then3, label %if.end, !dbg !1363

if.then3:                                         ; preds = %if.then
  br label %invalid_resource, !dbg !1364

if.end:                                           ; preds = %if.then
  %6 = load i8, ptr %resource_type, align 1, !dbg !1366
  %conv4 = zext i8 %6 to i32, !dbg !1366
  %sub = sub i32 %conv4, 112, !dbg !1367
  %conv5 = trunc i32 %sub to i8, !dbg !1368
  store i8 %conv5, ptr %resource_index, align 1, !dbg !1369
  br label %if.end9, !dbg !1370

if.else:                                          ; preds = %entry
  %7 = load i8, ptr %resource_type, align 1, !dbg !1371
  %conv6 = zext i8 %7 to i32, !dbg !1371
  %and7 = and i32 %conv6, 120, !dbg !1373
  %shr = ashr i32 %and7, 3, !dbg !1374
  %conv8 = trunc i32 %shr to i8, !dbg !1375
  store i8 %conv8, ptr %resource_index, align 1, !dbg !1376
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %8 = load i8, ptr %resource_index, align 1, !dbg !1377
  %idxprom = zext i8 %8 to i64, !dbg !1379
  %arrayidx = getelementptr [36 x i8], ptr @acpi_gbl_resource_types, i64 0, i64 %idxprom, !dbg !1379
  %9 = load i8, ptr %arrayidx, align 1, !dbg !1379
  %tobool10 = icmp ne i8 %9, 0, !dbg !1379
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1380

if.then11:                                        ; preds = %if.end9
  br label %invalid_resource, !dbg !1381

if.end12:                                         ; preds = %if.end9
  %10 = load ptr, ptr %aml.addr, align 8, !dbg !1383
  %call = call zeroext i16 @acpi_ut_get_resource_length(ptr noundef %10) #6, !dbg !1384
  store i16 %call, ptr %resource_length, align 2, !dbg !1385
  %11 = load i8, ptr %resource_index, align 1, !dbg !1386
  %idxprom13 = zext i8 %11 to i64, !dbg !1387
  %arrayidx14 = getelementptr [36 x i8], ptr @acpi_gbl_resource_aml_sizes, i64 0, i64 %idxprom13, !dbg !1387
  %12 = load i8, ptr %arrayidx14, align 1, !dbg !1387
  %conv15 = zext i8 %12 to i16, !dbg !1387
  store i16 %conv15, ptr %minimum_resource_length, align 2, !dbg !1388
  %13 = load i8, ptr %resource_index, align 1, !dbg !1389
  %idxprom16 = zext i8 %13 to i64, !dbg !1390
  %arrayidx17 = getelementptr [36 x i8], ptr @acpi_gbl_resource_types, i64 0, i64 %idxprom16, !dbg !1390
  %14 = load i8, ptr %arrayidx17, align 1, !dbg !1390
  %conv18 = zext i8 %14 to i32, !dbg !1390
  switch i32 %conv18, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 3, label %sw.bb32
  ], !dbg !1391

sw.bb:                                            ; preds = %if.end12
  %15 = load i16, ptr %resource_length, align 2, !dbg !1392
  %conv19 = zext i16 %15 to i32, !dbg !1392
  %16 = load i16, ptr %minimum_resource_length, align 2, !dbg !1395
  %conv20 = zext i16 %16 to i32, !dbg !1395
  %cmp21 = icmp ne i32 %conv19, %conv20, !dbg !1396
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1397

if.then23:                                        ; preds = %sw.bb
  br label %bad_resource_length, !dbg !1398

if.end24:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !1400

sw.bb25:                                          ; preds = %if.end12
  %17 = load i16, ptr %resource_length, align 2, !dbg !1401
  %conv26 = zext i16 %17 to i32, !dbg !1401
  %18 = load i16, ptr %minimum_resource_length, align 2, !dbg !1403
  %conv27 = zext i16 %18 to i32, !dbg !1403
  %cmp28 = icmp slt i32 %conv26, %conv27, !dbg !1404
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1405

if.then30:                                        ; preds = %sw.bb25
  br label %bad_resource_length, !dbg !1406

if.end31:                                         ; preds = %sw.bb25
  br label %sw.epilog, !dbg !1408

sw.bb32:                                          ; preds = %if.end12
  %19 = load i16, ptr %resource_length, align 2, !dbg !1409
  %conv33 = zext i16 %19 to i32, !dbg !1409
  %20 = load i16, ptr %minimum_resource_length, align 2, !dbg !1411
  %conv34 = zext i16 %20 to i32, !dbg !1411
  %cmp35 = icmp sgt i32 %conv33, %conv34, !dbg !1412
  br i1 %cmp35, label %if.then42, label %lor.lhs.false, !dbg !1413

lor.lhs.false:                                    ; preds = %sw.bb32
  %21 = load i16, ptr %resource_length, align 2, !dbg !1414
  %conv37 = zext i16 %21 to i32, !dbg !1414
  %22 = load i16, ptr %minimum_resource_length, align 2, !dbg !1415
  %conv38 = zext i16 %22 to i32, !dbg !1415
  %sub39 = sub i32 %conv38, 1, !dbg !1416
  %cmp40 = icmp slt i32 %conv37, %sub39, !dbg !1417
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !1418

if.then42:                                        ; preds = %lor.lhs.false, %sw.bb32
  br label %bad_resource_length, !dbg !1419

if.end43:                                         ; preds = %lor.lhs.false
  br label %sw.epilog, !dbg !1421

sw.default:                                       ; preds = %if.end12
  br label %invalid_resource, !dbg !1422

sw.epilog:                                        ; preds = %if.end43, %if.end31, %if.end24
  %23 = load ptr, ptr %aml.addr, align 8, !dbg !1423
  %24 = ptrtoint ptr %23 to i64, !dbg !1423
  %25 = inttoptr i64 %24 to ptr, !dbg !1423
  store ptr %25, ptr %aml_resource, align 8, !dbg !1424
  %26 = load i8, ptr %resource_type, align 1, !dbg !1425
  %conv44 = zext i8 %26 to i32, !dbg !1425
  %cmp45 = icmp eq i32 %conv44, 142, !dbg !1426
  br i1 %cmp45, label %if.then47, label %if.end63, !dbg !1427

if.then47:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 12, ptr %common_serial_bus) #5, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %common_serial_bus, metadata !1335, metadata !DIExpression()), !dbg !1429
  %27 = load ptr, ptr %aml_resource, align 8, !dbg !1430
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %common_serial_bus, ptr align 4 %27, i64 12, i1 false), !dbg !1431
  %type = getelementptr inbounds %struct.aml_resource_common_serialbus, ptr %common_serial_bus, i32 0, i32 4, !dbg !1432
  %28 = load i8, ptr %type, align 1, !dbg !1432
  %conv48 = zext i8 %28 to i32, !dbg !1434
  %cmp49 = icmp eq i32 %conv48, 0, !dbg !1435
  br i1 %cmp49, label %if.then56, label %lor.lhs.false51, !dbg !1436

lor.lhs.false51:                                  ; preds = %if.then47
  %type52 = getelementptr inbounds %struct.aml_resource_common_serialbus, ptr %common_serial_bus, i32 0, i32 4, !dbg !1437
  %29 = load i8, ptr %type52, align 1, !dbg !1437
  %conv53 = zext i8 %29 to i32, !dbg !1438
  %cmp54 = icmp sgt i32 %conv53, 4, !dbg !1439
  br i1 %cmp54, label %if.then56, label %if.end62, !dbg !1440

if.then56:                                        ; preds = %lor.lhs.false51, %if.then47
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !1441
  %tobool57 = icmp ne ptr %30, null, !dbg !1441
  br i1 %tobool57, label %if.then58, label %if.end61, !dbg !1444

if.then58:                                        ; preds = %if.then56
  %type59 = getelementptr inbounds %struct.aml_resource_common_serialbus, ptr %common_serial_bus, i32 0, i32 4, !dbg !1445
  %31 = load i8, ptr %type59, align 1, !dbg !1445
  %conv60 = zext i8 %31 to i32, !dbg !1445
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 375, ptr noundef @.str, i32 noundef %conv60) #6, !dbg !1445
  br label %if.end61, !dbg !1447

if.end61:                                         ; preds = %if.then58, %if.then56
  store i32 12311, ptr %retval, align 4, !dbg !1448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1448

if.end62:                                         ; preds = %lor.lhs.false51
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1449
  br label %cleanup, !dbg !1449

cleanup:                                          ; preds = %if.end62, %if.end61
  call void @llvm.lifetime.end.p0(i64 12, ptr %common_serial_bus) #5, !dbg !1449
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup77 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end63, !dbg !1450

if.end63:                                         ; preds = %cleanup.cont, %sw.epilog
  %32 = load ptr, ptr %return_index.addr, align 8, !dbg !1451
  %tobool64 = icmp ne ptr %32, null, !dbg !1451
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !1453

if.then65:                                        ; preds = %if.end63
  %33 = load i8, ptr %resource_index, align 1, !dbg !1454
  %34 = load ptr, ptr %return_index.addr, align 8, !dbg !1456
  store i8 %33, ptr %34, align 1, !dbg !1457
  br label %if.end66, !dbg !1458

if.end66:                                         ; preds = %if.then65, %if.end63
  store i32 0, ptr %retval, align 4, !dbg !1459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup77, !dbg !1459

invalid_resource:                                 ; preds = %sw.default, %if.then11, %if.then3
  call void @llvm.dbg.label(metadata !1338), !dbg !1460
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1461
  %tobool67 = icmp ne ptr %35, null, !dbg !1461
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !1463

if.then68:                                        ; preds = %invalid_resource
  %36 = load i8, ptr %resource_type, align 1, !dbg !1464
  %conv69 = zext i8 %36 to i32, !dbg !1464
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 394, ptr noundef @.str.1, i32 noundef %conv69) #6, !dbg !1464
  br label %if.end70, !dbg !1466

if.end70:                                         ; preds = %if.then68, %invalid_resource
  store i32 12311, ptr %retval, align 4, !dbg !1467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup77, !dbg !1467

bad_resource_length:                              ; preds = %if.then42, %if.then30, %if.then23
  call void @llvm.dbg.label(metadata !1339), !dbg !1468
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !1469
  %tobool71 = icmp ne ptr %37, null, !dbg !1469
  br i1 %tobool71, label %if.then72, label %if.end76, !dbg !1471

if.then72:                                        ; preds = %bad_resource_length
  %38 = load i8, ptr %resource_type, align 1, !dbg !1472
  %conv73 = zext i8 %38 to i32, !dbg !1472
  %39 = load i16, ptr %resource_length, align 2, !dbg !1472
  %conv74 = zext i16 %39 to i32, !dbg !1472
  %40 = load i16, ptr %minimum_resource_length, align 2, !dbg !1472
  %conv75 = zext i16 %40 to i32, !dbg !1472
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 403, ptr noundef @.str.2, i32 noundef %conv73, i32 noundef %conv74, i32 noundef %conv75) #6, !dbg !1472
  br label %if.end76, !dbg !1474

if.end76:                                         ; preds = %if.then72, %bad_resource_length
  store i32 12319, ptr %retval, align 4, !dbg !1475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup77, !dbg !1475

cleanup77:                                        ; preds = %if.end76, %if.end70, %if.end66, %cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr %minimum_resource_length) #5, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 2, ptr %resource_length) #5, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 1, ptr %resource_index) #5, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 1, ptr %resource_type) #5, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_resource) #5, !dbg !1476
  %41 = load i32, ptr %retval, align 4, !dbg !1476
  ret i32 %41, !dbg !1476
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_get_descriptor_length(ptr noundef %aml) #0 align 16 !dbg !1477 {
entry:
  %aml.addr = alloca ptr, align 8
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1481, metadata !DIExpression()), !dbg !1482
  %0 = load ptr, ptr %aml.addr, align 8, !dbg !1483
  %call = call zeroext i16 @acpi_ut_get_resource_length(ptr noundef %0) #6, !dbg !1484
  %conv = zext i16 %call to i32, !dbg !1484
  %1 = load ptr, ptr %aml.addr, align 8, !dbg !1485
  %call1 = call zeroext i8 @acpi_ut_get_resource_header_length(ptr noundef %1) #6, !dbg !1486
  %conv2 = zext i8 %call1 to i32, !dbg !1486
  %add = add i32 %conv, %conv2, !dbg !1487
  ret i32 %add, !dbg !1488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_get_resource_type(ptr noundef %aml) #0 align 16 !dbg !1489 {
entry:
  %retval = alloca i8, align 1
  %aml.addr = alloca ptr, align 8
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1493, metadata !DIExpression()), !dbg !1494
  %0 = load ptr, ptr %aml.addr, align 8, !dbg !1495
  %1 = ptrtoint ptr %0 to i64, !dbg !1495
  %2 = inttoptr i64 %1 to ptr, !dbg !1495
  %3 = load i8, ptr %2, align 1, !dbg !1495
  %conv = zext i8 %3 to i32, !dbg !1495
  %and = and i32 %conv, 128, !dbg !1497
  %tobool = icmp ne i32 %and, 0, !dbg !1497
  br i1 %tobool, label %if.then, label %if.else, !dbg !1498

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %aml.addr, align 8, !dbg !1499
  %5 = ptrtoint ptr %4 to i64, !dbg !1499
  %6 = inttoptr i64 %5 to ptr, !dbg !1499
  %7 = load i8, ptr %6, align 1, !dbg !1499
  store i8 %7, ptr %retval, align 1, !dbg !1501
  br label %return, !dbg !1501

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %aml.addr, align 8, !dbg !1502
  %9 = ptrtoint ptr %8 to i64, !dbg !1502
  %10 = inttoptr i64 %9 to ptr, !dbg !1502
  %11 = load i8, ptr %10, align 1, !dbg !1502
  %conv1 = zext i8 %11 to i32, !dbg !1502
  %and2 = and i32 %conv1, 120, !dbg !1504
  %conv3 = trunc i32 %and2 to i8, !dbg !1505
  store i8 %conv3, ptr %retval, align 1, !dbg !1506
  br label %return, !dbg !1506

return:                                           ; preds = %if.else, %if.then
  %12 = load i8, ptr %retval, align 1, !dbg !1507
  ret i8 %12, !dbg !1507
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @acpi_ut_get_resource_length(ptr noundef %aml) #0 align 16 !dbg !1508 {
entry:
  %aml.addr = alloca ptr, align 8
  %resource_length = alloca i16, align 2
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1512, metadata !DIExpression()), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 2, ptr %resource_length) #5, !dbg !1515
  call void @llvm.dbg.declare(metadata ptr %resource_length, metadata !1513, metadata !DIExpression()), !dbg !1516
  %0 = load ptr, ptr %aml.addr, align 8, !dbg !1517
  %1 = ptrtoint ptr %0 to i64, !dbg !1517
  %2 = inttoptr i64 %1 to ptr, !dbg !1517
  %3 = load i8, ptr %2, align 1, !dbg !1517
  %conv = zext i8 %3 to i32, !dbg !1517
  %and = and i32 %conv, 128, !dbg !1519
  %tobool = icmp ne i32 %and, 0, !dbg !1519
  br i1 %tobool, label %if.then, label %if.else, !dbg !1520

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %aml.addr, align 8, !dbg !1521
  %5 = ptrtoint ptr %4 to i64, !dbg !1521
  %6 = inttoptr i64 %5 to ptr, !dbg !1521
  %add.ptr = getelementptr i8, ptr %6, i64 1, !dbg !1521
  %7 = ptrtoint ptr %add.ptr to i64, !dbg !1521
  %8 = inttoptr i64 %7 to ptr, !dbg !1521
  %9 = load i16, ptr %8, align 2, !dbg !1521
  store i16 %9, ptr %resource_length, align 2, !dbg !1521
  br label %if.end, !dbg !1523

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %aml.addr, align 8, !dbg !1524
  %11 = ptrtoint ptr %10 to i64, !dbg !1524
  %12 = inttoptr i64 %11 to ptr, !dbg !1524
  %13 = load i8, ptr %12, align 1, !dbg !1524
  %conv1 = zext i8 %13 to i32, !dbg !1524
  %and2 = and i32 %conv1, 7, !dbg !1526
  %conv3 = trunc i32 %and2 to i16, !dbg !1527
  store i16 %conv3, ptr %resource_length, align 2, !dbg !1528
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i16, ptr %resource_length, align 2, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 2, ptr %resource_length) #5, !dbg !1530
  ret i16 %14, !dbg !1531
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1532 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_get_resource_header_length(ptr noundef %aml) #0 align 16 !dbg !1537 {
entry:
  %retval = alloca i8, align 1
  %aml.addr = alloca ptr, align 8
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1539, metadata !DIExpression()), !dbg !1540
  %0 = load ptr, ptr %aml.addr, align 8, !dbg !1541
  %1 = ptrtoint ptr %0 to i64, !dbg !1541
  %2 = inttoptr i64 %1 to ptr, !dbg !1541
  %3 = load i8, ptr %2, align 1, !dbg !1541
  %conv = zext i8 %3 to i32, !dbg !1541
  %and = and i32 %conv, 128, !dbg !1543
  %tobool = icmp ne i32 %and, 0, !dbg !1543
  br i1 %tobool, label %if.then, label %if.else, !dbg !1544

if.then:                                          ; preds = %entry
  store i8 3, ptr %retval, align 1, !dbg !1545
  br label %return, !dbg !1545

if.else:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1, !dbg !1547
  br label %return, !dbg !1547

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, ptr %retval, align 1, !dbg !1549
  ret i8 %4, !dbg !1549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_get_resource_end_tag(ptr noundef %obj_desc, ptr noundef %end_tag) #0 align 16 !dbg !1550 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %end_tag.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1555, metadata !DIExpression()), !dbg !1558
  store ptr %end_tag, ptr %end_tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end_tag.addr, metadata !1556, metadata !DIExpression()), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1557, metadata !DIExpression()), !dbg !1561
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1562
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %0, i32 0, i32 6, !dbg !1564
  %1 = load i32, ptr %length, align 8, !dbg !1564
  %tobool = icmp ne i32 %1, 0, !dbg !1562
  br i1 %tobool, label %if.end, label %if.then, !dbg !1565

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1566
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %2, i32 0, i32 5, !dbg !1568
  %3 = load ptr, ptr %pointer, align 8, !dbg !1568
  %4 = load ptr, ptr %end_tag.addr, align 8, !dbg !1569
  store ptr %3, ptr %4, align 8, !dbg !1570
  store i32 0, ptr %retval, align 4, !dbg !1571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1571

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1572
  %pointer1 = getelementptr inbounds %struct.acpi_object_buffer, ptr %5, i32 0, i32 5, !dbg !1573
  %6 = load ptr, ptr %pointer1, align 8, !dbg !1573
  %7 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1574
  %length2 = getelementptr inbounds %struct.acpi_object_buffer, ptr %7, i32 0, i32 6, !dbg !1575
  %8 = load i32, ptr %length2, align 8, !dbg !1575
  %conv = zext i32 %8 to i64, !dbg !1574
  %9 = load ptr, ptr %end_tag.addr, align 8, !dbg !1576
  %call = call i32 @acpi_ut_walk_aml_resources(ptr noundef null, ptr noundef %6, i64 noundef %conv, ptr noundef null, ptr noundef %9) #6, !dbg !1577
  store i32 %call, ptr %status, align 4, !dbg !1578
  %10 = load i32, ptr %status, align 4, !dbg !1579
  store i32 %10, ptr %retval, align 4, !dbg !1579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1579

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1580
  %11 = load i32, ptr %retval, align 4, !dbg !1580
  ret i32 %11, !dbg !1580
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!423, !424, !425, !426, !427, !428, !429, !430}
!llvm.ident = !{!431}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_resource_aml_sizes", scope: !2, file: !3, line: 19, type: !414, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utresrc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utresrc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utresrc.ll drivers/acpi/acpica/utresrc.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !389, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utresrc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fcf18659a882b03bde87382a7909d4b")
!4 = !{!5, !12, !16, !13, !19, !385, !386, !387, !33, !388}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !17, line: 42, baseType: !18)
!17 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !21, line: 513, size: 448, elements: !22)
!21 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39fadf1e91338a4bdfc4b9e2f15bad0f")
!22 = !{!23, !24, !28, !36, !42, !48, !53, !57, !66, !72, !79, !83, !88, !98, !111, !116, !126, !134, !147, !160, !173, !189, !210, !227, !241, !258, !275, !287, !299, !313, !327, !338, !351, !365, !374, !382, !383, !384}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !20, file: !21, line: 516, baseType: !13, size: 8)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !20, file: !21, line: 517, baseType: !25, size: 8)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !21, line: 118, size: 8, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !25, file: !21, line: 119, baseType: !13, size: 8)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !20, file: !21, line: 518, baseType: !29, size: 24)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !21, line: 178, size: 24, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !29, file: !21, line: 179, baseType: !13, size: 8)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !29, file: !21, line: 179, baseType: !33, size: 16, offset: 8)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !20, file: !21, line: 522, baseType: !37, size: 32)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !21, line: 121, size: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !21, line: 122, baseType: !13, size: 8)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !37, file: !21, line: 122, baseType: !33, size: 16, offset: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !21, line: 123, baseType: !13, size: 8, offset: 24)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !20, file: !21, line: 523, baseType: !43, size: 24)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !21, line: 130, size: 24, elements: !44)
!44 = !{!45, !46, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !21, line: 131, baseType: !13, size: 8)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !43, file: !21, line: 131, baseType: !13, size: 8, offset: 8)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !21, line: 132, baseType: !13, size: 8, offset: 16)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !20, file: !21, line: 524, baseType: !49, size: 16)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !21, line: 135, size: 16, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !21, line: 136, baseType: !13, size: 8)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !21, line: 136, baseType: !13, size: 8, offset: 8)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !20, file: !21, line: 525, baseType: !54, size: 8)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !21, line: 142, size: 8, elements: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !21, line: 143, baseType: !13, size: 8)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !20, file: !21, line: 526, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !21, line: 145, size: 64, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !21, line: 146, baseType: !13, size: 8)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !21, line: 146, baseType: !13, size: 8, offset: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !58, file: !21, line: 147, baseType: !33, size: 16, offset: 16)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !58, file: !21, line: 148, baseType: !33, size: 16, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !58, file: !21, line: 149, baseType: !13, size: 8, offset: 48)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !58, file: !21, line: 150, baseType: !13, size: 8, offset: 56)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !20, file: !21, line: 527, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !21, line: 153, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !67, file: !21, line: 154, baseType: !13, size: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !67, file: !21, line: 154, baseType: !33, size: 16, offset: 8)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !67, file: !21, line: 155, baseType: !13, size: 8, offset: 24)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !20, file: !21, line: 528, baseType: !73, size: 48)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !21, line: 165, size: 48, elements: !74)
!74 = !{!75, !76, !77, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !73, file: !21, line: 166, baseType: !13, size: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !73, file: !21, line: 166, baseType: !33, size: 16, offset: 8)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !73, file: !21, line: 167, baseType: !33, size: 16, offset: 24)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !73, file: !21, line: 168, baseType: !13, size: 8, offset: 40)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !20, file: !21, line: 529, baseType: !80, size: 8)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !21, line: 158, size: 8, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !21, line: 159, baseType: !13, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !20, file: !21, line: 530, baseType: !84, size: 16)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !21, line: 161, size: 16, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !21, line: 162, baseType: !13, size: 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !84, file: !21, line: 162, baseType: !13, size: 8, offset: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !20, file: !21, line: 534, baseType: !89, size: 96)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !21, line: 187, size: 96, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !21, line: 188, baseType: !13, size: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !89, file: !21, line: 188, baseType: !33, size: 16, offset: 8)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !21, line: 188, baseType: !13, size: 8, offset: 24)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !89, file: !21, line: 189, baseType: !33, size: 16, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !89, file: !21, line: 190, baseType: !33, size: 16, offset: 48)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !89, file: !21, line: 191, baseType: !33, size: 16, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !89, file: !21, line: 192, baseType: !33, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !20, file: !21, line: 535, baseType: !99, size: 120)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !21, line: 271, size: 120, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !21, line: 272, baseType: !13, size: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !99, file: !21, line: 272, baseType: !33, size: 16, offset: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !99, file: !21, line: 272, baseType: !13, size: 8, offset: 24)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !99, file: !21, line: 273, baseType: !13, size: 8, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !99, file: !21, line: 274, baseType: !13, size: 8, offset: 40)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !99, file: !21, line: 275, baseType: !13, size: 8, offset: 48)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !99, file: !21, line: 276, baseType: !108, size: 64, offset: 56)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !110)
!110 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !20, file: !21, line: 536, baseType: !112, size: 24)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !21, line: 195, size: 24, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !112, file: !21, line: 196, baseType: !13, size: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !112, file: !21, line: 196, baseType: !33, size: 16, offset: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !20, file: !21, line: 537, baseType: !117, size: 160)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !21, line: 198, size: 160, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !21, line: 199, baseType: !13, size: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !117, file: !21, line: 199, baseType: !33, size: 16, offset: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !21, line: 199, baseType: !13, size: 8, offset: 24)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !117, file: !21, line: 200, baseType: !7, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !117, file: !21, line: 201, baseType: !7, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !117, file: !21, line: 202, baseType: !7, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !117, file: !21, line: 203, baseType: !7, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !20, file: !21, line: 538, baseType: !127, size: 96)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !21, line: 206, size: 96, elements: !128)
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !21, line: 207, baseType: !13, size: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !127, file: !21, line: 207, baseType: !33, size: 16, offset: 8)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !21, line: 207, baseType: !13, size: 8, offset: 24)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !127, file: !21, line: 208, baseType: !7, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !127, file: !21, line: 209, baseType: !7, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !20, file: !21, line: 539, baseType: !135, size: 128)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !21, line: 252, size: 128, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !21, line: 253, baseType: !13, size: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !135, file: !21, line: 253, baseType: !33, size: 16, offset: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !135, file: !21, line: 254, baseType: !13, size: 8, offset: 24)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !21, line: 254, baseType: !13, size: 8, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !135, file: !21, line: 254, baseType: !13, size: 8, offset: 40)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !135, file: !21, line: 254, baseType: !33, size: 16, offset: 48)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !135, file: !21, line: 255, baseType: !33, size: 16, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !135, file: !21, line: 256, baseType: !33, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !135, file: !21, line: 257, baseType: !33, size: 16, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !135, file: !21, line: 258, baseType: !33, size: 16, offset: 112)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !20, file: !21, line: 540, baseType: !148, size: 208)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !21, line: 243, size: 208, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !148, file: !21, line: 244, baseType: !13, size: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !148, file: !21, line: 244, baseType: !33, size: 16, offset: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !148, file: !21, line: 245, baseType: !13, size: 8, offset: 24)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !21, line: 245, baseType: !13, size: 8, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !148, file: !21, line: 245, baseType: !13, size: 8, offset: 40)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !148, file: !21, line: 245, baseType: !7, size: 32, offset: 48)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !148, file: !21, line: 246, baseType: !7, size: 32, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !148, file: !21, line: 247, baseType: !7, size: 32, offset: 112)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !148, file: !21, line: 248, baseType: !7, size: 32, offset: 144)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !148, file: !21, line: 249, baseType: !7, size: 32, offset: 176)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !20, file: !21, line: 541, baseType: !161, size: 368)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !21, line: 234, size: 368, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !21, line: 235, baseType: !13, size: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !161, file: !21, line: 235, baseType: !33, size: 16, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !161, file: !21, line: 236, baseType: !13, size: 8, offset: 24)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !21, line: 236, baseType: !13, size: 8, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !161, file: !21, line: 236, baseType: !13, size: 8, offset: 40)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !161, file: !21, line: 236, baseType: !108, size: 64, offset: 48)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !161, file: !21, line: 237, baseType: !108, size: 64, offset: 112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !161, file: !21, line: 238, baseType: !108, size: 64, offset: 176)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !161, file: !21, line: 239, baseType: !108, size: 64, offset: 240)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !161, file: !21, line: 240, baseType: !108, size: 64, offset: 304)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !20, file: !21, line: 542, baseType: !174, size: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !21, line: 220, size: 448, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !174, file: !21, line: 221, baseType: !13, size: 8)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !174, file: !21, line: 221, baseType: !33, size: 16, offset: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !174, file: !21, line: 222, baseType: !13, size: 8, offset: 24)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !21, line: 222, baseType: !13, size: 8, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !174, file: !21, line: 222, baseType: !13, size: 8, offset: 40)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !174, file: !21, line: 222, baseType: !13, size: 8, offset: 48)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !174, file: !21, line: 223, baseType: !13, size: 8, offset: 56)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !174, file: !21, line: 224, baseType: !108, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !174, file: !21, line: 225, baseType: !108, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !174, file: !21, line: 226, baseType: !108, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !174, file: !21, line: 227, baseType: !108, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !174, file: !21, line: 228, baseType: !108, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !174, file: !21, line: 229, baseType: !108, size: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !20, file: !21, line: 543, baseType: !190, size: 72)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !21, line: 261, size: 72, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !190, file: !21, line: 262, baseType: !13, size: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !190, file: !21, line: 262, baseType: !33, size: 16, offset: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !21, line: 262, baseType: !13, size: 8, offset: 24)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !190, file: !21, line: 263, baseType: !13, size: 8, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !21, line: 264, baseType: !197, size: 32, offset: 40)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !21, line: 264, size: 32, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !197, file: !21, line: 265, baseType: !7, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !21, line: 266, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !21, line: 266, elements: !202)
!202 = !{!203, !206}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !201, file: !21, line: 266, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !201, file: !21, line: 266, elements: !205)
!205 = !{}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !201, file: !21, line: 266, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: -1)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !20, file: !21, line: 544, baseType: !211, size: 184)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !21, line: 281, size: 184, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !211, file: !21, line: 282, baseType: !13, size: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !211, file: !21, line: 282, baseType: !33, size: 16, offset: 8)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !211, file: !21, line: 282, baseType: !13, size: 8, offset: 24)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !211, file: !21, line: 283, baseType: !13, size: 8, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !21, line: 284, baseType: !33, size: 16, offset: 40)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !211, file: !21, line: 285, baseType: !33, size: 16, offset: 56)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !211, file: !21, line: 286, baseType: !13, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !211, file: !21, line: 287, baseType: !33, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !211, file: !21, line: 288, baseType: !33, size: 16, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !211, file: !21, line: 289, baseType: !33, size: 16, offset: 112)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !211, file: !21, line: 290, baseType: !13, size: 8, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !211, file: !21, line: 291, baseType: !33, size: 16, offset: 136)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !211, file: !21, line: 292, baseType: !33, size: 16, offset: 152)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !211, file: !21, line: 293, baseType: !33, size: 16, offset: 168)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !20, file: !21, line: 545, baseType: !228, size: 144)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !21, line: 346, size: 144, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !228, file: !21, line: 347, baseType: !13, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !228, file: !21, line: 347, baseType: !33, size: 16, offset: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !228, file: !21, line: 348, baseType: !13, size: 8, offset: 24)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !228, file: !21, line: 348, baseType: !13, size: 8, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !228, file: !21, line: 348, baseType: !13, size: 8, offset: 40)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !21, line: 348, baseType: !13, size: 8, offset: 48)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !228, file: !21, line: 348, baseType: !33, size: 16, offset: 56)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !228, file: !21, line: 348, baseType: !13, size: 8, offset: 72)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !228, file: !21, line: 348, baseType: !33, size: 16, offset: 80)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !228, file: !21, line: 348, baseType: !7, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !228, file: !21, line: 349, baseType: !33, size: 16, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !20, file: !21, line: 546, baseType: !242, size: 168)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !21, line: 361, size: 168, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !242, file: !21, line: 362, baseType: !13, size: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !242, file: !21, line: 362, baseType: !33, size: 16, offset: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !242, file: !21, line: 363, baseType: !13, size: 8, offset: 24)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !242, file: !21, line: 363, baseType: !13, size: 8, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !21, line: 363, baseType: !13, size: 8, offset: 40)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !21, line: 363, baseType: !13, size: 8, offset: 48)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !242, file: !21, line: 363, baseType: !33, size: 16, offset: 56)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !242, file: !21, line: 363, baseType: !13, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !242, file: !21, line: 363, baseType: !33, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !242, file: !21, line: 363, baseType: !7, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !242, file: !21, line: 364, baseType: !13, size: 8, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !242, file: !21, line: 365, baseType: !13, size: 8, offset: 136)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !242, file: !21, line: 366, baseType: !13, size: 8, offset: 144)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !242, file: !21, line: 367, baseType: !33, size: 16, offset: 152)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !20, file: !21, line: 547, baseType: !259, size: 176)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !21, line: 379, size: 176, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !259, file: !21, line: 380, baseType: !13, size: 8)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !259, file: !21, line: 380, baseType: !33, size: 16, offset: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !259, file: !21, line: 381, baseType: !13, size: 8, offset: 24)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !259, file: !21, line: 381, baseType: !13, size: 8, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !259, file: !21, line: 381, baseType: !13, size: 8, offset: 40)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !259, file: !21, line: 381, baseType: !13, size: 8, offset: 48)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !259, file: !21, line: 381, baseType: !33, size: 16, offset: 56)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !259, file: !21, line: 381, baseType: !13, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !259, file: !21, line: 381, baseType: !33, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !259, file: !21, line: 381, baseType: !7, size: 32, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !259, file: !21, line: 382, baseType: !33, size: 16, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !259, file: !21, line: 383, baseType: !33, size: 16, offset: 144)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !259, file: !21, line: 384, baseType: !13, size: 8, offset: 160)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !259, file: !21, line: 385, baseType: !13, size: 8, offset: 168)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !20, file: !21, line: 548, baseType: !276, size: 96)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_csi2_serialbus", file: !21, line: 333, size: 96, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !21, line: 334, baseType: !13, size: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !276, file: !21, line: 334, baseType: !33, size: 16, offset: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !276, file: !21, line: 334, baseType: !13, size: 8, offset: 24)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !276, file: !21, line: 334, baseType: !13, size: 8, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !276, file: !21, line: 334, baseType: !13, size: 8, offset: 40)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !21, line: 334, baseType: !13, size: 8, offset: 48)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !276, file: !21, line: 334, baseType: !33, size: 16, offset: 56)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !276, file: !21, line: 334, baseType: !13, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !276, file: !21, line: 334, baseType: !33, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !20, file: !21, line: 549, baseType: !288, size: 96)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !21, line: 330, size: 96, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !21, line: 331, baseType: !13, size: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !288, file: !21, line: 331, baseType: !33, size: 16, offset: 8)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !288, file: !21, line: 331, baseType: !13, size: 8, offset: 24)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !288, file: !21, line: 331, baseType: !13, size: 8, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !288, file: !21, line: 331, baseType: !13, size: 8, offset: 40)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !21, line: 331, baseType: !13, size: 8, offset: 48)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !288, file: !21, line: 331, baseType: !33, size: 16, offset: 56)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !288, file: !21, line: 331, baseType: !13, size: 8, offset: 72)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !288, file: !21, line: 331, baseType: !33, size: 16, offset: 80)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !20, file: !21, line: 550, baseType: !300, size: 144)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !21, line: 397, size: 144, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !21, line: 398, baseType: !13, size: 8)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !300, file: !21, line: 398, baseType: !33, size: 16, offset: 8)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !300, file: !21, line: 398, baseType: !13, size: 8, offset: 24)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !21, line: 399, baseType: !33, size: 16, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !300, file: !21, line: 400, baseType: !13, size: 8, offset: 48)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !300, file: !21, line: 401, baseType: !33, size: 16, offset: 56)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !300, file: !21, line: 402, baseType: !33, size: 16, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !300, file: !21, line: 403, baseType: !13, size: 8, offset: 88)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !300, file: !21, line: 404, baseType: !33, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !300, file: !21, line: 405, baseType: !33, size: 16, offset: 112)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !300, file: !21, line: 406, baseType: !33, size: 16, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !20, file: !21, line: 551, baseType: !314, size: 160)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !21, line: 417, size: 160, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !21, line: 418, baseType: !13, size: 8)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !314, file: !21, line: 418, baseType: !33, size: 16, offset: 8)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !314, file: !21, line: 418, baseType: !13, size: 8, offset: 24)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !21, line: 419, baseType: !33, size: 16, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !314, file: !21, line: 420, baseType: !13, size: 8, offset: 48)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !314, file: !21, line: 421, baseType: !7, size: 32, offset: 56)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !314, file: !21, line: 422, baseType: !33, size: 16, offset: 88)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !314, file: !21, line: 423, baseType: !13, size: 8, offset: 104)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !314, file: !21, line: 424, baseType: !33, size: 16, offset: 112)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !314, file: !21, line: 425, baseType: !33, size: 16, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !314, file: !21, line: 426, baseType: !33, size: 16, offset: 144)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !20, file: !21, line: 552, baseType: !328, size: 112)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !21, line: 451, size: 112, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !21, line: 452, baseType: !13, size: 8)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !328, file: !21, line: 452, baseType: !33, size: 16, offset: 8)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !328, file: !21, line: 452, baseType: !13, size: 8, offset: 24)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !21, line: 453, baseType: !33, size: 16, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !328, file: !21, line: 454, baseType: !33, size: 16, offset: 48)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !328, file: !21, line: 455, baseType: !33, size: 16, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !328, file: !21, line: 456, baseType: !33, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !328, file: !21, line: 457, baseType: !33, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !20, file: !21, line: 553, baseType: !339, size: 136)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !21, line: 468, size: 136, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !21, line: 469, baseType: !13, size: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !339, file: !21, line: 469, baseType: !33, size: 16, offset: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !339, file: !21, line: 469, baseType: !13, size: 8, offset: 24)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !21, line: 470, baseType: !33, size: 16, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !339, file: !21, line: 471, baseType: !33, size: 16, offset: 48)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !339, file: !21, line: 472, baseType: !13, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !339, file: !21, line: 473, baseType: !33, size: 16, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !339, file: !21, line: 474, baseType: !33, size: 16, offset: 88)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !339, file: !21, line: 475, baseType: !33, size: 16, offset: 104)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !339, file: !21, line: 476, baseType: !33, size: 16, offset: 120)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !20, file: !21, line: 554, baseType: !352, size: 160)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !21, line: 487, size: 160, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !21, line: 488, baseType: !13, size: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !352, file: !21, line: 488, baseType: !33, size: 16, offset: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !352, file: !21, line: 488, baseType: !13, size: 8, offset: 24)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !21, line: 489, baseType: !33, size: 16, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !352, file: !21, line: 490, baseType: !13, size: 8, offset: 48)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !352, file: !21, line: 491, baseType: !7, size: 32, offset: 56)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !352, file: !21, line: 492, baseType: !13, size: 8, offset: 88)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !352, file: !21, line: 493, baseType: !33, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !352, file: !21, line: 494, baseType: !33, size: 16, offset: 112)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !352, file: !21, line: 495, baseType: !33, size: 16, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !352, file: !21, line: 496, baseType: !33, size: 16, offset: 144)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !20, file: !21, line: 555, baseType: !366, size: 96)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_clock_input", file: !21, line: 437, size: 96, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !21, line: 438, baseType: !13, size: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !366, file: !21, line: 438, baseType: !33, size: 16, offset: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !366, file: !21, line: 438, baseType: !13, size: 8, offset: 24)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !21, line: 439, baseType: !33, size: 16, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !366, file: !21, line: 440, baseType: !33, size: 16, offset: 48)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !366, file: !21, line: 441, baseType: !7, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !20, file: !21, line: 559, baseType: !375, size: 48)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !21, line: 217, size: 48, elements: !376)
!376 = !{!377, !378, !379, !380, !381}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !21, line: 218, baseType: !13, size: 8)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !375, file: !21, line: 218, baseType: !33, size: 16, offset: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !375, file: !21, line: 218, baseType: !13, size: 8, offset: 24)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !21, line: 218, baseType: !13, size: 8, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !375, file: !21, line: 218, baseType: !13, size: 8, offset: 40)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !20, file: !21, line: 560, baseType: !7, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !20, file: !21, line: 561, baseType: !33, size: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !20, file: !21, line: 562, baseType: !13, size: 8)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !108)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!389 = !{!0, !390, !396, !402, !407, !412, !417}
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "acpi_gbl_resource_aml_serial_bus_sizes", scope: !2, file: !3, line: 64, type: !392, isLocal: false, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 40, elements: !394)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!394 = !{!395}
!395 = !DISubrange(count: 5)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 375, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 536, elements: !400)
!399 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!400 = !{!401}
!401 = !DISubrange(count: 67)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 432, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 54)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !409, isLocal: true, isDefinition: true)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 672, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 84)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "acpi_gbl_resource_types", scope: !2, file: !3, line: 78, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 288, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 36)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 64, elements: !421)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!421 = !{!422}
!422 = !DISubrange(count: 8)
!423 = !{i32 7, !"Dwarf Version", i32 5}
!424 = !{i32 2, !"Debug Info Version", i32 3}
!425 = !{i32 1, !"wchar_size", i32 2}
!426 = !{i32 8, !"cf-protection-branch", i32 1}
!427 = !{i32 4, !"function_return_thunk_extern", i32 1}
!428 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!429 = !{i32 1, !"Code Model", i32 2}
!430 = !{i32 1, !"override-stack-alignment", i32 8}
!431 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!432 = distinct !DISubprogram(name: "acpi_ut_walk_aml_resources", scope: !3, file: !3, line: 141, type: !433, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1195)
!433 = !DISubroutineType(types: !434)
!434 = !{!5, !435, !12, !387, !1190, !388}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !437, line: 37, size: 9024, elements: !438)
!437 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !1137, !1138, !1139, !1140, !1141, !1145, !1147, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1188}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !437, line: 38, baseType: !435, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !437, line: 39, baseType: !13, size: 8, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !436, file: !437, line: 40, baseType: !13, size: 8, offset: 72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !436, file: !437, line: 41, baseType: !33, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !436, file: !437, line: 42, baseType: !13, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !436, file: !437, line: 43, baseType: !13, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !436, file: !437, line: 44, baseType: !13, size: 8, offset: 112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !436, file: !437, line: 45, baseType: !447, size: 16, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !33)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !436, file: !437, line: 46, baseType: !13, size: 8, offset: 144)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !436, file: !437, line: 47, baseType: !13, size: 8, offset: 152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !436, file: !437, line: 48, baseType: !13, size: 8, offset: 160)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !436, file: !437, line: 49, baseType: !13, size: 8, offset: 168)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !436, file: !437, line: 50, baseType: !13, size: 8, offset: 176)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !436, file: !437, line: 51, baseType: !13, size: 8, offset: 184)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !436, file: !437, line: 52, baseType: !13, size: 8, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !436, file: !437, line: 53, baseType: !13, size: 8, offset: 200)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !436, file: !437, line: 54, baseType: !12, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !436, file: !437, line: 55, baseType: !7, size: 32, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !436, file: !437, line: 56, baseType: !7, size: 32, offset: 352)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !436, file: !437, line: 57, baseType: !7, size: 32, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !436, file: !437, line: 58, baseType: !7, size: 32, offset: 416)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !436, file: !437, line: 60, baseType: !462, size: 640, offset: 448)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !463, line: 909, size: 640, elements: !464)
!463 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!464 = !{!465, !466, !467, !468, !469, !470, !1036, !1037, !1135, !1136}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !462, file: !463, line: 910, baseType: !12, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !462, file: !463, line: 911, baseType: !12, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !462, file: !463, line: 912, baseType: !12, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !462, file: !463, line: 913, baseType: !12, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !462, file: !463, line: 914, baseType: !12, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !462, file: !463, line: 915, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !463, line: 891, size: 1600, elements: !473)
!473 = !{!474, !979, !995}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !472, file: !463, line: 892, baseType: !475, size: 448)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !463, line: 844, size: 448, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !969, !978}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !475, file: !463, line: 845, baseType: !471, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !463, line: 845, baseType: !13, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !463, line: 845, baseType: !13, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !475, file: !463, line: 845, baseType: !33, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !475, file: !463, line: 845, baseType: !12, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !463, line: 845, baseType: !471, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !475, file: !463, line: 845, baseType: !484, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !463, line: 133, size: 384, elements: !486)
!486 = !{!487, !953, !954, !955, !956, !965, !966, !967, !968}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !485, file: !463, line: 134, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !490, line: 369, size: 576, elements: !491)
!490 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!491 = !{!492, !500, !513, !524, !537, !551, !560, !586, !615, !631, !644, !723, !735, !749, !759, !777, !799, !818, !837, !856, !873, !899, !916, !929, !943, !952}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !489, file: !490, line: 370, baseType: !493, size: 128)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !490, line: 73, size: 128, elements: !494)
!494 = !{!495, !496, !497, !498, !499}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !490, line: 74, baseType: !488, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !490, line: 74, baseType: !13, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !490, line: 74, baseType: !13, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !490, line: 74, baseType: !33, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !490, line: 74, baseType: !13, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !489, file: !490, line: 371, baseType: !501, size: 192)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !490, line: 76, size: 192, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !512}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !501, file: !490, line: 77, baseType: !488, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !501, file: !490, line: 77, baseType: !13, size: 8, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !501, file: !490, line: 77, baseType: !13, size: 8, offset: 72)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !501, file: !490, line: 77, baseType: !33, size: 16, offset: 80)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !490, line: 77, baseType: !13, size: 8, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !501, file: !490, line: 77, baseType: !509, size: 24, offset: 104)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 3)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !501, file: !490, line: 78, baseType: !108, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !489, file: !490, line: 372, baseType: !514, size: 256)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !490, line: 93, size: 256, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !523}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !514, file: !490, line: 94, baseType: !488, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !514, file: !490, line: 94, baseType: !13, size: 8, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !490, line: 94, baseType: !13, size: 8, offset: 72)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !514, file: !490, line: 94, baseType: !33, size: 16, offset: 80)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !490, line: 94, baseType: !13, size: 8, offset: 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !514, file: !490, line: 94, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !514, file: !490, line: 94, baseType: !7, size: 32, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !489, file: !490, line: 373, baseType: !525, size: 384)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !490, line: 97, size: 384, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !525, file: !490, line: 98, baseType: !488, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !490, line: 98, baseType: !13, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !490, line: 98, baseType: !13, size: 8, offset: 72)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !525, file: !490, line: 98, baseType: !33, size: 16, offset: 80)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !490, line: 98, baseType: !13, size: 8, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !525, file: !490, line: 98, baseType: !12, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !525, file: !490, line: 98, baseType: !7, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !525, file: !490, line: 99, baseType: !7, size: 32, offset: 224)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !525, file: !490, line: 100, baseType: !12, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !525, file: !490, line: 101, baseType: !484, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !489, file: !490, line: 374, baseType: !538, size: 384)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !490, line: 104, size: 384, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !548, !549, !550}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !538, file: !490, line: 105, baseType: !488, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !538, file: !490, line: 105, baseType: !13, size: 8, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !538, file: !490, line: 105, baseType: !13, size: 8, offset: 72)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !538, file: !490, line: 105, baseType: !33, size: 16, offset: 80)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !490, line: 105, baseType: !13, size: 8, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !538, file: !490, line: 105, baseType: !484, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !538, file: !490, line: 106, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !538, file: !490, line: 107, baseType: !12, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !538, file: !490, line: 108, baseType: !7, size: 32, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !538, file: !490, line: 109, baseType: !7, size: 32, offset: 352)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !489, file: !490, line: 375, baseType: !552, size: 192)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !490, line: 118, size: 192, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !552, file: !490, line: 119, baseType: !488, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !552, file: !490, line: 119, baseType: !13, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !490, line: 119, baseType: !13, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !552, file: !490, line: 119, baseType: !33, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !490, line: 119, baseType: !13, size: 8, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !552, file: !490, line: 119, baseType: !386, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !489, file: !490, line: 376, baseType: !561, size: 448)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !490, line: 144, size: 448, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !583, !584, !585}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !490, line: 145, baseType: !488, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !490, line: 145, baseType: !13, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !490, line: 145, baseType: !13, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !490, line: 145, baseType: !33, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !490, line: 145, baseType: !13, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !561, file: !490, line: 145, baseType: !13, size: 8, offset: 104)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !561, file: !490, line: 146, baseType: !13, size: 8, offset: 112)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !561, file: !490, line: 147, baseType: !13, size: 8, offset: 120)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !561, file: !490, line: 148, baseType: !488, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !561, file: !490, line: 149, baseType: !488, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !561, file: !490, line: 150, baseType: !12, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !561, file: !490, line: 154, baseType: !575, size: 64, offset: 320)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !490, line: 151, size: 64, elements: !576)
!576 = !{!577, !582}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !575, file: !490, line: 152, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !463, line: 248, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!5, !435}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !490, line: 153, baseType: !488, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !561, file: !490, line: 156, baseType: !7, size: 32, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !561, file: !490, line: 157, baseType: !447, size: 16, offset: 416)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !561, file: !490, line: 158, baseType: !13, size: 8, offset: 432)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !489, file: !490, line: 377, baseType: !587, size: 576)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !490, line: 122, size: 576, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !611, !612, !613, !614}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !490, line: 123, baseType: !488, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !490, line: 123, baseType: !13, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !490, line: 123, baseType: !13, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !490, line: 123, baseType: !33, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !490, line: 123, baseType: !13, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !587, file: !490, line: 123, baseType: !13, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !587, file: !490, line: 124, baseType: !33, size: 16, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !587, file: !490, line: 125, baseType: !386, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !587, file: !490, line: 126, baseType: !108, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !587, file: !490, line: 127, baseType: !599, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !463, line: 634, size: 320, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !600, file: !463, line: 635, baseType: !386, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !600, file: !463, line: 635, baseType: !13, size: 8, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !463, line: 635, baseType: !13, size: 8, offset: 72)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !600, file: !463, line: 635, baseType: !33, size: 16, offset: 80)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !600, file: !463, line: 635, baseType: !33, size: 16, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !600, file: !463, line: 636, baseType: !13, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !600, file: !463, line: 637, baseType: !435, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !600, file: !463, line: 638, baseType: !488, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !600, file: !463, line: 639, baseType: !108, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !587, file: !490, line: 128, baseType: !488, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !490, line: 129, baseType: !488, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !587, file: !490, line: 130, baseType: !484, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !587, file: !490, line: 131, baseType: !13, size: 8, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !489, file: !490, line: 378, baseType: !616, size: 512)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !490, line: 134, size: 512, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !629, !630}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !616, file: !490, line: 135, baseType: !488, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !616, file: !490, line: 135, baseType: !13, size: 8, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !490, line: 135, baseType: !13, size: 8, offset: 72)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !490, line: 135, baseType: !33, size: 16, offset: 80)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !490, line: 135, baseType: !13, size: 8, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !616, file: !490, line: 135, baseType: !13, size: 8, offset: 104)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !490, line: 136, baseType: !484, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !616, file: !490, line: 137, baseType: !488, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !616, file: !490, line: 138, baseType: !488, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !616, file: !490, line: 139, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !108)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !616, file: !490, line: 140, baseType: !7, size: 32, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !616, file: !490, line: 141, baseType: !386, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !489, file: !490, line: 379, baseType: !632, size: 320)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !490, line: 185, size: 320, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !643}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !632, file: !490, line: 186, baseType: !488, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !632, file: !490, line: 186, baseType: !13, size: 8, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !490, line: 186, baseType: !13, size: 8, offset: 72)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !632, file: !490, line: 186, baseType: !33, size: 16, offset: 80)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !490, line: 186, baseType: !13, size: 8, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !632, file: !490, line: 186, baseType: !640, size: 128, offset: 128)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 128, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 2)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !632, file: !490, line: 186, baseType: !488, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !489, file: !490, line: 380, baseType: !645, size: 384)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !490, line: 188, size: 384, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !490, line: 189, baseType: !488, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !490, line: 189, baseType: !13, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !490, line: 189, baseType: !13, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !490, line: 189, baseType: !33, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !490, line: 189, baseType: !13, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !645, file: !490, line: 190, baseType: !640, size: 128, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !645, file: !490, line: 190, baseType: !488, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !645, file: !490, line: 190, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !463, line: 480, size: 576, elements: !657)
!657 = !{!658, !659, !660, !661, !669, !684, !717, !718, !719, !720, !721, !722}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !463, line: 481, baseType: !484, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !656, file: !463, line: 482, baseType: !655, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !463, line: 483, baseType: !655, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !656, file: !463, line: 484, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !463, line: 497, size: 256, elements: !664)
!664 = !{!665, !666, !667, !668}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !663, file: !463, line: 498, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !463, line: 499, baseType: !662, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !663, file: !463, line: 500, baseType: !655, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !663, file: !463, line: 501, baseType: !7, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !656, file: !463, line: 485, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !463, line: 466, size: 320, elements: !672)
!672 = !{!673, !678, !679, !680, !681, !682, !683}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !671, file: !463, line: 467, baseType: !674, size: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !463, line: 459, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !674, file: !463, line: 460, baseType: !13, size: 8)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !674, file: !463, line: 461, baseType: !108, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !671, file: !463, line: 468, baseType: !674, size: 128, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !671, file: !463, line: 469, baseType: !33, size: 16, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !671, file: !463, line: 470, baseType: !13, size: 8, offset: 272)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !671, file: !463, line: 471, baseType: !13, size: 8, offset: 280)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !671, file: !463, line: 472, baseType: !13, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !671, file: !463, line: 473, baseType: !13, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !656, file: !463, line: 486, baseType: !685, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !463, line: 448, size: 192, elements: !687)
!687 = !{!688, !712, !713, !714, !715, !716}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !686, file: !463, line: 449, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !463, line: 438, size: 64, elements: !690)
!690 = !{!691, !692, !706}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !689, file: !463, line: 439, baseType: !484, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !463, line: 440, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !463, line: 419, size: 256, elements: !695)
!695 = !{!696, !702, !703, !704, !705}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !694, file: !463, line: 420, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!7, !701, !7, !386}
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !386)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !694, file: !463, line: 421, baseType: !386, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !694, file: !463, line: 422, baseType: !484, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !694, file: !463, line: 423, baseType: !13, size: 8, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !694, file: !463, line: 424, baseType: !13, size: 8, offset: 200)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !689, file: !463, line: 441, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !463, line: 429, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !708, file: !463, line: 430, baseType: !484, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !463, line: 431, baseType: !707, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !686, file: !463, line: 450, baseType: !670, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !463, line: 451, baseType: !13, size: 8, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !686, file: !463, line: 452, baseType: !13, size: 8, offset: 136)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !686, file: !463, line: 453, baseType: !13, size: 8, offset: 144)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !686, file: !463, line: 454, baseType: !13, size: 8, offset: 152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !656, file: !463, line: 487, baseType: !108, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !656, file: !463, line: 488, baseType: !7, size: 32, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !656, file: !463, line: 489, baseType: !33, size: 16, offset: 480)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !656, file: !463, line: 490, baseType: !33, size: 16, offset: 496)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !656, file: !463, line: 491, baseType: !13, size: 8, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !656, file: !463, line: 492, baseType: !13, size: 8, offset: 520)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !489, file: !490, line: 381, baseType: !724, size: 384)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !490, line: 193, size: 384, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !724, file: !490, line: 194, baseType: !488, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !490, line: 194, baseType: !13, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !724, file: !490, line: 194, baseType: !13, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !724, file: !490, line: 194, baseType: !33, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !490, line: 194, baseType: !13, size: 8, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !724, file: !490, line: 194, baseType: !640, size: 128, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !724, file: !490, line: 194, baseType: !488, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !724, file: !490, line: 194, baseType: !7, size: 32, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !724, file: !490, line: 195, baseType: !7, size: 32, offset: 352)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !489, file: !490, line: 382, baseType: !736, size: 384)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !490, line: 198, size: 384, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !736, file: !490, line: 199, baseType: !488, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !736, file: !490, line: 199, baseType: !13, size: 8, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !736, file: !490, line: 199, baseType: !13, size: 8, offset: 72)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !736, file: !490, line: 199, baseType: !33, size: 16, offset: 80)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !490, line: 199, baseType: !13, size: 8, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !736, file: !490, line: 201, baseType: !13, size: 8, offset: 104)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !736, file: !490, line: 202, baseType: !13, size: 8, offset: 112)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !736, file: !490, line: 203, baseType: !640, size: 128, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !736, file: !490, line: 203, baseType: !488, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !736, file: !490, line: 203, baseType: !748, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !108)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !489, file: !490, line: 383, baseType: !750, size: 320)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !490, line: 206, size: 320, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !490, line: 207, baseType: !488, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !490, line: 207, baseType: !13, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !490, line: 207, baseType: !13, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !490, line: 207, baseType: !33, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !490, line: 207, baseType: !13, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !750, file: !490, line: 207, baseType: !640, size: 128, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !750, file: !490, line: 207, baseType: !488, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !489, file: !490, line: 384, baseType: !760, size: 384)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !490, line: 234, size: 384, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !490, line: 235, baseType: !488, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !490, line: 235, baseType: !13, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !490, line: 235, baseType: !13, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !490, line: 235, baseType: !33, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !490, line: 235, baseType: !13, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !760, file: !490, line: 235, baseType: !13, size: 8, offset: 104)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !760, file: !490, line: 235, baseType: !13, size: 8, offset: 112)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !760, file: !490, line: 235, baseType: !13, size: 8, offset: 120)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !760, file: !490, line: 235, baseType: !484, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !760, file: !490, line: 235, baseType: !7, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !760, file: !490, line: 235, baseType: !7, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !760, file: !490, line: 235, baseType: !7, size: 32, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !760, file: !490, line: 235, baseType: !13, size: 8, offset: 288)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !760, file: !490, line: 235, baseType: !13, size: 8, offset: 296)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !760, file: !490, line: 235, baseType: !488, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !489, file: !490, line: 385, baseType: !778, size: 576)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !490, line: 238, size: 576, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !778, file: !490, line: 239, baseType: !488, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !490, line: 239, baseType: !13, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !490, line: 239, baseType: !13, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !778, file: !490, line: 239, baseType: !33, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !490, line: 239, baseType: !13, size: 8, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !778, file: !490, line: 239, baseType: !13, size: 8, offset: 104)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !778, file: !490, line: 239, baseType: !13, size: 8, offset: 112)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !778, file: !490, line: 239, baseType: !13, size: 8, offset: 120)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !778, file: !490, line: 239, baseType: !484, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !778, file: !490, line: 239, baseType: !7, size: 32, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !778, file: !490, line: 239, baseType: !7, size: 32, offset: 224)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !778, file: !490, line: 239, baseType: !7, size: 32, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !778, file: !490, line: 239, baseType: !13, size: 8, offset: 288)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !778, file: !490, line: 239, baseType: !13, size: 8, offset: 296)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !778, file: !490, line: 239, baseType: !33, size: 16, offset: 304)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !778, file: !490, line: 240, baseType: !488, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !778, file: !490, line: 241, baseType: !12, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !778, file: !490, line: 242, baseType: !33, size: 16, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !778, file: !490, line: 243, baseType: !12, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !489, file: !490, line: 386, baseType: !800, size: 384)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !490, line: 263, size: 384, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !800, file: !490, line: 264, baseType: !488, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 72)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !800, file: !490, line: 264, baseType: !33, size: 16, offset: 80)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 96)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 104)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 112)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 120)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !800, file: !490, line: 264, baseType: !484, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !800, file: !490, line: 264, baseType: !7, size: 32, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !800, file: !490, line: 264, baseType: !7, size: 32, offset: 224)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !800, file: !490, line: 264, baseType: !7, size: 32, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 288)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 296)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !800, file: !490, line: 264, baseType: !13, size: 8, offset: 304)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !800, file: !490, line: 265, baseType: !488, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !489, file: !490, line: 387, baseType: !819, size: 448)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !490, line: 246, size: 448, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !819, file: !490, line: 247, baseType: !488, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !819, file: !490, line: 247, baseType: !13, size: 8, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !819, file: !490, line: 247, baseType: !13, size: 8, offset: 72)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !819, file: !490, line: 247, baseType: !33, size: 16, offset: 80)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !490, line: 247, baseType: !13, size: 8, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !819, file: !490, line: 247, baseType: !13, size: 8, offset: 104)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !819, file: !490, line: 247, baseType: !13, size: 8, offset: 112)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !819, file: !490, line: 247, baseType: !13, size: 8, offset: 120)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !819, file: !490, line: 247, baseType: !484, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !819, file: !490, line: 247, baseType: !7, size: 32, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !819, file: !490, line: 247, baseType: !7, size: 32, offset: 224)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !819, file: !490, line: 247, baseType: !7, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !819, file: !490, line: 247, baseType: !13, size: 8, offset: 288)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !819, file: !490, line: 247, baseType: !13, size: 8, offset: 296)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !819, file: !490, line: 247, baseType: !488, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !819, file: !490, line: 248, baseType: !488, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !489, file: !490, line: 388, baseType: !838, size: 448)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !490, line: 251, size: 448, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !838, file: !490, line: 252, baseType: !488, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !838, file: !490, line: 252, baseType: !13, size: 8, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !490, line: 252, baseType: !13, size: 8, offset: 72)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !838, file: !490, line: 252, baseType: !33, size: 16, offset: 80)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !490, line: 252, baseType: !13, size: 8, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !838, file: !490, line: 252, baseType: !13, size: 8, offset: 104)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !838, file: !490, line: 252, baseType: !13, size: 8, offset: 112)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !838, file: !490, line: 252, baseType: !13, size: 8, offset: 120)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !838, file: !490, line: 252, baseType: !484, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !838, file: !490, line: 252, baseType: !7, size: 32, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !838, file: !490, line: 252, baseType: !7, size: 32, offset: 224)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !838, file: !490, line: 252, baseType: !7, size: 32, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !838, file: !490, line: 252, baseType: !13, size: 8, offset: 288)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !838, file: !490, line: 252, baseType: !13, size: 8, offset: 296)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !838, file: !490, line: 257, baseType: !488, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !838, file: !490, line: 258, baseType: !488, size: 64, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !489, file: !490, line: 389, baseType: !857, size: 512)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !490, line: 274, size: 512, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !871, !872}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !857, file: !490, line: 275, baseType: !488, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !857, file: !490, line: 275, baseType: !13, size: 8, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !857, file: !490, line: 275, baseType: !13, size: 8, offset: 72)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !857, file: !490, line: 275, baseType: !33, size: 16, offset: 80)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !490, line: 275, baseType: !13, size: 8, offset: 96)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !857, file: !490, line: 275, baseType: !484, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !857, file: !490, line: 276, baseType: !7, size: 32, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !857, file: !490, line: 277, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !701, !7, !386}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !857, file: !490, line: 278, baseType: !386, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !490, line: 279, baseType: !640, size: 128, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !489, file: !490, line: 390, baseType: !874, size: 576)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !490, line: 282, size: 576, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883, !889, !890, !891, !892, !897, !898}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !874, file: !490, line: 283, baseType: !488, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !874, file: !490, line: 283, baseType: !13, size: 8, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !490, line: 283, baseType: !13, size: 8, offset: 72)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !874, file: !490, line: 283, baseType: !33, size: 16, offset: 80)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !490, line: 283, baseType: !13, size: 8, offset: 96)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !874, file: !490, line: 283, baseType: !13, size: 8, offset: 104)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !874, file: !490, line: 284, baseType: !13, size: 8, offset: 112)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !874, file: !490, line: 285, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!5, !7, !628, !7, !888, !386, !386}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !874, file: !490, line: 286, baseType: !484, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !874, file: !490, line: 287, baseType: !386, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !874, file: !490, line: 288, baseType: !386, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !874, file: !490, line: 289, baseType: !893, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!5, !701, !7, !386, !388}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !874, file: !490, line: 290, baseType: !488, size: 64, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !874, file: !490, line: 291, baseType: !488, size: 64, offset: 512)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !489, file: !490, line: 391, baseType: !900, size: 512)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !490, line: 309, size: 512, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !900, file: !490, line: 310, baseType: !488, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !900, file: !490, line: 310, baseType: !13, size: 8, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !900, file: !490, line: 310, baseType: !13, size: 8, offset: 72)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !900, file: !490, line: 310, baseType: !33, size: 16, offset: 80)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !900, file: !490, line: 310, baseType: !13, size: 8, offset: 96)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !900, file: !490, line: 310, baseType: !13, size: 8, offset: 104)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !900, file: !490, line: 311, baseType: !13, size: 8, offset: 112)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !900, file: !490, line: 312, baseType: !13, size: 8, offset: 120)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !900, file: !490, line: 313, baseType: !386, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !900, file: !490, line: 314, baseType: !484, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !900, file: !490, line: 315, baseType: !547, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !900, file: !490, line: 316, baseType: !12, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !900, file: !490, line: 317, baseType: !12, size: 64, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !900, file: !490, line: 318, baseType: !7, size: 32, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !489, file: !490, line: 392, baseType: !917, size: 448)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !490, line: 342, size: 448, elements: !918)
!918 = !{!919, !920, !921, !922, !923, !924, !925, !926, !927, !928}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !917, file: !490, line: 343, baseType: !488, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !917, file: !490, line: 343, baseType: !13, size: 8, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !917, file: !490, line: 343, baseType: !13, size: 8, offset: 72)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !917, file: !490, line: 343, baseType: !33, size: 16, offset: 80)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !917, file: !490, line: 343, baseType: !13, size: 8, offset: 96)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !917, file: !490, line: 343, baseType: !484, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !917, file: !490, line: 344, baseType: !484, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !917, file: !490, line: 345, baseType: !386, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !917, file: !490, line: 346, baseType: !12, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !917, file: !490, line: 347, baseType: !7, size: 32, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !489, file: !490, line: 393, baseType: !930, size: 256)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !490, line: 352, size: 256, elements: !931)
!931 = !{!932, !933, !934, !935, !936, !937, !942}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !930, file: !490, line: 353, baseType: !488, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !930, file: !490, line: 353, baseType: !13, size: 8, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !930, file: !490, line: 353, baseType: !13, size: 8, offset: 72)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !930, file: !490, line: 353, baseType: !33, size: 16, offset: 80)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !490, line: 353, baseType: !13, size: 8, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !930, file: !490, line: 353, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !701, !386}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !930, file: !490, line: 354, baseType: !386, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !489, file: !490, line: 394, baseType: !944, size: 192)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !490, line: 359, size: 192, elements: !945)
!945 = !{!946, !947, !948, !949, !950, !951}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !944, file: !490, line: 360, baseType: !488, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !944, file: !490, line: 360, baseType: !13, size: 8, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !944, file: !490, line: 360, baseType: !13, size: 8, offset: 72)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !944, file: !490, line: 360, baseType: !33, size: 16, offset: 80)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !490, line: 360, baseType: !13, size: 8, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !944, file: !490, line: 360, baseType: !488, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !489, file: !490, line: 401, baseType: !485, size: 384)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !463, line: 135, baseType: !13, size: 8, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !463, line: 136, baseType: !13, size: 8, offset: 72)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !463, line: 137, baseType: !33, size: 16, offset: 80)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !463, line: 138, baseType: !957, size: 32, offset: 96)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !958, line: 328, size: 32, elements: !959)
!958 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !957, file: !958, line: 329, baseType: !7, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !957, file: !958, line: 330, baseType: !962, size: 32)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 32, elements: !963)
!963 = !{!964}
!964 = !DISubrange(count: 4)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !485, file: !463, line: 139, baseType: !484, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !485, file: !463, line: 140, baseType: !484, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !485, file: !463, line: 141, baseType: !484, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !485, file: !463, line: 142, baseType: !447, size: 16, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !475, file: !463, line: 845, baseType: !970, size: 64, offset: 320)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !463, line: 732, size: 64, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !970, file: !463, line: 733, baseType: !108, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !970, file: !463, line: 734, baseType: !7, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !970, file: !463, line: 735, baseType: !522, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !970, file: !463, line: 736, baseType: !12, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !970, file: !463, line: 737, baseType: !522, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !970, file: !463, line: 738, baseType: !471, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !475, file: !463, line: 845, baseType: !13, size: 8, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !472, file: !463, line: 893, baseType: !980, size: 640)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !463, line: 851, size: 640, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !980, file: !463, line: 852, baseType: !471, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !980, file: !463, line: 852, baseType: !13, size: 8, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !463, line: 852, baseType: !13, size: 8, offset: 72)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !980, file: !463, line: 852, baseType: !33, size: 16, offset: 80)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !980, file: !463, line: 852, baseType: !12, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !980, file: !463, line: 852, baseType: !471, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !980, file: !463, line: 852, baseType: !484, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !980, file: !463, line: 852, baseType: !970, size: 64, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !980, file: !463, line: 852, baseType: !13, size: 8, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !980, file: !463, line: 852, baseType: !522, size: 64, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !980, file: !463, line: 853, baseType: !12, size: 64, offset: 512)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !980, file: !463, line: 854, baseType: !7, size: 32, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !980, file: !463, line: 855, baseType: !7, size: 32, offset: 608)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !472, file: !463, line: 894, baseType: !996, size: 1600)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !463, line: 862, size: 1600, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !996, file: !463, line: 863, baseType: !471, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !996, file: !463, line: 863, baseType: !13, size: 8, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !463, line: 863, baseType: !13, size: 8, offset: 72)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !996, file: !463, line: 863, baseType: !33, size: 16, offset: 80)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !996, file: !463, line: 863, baseType: !12, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !996, file: !463, line: 863, baseType: !471, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !996, file: !463, line: 863, baseType: !484, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !996, file: !463, line: 863, baseType: !970, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !996, file: !463, line: 863, baseType: !13, size: 8, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !996, file: !463, line: 863, baseType: !471, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !996, file: !463, line: 864, baseType: !471, size: 64, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !996, file: !463, line: 865, baseType: !522, size: 64, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !996, file: !463, line: 866, baseType: !13, size: 8, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !996, file: !463, line: 867, baseType: !522, size: 64, offset: 704)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !996, file: !463, line: 868, baseType: !522, size: 64, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !996, file: !463, line: 869, baseType: !522, size: 64, offset: 832)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !996, file: !463, line: 870, baseType: !962, size: 32, offset: 896)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !996, file: !463, line: 871, baseType: !7, size: 32, offset: 928)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !996, file: !463, line: 872, baseType: !7, size: 32, offset: 960)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !996, file: !463, line: 873, baseType: !7, size: 32, offset: 992)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !996, file: !463, line: 874, baseType: !7, size: 32, offset: 1024)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !996, file: !463, line: 875, baseType: !7, size: 32, offset: 1056)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !996, file: !463, line: 876, baseType: !7, size: 32, offset: 1088)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !996, file: !463, line: 877, baseType: !7, size: 32, offset: 1120)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !996, file: !463, line: 878, baseType: !7, size: 32, offset: 1152)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !996, file: !463, line: 879, baseType: !7, size: 32, offset: 1184)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !996, file: !463, line: 880, baseType: !7, size: 32, offset: 1216)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !996, file: !463, line: 881, baseType: !7, size: 32, offset: 1248)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !996, file: !463, line: 882, baseType: !7, size: 32, offset: 1280)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !996, file: !463, line: 883, baseType: !7, size: 32, offset: 1312)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !996, file: !463, line: 884, baseType: !33, size: 16, offset: 1344)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !996, file: !463, line: 885, baseType: !13, size: 8, offset: 1360)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !996, file: !463, line: 886, baseType: !13, size: 8, offset: 1368)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !996, file: !463, line: 887, baseType: !13, size: 8, offset: 1376)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !996, file: !463, line: 888, baseType: !1033, size: 160, offset: 1384)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 160, elements: !1034)
!1034 = !{!1035}
!1035 = !DISubrange(count: 20)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !462, file: !463, line: 916, baseType: !484, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !462, file: !463, line: 917, baseType: !1038, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !463, line: 679, size: 640, elements: !1040)
!1040 = !{!1041, !1049, !1062, !1071, !1080, !1093, !1107, !1108, !1118}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1039, file: !463, line: 680, baseType: !1042, size: 128)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !463, line: 575, size: 128, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1042, file: !463, line: 576, baseType: !386, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1042, file: !463, line: 576, baseType: !13, size: 8, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !463, line: 576, baseType: !13, size: 8, offset: 72)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1042, file: !463, line: 576, baseType: !33, size: 16, offset: 80)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1042, file: !463, line: 576, baseType: !33, size: 16, offset: 96)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1039, file: !463, line: 681, baseType: !1050, size: 384)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !463, line: 604, size: 384, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1050, file: !463, line: 605, baseType: !386, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1050, file: !463, line: 605, baseType: !13, size: 8, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !463, line: 605, baseType: !13, size: 8, offset: 72)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1050, file: !463, line: 605, baseType: !33, size: 16, offset: 80)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1050, file: !463, line: 605, baseType: !33, size: 16, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1050, file: !463, line: 606, baseType: !33, size: 16, offset: 112)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !1050, file: !463, line: 607, baseType: !471, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !1050, file: !463, line: 608, baseType: !12, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !1050, file: !463, line: 609, baseType: !12, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !1050, file: !463, line: 610, baseType: !108, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1039, file: !463, line: 682, baseType: !1063, size: 192)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !463, line: 582, size: 192, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1063, file: !463, line: 583, baseType: !386, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1063, file: !463, line: 583, baseType: !13, size: 8, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !463, line: 583, baseType: !13, size: 8, offset: 72)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1063, file: !463, line: 583, baseType: !33, size: 16, offset: 80)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1063, file: !463, line: 583, baseType: !33, size: 16, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1063, file: !463, line: 584, baseType: !488, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1039, file: !463, line: 683, baseType: !1072, size: 192)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !463, line: 616, size: 192, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1072, file: !463, line: 617, baseType: !386, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1072, file: !463, line: 617, baseType: !13, size: 8, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !463, line: 617, baseType: !13, size: 8, offset: 72)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1072, file: !463, line: 617, baseType: !33, size: 16, offset: 80)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1072, file: !463, line: 617, baseType: !33, size: 16, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1072, file: !463, line: 618, baseType: !484, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !1039, file: !463, line: 684, baseType: !1081, size: 448)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !463, line: 621, size: 448, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !463, line: 622, baseType: !386, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1081, file: !463, line: 622, baseType: !13, size: 8, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1081, file: !463, line: 622, baseType: !13, size: 8, offset: 72)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1081, file: !463, line: 622, baseType: !33, size: 16, offset: 80)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1081, file: !463, line: 622, baseType: !33, size: 16, offset: 96)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1081, file: !463, line: 623, baseType: !7, size: 32, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1081, file: !463, line: 624, baseType: !471, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1081, file: !463, line: 625, baseType: !12, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1081, file: !463, line: 626, baseType: !12, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !1081, file: !463, line: 627, baseType: !7, size: 32, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !1039, file: !463, line: 685, baseType: !1094, size: 512)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !463, line: 590, size: 512, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1094, file: !463, line: 591, baseType: !386, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1094, file: !463, line: 591, baseType: !13, size: 8, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !463, line: 591, baseType: !13, size: 8, offset: 72)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1094, file: !463, line: 591, baseType: !33, size: 16, offset: 80)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1094, file: !463, line: 591, baseType: !33, size: 16, offset: 96)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1094, file: !463, line: 592, baseType: !7, size: 32, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !1094, file: !463, line: 593, baseType: !488, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !1094, file: !463, line: 594, baseType: !488, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !1094, file: !463, line: 595, baseType: !435, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !1094, file: !463, line: 596, baseType: !386, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !1094, file: !463, line: 597, baseType: !7, size: 32, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1039, file: !463, line: 686, baseType: !600, size: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1039, file: !463, line: 687, baseType: !1109, size: 640)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !463, line: 646, size: 640, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1109, file: !463, line: 647, baseType: !386, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1109, file: !463, line: 647, baseType: !13, size: 8, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1109, file: !463, line: 647, baseType: !13, size: 8, offset: 72)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1109, file: !463, line: 647, baseType: !33, size: 16, offset: 80)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1109, file: !463, line: 647, baseType: !33, size: 16, offset: 96)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1109, file: !463, line: 648, baseType: !1117, size: 512, offset: 128)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 512, elements: !421)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1039, file: !463, line: 688, baseType: !1119, size: 320)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !463, line: 669, size: 320, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1119, file: !463, line: 670, baseType: !386, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1119, file: !463, line: 670, baseType: !13, size: 8, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1119, file: !463, line: 670, baseType: !13, size: 8, offset: 72)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1119, file: !463, line: 670, baseType: !33, size: 16, offset: 80)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1119, file: !463, line: 670, baseType: !33, size: 16, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !1119, file: !463, line: 671, baseType: !13, size: 8, offset: 112)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1119, file: !463, line: 672, baseType: !484, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !1119, file: !463, line: 673, baseType: !488, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1119, file: !463, line: 674, baseType: !1130, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !463, line: 660, size: 128, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1131, file: !463, line: 661, baseType: !867, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1131, file: !463, line: 662, baseType: !386, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !462, file: !463, line: 918, baseType: !471, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !462, file: !463, line: 919, baseType: !7, size: 32, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !436, file: !437, line: 61, baseType: !7, size: 32, offset: 1088)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !436, file: !437, line: 62, baseType: !7, size: 32, offset: 1120)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !436, file: !437, line: 63, baseType: !33, size: 16, offset: 1152)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !436, file: !437, line: 64, baseType: !13, size: 8, offset: 1168)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !436, file: !437, line: 66, baseType: !1142, size: 2688, offset: 1216)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 2688, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 7)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !436, file: !437, line: 67, baseType: !1146, size: 3072, offset: 3904)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 3072, elements: !421)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !436, file: !437, line: 68, baseType: !1148, size: 576, offset: 6976)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 576, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 9)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !436, file: !437, line: 69, baseType: !547, size: 64, offset: 7552)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !436, file: !437, line: 71, baseType: !12, size: 64, offset: 7616)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !436, file: !437, line: 72, baseType: !547, size: 64, offset: 7680)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !436, file: !437, line: 73, baseType: !1038, size: 64, offset: 7744)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !436, file: !437, line: 74, baseType: !484, size: 64, offset: 7808)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !436, file: !437, line: 75, baseType: !488, size: 64, offset: 7872)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !436, file: !437, line: 76, baseType: !484, size: 64, offset: 7936)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !436, file: !437, line: 77, baseType: !471, size: 64, offset: 8000)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !436, file: !437, line: 78, baseType: !488, size: 64, offset: 8064)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !436, file: !437, line: 79, baseType: !484, size: 64, offset: 8128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !436, file: !437, line: 80, baseType: !522, size: 64, offset: 8192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !436, file: !437, line: 81, baseType: !471, size: 64, offset: 8256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !436, file: !437, line: 82, baseType: !1164, size: 64, offset: 8320)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !463, line: 718, size: 128, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1166, file: !463, line: 722, baseType: !7, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1166, file: !463, line: 723, baseType: !7, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !463, line: 724, baseType: !33, size: 16, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1166, file: !463, line: 725, baseType: !13, size: 8, offset: 80)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1166, file: !463, line: 726, baseType: !13, size: 8, offset: 88)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1166, file: !463, line: 727, baseType: !13, size: 8, offset: 96)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !436, file: !437, line: 83, baseType: !471, size: 64, offset: 8384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !436, file: !437, line: 84, baseType: !488, size: 64, offset: 8448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !436, file: !437, line: 85, baseType: !1038, size: 64, offset: 8512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !436, file: !437, line: 86, baseType: !488, size: 64, offset: 8576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !436, file: !437, line: 87, baseType: !1038, size: 64, offset: 8640)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !436, file: !437, line: 88, baseType: !471, size: 64, offset: 8704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !436, file: !437, line: 89, baseType: !471, size: 64, offset: 8768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !436, file: !437, line: 90, baseType: !599, size: 64, offset: 8832)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !436, file: !437, line: 91, baseType: !1183, size: 64, offset: 8896)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !463, line: 652, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!5, !435, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !436, file: !437, line: 92, baseType: !1189, size: 64, offset: 8960)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !463, line: 656, baseType: !579)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_aml_callback", file: !1191, line: 123, baseType: !1192)
!1191 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!5, !12, !7, !7, !13, !388}
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1196 = !DILocalVariable(name: "walk_state", arg: 1, scope: !432, file: !3, line: 141, type: !435)
!1197 = !DILocalVariable(name: "aml", arg: 2, scope: !432, file: !3, line: 142, type: !12)
!1198 = !DILocalVariable(name: "aml_length", arg: 3, scope: !432, file: !3, line: 143, type: !387)
!1199 = !DILocalVariable(name: "user_function", arg: 4, scope: !432, file: !3, line: 144, type: !1190)
!1200 = !DILocalVariable(name: "context", arg: 5, scope: !432, file: !3, line: 144, type: !388)
!1201 = !DILocalVariable(name: "status", scope: !432, file: !3, line: 146, type: !5)
!1202 = !DILocalVariable(name: "end_aml", scope: !432, file: !3, line: 147, type: !12)
!1203 = !DILocalVariable(name: "resource_index", scope: !432, file: !3, line: 148, type: !13)
!1204 = !DILocalVariable(name: "length", scope: !432, file: !3, line: 149, type: !7)
!1205 = !DILocalVariable(name: "offset", scope: !432, file: !3, line: 150, type: !7)
!1206 = !DILocalVariable(name: "end_tag", scope: !432, file: !3, line: 151, type: !1207)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 16, elements: !641)
!1208 = !DILocation(line: 141, column: 52, scope: !432)
!1209 = !DILocation(line: 142, column: 11, scope: !432)
!1210 = !DILocation(line: 143, column: 17, scope: !432)
!1211 = !DILocation(line: 144, column: 30, scope: !432)
!1212 = !DILocation(line: 144, column: 52, scope: !432)
!1213 = !DILocation(line: 146, column: 2, scope: !432)
!1214 = !DILocation(line: 146, column: 14, scope: !432)
!1215 = !DILocation(line: 147, column: 2, scope: !432)
!1216 = !DILocation(line: 147, column: 6, scope: !432)
!1217 = !DILocation(line: 148, column: 2, scope: !432)
!1218 = !DILocation(line: 148, column: 5, scope: !432)
!1219 = !DILocation(line: 149, column: 2, scope: !432)
!1220 = !DILocation(line: 149, column: 6, scope: !432)
!1221 = !DILocation(line: 150, column: 2, scope: !432)
!1222 = !DILocation(line: 150, column: 6, scope: !432)
!1223 = !DILocation(line: 151, column: 2, scope: !432)
!1224 = !DILocation(line: 151, column: 5, scope: !432)
!1225 = !DILocation(line: 157, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !432, file: !3, line: 157, column: 6)
!1227 = !DILocation(line: 157, column: 17, scope: !1226)
!1228 = !DILocation(line: 157, column: 6, scope: !432)
!1229 = !DILocation(line: 158, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 157, column: 56)
!1231 = !DILocation(line: 163, column: 12, scope: !432)
!1232 = !DILocation(line: 163, column: 18, scope: !432)
!1233 = !DILocation(line: 163, column: 16, scope: !432)
!1234 = !DILocation(line: 163, column: 10, scope: !432)
!1235 = !DILocation(line: 167, column: 2, scope: !432)
!1236 = !DILocation(line: 167, column: 9, scope: !432)
!1237 = !DILocation(line: 167, column: 15, scope: !432)
!1238 = !DILocation(line: 167, column: 13, scope: !432)
!1239 = !DILocation(line: 172, column: 33, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !432, file: !3, line: 167, column: 24)
!1241 = !DILocation(line: 172, column: 45, scope: !1240)
!1242 = !DILocation(line: 172, column: 7, scope: !1240)
!1243 = !DILocation(line: 171, column: 10, scope: !1240)
!1244 = !DILocation(line: 173, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 173, column: 7)
!1246 = !DILocation(line: 173, column: 7, scope: !1240)
!1247 = !DILocation(line: 178, column: 4, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 173, column: 29)
!1249 = !DILocation(line: 183, column: 42, scope: !1240)
!1250 = !DILocation(line: 183, column: 12, scope: !1240)
!1251 = !DILocation(line: 183, column: 10, scope: !1240)
!1252 = !DILocation(line: 187, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 187, column: 7)
!1254 = !DILocation(line: 187, column: 7, scope: !1240)
!1255 = !DILocation(line: 189, column: 8, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 187, column: 22)
!1257 = !DILocation(line: 189, column: 22, scope: !1256)
!1258 = !DILocation(line: 189, column: 27, scope: !1256)
!1259 = !DILocation(line: 189, column: 35, scope: !1256)
!1260 = !DILocation(line: 189, column: 43, scope: !1256)
!1261 = !DILocation(line: 190, column: 8, scope: !1256)
!1262 = !DILocation(line: 188, column: 11, scope: !1256)
!1263 = !DILocation(line: 191, column: 8, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 191, column: 8)
!1265 = !DILocation(line: 191, column: 8, scope: !1256)
!1266 = !DILocation(line: 192, column: 5, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 191, column: 30)
!1268 = !DILocation(line: 194, column: 3, scope: !1256)
!1269 = !DILocation(line: 198, column: 33, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 198, column: 7)
!1271 = !DILocation(line: 198, column: 7, scope: !1270)
!1272 = !DILocation(line: 198, column: 38, scope: !1270)
!1273 = !DILocation(line: 198, column: 7, scope: !1240)
!1274 = !DILocation(line: 204, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 204, column: 8)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 199, column: 35)
!1277 = !DILocation(line: 204, column: 13, scope: !1275)
!1278 = !DILocation(line: 204, column: 21, scope: !1275)
!1279 = !DILocation(line: 204, column: 18, scope: !1275)
!1280 = !DILocation(line: 204, column: 8, scope: !1276)
!1281 = !DILocation(line: 205, column: 5, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 204, column: 30)
!1283 = !DILocation(line: 217, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 217, column: 8)
!1285 = !DILocation(line: 217, column: 8, scope: !1276)
!1286 = !DILocation(line: 218, column: 16, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 217, column: 24)
!1288 = !DILocation(line: 218, column: 6, scope: !1287)
!1289 = !DILocation(line: 218, column: 14, scope: !1287)
!1290 = !DILocation(line: 219, column: 4, scope: !1287)
!1291 = !DILocation(line: 223, column: 4, scope: !1276)
!1292 = !DILocation(line: 226, column: 10, scope: !1240)
!1293 = !DILocation(line: 226, column: 7, scope: !1240)
!1294 = !DILocation(line: 227, column: 13, scope: !1240)
!1295 = !DILocation(line: 227, column: 10, scope: !1240)
!1296 = distinct !{!1296, !1235, !1297, !1298, !1299}
!1297 = !DILocation(line: 228, column: 2, scope: !432)
!1298 = !{!"llvm.loop.mustprogress"}
!1299 = !{!"llvm.loop.unroll.disable"}
!1300 = !DILocation(line: 232, column: 6, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !432, file: !3, line: 232, column: 6)
!1302 = !DILocation(line: 232, column: 6, scope: !432)
!1303 = !DILocation(line: 236, column: 35, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 232, column: 21)
!1305 = !DILocation(line: 236, column: 47, scope: !1304)
!1306 = !DILocation(line: 236, column: 9, scope: !1304)
!1307 = !DILocation(line: 239, column: 7, scope: !1304)
!1308 = !DILocation(line: 239, column: 21, scope: !1304)
!1309 = !DILocation(line: 239, column: 33, scope: !1304)
!1310 = !DILocation(line: 239, column: 41, scope: !1304)
!1311 = !DILocation(line: 239, column: 57, scope: !1304)
!1312 = !DILocation(line: 238, column: 10, scope: !1304)
!1313 = !DILocation(line: 240, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 240, column: 7)
!1315 = !DILocation(line: 240, column: 7, scope: !1304)
!1316 = !DILocation(line: 241, column: 4, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 240, column: 29)
!1318 = !DILocation(line: 243, column: 2, scope: !1304)
!1319 = !DILocation(line: 245, column: 2, scope: !432)
!1320 = !DILocation(line: 246, column: 1, scope: !432)
!1321 = distinct !DISubprogram(name: "acpi_ut_validate_resource", scope: !3, file: !3, line: 266, type: !1322, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1324)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!5, !435, !386, !12}
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1334, !1335, !1338, !1339}
!1325 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1321, file: !3, line: 266, type: !435)
!1326 = !DILocalVariable(name: "aml", arg: 2, scope: !1321, file: !3, line: 267, type: !386)
!1327 = !DILocalVariable(name: "return_index", arg: 3, scope: !1321, file: !3, line: 267, type: !12)
!1328 = !DILocalVariable(name: "aml_resource", scope: !1321, file: !3, line: 269, type: !19)
!1329 = !DILocalVariable(name: "resource_type", scope: !1321, file: !3, line: 270, type: !13)
!1330 = !DILocalVariable(name: "resource_index", scope: !1321, file: !3, line: 271, type: !13)
!1331 = !DILocalVariable(name: "resource_length", scope: !1321, file: !3, line: 272, type: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rs_length", file: !1333, line: 16, baseType: !33)
!1333 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!1334 = !DILocalVariable(name: "minimum_resource_length", scope: !1321, file: !3, line: 273, type: !1332)
!1335 = !DILocalVariable(name: "common_serial_bus", scope: !1336, file: !3, line: 366, type: !288)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 362, column: 54)
!1337 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 362, column: 6)
!1338 = !DILabel(scope: !1321, name: "invalid_resource", file: !3, line: 391)
!1339 = !DILabel(scope: !1321, name: "bad_resource_length", file: !3, line: 400)
!1340 = !DILocation(line: 266, column: 51, scope: !1321)
!1341 = !DILocation(line: 267, column: 12, scope: !1321)
!1342 = !DILocation(line: 267, column: 21, scope: !1321)
!1343 = !DILocation(line: 269, column: 2, scope: !1321)
!1344 = !DILocation(line: 269, column: 22, scope: !1321)
!1345 = !DILocation(line: 270, column: 2, scope: !1321)
!1346 = !DILocation(line: 270, column: 5, scope: !1321)
!1347 = !DILocation(line: 271, column: 2, scope: !1321)
!1348 = !DILocation(line: 271, column: 5, scope: !1321)
!1349 = !DILocation(line: 272, column: 2, scope: !1321)
!1350 = !DILocation(line: 272, column: 17, scope: !1321)
!1351 = !DILocation(line: 273, column: 2, scope: !1321)
!1352 = !DILocation(line: 273, column: 17, scope: !1321)
!1353 = !DILocation(line: 280, column: 18, scope: !1321)
!1354 = !DILocation(line: 280, column: 16, scope: !1321)
!1355 = !DILocation(line: 286, column: 6, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 286, column: 6)
!1357 = !DILocation(line: 286, column: 20, scope: !1356)
!1358 = !DILocation(line: 286, column: 6, scope: !1321)
!1359 = !DILocation(line: 290, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 290, column: 7)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 286, column: 48)
!1362 = !DILocation(line: 290, column: 21, scope: !1360)
!1363 = !DILocation(line: 290, column: 7, scope: !1361)
!1364 = !DILocation(line: 291, column: 4, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 290, column: 53)
!1366 = !DILocation(line: 298, column: 26, scope: !1361)
!1367 = !DILocation(line: 298, column: 40, scope: !1361)
!1368 = !DILocation(line: 298, column: 20, scope: !1361)
!1369 = !DILocation(line: 298, column: 18, scope: !1361)
!1370 = !DILocation(line: 299, column: 2, scope: !1361)
!1371 = !DILocation(line: 305, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 299, column: 9)
!1373 = !DILocation(line: 305, column: 23, scope: !1372)
!1374 = !DILocation(line: 305, column: 56, scope: !1372)
!1375 = !DILocation(line: 304, column: 20, scope: !1372)
!1376 = !DILocation(line: 304, column: 18, scope: !1372)
!1377 = !DILocation(line: 312, column: 31, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 312, column: 6)
!1379 = !DILocation(line: 312, column: 7, scope: !1378)
!1380 = !DILocation(line: 312, column: 6, scope: !1321)
!1381 = !DILocation(line: 313, column: 3, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 312, column: 48)
!1383 = !DILocation(line: 320, column: 48, scope: !1321)
!1384 = !DILocation(line: 320, column: 20, scope: !1321)
!1385 = !DILocation(line: 320, column: 18, scope: !1321)
!1386 = !DILocation(line: 321, column: 56, scope: !1321)
!1387 = !DILocation(line: 321, column: 28, scope: !1321)
!1388 = !DILocation(line: 321, column: 26, scope: !1321)
!1389 = !DILocation(line: 325, column: 34, scope: !1321)
!1390 = !DILocation(line: 325, column: 10, scope: !1321)
!1391 = !DILocation(line: 325, column: 2, scope: !1321)
!1392 = !DILocation(line: 330, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 330, column: 7)
!1394 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 325, column: 51)
!1395 = !DILocation(line: 330, column: 26, scope: !1393)
!1396 = !DILocation(line: 330, column: 23, scope: !1393)
!1397 = !DILocation(line: 330, column: 7, scope: !1394)
!1398 = !DILocation(line: 331, column: 4, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 330, column: 51)
!1400 = !DILocation(line: 333, column: 3, scope: !1394)
!1401 = !DILocation(line: 339, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 339, column: 7)
!1403 = !DILocation(line: 339, column: 25, scope: !1402)
!1404 = !DILocation(line: 339, column: 23, scope: !1402)
!1405 = !DILocation(line: 339, column: 7, scope: !1394)
!1406 = !DILocation(line: 340, column: 4, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 339, column: 50)
!1408 = !DILocation(line: 342, column: 3, scope: !1394)
!1409 = !DILocation(line: 348, column: 8, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 348, column: 7)
!1411 = !DILocation(line: 348, column: 26, scope: !1410)
!1412 = !DILocation(line: 348, column: 24, scope: !1410)
!1413 = !DILocation(line: 348, column: 51, scope: !1410)
!1414 = !DILocation(line: 349, column: 8, scope: !1410)
!1415 = !DILocation(line: 349, column: 27, scope: !1410)
!1416 = !DILocation(line: 349, column: 51, scope: !1410)
!1417 = !DILocation(line: 349, column: 24, scope: !1410)
!1418 = !DILocation(line: 348, column: 7, scope: !1394)
!1419 = !DILocation(line: 350, column: 4, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 349, column: 58)
!1421 = !DILocation(line: 352, column: 3, scope: !1394)
!1422 = !DILocation(line: 358, column: 3, scope: !1394)
!1423 = !DILocation(line: 361, column: 17, scope: !1321)
!1424 = !DILocation(line: 361, column: 15, scope: !1321)
!1425 = !DILocation(line: 362, column: 6, scope: !1337)
!1426 = !DILocation(line: 362, column: 20, scope: !1337)
!1427 = !DILocation(line: 362, column: 6, scope: !1321)
!1428 = !DILocation(line: 366, column: 3, scope: !1336)
!1429 = !DILocation(line: 366, column: 40, scope: !1336)
!1430 = !DILocation(line: 367, column: 30, scope: !1336)
!1431 = !DILocation(line: 367, column: 3, scope: !1336)
!1432 = !DILocation(line: 372, column: 26, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 372, column: 7)
!1434 = !DILocation(line: 372, column: 8, scope: !1433)
!1435 = !DILocation(line: 372, column: 31, scope: !1433)
!1436 = !DILocation(line: 372, column: 37, scope: !1433)
!1437 = !DILocation(line: 373, column: 26, scope: !1433)
!1438 = !DILocation(line: 373, column: 8, scope: !1433)
!1439 = !DILocation(line: 373, column: 31, scope: !1433)
!1440 = !DILocation(line: 372, column: 7, scope: !1336)
!1441 = !DILocation(line: 374, column: 8, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 374, column: 8)
!1443 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 373, column: 66)
!1444 = !DILocation(line: 374, column: 8, scope: !1443)
!1445 = !DILocation(line: 375, column: 5, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 374, column: 20)
!1447 = !DILocation(line: 378, column: 4, scope: !1446)
!1448 = !DILocation(line: 379, column: 4, scope: !1443)
!1449 = !DILocation(line: 381, column: 2, scope: !1337)
!1450 = !DILocation(line: 381, column: 2, scope: !1336)
!1451 = !DILocation(line: 385, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 385, column: 6)
!1453 = !DILocation(line: 385, column: 6, scope: !1321)
!1454 = !DILocation(line: 386, column: 19, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 385, column: 20)
!1456 = !DILocation(line: 386, column: 4, scope: !1455)
!1457 = !DILocation(line: 386, column: 17, scope: !1455)
!1458 = !DILocation(line: 387, column: 2, scope: !1455)
!1459 = !DILocation(line: 389, column: 2, scope: !1321)
!1460 = !DILocation(line: 391, column: 1, scope: !1321)
!1461 = !DILocation(line: 393, column: 6, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 393, column: 6)
!1463 = !DILocation(line: 393, column: 6, scope: !1321)
!1464 = !DILocation(line: 394, column: 3, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 393, column: 18)
!1466 = !DILocation(line: 397, column: 2, scope: !1465)
!1467 = !DILocation(line: 398, column: 2, scope: !1321)
!1468 = !DILocation(line: 400, column: 1, scope: !1321)
!1469 = !DILocation(line: 402, column: 6, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 402, column: 6)
!1471 = !DILocation(line: 402, column: 6, scope: !1321)
!1472 = !DILocation(line: 403, column: 3, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 402, column: 18)
!1474 = !DILocation(line: 408, column: 2, scope: !1473)
!1475 = !DILocation(line: 409, column: 2, scope: !1321)
!1476 = !DILocation(line: 410, column: 1, scope: !1321)
!1477 = distinct !DISubprogram(name: "acpi_ut_get_descriptor_length", scope: !3, file: !3, line: 525, type: !1478, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!7, !386}
!1480 = !{!1481}
!1481 = !DILocalVariable(name: "aml", arg: 1, scope: !1477, file: !3, line: 525, type: !386)
!1482 = !DILocation(line: 525, column: 41, scope: !1477)
!1483 = !DILocation(line: 533, column: 38, scope: !1477)
!1484 = !DILocation(line: 533, column: 10, scope: !1477)
!1485 = !DILocation(line: 534, column: 38, scope: !1477)
!1486 = !DILocation(line: 534, column: 3, scope: !1477)
!1487 = !DILocation(line: 533, column: 43, scope: !1477)
!1488 = !DILocation(line: 533, column: 2, scope: !1477)
!1489 = distinct !DISubprogram(name: "acpi_ut_get_resource_type", scope: !3, file: !3, line: 426, type: !1490, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!13, !386}
!1492 = !{!1493}
!1493 = !DILocalVariable(name: "aml", arg: 1, scope: !1489, file: !3, line: 426, type: !386)
!1494 = !DILocation(line: 426, column: 36, scope: !1489)
!1495 = !DILocation(line: 434, column: 6, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 434, column: 6)
!1497 = !DILocation(line: 434, column: 21, scope: !1496)
!1498 = !DILocation(line: 434, column: 6, scope: !1489)
!1499 = !DILocation(line: 438, column: 11, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 434, column: 49)
!1501 = !DILocation(line: 438, column: 3, scope: !1500)
!1502 = !DILocation(line: 442, column: 17, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 439, column: 9)
!1504 = !DILocation(line: 442, column: 32, scope: !1503)
!1505 = !DILocation(line: 442, column: 11, scope: !1503)
!1506 = !DILocation(line: 442, column: 3, scope: !1503)
!1507 = !DILocation(line: 444, column: 1, scope: !1489)
!1508 = distinct !DISubprogram(name: "acpi_ut_get_resource_length", scope: !3, file: !3, line: 460, type: !1509, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!33, !386}
!1511 = !{!1512, !1513}
!1512 = !DILocalVariable(name: "aml", arg: 1, scope: !1508, file: !3, line: 460, type: !386)
!1513 = !DILocalVariable(name: "resource_length", scope: !1508, file: !3, line: 462, type: !1332)
!1514 = !DILocation(line: 460, column: 39, scope: !1508)
!1515 = !DILocation(line: 462, column: 2, scope: !1508)
!1516 = !DILocation(line: 462, column: 17, scope: !1508)
!1517 = !DILocation(line: 470, column: 6, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 470, column: 6)
!1519 = !DILocation(line: 470, column: 21, scope: !1518)
!1520 = !DILocation(line: 470, column: 6, scope: !1508)
!1521 = !DILocation(line: 474, column: 3, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 470, column: 49)
!1523 = !DILocation(line: 476, column: 2, scope: !1522)
!1524 = !DILocation(line: 479, column: 28, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 476, column: 9)
!1526 = !DILocation(line: 479, column: 43, scope: !1525)
!1527 = !DILocation(line: 479, column: 21, scope: !1525)
!1528 = !DILocation(line: 479, column: 19, scope: !1525)
!1529 = !DILocation(line: 483, column: 10, scope: !1508)
!1530 = !DILocation(line: 484, column: 1, scope: !1508)
!1531 = !DILocation(line: 483, column: 2, scope: !1508)
!1532 = !DISubprogram(name: "acpi_error", scope: !1533, file: !1533, line: 901, type: !1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1533 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1536, !7, !1536, null}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1537 = distinct !DISubprogram(name: "acpi_ut_get_resource_header_length", scope: !3, file: !3, line: 498, type: !1490, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1538)
!1538 = !{!1539}
!1539 = !DILocalVariable(name: "aml", arg: 1, scope: !1537, file: !3, line: 498, type: !386)
!1540 = !DILocation(line: 498, column: 45, scope: !1537)
!1541 = !DILocation(line: 504, column: 6, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 504, column: 6)
!1543 = !DILocation(line: 504, column: 21, scope: !1542)
!1544 = !DILocation(line: 504, column: 6, scope: !1537)
!1545 = !DILocation(line: 505, column: 3, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 504, column: 49)
!1547 = !DILocation(line: 507, column: 3, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 506, column: 9)
!1549 = !DILocation(line: 509, column: 1, scope: !1537)
!1550 = distinct !DISubprogram(name: "acpi_ut_get_resource_end_tag", scope: !3, file: !3, line: 552, type: !1551, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1554)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!5, !488, !1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1554 = !{!1555, !1556, !1557}
!1555 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1550, file: !3, line: 552, type: !488)
!1556 = !DILocalVariable(name: "end_tag", arg: 2, scope: !1550, file: !3, line: 552, type: !1553)
!1557 = !DILocalVariable(name: "status", scope: !1550, file: !3, line: 554, type: !5)
!1558 = !DILocation(line: 552, column: 57, scope: !1550)
!1559 = !DILocation(line: 552, column: 72, scope: !1550)
!1560 = !DILocation(line: 554, column: 2, scope: !1550)
!1561 = !DILocation(line: 554, column: 14, scope: !1550)
!1562 = !DILocation(line: 560, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 560, column: 6)
!1564 = !DILocation(line: 560, column: 24, scope: !1563)
!1565 = !DILocation(line: 560, column: 6, scope: !1550)
!1566 = !DILocation(line: 561, column: 14, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 560, column: 32)
!1568 = !DILocation(line: 561, column: 31, scope: !1567)
!1569 = !DILocation(line: 561, column: 4, scope: !1567)
!1570 = !DILocation(line: 561, column: 12, scope: !1567)
!1571 = !DILocation(line: 562, column: 3, scope: !1567)
!1572 = !DILocation(line: 567, column: 44, scope: !1550)
!1573 = !DILocation(line: 567, column: 61, scope: !1550)
!1574 = !DILocation(line: 568, column: 10, scope: !1550)
!1575 = !DILocation(line: 568, column: 27, scope: !1550)
!1576 = !DILocation(line: 569, column: 19, scope: !1550)
!1577 = !DILocation(line: 567, column: 11, scope: !1550)
!1578 = !DILocation(line: 567, column: 9, scope: !1550)
!1579 = !DILocation(line: 571, column: 2, scope: !1550)
!1580 = !DILocation(line: 572, column: 1, scope: !1550)
