; ModuleID = 'drivers/acpi/acpica/rsutils.c'
source_filename = "drivers/acpi/acpica/rsutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml_resource_small_header = type { i8 }
%struct.aml_resource_large_header = type <{ i8, i16 }>
%struct.acpi_resource_source = type <{ i8, i16, ptr }>
%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }

@.str = private unnamed_addr constant [5 x i8] c"_PRT\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [5 x i8] c"_PRS\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [5 x i8] c"_AEI\00", align 1, !dbg !11
@.str.4 = private unnamed_addr constant [5 x i8] c"_SRS\00", align 1, !dbg !13
@_acpi_module_name = internal constant [8 x i8] c"rsutils\00", align 1, !dbg !15
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !858

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_rs_decode_bitmask(i16 noundef zeroext %mask, ptr noundef %list) #0 align 16 !dbg !874 {
entry:
  %mask.addr = alloca i16, align 2
  %list.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %bit_count = alloca i8, align 1
  store i16 %mask, ptr %mask.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !878, metadata !DIExpression()), !dbg !882
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !879, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 1, ptr %i) #15, !dbg !884
  call void @llvm.dbg.declare(metadata ptr %i, metadata !880, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 1, ptr %bit_count) #15, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %bit_count, metadata !881, metadata !DIExpression()), !dbg !887
  store i8 0, ptr %i, align 1, !dbg !888
  store i8 0, ptr %bit_count, align 1, !dbg !890
  br label %for.cond, !dbg !891

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr %mask.addr, align 2, !dbg !892
  %tobool = icmp ne i16 %0, 0, !dbg !894
  br i1 %tobool, label %for.body, label %for.end, !dbg !894

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr %mask.addr, align 2, !dbg !895
  %conv = zext i16 %1 to i32, !dbg !895
  %and = and i32 %conv, 1, !dbg !898
  %tobool1 = icmp ne i32 %and, 0, !dbg !898
  br i1 %tobool1, label %if.then, label %if.end, !dbg !899

if.then:                                          ; preds = %for.body
  %2 = load i8, ptr %i, align 1, !dbg !900
  %3 = load ptr, ptr %list.addr, align 8, !dbg !902
  %4 = load i8, ptr %bit_count, align 1, !dbg !903
  %idxprom = zext i8 %4 to i64, !dbg !902
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !902
  store i8 %2, ptr %arrayidx, align 1, !dbg !904
  %5 = load i8, ptr %bit_count, align 1, !dbg !905
  %inc = add i8 %5, 1, !dbg !905
  store i8 %inc, ptr %bit_count, align 1, !dbg !905
  br label %if.end, !dbg !906

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i16, ptr %mask.addr, align 2, !dbg !907
  %conv2 = zext i16 %6 to i32, !dbg !907
  %shr = ashr i32 %conv2, 1, !dbg !907
  %conv3 = trunc i32 %shr to i16, !dbg !907
  store i16 %conv3, ptr %mask.addr, align 2, !dbg !907
  br label %for.inc, !dbg !908

for.inc:                                          ; preds = %if.end
  %7 = load i8, ptr %i, align 1, !dbg !909
  %inc4 = add i8 %7, 1, !dbg !909
  store i8 %inc4, ptr %i, align 1, !dbg !909
  br label %for.cond, !dbg !910, !llvm.loop !911

for.end:                                          ; preds = %for.cond
  %8 = load i8, ptr %bit_count, align 1, !dbg !915
  call void @llvm.lifetime.end.p0(i64 1, ptr %bit_count) #15, !dbg !916
  call void @llvm.lifetime.end.p0(i64 1, ptr %i) #15, !dbg !916
  ret i8 %8, !dbg !917
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @acpi_rs_encode_bitmask(ptr noundef %list, i8 noundef zeroext %count) #0 align 16 !dbg !918 {
entry:
  %list.addr = alloca ptr, align 8
  %count.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %mask = alloca i16, align 2
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !922, metadata !DIExpression()), !dbg !926
  store i8 %count, ptr %count.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !923, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %i, metadata !924, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 2, ptr %mask) #15, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !925, metadata !DIExpression()), !dbg !931
  store i32 0, ptr %i, align 4, !dbg !932
  store i16 0, ptr %mask, align 2, !dbg !934
  br label %for.cond, !dbg !935

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !936
  %1 = load i8, ptr %count.addr, align 1, !dbg !938
  %conv = zext i8 %1 to i32, !dbg !938
  %cmp = icmp ult i32 %0, %conv, !dbg !939
  br i1 %cmp, label %for.body, label %for.end, !dbg !940

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %list.addr, align 8, !dbg !941
  %3 = load i32, ptr %i, align 4, !dbg !943
  %idxprom = zext i32 %3 to i64, !dbg !941
  %arrayidx = getelementptr i8, ptr %2, i64 %idxprom, !dbg !941
  %4 = load i8, ptr %arrayidx, align 1, !dbg !941
  %conv2 = zext i8 %4 to i32, !dbg !941
  %shl = shl i32 1, %conv2, !dbg !944
  %5 = load i16, ptr %mask, align 2, !dbg !945
  %conv3 = zext i16 %5 to i32, !dbg !945
  %or = or i32 %conv3, %shl, !dbg !945
  %conv4 = trunc i32 %or to i16, !dbg !945
  store i16 %conv4, ptr %mask, align 2, !dbg !945
  br label %for.inc, !dbg !946

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !947
  %inc = add i32 %6, 1, !dbg !947
  store i32 %inc, ptr %i, align 4, !dbg !947
  br label %for.cond, !dbg !948, !llvm.loop !949

for.end:                                          ; preds = %for.cond
  %7 = load i16, ptr %mask, align 2, !dbg !951
  call void @llvm.lifetime.end.p0(i64 2, ptr %mask) #15, !dbg !952
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !952
  ret i16 %7, !dbg !953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_rs_move_data(ptr noundef %destination, ptr noundef %source, i16 noundef zeroext %item_count, i8 noundef zeroext %move_type) #0 align 16 !dbg !954 {
entry:
  %destination.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %item_count.addr = alloca i16, align 2
  %move_type.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %destination, ptr %destination.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %destination.addr, metadata !958, metadata !DIExpression()), !dbg !963
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !959, metadata !DIExpression()), !dbg !964
  store i16 %item_count, ptr %item_count.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %item_count.addr, metadata !960, metadata !DIExpression()), !dbg !965
  store i8 %move_type, ptr %move_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %move_type.addr, metadata !961, metadata !DIExpression()), !dbg !966
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %i, metadata !962, metadata !DIExpression()), !dbg !968
  store i32 0, ptr %i, align 4, !dbg !969
  br label %for.cond, !dbg !971

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !972
  %1 = load i16, ptr %item_count.addr, align 2, !dbg !974
  %conv = zext i16 %1 to i32, !dbg !974
  %cmp = icmp ult i32 %0, %conv, !dbg !975
  br i1 %cmp, label %for.body, label %for.end, !dbg !976

for.body:                                         ; preds = %for.cond
  %2 = load i8, ptr %move_type.addr, align 1, !dbg !977
  %conv2 = zext i8 %2 to i32, !dbg !977
  switch i32 %conv2, label %sw.default [
    i32 26, label %sw.bb
    i32 23, label %sw.bb
    i32 25, label %sw.bb
    i32 24, label %sw.bb
    i32 27, label %sw.bb4
    i32 22, label %sw.bb4
    i32 28, label %sw.bb7
    i32 29, label %sw.bb12
  ], !dbg !979

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body
  %3 = load ptr, ptr %destination.addr, align 8, !dbg !980
  %4 = load ptr, ptr %source.addr, align 8, !dbg !982
  %5 = load i16, ptr %item_count.addr, align 2, !dbg !983
  %conv3 = zext i16 %5 to i64, !dbg !983
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %conv3, i1 false), !dbg !984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !985

sw.bb4:                                           ; preds = %for.body, %for.body
  %6 = load ptr, ptr %source.addr, align 8, !dbg !986
  %7 = ptrtoint ptr %6 to i64, !dbg !986
  %8 = inttoptr i64 %7 to ptr, !dbg !986
  %9 = load i32, ptr %i, align 4, !dbg !986
  %idxprom = zext i32 %9 to i64, !dbg !986
  %arrayidx = getelementptr i16, ptr %8, i64 %idxprom, !dbg !986
  %10 = load i16, ptr %arrayidx, align 2, !dbg !986
  %11 = load ptr, ptr %destination.addr, align 8, !dbg !986
  %12 = ptrtoint ptr %11 to i64, !dbg !986
  %13 = inttoptr i64 %12 to ptr, !dbg !986
  %14 = load i32, ptr %i, align 4, !dbg !986
  %idxprom5 = zext i32 %14 to i64, !dbg !986
  %arrayidx6 = getelementptr i16, ptr %13, i64 %idxprom5, !dbg !986
  store i16 %10, ptr %arrayidx6, align 2, !dbg !986
  br label %sw.epilog, !dbg !987

sw.bb7:                                           ; preds = %for.body
  %15 = load ptr, ptr %source.addr, align 8, !dbg !988
  %16 = ptrtoint ptr %15 to i64, !dbg !988
  %17 = inttoptr i64 %16 to ptr, !dbg !988
  %18 = load i32, ptr %i, align 4, !dbg !988
  %idxprom8 = zext i32 %18 to i64, !dbg !988
  %arrayidx9 = getelementptr i32, ptr %17, i64 %idxprom8, !dbg !988
  %19 = load i32, ptr %arrayidx9, align 4, !dbg !988
  %20 = load ptr, ptr %destination.addr, align 8, !dbg !988
  %21 = ptrtoint ptr %20 to i64, !dbg !988
  %22 = inttoptr i64 %21 to ptr, !dbg !988
  %23 = load i32, ptr %i, align 4, !dbg !988
  %idxprom10 = zext i32 %23 to i64, !dbg !988
  %arrayidx11 = getelementptr i32, ptr %22, i64 %idxprom10, !dbg !988
  store i32 %19, ptr %arrayidx11, align 4, !dbg !988
  br label %sw.epilog, !dbg !989

sw.bb12:                                          ; preds = %for.body
  %24 = load ptr, ptr %source.addr, align 8, !dbg !990
  %25 = ptrtoint ptr %24 to i64, !dbg !990
  %26 = inttoptr i64 %25 to ptr, !dbg !990
  %27 = load i32, ptr %i, align 4, !dbg !990
  %idxprom13 = zext i32 %27 to i64, !dbg !990
  %arrayidx14 = getelementptr i64, ptr %26, i64 %idxprom13, !dbg !990
  %28 = load i64, ptr %arrayidx14, align 8, !dbg !990
  %29 = load ptr, ptr %destination.addr, align 8, !dbg !990
  %30 = ptrtoint ptr %29 to i64, !dbg !990
  %31 = inttoptr i64 %30 to ptr, !dbg !990
  %32 = load i32, ptr %i, align 4, !dbg !990
  %idxprom15 = zext i32 %32 to i64, !dbg !990
  %arrayidx16 = getelementptr i64, ptr %31, i64 %idxprom15, !dbg !990
  store i64 %28, ptr %arrayidx16, align 8, !dbg !990
  br label %sw.epilog, !dbg !991

sw.default:                                       ; preds = %for.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb7, %sw.bb4
  br label %for.inc, !dbg !993

for.inc:                                          ; preds = %sw.epilog
  %33 = load i32, ptr %i, align 4, !dbg !994
  %inc = add i32 %33, 1, !dbg !994
  store i32 %inc, ptr %i, align 4, !dbg !994
  br label %for.cond, !dbg !995, !llvm.loop !996

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !998
  br label %cleanup, !dbg !998

cleanup:                                          ; preds = %for.end, %sw.default, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !998
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !998

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_rs_set_resource_length(i32 noundef %total_length, ptr noundef %aml) #0 align 16 !dbg !999 {
entry:
  %total_length.addr = alloca i32, align 4
  %aml.addr = alloca ptr, align 8
  %resource_length = alloca i16, align 2
  store i32 %total_length, ptr %total_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %total_length.addr, metadata !1363, metadata !DIExpression()), !dbg !1366
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1364, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 2, ptr %resource_length) #15, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %resource_length, metadata !1365, metadata !DIExpression()), !dbg !1369
  %0 = load i32, ptr %total_length.addr, align 4, !dbg !1370
  %1 = load ptr, ptr %aml.addr, align 8, !dbg !1371
  %call = call zeroext i8 @acpi_ut_get_resource_header_length(ptr noundef %1) #16, !dbg !1372
  %conv = zext i8 %call to i32, !dbg !1372
  %sub = sub i32 %0, %conv, !dbg !1373
  %conv1 = trunc i32 %sub to i16, !dbg !1374
  store i16 %conv1, ptr %resource_length, align 2, !dbg !1375
  %2 = load ptr, ptr %aml.addr, align 8, !dbg !1376
  %descriptor_type = getelementptr inbounds %struct.aml_resource_small_header, ptr %2, i32 0, i32 0, !dbg !1378
  %3 = load i8, ptr %descriptor_type, align 4, !dbg !1378
  %conv2 = zext i8 %3 to i32, !dbg !1376
  %and = and i32 %conv2, 128, !dbg !1379
  %tobool = icmp ne i32 %and, 0, !dbg !1379
  br i1 %tobool, label %if.then, label %if.else, !dbg !1380

if.then:                                          ; preds = %entry
  %4 = load i16, ptr %resource_length, align 2, !dbg !1381
  %5 = load ptr, ptr %aml.addr, align 8, !dbg !1381
  %resource_length3 = getelementptr inbounds %struct.aml_resource_large_header, ptr %5, i32 0, i32 1, !dbg !1381
  store i16 %4, ptr %resource_length3, align 2, !dbg !1381
  br label %if.end, !dbg !1383

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %aml.addr, align 8, !dbg !1384
  %descriptor_type4 = getelementptr inbounds %struct.aml_resource_small_header, ptr %6, i32 0, i32 0, !dbg !1386
  %7 = load i8, ptr %descriptor_type4, align 4, !dbg !1386
  %conv5 = zext i8 %7 to i32, !dbg !1384
  %and6 = and i32 %conv5, -8, !dbg !1387
  %8 = load i16, ptr %resource_length, align 2, !dbg !1388
  %conv7 = zext i16 %8 to i32, !dbg !1388
  %or = or i32 %and6, %conv7, !dbg !1389
  %conv8 = trunc i32 %or to i8, !dbg !1390
  %9 = load ptr, ptr %aml.addr, align 8, !dbg !1391
  %descriptor_type9 = getelementptr inbounds %struct.aml_resource_small_header, ptr %9, i32 0, i32 0, !dbg !1392
  store i8 %conv8, ptr %descriptor_type9, align 4, !dbg !1393
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %resource_length) #15, !dbg !1394
  ret void, !dbg !1394
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1395 dso_local zeroext i8 @acpi_ut_get_resource_header_length(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_rs_set_resource_header(i8 noundef zeroext %descriptor_type, i32 noundef %total_length, ptr noundef %aml) #0 align 16 !dbg !1399 {
entry:
  %descriptor_type.addr = alloca i8, align 1
  %total_length.addr = alloca i32, align 4
  %aml.addr = alloca ptr, align 8
  store i8 %descriptor_type, ptr %descriptor_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %descriptor_type.addr, metadata !1403, metadata !DIExpression()), !dbg !1406
  store i32 %total_length, ptr %total_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %total_length.addr, metadata !1404, metadata !DIExpression()), !dbg !1407
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1405, metadata !DIExpression()), !dbg !1408
  %0 = load i8, ptr %descriptor_type.addr, align 1, !dbg !1409
  %1 = load ptr, ptr %aml.addr, align 8, !dbg !1410
  %descriptor_type1 = getelementptr inbounds %struct.aml_resource_small_header, ptr %1, i32 0, i32 0, !dbg !1411
  store i8 %0, ptr %descriptor_type1, align 4, !dbg !1412
  %2 = load i32, ptr %total_length.addr, align 4, !dbg !1413
  %3 = load ptr, ptr %aml.addr, align 8, !dbg !1414
  call void @acpi_rs_set_resource_length(i32 noundef %2, ptr noundef %3) #16, !dbg !1415
  ret void, !dbg !1416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @acpi_rs_get_resource_source(i16 noundef zeroext %resource_length, i16 noundef zeroext %minimum_length, ptr noundef %resource_source, ptr noundef %aml, ptr noundef %string_ptr) #0 align 16 !dbg !1417 {
entry:
  %retval = alloca i16, align 2
  %resource_length.addr = alloca i16, align 2
  %minimum_length.addr = alloca i16, align 2
  %resource_source.addr = alloca ptr, align 8
  %aml.addr = alloca ptr, align 8
  %string_ptr.addr = alloca ptr, align 8
  %total_length = alloca i32, align 4
  %aml_resource_source = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %resource_length, ptr %resource_length.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %resource_length.addr, metadata !1427, metadata !DIExpression()), !dbg !1434
  store i16 %minimum_length, ptr %minimum_length.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %minimum_length.addr, metadata !1428, metadata !DIExpression()), !dbg !1435
  store ptr %resource_source, ptr %resource_source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource_source.addr, metadata !1429, metadata !DIExpression()), !dbg !1436
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1430, metadata !DIExpression()), !dbg !1437
  store ptr %string_ptr, ptr %string_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string_ptr.addr, metadata !1431, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_length) #15, !dbg !1439
  call void @llvm.dbg.declare(metadata ptr %total_length, metadata !1432, metadata !DIExpression()), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_resource_source) #15, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %aml_resource_source, metadata !1433, metadata !DIExpression()), !dbg !1442
  %0 = load i16, ptr %resource_length.addr, align 2, !dbg !1443
  %conv = zext i16 %0 to i64, !dbg !1443
  %add = add i64 %conv, 3, !dbg !1444
  %conv1 = trunc i64 %add to i32, !dbg !1443
  store i32 %conv1, ptr %total_length, align 4, !dbg !1445
  %1 = load ptr, ptr %aml.addr, align 8, !dbg !1446
  %2 = ptrtoint ptr %1 to i64, !dbg !1446
  %3 = inttoptr i64 %2 to ptr, !dbg !1446
  %4 = load i16, ptr %minimum_length.addr, align 2, !dbg !1446
  %conv2 = zext i16 %4 to i64, !dbg !1446
  %add.ptr = getelementptr i8, ptr %3, i64 %conv2, !dbg !1446
  %5 = ptrtoint ptr %add.ptr to i64, !dbg !1446
  %6 = inttoptr i64 %5 to ptr, !dbg !1446
  store ptr %6, ptr %aml_resource_source, align 8, !dbg !1447
  %7 = load i32, ptr %total_length, align 4, !dbg !1448
  %8 = load i16, ptr %minimum_length.addr, align 2, !dbg !1450
  %conv3 = zext i16 %8 to i32, !dbg !1450
  %add4 = add i32 %conv3, 1, !dbg !1451
  %cmp = icmp ugt i32 %7, %add4, !dbg !1452
  br i1 %cmp, label %if.then, label %if.end22, !dbg !1453

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %aml_resource_source, align 8, !dbg !1454
  %arrayidx = getelementptr i8, ptr %9, i64 0, !dbg !1454
  %10 = load i8, ptr %arrayidx, align 1, !dbg !1454
  %11 = load ptr, ptr %resource_source.addr, align 8, !dbg !1456
  %index = getelementptr inbounds %struct.acpi_resource_source, ptr %11, i32 0, i32 0, !dbg !1457
  store i8 %10, ptr %index, align 1, !dbg !1458
  %12 = load ptr, ptr %string_ptr.addr, align 8, !dbg !1459
  %13 = load ptr, ptr %resource_source.addr, align 8, !dbg !1460
  %string_ptr6 = getelementptr inbounds %struct.acpi_resource_source, ptr %13, i32 0, i32 2, !dbg !1461
  store ptr %12, ptr %string_ptr6, align 1, !dbg !1462
  %14 = load ptr, ptr %string_ptr.addr, align 8, !dbg !1463
  %tobool = icmp ne ptr %14, null, !dbg !1463
  br i1 %tobool, label %if.end, label %if.then7, !dbg !1465

if.then7:                                         ; preds = %if.then
  %15 = load ptr, ptr %resource_source.addr, align 8, !dbg !1466
  %16 = ptrtoint ptr %15 to i64, !dbg !1466
  %17 = inttoptr i64 %16 to ptr, !dbg !1466
  %add.ptr8 = getelementptr i8, ptr %17, i64 11, !dbg !1466
  %18 = ptrtoint ptr %add.ptr8 to i64, !dbg !1466
  %19 = inttoptr i64 %18 to ptr, !dbg !1466
  %20 = load ptr, ptr %resource_source.addr, align 8, !dbg !1468
  %string_ptr9 = getelementptr inbounds %struct.acpi_resource_source, ptr %20, i32 0, i32 2, !dbg !1469
  store ptr %19, ptr %string_ptr9, align 1, !dbg !1470
  br label %if.end, !dbg !1471

if.end:                                           ; preds = %if.then7, %if.then
  %21 = load ptr, ptr %aml_resource_source, align 8, !dbg !1472
  %arrayidx10 = getelementptr i8, ptr %21, i64 1, !dbg !1472
  %22 = ptrtoint ptr %arrayidx10 to i64, !dbg !1472
  %23 = inttoptr i64 %22 to ptr, !dbg !1472
  %call = call i64 @strlen(ptr noundef %23) #16, !dbg !1473
  %conv11 = trunc i64 %call to i32, !dbg !1474
  %add12 = add i32 %conv11, 1, !dbg !1475
  store i32 %add12, ptr %total_length, align 4, !dbg !1476
  %24 = load i32, ptr %total_length, align 4, !dbg !1477
  %conv13 = zext i32 %24 to i64, !dbg !1477
  %add14 = add i64 %conv13, 7, !dbg !1477
  %and = and i64 %add14, -8, !dbg !1477
  %conv15 = trunc i64 %and to i32, !dbg !1478
  store i32 %conv15, ptr %total_length, align 4, !dbg !1479
  %25 = load ptr, ptr %resource_source.addr, align 8, !dbg !1480
  %string_ptr16 = getelementptr inbounds %struct.acpi_resource_source, ptr %25, i32 0, i32 2, !dbg !1481
  %26 = load ptr, ptr %string_ptr16, align 1, !dbg !1481
  %27 = load i32, ptr %total_length, align 4, !dbg !1482
  %conv17 = zext i32 %27 to i64, !dbg !1482
  call void @llvm.memset.p0.i64(ptr align 1 %26, i8 0, i64 %conv17, i1 false), !dbg !1483
  %28 = load ptr, ptr %resource_source.addr, align 8, !dbg !1484
  %string_ptr18 = getelementptr inbounds %struct.acpi_resource_source, ptr %28, i32 0, i32 2, !dbg !1485
  %29 = load ptr, ptr %string_ptr18, align 1, !dbg !1485
  %30 = load ptr, ptr %aml_resource_source, align 8, !dbg !1486
  %arrayidx19 = getelementptr i8, ptr %30, i64 1, !dbg !1486
  %31 = ptrtoint ptr %arrayidx19 to i64, !dbg !1486
  %32 = inttoptr i64 %31 to ptr, !dbg !1486
  %call20 = call zeroext i16 @acpi_rs_strcpy(ptr noundef %29, ptr noundef %32) #16, !dbg !1487
  %33 = load ptr, ptr %resource_source.addr, align 8, !dbg !1488
  %string_length = getelementptr inbounds %struct.acpi_resource_source, ptr %33, i32 0, i32 1, !dbg !1489
  store i16 %call20, ptr %string_length, align 1, !dbg !1490
  %34 = load i32, ptr %total_length, align 4, !dbg !1491
  %conv21 = trunc i32 %34 to i16, !dbg !1492
  store i16 %conv21, ptr %retval, align 2, !dbg !1493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1493

if.end22:                                         ; preds = %entry
  %35 = load ptr, ptr %resource_source.addr, align 8, !dbg !1494
  %index23 = getelementptr inbounds %struct.acpi_resource_source, ptr %35, i32 0, i32 0, !dbg !1495
  store i8 0, ptr %index23, align 1, !dbg !1496
  %36 = load ptr, ptr %resource_source.addr, align 8, !dbg !1497
  %string_length24 = getelementptr inbounds %struct.acpi_resource_source, ptr %36, i32 0, i32 1, !dbg !1498
  store i16 0, ptr %string_length24, align 1, !dbg !1499
  %37 = load ptr, ptr %resource_source.addr, align 8, !dbg !1500
  %string_ptr25 = getelementptr inbounds %struct.acpi_resource_source, ptr %37, i32 0, i32 2, !dbg !1501
  store ptr null, ptr %string_ptr25, align 1, !dbg !1502
  store i16 0, ptr %retval, align 2, !dbg !1503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1503

cleanup:                                          ; preds = %if.end22, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_resource_source) #15, !dbg !1504
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_length) #15, !dbg !1504
  %38 = load i16, ptr %retval, align 2, !dbg !1504
  ret i16 %38, !dbg !1504
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1505 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @acpi_rs_strcpy(ptr noundef %destination, ptr noundef %source) #0 align 16 !dbg !1510 {
entry:
  %destination.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %i = alloca i16, align 2
  store ptr %destination, ptr %destination.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %destination.addr, metadata !1514, metadata !DIExpression()), !dbg !1517
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1515, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #15, !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1516, metadata !DIExpression()), !dbg !1520
  store i16 0, ptr %i, align 2, !dbg !1521
  br label %for.cond, !dbg !1523

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %source.addr, align 8, !dbg !1524
  %1 = load i16, ptr %i, align 2, !dbg !1526
  %idxprom = zext i16 %1 to i64, !dbg !1524
  %arrayidx = getelementptr i8, ptr %0, i64 %idxprom, !dbg !1524
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1524
  %tobool = icmp ne i8 %2, 0, !dbg !1527
  br i1 %tobool, label %for.body, label %for.end, !dbg !1527

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %source.addr, align 8, !dbg !1528
  %4 = load i16, ptr %i, align 2, !dbg !1530
  %idxprom1 = zext i16 %4 to i64, !dbg !1528
  %arrayidx2 = getelementptr i8, ptr %3, i64 %idxprom1, !dbg !1528
  %5 = load i8, ptr %arrayidx2, align 1, !dbg !1528
  %6 = load ptr, ptr %destination.addr, align 8, !dbg !1531
  %7 = load i16, ptr %i, align 2, !dbg !1532
  %idxprom3 = zext i16 %7 to i64, !dbg !1531
  %arrayidx4 = getelementptr i8, ptr %6, i64 %idxprom3, !dbg !1531
  store i8 %5, ptr %arrayidx4, align 1, !dbg !1533
  br label %for.inc, !dbg !1534

for.inc:                                          ; preds = %for.body
  %8 = load i16, ptr %i, align 2, !dbg !1535
  %inc = add i16 %8, 1, !dbg !1535
  store i16 %inc, ptr %i, align 2, !dbg !1535
  br label %for.cond, !dbg !1536, !llvm.loop !1537

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %destination.addr, align 8, !dbg !1539
  %10 = load i16, ptr %i, align 2, !dbg !1540
  %idxprom5 = zext i16 %10 to i64, !dbg !1539
  %arrayidx6 = getelementptr i8, ptr %9, i64 %idxprom5, !dbg !1539
  store i8 0, ptr %arrayidx6, align 1, !dbg !1541
  %11 = load i16, ptr %i, align 2, !dbg !1542
  %conv = zext i16 %11 to i32, !dbg !1542
  %add = add i32 %conv, 1, !dbg !1543
  %conv7 = trunc i32 %add to i16, !dbg !1544
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #15, !dbg !1545
  ret i16 %conv7, !dbg !1546
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_set_resource_source(ptr noundef %aml, i16 noundef zeroext %minimum_length, ptr noundef %resource_source) #0 align 16 !dbg !1547 {
entry:
  %aml.addr = alloca ptr, align 8
  %minimum_length.addr = alloca i16, align 2
  %resource_source.addr = alloca ptr, align 8
  %aml_resource_source = alloca ptr, align 8
  %descriptor_length = alloca i32, align 4
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1551, metadata !DIExpression()), !dbg !1556
  store i16 %minimum_length, ptr %minimum_length.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %minimum_length.addr, metadata !1552, metadata !DIExpression()), !dbg !1557
  store ptr %resource_source, ptr %resource_source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource_source.addr, metadata !1553, metadata !DIExpression()), !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_resource_source) #15, !dbg !1559
  call void @llvm.dbg.declare(metadata ptr %aml_resource_source, metadata !1554, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 4, ptr %descriptor_length) #15, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %descriptor_length, metadata !1555, metadata !DIExpression()), !dbg !1562
  %0 = load i16, ptr %minimum_length.addr, align 2, !dbg !1563
  %conv = zext i16 %0 to i32, !dbg !1563
  store i32 %conv, ptr %descriptor_length, align 4, !dbg !1564
  %1 = load ptr, ptr %resource_source.addr, align 8, !dbg !1565
  %string_length = getelementptr inbounds %struct.acpi_resource_source, ptr %1, i32 0, i32 1, !dbg !1567
  %2 = load i16, ptr %string_length, align 1, !dbg !1567
  %tobool = icmp ne i16 %2, 0, !dbg !1565
  br i1 %tobool, label %if.then, label %if.end, !dbg !1568

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %aml.addr, align 8, !dbg !1569
  %4 = ptrtoint ptr %3 to i64, !dbg !1569
  %5 = inttoptr i64 %4 to ptr, !dbg !1569
  %6 = load i16, ptr %minimum_length.addr, align 2, !dbg !1569
  %conv1 = zext i16 %6 to i64, !dbg !1569
  %add.ptr = getelementptr i8, ptr %5, i64 %conv1, !dbg !1569
  %7 = ptrtoint ptr %add.ptr to i64, !dbg !1569
  %8 = inttoptr i64 %7 to ptr, !dbg !1569
  store ptr %8, ptr %aml_resource_source, align 8, !dbg !1571
  %9 = load ptr, ptr %resource_source.addr, align 8, !dbg !1572
  %index = getelementptr inbounds %struct.acpi_resource_source, ptr %9, i32 0, i32 0, !dbg !1573
  %10 = load i8, ptr %index, align 1, !dbg !1573
  %11 = load ptr, ptr %aml_resource_source, align 8, !dbg !1574
  %arrayidx = getelementptr i8, ptr %11, i64 0, !dbg !1574
  store i8 %10, ptr %arrayidx, align 1, !dbg !1575
  %12 = load ptr, ptr %aml_resource_source, align 8, !dbg !1576
  %arrayidx2 = getelementptr i8, ptr %12, i64 1, !dbg !1576
  %13 = ptrtoint ptr %arrayidx2 to i64, !dbg !1576
  %14 = inttoptr i64 %13 to ptr, !dbg !1576
  %15 = load ptr, ptr %resource_source.addr, align 8, !dbg !1577
  %string_ptr = getelementptr inbounds %struct.acpi_resource_source, ptr %15, i32 0, i32 2, !dbg !1578
  %16 = load ptr, ptr %string_ptr, align 1, !dbg !1578
  %call = call ptr @strcpy(ptr noundef %14, ptr noundef %16) #16, !dbg !1579
  %17 = load ptr, ptr %resource_source.addr, align 8, !dbg !1580
  %string_length3 = getelementptr inbounds %struct.acpi_resource_source, ptr %17, i32 0, i32 1, !dbg !1581
  %18 = load i16, ptr %string_length3, align 1, !dbg !1581
  %conv4 = zext i16 %18 to i32, !dbg !1582
  %add = add i32 %conv4, 1, !dbg !1583
  %19 = load i32, ptr %descriptor_length, align 4, !dbg !1584
  %add5 = add i32 %19, %add, !dbg !1584
  store i32 %add5, ptr %descriptor_length, align 4, !dbg !1584
  br label %if.end, !dbg !1585

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, ptr %descriptor_length, align 4, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %descriptor_length) #15, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_resource_source) #15, !dbg !1587
  ret i32 %20, !dbg !1588
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1589 dso_local ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_get_prt_method_data(ptr noundef %node, ptr noundef %ret_buffer) #0 align 16 !dbg !1592 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1601, metadata !DIExpression()), !dbg !1605
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1602, metadata !DIExpression()), !dbg !1606
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #15, !dbg !1607
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1603, metadata !DIExpression()), !dbg !1608
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1609
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1604, metadata !DIExpression()), !dbg !1610
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1611
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str, i32 noundef 8, ptr noundef %obj_desc) #16, !dbg !1612
  store i32 %call, ptr %status, align 4, !dbg !1613
  %1 = load i32, ptr %status, align 4, !dbg !1614
  %tobool = icmp ne i32 %1, 0, !dbg !1614
  br i1 %tobool, label %if.then, label %if.end, !dbg !1616

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1617
  store i32 %2, ptr %retval, align 4, !dbg !1617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1617

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1619
  %4 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1620
  %call1 = call i32 @acpi_rs_create_pci_routing_table(ptr noundef %3, ptr noundef %4) #16, !dbg !1621
  store i32 %call1, ptr %status, align 4, !dbg !1622
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1623
  call void @acpi_ut_remove_reference(ptr noundef %5) #16, !dbg !1624
  %6 = load i32, ptr %status, align 4, !dbg !1625
  store i32 %6, ptr %retval, align 4, !dbg !1625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1625

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1626
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #15, !dbg !1626
  %7 = load i32, ptr %retval, align 4, !dbg !1626
  ret i32 %7, !dbg !1626
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1627 dso_local i32 @acpi_ut_evaluate_object(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1630 dso_local i32 @acpi_rs_create_pci_routing_table(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1633 dso_local void @acpi_ut_remove_reference(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_get_crs_method_data(ptr noundef %node, ptr noundef %ret_buffer) #0 align 16 !dbg !1636 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1638, metadata !DIExpression()), !dbg !1642
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1639, metadata !DIExpression()), !dbg !1643
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #15, !dbg !1644
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1640, metadata !DIExpression()), !dbg !1645
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1641, metadata !DIExpression()), !dbg !1647
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1648
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str.1, i32 noundef 4, ptr noundef %obj_desc) #16, !dbg !1649
  store i32 %call, ptr %status, align 4, !dbg !1650
  %1 = load i32, ptr %status, align 4, !dbg !1651
  %tobool = icmp ne i32 %1, 0, !dbg !1651
  br i1 %tobool, label %if.then, label %if.end, !dbg !1653

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1654
  store i32 %2, ptr %retval, align 4, !dbg !1654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1654

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1656
  %4 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1657
  %call1 = call i32 @acpi_rs_create_resource_list(ptr noundef %3, ptr noundef %4) #16, !dbg !1658
  store i32 %call1, ptr %status, align 4, !dbg !1659
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1660
  call void @acpi_ut_remove_reference(ptr noundef %5) #16, !dbg !1661
  %6 = load i32, ptr %status, align 4, !dbg !1662
  store i32 %6, ptr %retval, align 4, !dbg !1662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1662

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1663
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #15, !dbg !1663
  %7 = load i32, ptr %retval, align 4, !dbg !1663
  ret i32 %7, !dbg !1663
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1664 dso_local i32 @acpi_rs_create_resource_list(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_get_prs_method_data(ptr noundef %node, ptr noundef %ret_buffer) #0 align 16 !dbg !1665 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1667, metadata !DIExpression()), !dbg !1671
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1668, metadata !DIExpression()), !dbg !1672
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #15, !dbg !1673
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1669, metadata !DIExpression()), !dbg !1674
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1675
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1670, metadata !DIExpression()), !dbg !1676
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1677
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str.2, i32 noundef 4, ptr noundef %obj_desc) #16, !dbg !1678
  store i32 %call, ptr %status, align 4, !dbg !1679
  %1 = load i32, ptr %status, align 4, !dbg !1680
  %tobool = icmp ne i32 %1, 0, !dbg !1680
  br i1 %tobool, label %if.then, label %if.end, !dbg !1682

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1683
  store i32 %2, ptr %retval, align 4, !dbg !1683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1683

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1685
  %4 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1686
  %call1 = call i32 @acpi_rs_create_resource_list(ptr noundef %3, ptr noundef %4) #16, !dbg !1687
  store i32 %call1, ptr %status, align 4, !dbg !1688
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1689
  call void @acpi_ut_remove_reference(ptr noundef %5) #16, !dbg !1690
  %6 = load i32, ptr %status, align 4, !dbg !1691
  store i32 %6, ptr %retval, align 4, !dbg !1691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1691

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #15, !dbg !1692
  %7 = load i32, ptr %retval, align 4, !dbg !1692
  ret i32 %7, !dbg !1692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_get_aei_method_data(ptr noundef %node, ptr noundef %ret_buffer) #0 align 16 !dbg !1693 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1695, metadata !DIExpression()), !dbg !1699
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1696, metadata !DIExpression()), !dbg !1700
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #15, !dbg !1701
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1697, metadata !DIExpression()), !dbg !1702
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1703
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1698, metadata !DIExpression()), !dbg !1704
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1705
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str.3, i32 noundef 4, ptr noundef %obj_desc) #16, !dbg !1706
  store i32 %call, ptr %status, align 4, !dbg !1707
  %1 = load i32, ptr %status, align 4, !dbg !1708
  %tobool = icmp ne i32 %1, 0, !dbg !1708
  br i1 %tobool, label %if.then, label %if.end, !dbg !1710

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1711
  store i32 %2, ptr %retval, align 4, !dbg !1711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1711

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1713
  %4 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1714
  %call1 = call i32 @acpi_rs_create_resource_list(ptr noundef %3, ptr noundef %4) #16, !dbg !1715
  store i32 %call1, ptr %status, align 4, !dbg !1716
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1717
  call void @acpi_ut_remove_reference(ptr noundef %5) #16, !dbg !1718
  %6 = load i32, ptr %status, align 4, !dbg !1719
  store i32 %6, ptr %retval, align 4, !dbg !1719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1719

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1720
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #15, !dbg !1720
  %7 = load i32, ptr %retval, align 4, !dbg !1720
  ret i32 %7, !dbg !1720
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_get_method_data(ptr noundef %handle, ptr noundef %path, ptr noundef %ret_buffer) #0 align 16 !dbg !1721 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1725, metadata !DIExpression()), !dbg !1730
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1726, metadata !DIExpression()), !dbg !1731
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1727, metadata !DIExpression()), !dbg !1732
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #15, !dbg !1733
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1728, metadata !DIExpression()), !dbg !1734
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1735
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1729, metadata !DIExpression()), !dbg !1736
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1737
  %1 = ptrtoint ptr %0 to i64, !dbg !1737
  %2 = inttoptr i64 %1 to ptr, !dbg !1737
  %3 = load ptr, ptr %path.addr, align 8, !dbg !1738
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %2, ptr noundef %3, i32 noundef 4, ptr noundef %obj_desc) #16, !dbg !1739
  store i32 %call, ptr %status, align 4, !dbg !1740
  %4 = load i32, ptr %status, align 4, !dbg !1741
  %tobool = icmp ne i32 %4, 0, !dbg !1741
  br i1 %tobool, label %if.then, label %if.end, !dbg !1743

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %status, align 4, !dbg !1744
  store i32 %5, ptr %retval, align 4, !dbg !1744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1744

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !1746
  %7 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1747
  %call1 = call i32 @acpi_rs_create_resource_list(ptr noundef %6, ptr noundef %7) #16, !dbg !1748
  store i32 %call1, ptr %status, align 4, !dbg !1749
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1750
  call void @acpi_ut_remove_reference(ptr noundef %8) #16, !dbg !1751
  %9 = load i32, ptr %status, align 4, !dbg !1752
  store i32 %9, ptr %retval, align 4, !dbg !1752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1752

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1753
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #15, !dbg !1753
  %10 = load i32, ptr %retval, align 4, !dbg !1753
  ret i32 %10, !dbg !1753
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_set_srs_method_data(ptr noundef %node, ptr noundef %in_buffer) #0 align 16 !dbg !1754 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %in_buffer.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %args = alloca [2 x ptr], align 16
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1756, metadata !DIExpression()), !dbg !1827
  store ptr %in_buffer, ptr %in_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_buffer.addr, metadata !1757, metadata !DIExpression()), !dbg !1828
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1758, metadata !DIExpression()), !dbg !1830
  call void @llvm.lifetime.start.p0(i64 16, ptr %args) #15, !dbg !1831
  call void @llvm.dbg.declare(metadata ptr %args, metadata !1823, metadata !DIExpression()), !dbg !1832
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1824, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #15, !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1825, metadata !DIExpression()), !dbg !1836
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #16, !dbg !1837
  store ptr %call, ptr %info, align 8, !dbg !1838
  %0 = load ptr, ptr %info, align 8, !dbg !1839
  %tobool = icmp ne ptr %0, null, !dbg !1839
  br i1 %tobool, label %if.end, label %if.then, !dbg !1841

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !1842

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1844
  %2 = load ptr, ptr %info, align 8, !dbg !1845
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 0, !dbg !1846
  store ptr %1, ptr %prefix_node, align 8, !dbg !1847
  %3 = load ptr, ptr %info, align 8, !dbg !1848
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %3, i32 0, i32 1, !dbg !1849
  store ptr @.str.4, ptr %relative_pathname, align 8, !dbg !1850
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %args, i64 0, i64 0, !dbg !1851
  %4 = load ptr, ptr %info, align 8, !dbg !1852
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %4, i32 0, i32 2, !dbg !1853
  store ptr %arraydecay, ptr %parameters, align 8, !dbg !1854
  %5 = load ptr, ptr %info, align 8, !dbg !1855
  %flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %5, i32 0, i32 15, !dbg !1856
  store i8 1, ptr %flags, align 2, !dbg !1857
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !1858
  store i64 -2, ptr %length, align 8, !dbg !1859
  %6 = load ptr, ptr %in_buffer.addr, align 8, !dbg !1860
  %call1 = call i32 @acpi_rs_create_aml_resources(ptr noundef %6, ptr noundef %buffer) #16, !dbg !1861
  store i32 %call1, ptr %status, align 4, !dbg !1862
  %7 = load i32, ptr %status, align 4, !dbg !1863
  %tobool2 = icmp ne i32 %7, 0, !dbg !1863
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1865

if.then3:                                         ; preds = %if.end
  br label %cleanup, !dbg !1866

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 728, i32 noundef 256, i32 noundef 3) #16, !dbg !1868
  %arrayidx = getelementptr [2 x ptr], ptr %args, i64 0, i64 0, !dbg !1869
  store ptr %call5, ptr %arrayidx, align 16, !dbg !1870
  %arrayidx6 = getelementptr [2 x ptr], ptr %args, i64 0, i64 0, !dbg !1871
  %8 = load ptr, ptr %arrayidx6, align 16, !dbg !1871
  %tobool7 = icmp ne ptr %8, null, !dbg !1871
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1873

if.then8:                                         ; preds = %if.end4
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !1874
  %9 = load ptr, ptr %pointer, align 8, !dbg !1874
  call void @acpi_os_free(ptr noundef %9) #16, !dbg !1874
  store i32 4, ptr %status, align 4, !dbg !1876
  br label %cleanup, !dbg !1877

if.end9:                                          ; preds = %if.end4
  %length10 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !1878
  %10 = load i64, ptr %length10, align 8, !dbg !1878
  %conv = trunc i64 %10 to i32, !dbg !1879
  %arrayidx11 = getelementptr [2 x ptr], ptr %args, i64 0, i64 0, !dbg !1880
  %11 = load ptr, ptr %arrayidx11, align 16, !dbg !1880
  %length12 = getelementptr inbounds %struct.acpi_object_buffer, ptr %11, i32 0, i32 6, !dbg !1881
  store i32 %conv, ptr %length12, align 8, !dbg !1882
  %pointer13 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !1883
  %12 = load ptr, ptr %pointer13, align 8, !dbg !1883
  %arrayidx14 = getelementptr [2 x ptr], ptr %args, i64 0, i64 0, !dbg !1884
  %13 = load ptr, ptr %arrayidx14, align 16, !dbg !1884
  %pointer15 = getelementptr inbounds %struct.acpi_object_buffer, ptr %13, i32 0, i32 5, !dbg !1885
  store ptr %12, ptr %pointer15, align 8, !dbg !1886
  %arrayidx16 = getelementptr [2 x ptr], ptr %args, i64 0, i64 0, !dbg !1887
  %14 = load ptr, ptr %arrayidx16, align 16, !dbg !1887
  %flags17 = getelementptr inbounds %struct.acpi_object_common, ptr %14, i32 0, i32 4, !dbg !1888
  store i8 4, ptr %flags17, align 4, !dbg !1889
  %arrayidx18 = getelementptr [2 x ptr], ptr %args, i64 0, i64 1, !dbg !1890
  store ptr null, ptr %arrayidx18, align 8, !dbg !1891
  %15 = load ptr, ptr %info, align 8, !dbg !1892
  %call19 = call i32 @acpi_ns_evaluate(ptr noundef %15) #16, !dbg !1893
  store i32 %call19, ptr %status, align 4, !dbg !1894
  %arrayidx20 = getelementptr [2 x ptr], ptr %args, i64 0, i64 0, !dbg !1895
  %16 = load ptr, ptr %arrayidx20, align 16, !dbg !1895
  call void @acpi_ut_remove_reference(ptr noundef %16) #16, !dbg !1896
  br label %cleanup, !dbg !1896

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !1826), !dbg !1897
  %17 = load ptr, ptr %info, align 8, !dbg !1898
  call void @acpi_os_free(ptr noundef %17) #16, !dbg !1898
  %18 = load i32, ptr %status, align 4, !dbg !1899
  store i32 %18, ptr %retval, align 4, !dbg !1899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !1899

cleanup21:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #15, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 16, ptr %args) #15, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !1900
  %19 = load i32, ptr %retval, align 4, !dbg !1900
  ret i32 %19, !dbg !1900
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #6 align 16 !dbg !1901 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1906, metadata !DIExpression()), !dbg !1917
  %0 = load i64, ptr %size.addr, align 8, !dbg !1918
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #15, !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1907, metadata !DIExpression()), !dbg !1919
  br label %do.body, !dbg !1919

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1909, metadata !DIExpression()), !dbg !1920
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1912, metadata !DIExpression()), !dbg !1920
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1920
  %conv = zext i1 %cmp to i32, !dbg !1920
  store i32 1, ptr %tmp, align 4, !dbg !1920
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !1921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !1921
  %1 = load i32, ptr %tmp, align 4, !dbg !1920
  %call = call i64 @arch_local_save_flags() #16, !dbg !1921
  store i64 %call, ptr %_flags, align 8, !dbg !1921
  br label %do.cond, !dbg !1921

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1921

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !1922
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1913, metadata !DIExpression()), !dbg !1922
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !1922
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1916, metadata !DIExpression()), !dbg !1922
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1922
  %conv6 = zext i1 %cmp5 to i32, !dbg !1922
  store i32 1, ptr %tmp7, align 4, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !1923
  %2 = load i32, ptr %tmp7, align 4, !dbg !1922
  %3 = load i64, ptr %_flags, align 8, !dbg !1923
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #16, !dbg !1923
  store i32 %call9, ptr %tmp8, align 4, !dbg !1923
  %4 = load i32, ptr %tmp8, align 4, !dbg !1923
  store i32 %4, ptr %tmp1, align 4, !dbg !1921
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #15, !dbg !1924
  %5 = load i32, ptr %tmp1, align 4, !dbg !1919
  %tobool = icmp ne i32 %5, 0, !dbg !1924
  %6 = zext i1 %tobool to i64, !dbg !1924
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1924
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #17, !dbg !1925
  ret ptr %call10, !dbg !1926
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1927 dso_local i32 @acpi_rs_create_aml_resources(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1930 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #6 align 16 !dbg !1934 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1938, metadata !DIExpression()), !dbg !1939
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1940
  call void @kfree(ptr noundef %0) #16, !dbg !1941
  ret void, !dbg !1942
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1943 dso_local i32 @acpi_ns_evaluate(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1947 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1955, metadata !DIExpression()), !dbg !1957
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1956, metadata !DIExpression()), !dbg !1958
  %0 = load i64, ptr %size.addr, align 8, !dbg !1959
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1960
  %or = or i32 %1, 256, !dbg !1961
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1962
  ret ptr %call, !dbg !1963
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #8 align 16 !dbg !1964 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !1968
  ret i64 %call, !dbg !1969
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #8 align 16 !dbg !1970 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1975, metadata !DIExpression()), !dbg !1976
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1977
  %and = and i64 %0, 512, !dbg !1978
  %tobool = icmp ne i64 %and, 0, !dbg !1979
  %lnot = xor i1 %tobool, true, !dbg !1979
  %lnot.ext = zext i1 %lnot to i32, !dbg !1979
  ret i32 %lnot.ext, !dbg !1980
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !1981 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1983, metadata !DIExpression()), !dbg !1988
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1984, metadata !DIExpression()), !dbg !1989
  %0 = load i64, ptr %size.addr, align 8, !dbg !1990
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1991
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1992

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1993
  %tobool = icmp ne i64 %2, 0, !dbg !1993
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1994

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !1995
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1985, metadata !DIExpression()), !dbg !1996
  %3 = load i64, ptr %size.addr, align 8, !dbg !1997
  %cmp = icmp ugt i64 %3, 8192, !dbg !1999
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2000

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2001
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2002
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !2003
  store ptr %call, ptr %retval, align 8, !dbg !2004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2004

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2005
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2005
  store i32 %call2, ptr %index, align 4, !dbg !2006
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2007
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2008
  %9 = ptrtoint ptr %8 to i64, !dbg !2008
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2009
  %idxprom = zext i32 %call3 to i64, !dbg !2010
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2010
  %10 = load i32, ptr %index, align 4, !dbg !2011
  %idxprom4 = zext i32 %10 to i64, !dbg !2010
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2010
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2010
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2012
  %13 = load i64, ptr %size.addr, align 8, !dbg !2013
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2014
  store ptr %call6, ptr %retval, align 8, !dbg !2015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2015

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !2016
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2017
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2018
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !2019
  store ptr %call8, ptr %retval, align 8, !dbg !2020
  br label %return, !dbg !2020

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2021
  ret ptr %16, !dbg !2021
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2022 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !2023 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2029, metadata !DIExpression()), !dbg !2031
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2030, metadata !DIExpression()), !dbg !2032
  %0 = load i64, ptr %size.addr, align 8, !dbg !2033
  %tobool = icmp ne i64 %0, 0, !dbg !2033
  br i1 %tobool, label %if.end, label %if.then, !dbg !2035

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2036
  br label %return, !dbg !2036

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2037
  %cmp = icmp ule i64 %1, 8, !dbg !2039
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2040

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2041
  br label %return, !dbg !2041

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2042
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2044
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2045

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2046
  %cmp4 = icmp ule i64 %3, 96, !dbg !2047
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2048

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2049
  br label %return, !dbg !2049

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2050
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2052
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2053

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2054
  %cmp9 = icmp ule i64 %5, 192, !dbg !2055
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2056

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2057
  br label %return, !dbg !2057

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2058
  %cmp12 = icmp ule i64 %6, 8, !dbg !2060
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2061

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2062
  br label %return, !dbg !2062

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2063
  %cmp15 = icmp ule i64 %7, 16, !dbg !2065
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2066

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2067
  br label %return, !dbg !2067

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2068
  %cmp18 = icmp ule i64 %8, 32, !dbg !2070
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2071

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2072
  br label %return, !dbg !2072

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2073
  %cmp21 = icmp ule i64 %9, 64, !dbg !2075
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2076

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2077
  br label %return, !dbg !2077

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2078
  %cmp24 = icmp ule i64 %10, 128, !dbg !2080
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2081

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2082
  br label %return, !dbg !2082

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2083
  %cmp27 = icmp ule i64 %11, 256, !dbg !2085
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2086

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2087
  br label %return, !dbg !2087

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2088
  %cmp30 = icmp ule i64 %12, 512, !dbg !2090
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2091

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2092
  br label %return, !dbg !2092

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2093
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2095
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2096

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2097
  br label %return, !dbg !2097

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2098
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2100
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2101

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2102
  br label %return, !dbg !2102

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2103
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2105
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2106

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2107
  br label %return, !dbg !2107

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2108
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2110
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2111

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2112
  br label %return, !dbg !2112

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2113
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2115
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2116

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2117
  br label %return, !dbg !2117

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2118
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2120
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2121

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2122
  br label %return, !dbg !2122

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2123
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2125
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2126

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2127
  br label %return, !dbg !2127

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2128
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2130
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2131

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2132
  br label %return, !dbg !2132

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2133
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2135
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2136

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2137
  br label %return, !dbg !2137

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2138
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2140
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2141

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2142
  br label %return, !dbg !2142

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2143
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2145
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2146

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2147
  br label %return, !dbg !2147

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2148
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2150
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2151

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2152
  br label %return, !dbg !2152

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2153, !range !2155, !noundef !1182
  %tobool69 = trunc i8 %25 to i1, !dbg !2153
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2156

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2157

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #19, !dbg !2158, !srcloc !2161
  unreachable, !dbg !2158

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2162

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2163

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2164

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2166

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2164

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #15, !dbg !2168, !srcloc !2170
  br label %do.end75, !dbg !2168

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2164

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2171
  br label %return, !dbg !2171

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2172
  ret i32 %26, !dbg !2172
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2173 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !2179 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2183, metadata !DIExpression()), !dbg !2185
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2184, metadata !DIExpression()), !dbg !2186
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2187
  %and = and i32 %0, 17, !dbg !2187
  %cmp = icmp eq i32 %and, 0, !dbg !2187
  %lnot = xor i1 %cmp, true, !dbg !2187
  %lnot1 = xor i1 %lnot, true, !dbg !2187
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2187
  %conv = sext i32 %lnot.ext to i64, !dbg !2187
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2187
  %tobool = icmp ne i64 %expval, 0, !dbg !2187
  br i1 %tobool, label %if.then, label %if.end, !dbg !2189

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2190
  br label %return, !dbg !2190

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2191
  %and2 = and i32 %1, 1, !dbg !2193
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2193
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2194

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2195
  br label %return, !dbg !2195

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2196
  br label %return, !dbg !2196

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2198
  ret i32 %2, !dbg !2198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2199 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2200 dso_local void @__compiletime_assert_173() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #8 align 16 !dbg !2203 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !2208, !srcloc !2209
  %0 = load i64, ptr %flags, align 8, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2211
  ret i64 %0, !dbg !2212
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2213 dso_local void @kfree(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!865, !866, !867, !868, !869, !870, !871, !872}
!llvm.ident = !{!873}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/rsutils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4734456d39bb4e65a517599c7ace5064")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 547, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !3, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 709, type: !3, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !17, file: !2, line: 14, type: !863, isLocal: true, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.rsutils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22rsutils\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/rsutils.ll drivers/acpi/acpica/rsutils.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !71, globals: !857, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19, !56, !61}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 42, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "drivers/acpi/acpica/acresrc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2965293fe7c26b9b589feaadd667de1d")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!23 = !DIEnumerator(name: "ACPI_RSC_INITGET", value: 0)
!24 = !DIEnumerator(name: "ACPI_RSC_INITSET", value: 1)
!25 = !DIEnumerator(name: "ACPI_RSC_FLAGINIT", value: 2)
!26 = !DIEnumerator(name: "ACPI_RSC_1BITFLAG", value: 3)
!27 = !DIEnumerator(name: "ACPI_RSC_2BITFLAG", value: 4)
!28 = !DIEnumerator(name: "ACPI_RSC_3BITFLAG", value: 5)
!29 = !DIEnumerator(name: "ACPI_RSC_6BITFLAG", value: 6)
!30 = !DIEnumerator(name: "ACPI_RSC_ADDRESS", value: 7)
!31 = !DIEnumerator(name: "ACPI_RSC_BITMASK", value: 8)
!32 = !DIEnumerator(name: "ACPI_RSC_BITMASK16", value: 9)
!33 = !DIEnumerator(name: "ACPI_RSC_COUNT", value: 10)
!34 = !DIEnumerator(name: "ACPI_RSC_COUNT16", value: 11)
!35 = !DIEnumerator(name: "ACPI_RSC_COUNT_GPIO_PIN", value: 12)
!36 = !DIEnumerator(name: "ACPI_RSC_COUNT_GPIO_RES", value: 13)
!37 = !DIEnumerator(name: "ACPI_RSC_COUNT_GPIO_VEN", value: 14)
!38 = !DIEnumerator(name: "ACPI_RSC_COUNT_SERIAL_RES", value: 15)
!39 = !DIEnumerator(name: "ACPI_RSC_COUNT_SERIAL_VEN", value: 16)
!40 = !DIEnumerator(name: "ACPI_RSC_DATA8", value: 17)
!41 = !DIEnumerator(name: "ACPI_RSC_EXIT_EQ", value: 18)
!42 = !DIEnumerator(name: "ACPI_RSC_EXIT_LE", value: 19)
!43 = !DIEnumerator(name: "ACPI_RSC_EXIT_NE", value: 20)
!44 = !DIEnumerator(name: "ACPI_RSC_LENGTH", value: 21)
!45 = !DIEnumerator(name: "ACPI_RSC_MOVE_GPIO_PIN", value: 22)
!46 = !DIEnumerator(name: "ACPI_RSC_MOVE_GPIO_RES", value: 23)
!47 = !DIEnumerator(name: "ACPI_RSC_MOVE_SERIAL_RES", value: 24)
!48 = !DIEnumerator(name: "ACPI_RSC_MOVE_SERIAL_VEN", value: 25)
!49 = !DIEnumerator(name: "ACPI_RSC_MOVE8", value: 26)
!50 = !DIEnumerator(name: "ACPI_RSC_MOVE16", value: 27)
!51 = !DIEnumerator(name: "ACPI_RSC_MOVE32", value: 28)
!52 = !DIEnumerator(name: "ACPI_RSC_MOVE64", value: 29)
!53 = !DIEnumerator(name: "ACPI_RSC_SET8", value: 30)
!54 = !DIEnumerator(name: "ACPI_RSC_SOURCE", value: 31)
!55 = !DIEnumerator(name: "ACPI_RSC_SOURCEX", value: 32)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 10, baseType: !21, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "false", value: 0)
!60 = !DIEnumerator(name: "true", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !62, line: 364, baseType: !21, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!63 = !{!64, !65, !66, !67, !68, !69, !70}
!64 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!65 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!66 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!67 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!68 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!69 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!70 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!71 = !{!72, !78, !79, !82, !85, !89, !91, !94, !95, !97, !98, !83, !99, !197, !73, !856, !81}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !74, line: 19, baseType: !75)
!74 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !76, line: 24, baseType: !77)
!76 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !80, line: 42, baseType: !81)
!80 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !74, line: 21, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !76, line: 27, baseType: !21)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !74, line: 23, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !76, line: 31, baseType: !88)
!88 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rs_length", file: !90, line: 16, baseType: !73)
!90 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !74, line: 17, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !76, line: 21, baseType: !93)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !96, line: 127, baseType: !86)
!96 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rsdesc_size", file: !90, line: 17, baseType: !83)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !101, line: 133, size: 384, elements: !102)
!101 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!102 = !{!103, !843, !844, !845, !846, !852, !853, !854, !855}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !100, file: !101, line: 134, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !106, line: 369, size: 576, elements: !107)
!106 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!107 = !{!108, !116, !129, !139, !152, !166, !175, !493, !510, !526, !539, !617, !629, !643, !653, !671, !693, !712, !731, !750, !763, !789, !806, !819, !833, !842}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !105, file: !106, line: 370, baseType: !109, size: 128)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !106, line: 73, size: 128, elements: !110)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !109, file: !106, line: 74, baseType: !104, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !109, file: !106, line: 74, baseType: !91, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !106, line: 74, baseType: !91, size: 8, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !109, file: !106, line: 74, baseType: !73, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !106, line: 74, baseType: !91, size: 8, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !105, file: !106, line: 371, baseType: !117, size: 192)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !106, line: 76, size: 192, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !128}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !117, file: !106, line: 77, baseType: !104, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !106, line: 77, baseType: !91, size: 8, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !106, line: 77, baseType: !91, size: 8, offset: 72)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !117, file: !106, line: 77, baseType: !73, size: 16, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !106, line: 77, baseType: !91, size: 8, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !117, file: !106, line: 77, baseType: !125, size: 24, offset: 104)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !117, file: !106, line: 78, baseType: !86, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !105, file: !106, line: 372, baseType: !130, size: 256)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !106, line: 93, size: 256, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !106, line: 94, baseType: !104, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !106, line: 94, baseType: !91, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !106, line: 94, baseType: !91, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !106, line: 94, baseType: !73, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !106, line: 94, baseType: !91, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !130, file: !106, line: 94, baseType: !98, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !130, file: !106, line: 94, baseType: !83, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !105, file: !106, line: 373, baseType: !140, size: 384)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !106, line: 97, size: 384, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !106, line: 98, baseType: !104, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !106, line: 98, baseType: !91, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !106, line: 98, baseType: !91, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !106, line: 98, baseType: !73, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !106, line: 98, baseType: !91, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !140, file: !106, line: 98, baseType: !94, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !140, file: !106, line: 98, baseType: !83, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !140, file: !106, line: 99, baseType: !83, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !140, file: !106, line: 100, baseType: !94, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !106, line: 101, baseType: !99, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !105, file: !106, line: 374, baseType: !153, size: 384)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !106, line: 104, size: 384, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !163, !164, !165}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !153, file: !106, line: 105, baseType: !104, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !106, line: 105, baseType: !91, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !106, line: 105, baseType: !91, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !153, file: !106, line: 105, baseType: !73, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !106, line: 105, baseType: !91, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !153, file: !106, line: 105, baseType: !99, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !153, file: !106, line: 106, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !153, file: !106, line: 107, baseType: !94, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !153, file: !106, line: 108, baseType: !83, size: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !153, file: !106, line: 109, baseType: !83, size: 32, offset: 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !105, file: !106, line: 375, baseType: !167, size: 192)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !106, line: 118, size: 192, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !167, file: !106, line: 119, baseType: !104, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !167, file: !106, line: 119, baseType: !91, size: 8, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !106, line: 119, baseType: !91, size: 8, offset: 72)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !167, file: !106, line: 119, baseType: !73, size: 16, offset: 80)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !106, line: 119, baseType: !91, size: 8, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !167, file: !106, line: 119, baseType: !78, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !105, file: !106, line: 376, baseType: !176, size: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !106, line: 144, size: 448, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !490, !491, !492}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !176, file: !106, line: 145, baseType: !104, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !176, file: !106, line: 145, baseType: !91, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !106, line: 145, baseType: !91, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !176, file: !106, line: 145, baseType: !73, size: 16, offset: 80)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !106, line: 145, baseType: !91, size: 8, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !176, file: !106, line: 145, baseType: !91, size: 8, offset: 104)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !176, file: !106, line: 146, baseType: !91, size: 8, offset: 112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !176, file: !106, line: 147, baseType: !91, size: 8, offset: 120)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !176, file: !106, line: 148, baseType: !104, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !176, file: !106, line: 149, baseType: !104, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !106, line: 150, baseType: !94, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !176, file: !106, line: 154, baseType: !190, size: 64, offset: 320)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !106, line: 151, size: 64, elements: !191)
!191 = !{!192, !489}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !190, file: !106, line: 152, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !101, line: 248, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !96, line: 421, baseType: !83)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !200, line: 37, size: 9024, elements: !201)
!200 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !435, !436, !437, !438, !439, !443, !445, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !472, !473, !474, !475, !476, !477, !478, !479, !481, !487}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !200, line: 38, baseType: !198, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !200, line: 39, baseType: !91, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !199, file: !200, line: 40, baseType: !91, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !199, file: !200, line: 41, baseType: !73, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !199, file: !200, line: 42, baseType: !91, size: 8, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !199, file: !200, line: 43, baseType: !91, size: 8, offset: 104)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !199, file: !200, line: 44, baseType: !91, size: 8, offset: 112)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !199, file: !200, line: 45, baseType: !210, size: 16, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !96, line: 445, baseType: !73)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !199, file: !200, line: 46, baseType: !91, size: 8, offset: 144)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !199, file: !200, line: 47, baseType: !91, size: 8, offset: 152)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !199, file: !200, line: 48, baseType: !91, size: 8, offset: 160)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !199, file: !200, line: 49, baseType: !91, size: 8, offset: 168)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !199, file: !200, line: 50, baseType: !91, size: 8, offset: 176)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !199, file: !200, line: 51, baseType: !91, size: 8, offset: 184)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !199, file: !200, line: 52, baseType: !91, size: 8, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !199, file: !200, line: 53, baseType: !91, size: 8, offset: 200)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !200, line: 54, baseType: !94, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !199, file: !200, line: 55, baseType: !83, size: 32, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !199, file: !200, line: 56, baseType: !83, size: 32, offset: 352)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !199, file: !200, line: 57, baseType: !83, size: 32, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !199, file: !200, line: 58, baseType: !83, size: 32, offset: 416)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !199, file: !200, line: 60, baseType: !225, size: 640, offset: 448)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !101, line: 909, size: 640, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !316, !317, !433, !434}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !225, file: !101, line: 910, baseType: !94, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !225, file: !101, line: 911, baseType: !94, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !225, file: !101, line: 912, baseType: !94, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !225, file: !101, line: 913, baseType: !94, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !225, file: !101, line: 914, baseType: !94, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !225, file: !101, line: 915, baseType: !233, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !101, line: 891, size: 1600, elements: !235)
!235 = !{!236, !256, !272}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !234, file: !101, line: 892, baseType: !237, size: 448)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !101, line: 844, size: 448, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !255}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !237, file: !101, line: 845, baseType: !233, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !237, file: !101, line: 845, baseType: !91, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !101, line: 845, baseType: !91, size: 8, offset: 72)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !237, file: !101, line: 845, baseType: !73, size: 16, offset: 80)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !237, file: !101, line: 845, baseType: !94, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !101, line: 845, baseType: !233, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !237, file: !101, line: 845, baseType: !99, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !237, file: !101, line: 845, baseType: !247, size: 64, offset: 320)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !101, line: 732, size: 64, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !247, file: !101, line: 733, baseType: !86, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !247, file: !101, line: 734, baseType: !83, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !247, file: !101, line: 735, baseType: !98, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !247, file: !101, line: 736, baseType: !94, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !101, line: 737, baseType: !98, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !247, file: !101, line: 738, baseType: !233, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !237, file: !101, line: 845, baseType: !91, size: 8, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !234, file: !101, line: 893, baseType: !257, size: 640)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !101, line: 851, size: 640, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !257, file: !101, line: 852, baseType: !233, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !101, line: 852, baseType: !91, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !101, line: 852, baseType: !91, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !257, file: !101, line: 852, baseType: !73, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !257, file: !101, line: 852, baseType: !94, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !101, line: 852, baseType: !233, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !257, file: !101, line: 852, baseType: !99, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !101, line: 852, baseType: !247, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !257, file: !101, line: 852, baseType: !91, size: 8, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !257, file: !101, line: 852, baseType: !98, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !257, file: !101, line: 853, baseType: !94, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !257, file: !101, line: 854, baseType: !83, size: 32, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !101, line: 855, baseType: !83, size: 32, offset: 608)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !234, file: !101, line: 894, baseType: !273, size: 1600)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !101, line: 862, size: 1600, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !273, file: !101, line: 863, baseType: !233, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !273, file: !101, line: 863, baseType: !91, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !101, line: 863, baseType: !91, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !273, file: !101, line: 863, baseType: !73, size: 16, offset: 80)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !273, file: !101, line: 863, baseType: !94, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !101, line: 863, baseType: !233, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !273, file: !101, line: 863, baseType: !99, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !273, file: !101, line: 863, baseType: !247, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !273, file: !101, line: 863, baseType: !91, size: 8, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !273, file: !101, line: 863, baseType: !233, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !273, file: !101, line: 864, baseType: !233, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !273, file: !101, line: 865, baseType: !98, size: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !273, file: !101, line: 866, baseType: !91, size: 8, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !273, file: !101, line: 867, baseType: !98, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !273, file: !101, line: 868, baseType: !98, size: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !273, file: !101, line: 869, baseType: !98, size: 64, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !273, file: !101, line: 870, baseType: !292, size: 32, offset: 896)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 4)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !273, file: !101, line: 871, baseType: !83, size: 32, offset: 928)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !273, file: !101, line: 872, baseType: !83, size: 32, offset: 960)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !273, file: !101, line: 873, baseType: !83, size: 32, offset: 992)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !273, file: !101, line: 874, baseType: !83, size: 32, offset: 1024)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !273, file: !101, line: 875, baseType: !83, size: 32, offset: 1056)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !273, file: !101, line: 876, baseType: !83, size: 32, offset: 1088)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !273, file: !101, line: 877, baseType: !83, size: 32, offset: 1120)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !273, file: !101, line: 878, baseType: !83, size: 32, offset: 1152)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !273, file: !101, line: 879, baseType: !83, size: 32, offset: 1184)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !273, file: !101, line: 880, baseType: !83, size: 32, offset: 1216)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !273, file: !101, line: 881, baseType: !83, size: 32, offset: 1248)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !273, file: !101, line: 882, baseType: !83, size: 32, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !273, file: !101, line: 883, baseType: !83, size: 32, offset: 1312)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !273, file: !101, line: 884, baseType: !73, size: 16, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !273, file: !101, line: 885, baseType: !91, size: 8, offset: 1360)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !273, file: !101, line: 886, baseType: !91, size: 8, offset: 1368)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !273, file: !101, line: 887, baseType: !91, size: 8, offset: 1376)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !273, file: !101, line: 888, baseType: !313, size: 160, offset: 1384)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 20)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !225, file: !101, line: 916, baseType: !99, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !225, file: !101, line: 917, baseType: !318, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !101, line: 679, size: 640, elements: !320)
!320 = !{!321, !329, !342, !351, !360, !373, !387, !399, !411}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !319, file: !101, line: 680, baseType: !322, size: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !101, line: 575, size: 128, elements: !323)
!323 = !{!324, !325, !326, !327, !328}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !101, line: 576, baseType: !78, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !101, line: 576, baseType: !91, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !101, line: 576, baseType: !91, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !101, line: 576, baseType: !73, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !101, line: 576, baseType: !73, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !319, file: !101, line: 681, baseType: !330, size: 384)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !101, line: 604, size: 384, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !101, line: 605, baseType: !78, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !101, line: 605, baseType: !91, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !101, line: 605, baseType: !91, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !101, line: 605, baseType: !73, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !101, line: 605, baseType: !73, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !330, file: !101, line: 606, baseType: !73, size: 16, offset: 112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !330, file: !101, line: 607, baseType: !233, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !330, file: !101, line: 608, baseType: !94, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !330, file: !101, line: 609, baseType: !94, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !330, file: !101, line: 610, baseType: !86, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !319, file: !101, line: 682, baseType: !343, size: 192)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !101, line: 582, size: 192, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !101, line: 583, baseType: !78, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !101, line: 583, baseType: !91, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !101, line: 583, baseType: !91, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !101, line: 583, baseType: !73, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !101, line: 583, baseType: !73, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !343, file: !101, line: 584, baseType: !104, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !319, file: !101, line: 683, baseType: !352, size: 192)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !101, line: 616, size: 192, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !101, line: 617, baseType: !78, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !101, line: 617, baseType: !91, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !101, line: 617, baseType: !91, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !352, file: !101, line: 617, baseType: !73, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !101, line: 617, baseType: !73, size: 16, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !352, file: !101, line: 618, baseType: !99, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !319, file: !101, line: 684, baseType: !361, size: 448)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !101, line: 621, size: 448, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !101, line: 622, baseType: !78, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !101, line: 622, baseType: !91, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !101, line: 622, baseType: !91, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !361, file: !101, line: 622, baseType: !73, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !361, file: !101, line: 622, baseType: !73, size: 16, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !361, file: !101, line: 623, baseType: !83, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !361, file: !101, line: 624, baseType: !233, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !361, file: !101, line: 625, baseType: !94, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !361, file: !101, line: 626, baseType: !94, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !361, file: !101, line: 627, baseType: !83, size: 32, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !319, file: !101, line: 685, baseType: !374, size: 512)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !101, line: 590, size: 512, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !101, line: 591, baseType: !78, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !101, line: 591, baseType: !91, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !101, line: 591, baseType: !91, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !101, line: 591, baseType: !73, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !101, line: 591, baseType: !73, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !374, file: !101, line: 592, baseType: !83, size: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !374, file: !101, line: 593, baseType: !104, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !374, file: !101, line: 594, baseType: !104, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !374, file: !101, line: 595, baseType: !198, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !374, file: !101, line: 596, baseType: !78, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !374, file: !101, line: 597, baseType: !83, size: 32, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !319, file: !101, line: 686, baseType: !388, size: 320)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !101, line: 634, size: 320, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !101, line: 635, baseType: !78, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !388, file: !101, line: 635, baseType: !91, size: 8, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !101, line: 635, baseType: !91, size: 8, offset: 72)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !388, file: !101, line: 635, baseType: !73, size: 16, offset: 80)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !388, file: !101, line: 635, baseType: !73, size: 16, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !388, file: !101, line: 636, baseType: !91, size: 8, offset: 112)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !388, file: !101, line: 637, baseType: !198, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !388, file: !101, line: 638, baseType: !104, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !388, file: !101, line: 639, baseType: !86, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !319, file: !101, line: 687, baseType: !400, size: 640)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !101, line: 646, size: 640, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !101, line: 647, baseType: !78, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !400, file: !101, line: 647, baseType: !91, size: 8, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !101, line: 647, baseType: !91, size: 8, offset: 72)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !400, file: !101, line: 647, baseType: !73, size: 16, offset: 80)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !400, file: !101, line: 647, baseType: !73, size: 16, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !400, file: !101, line: 648, baseType: !408, size: 512, offset: 128)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 512, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 8)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !319, file: !101, line: 688, baseType: !412, size: 320)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !101, line: 669, size: 320, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !101, line: 670, baseType: !78, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !412, file: !101, line: 670, baseType: !91, size: 8, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !101, line: 670, baseType: !91, size: 8, offset: 72)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !412, file: !101, line: 670, baseType: !73, size: 16, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !412, file: !101, line: 670, baseType: !73, size: 16, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !412, file: !101, line: 671, baseType: !91, size: 8, offset: 112)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !412, file: !101, line: 672, baseType: !99, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !412, file: !101, line: 673, baseType: !104, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !412, file: !101, line: 674, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !101, line: 660, size: 128, elements: !425)
!425 = !{!426, !432}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !424, file: !101, line: 661, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !96, line: 1061, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431, !83, !78}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !96, line: 424, baseType: !78)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !424, file: !101, line: 662, baseType: !78, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !225, file: !101, line: 918, baseType: !233, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !225, file: !101, line: 919, baseType: !83, size: 32, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !199, file: !200, line: 61, baseType: !83, size: 32, offset: 1088)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !199, file: !200, line: 62, baseType: !83, size: 32, offset: 1120)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !199, file: !200, line: 63, baseType: !73, size: 16, offset: 1152)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !199, file: !200, line: 64, baseType: !91, size: 8, offset: 1168)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !199, file: !200, line: 66, baseType: !440, size: 2688, offset: 1216)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 2688, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 7)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !199, file: !200, line: 67, baseType: !444, size: 3072, offset: 3904)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 3072, elements: !409)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !199, file: !200, line: 68, baseType: !446, size: 576, offset: 6976)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 576, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 9)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !199, file: !200, line: 69, baseType: !162, size: 64, offset: 7552)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !199, file: !200, line: 71, baseType: !94, size: 64, offset: 7616)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !199, file: !200, line: 72, baseType: !162, size: 64, offset: 7680)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !199, file: !200, line: 73, baseType: !318, size: 64, offset: 7744)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !199, file: !200, line: 74, baseType: !99, size: 64, offset: 7808)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !199, file: !200, line: 75, baseType: !104, size: 64, offset: 7872)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !199, file: !200, line: 76, baseType: !99, size: 64, offset: 7936)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !199, file: !200, line: 77, baseType: !233, size: 64, offset: 8000)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !199, file: !200, line: 78, baseType: !104, size: 64, offset: 8064)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !199, file: !200, line: 79, baseType: !99, size: 64, offset: 8128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !199, file: !200, line: 80, baseType: !98, size: 64, offset: 8192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !199, file: !200, line: 81, baseType: !233, size: 64, offset: 8256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !199, file: !200, line: 82, baseType: !462, size: 64, offset: 8320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !101, line: 718, size: 128, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !464, file: !101, line: 722, baseType: !83, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !464, file: !101, line: 723, baseType: !83, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !101, line: 724, baseType: !73, size: 16, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !464, file: !101, line: 725, baseType: !91, size: 8, offset: 80)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !464, file: !101, line: 726, baseType: !91, size: 8, offset: 88)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !464, file: !101, line: 727, baseType: !91, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !199, file: !200, line: 83, baseType: !233, size: 64, offset: 8384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !199, file: !200, line: 84, baseType: !104, size: 64, offset: 8448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !199, file: !200, line: 85, baseType: !318, size: 64, offset: 8512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !199, file: !200, line: 86, baseType: !104, size: 64, offset: 8576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !199, file: !200, line: 87, baseType: !318, size: 64, offset: 8640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !199, file: !200, line: 88, baseType: !233, size: 64, offset: 8704)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !199, file: !200, line: 89, baseType: !233, size: 64, offset: 8768)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !199, file: !200, line: 90, baseType: !480, size: 64, offset: 8832)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !199, file: !200, line: 91, baseType: !482, size: 64, offset: 8896)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !101, line: 652, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!197, !198, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !199, file: !200, line: 92, baseType: !488, size: 64, offset: 8960)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !101, line: 656, baseType: !194)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !190, file: !106, line: 153, baseType: !104, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !176, file: !106, line: 156, baseType: !83, size: 32, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !176, file: !106, line: 157, baseType: !210, size: 16, offset: 416)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !176, file: !106, line: 158, baseType: !91, size: 8, offset: 432)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !105, file: !106, line: 377, baseType: !494, size: 576)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !106, line: 122, size: 576, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !494, file: !106, line: 123, baseType: !104, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !494, file: !106, line: 123, baseType: !91, size: 8, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !106, line: 123, baseType: !91, size: 8, offset: 72)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !494, file: !106, line: 123, baseType: !73, size: 16, offset: 80)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !106, line: 123, baseType: !91, size: 8, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !494, file: !106, line: 123, baseType: !91, size: 8, offset: 104)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !494, file: !106, line: 124, baseType: !73, size: 16, offset: 112)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !494, file: !106, line: 125, baseType: !78, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !494, file: !106, line: 126, baseType: !86, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !494, file: !106, line: 127, baseType: !480, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !494, file: !106, line: 128, baseType: !104, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !106, line: 129, baseType: !104, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !494, file: !106, line: 130, baseType: !99, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !494, file: !106, line: 131, baseType: !91, size: 8, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !105, file: !106, line: 378, baseType: !511, size: 512)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !106, line: 134, size: 512, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !524, !525}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !511, file: !106, line: 135, baseType: !104, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !106, line: 135, baseType: !91, size: 8, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !106, line: 135, baseType: !91, size: 8, offset: 72)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !511, file: !106, line: 135, baseType: !73, size: 16, offset: 80)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !106, line: 135, baseType: !91, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !511, file: !106, line: 135, baseType: !91, size: 8, offset: 104)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !511, file: !106, line: 136, baseType: !99, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !511, file: !106, line: 137, baseType: !104, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !106, line: 138, baseType: !104, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !511, file: !106, line: 139, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !96, line: 129, baseType: !86)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !511, file: !106, line: 140, baseType: !83, size: 32, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !511, file: !106, line: 141, baseType: !78, size: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !105, file: !106, line: 379, baseType: !527, size: 320)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !106, line: 185, size: 320, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !538}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !527, file: !106, line: 186, baseType: !104, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !527, file: !106, line: 186, baseType: !91, size: 8, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !527, file: !106, line: 186, baseType: !91, size: 8, offset: 72)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !527, file: !106, line: 186, baseType: !73, size: 16, offset: 80)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !106, line: 186, baseType: !91, size: 8, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !527, file: !106, line: 186, baseType: !535, size: 128, offset: 128)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 2)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !527, file: !106, line: 186, baseType: !104, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !105, file: !106, line: 380, baseType: !540, size: 384)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !106, line: 188, size: 384, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !540, file: !106, line: 189, baseType: !104, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !540, file: !106, line: 189, baseType: !91, size: 8, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !540, file: !106, line: 189, baseType: !91, size: 8, offset: 72)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !540, file: !106, line: 189, baseType: !73, size: 16, offset: 80)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !106, line: 189, baseType: !91, size: 8, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !540, file: !106, line: 190, baseType: !535, size: 128, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !540, file: !106, line: 190, baseType: !104, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !540, file: !106, line: 190, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !101, line: 480, size: 576, elements: !552)
!552 = !{!553, !554, !555, !556, !564, !579, !611, !612, !613, !614, !615, !616}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !551, file: !101, line: 481, baseType: !99, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !551, file: !101, line: 482, baseType: !550, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !101, line: 483, baseType: !550, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !551, file: !101, line: 484, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !101, line: 497, size: 256, elements: !559)
!559 = !{!560, !561, !562, !563}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !558, file: !101, line: 498, baseType: !557, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !558, file: !101, line: 499, baseType: !557, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !558, file: !101, line: 500, baseType: !550, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !558, file: !101, line: 501, baseType: !83, size: 32, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !551, file: !101, line: 485, baseType: !565, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !101, line: 466, size: 320, elements: !567)
!567 = !{!568, !573, !574, !575, !576, !577, !578}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !566, file: !101, line: 467, baseType: !569, size: 128)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !101, line: 459, size: 128, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !569, file: !101, line: 460, baseType: !91, size: 8)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !569, file: !101, line: 461, baseType: !86, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !566, file: !101, line: 468, baseType: !569, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !566, file: !101, line: 469, baseType: !73, size: 16, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !566, file: !101, line: 470, baseType: !91, size: 8, offset: 272)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !566, file: !101, line: 471, baseType: !91, size: 8, offset: 280)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !566, file: !101, line: 472, baseType: !91, size: 8, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !566, file: !101, line: 473, baseType: !91, size: 8, offset: 296)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !551, file: !101, line: 486, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !101, line: 448, size: 192, elements: !582)
!582 = !{!583, !606, !607, !608, !609, !610}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !581, file: !101, line: 449, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !101, line: 438, size: 64, elements: !585)
!585 = !{!586, !587, !600}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !584, file: !101, line: 439, baseType: !99, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !101, line: 440, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !101, line: 419, size: 256, elements: !590)
!590 = !{!591, !596, !597, !598, !599}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !589, file: !101, line: 420, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !96, line: 1058, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!83, !431, !83, !78}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !589, file: !101, line: 421, baseType: !78, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !589, file: !101, line: 422, baseType: !99, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !589, file: !101, line: 423, baseType: !91, size: 8, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !589, file: !101, line: 424, baseType: !91, size: 8, offset: 200)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !101, line: 441, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !101, line: 429, size: 128, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !602, file: !101, line: 430, baseType: !99, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !101, line: 431, baseType: !601, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !581, file: !101, line: 450, baseType: !565, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !101, line: 451, baseType: !91, size: 8, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !581, file: !101, line: 452, baseType: !91, size: 8, offset: 136)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !581, file: !101, line: 453, baseType: !91, size: 8, offset: 144)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !581, file: !101, line: 454, baseType: !91, size: 8, offset: 152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !551, file: !101, line: 487, baseType: !86, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !551, file: !101, line: 488, baseType: !83, size: 32, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !551, file: !101, line: 489, baseType: !73, size: 16, offset: 480)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !551, file: !101, line: 490, baseType: !73, size: 16, offset: 496)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !551, file: !101, line: 491, baseType: !91, size: 8, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !551, file: !101, line: 492, baseType: !91, size: 8, offset: 520)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !105, file: !106, line: 381, baseType: !618, size: 384)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !106, line: 193, size: 384, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !106, line: 194, baseType: !104, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !106, line: 194, baseType: !91, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !106, line: 194, baseType: !91, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !106, line: 194, baseType: !73, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !106, line: 194, baseType: !91, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !618, file: !106, line: 194, baseType: !535, size: 128, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !618, file: !106, line: 194, baseType: !104, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !618, file: !106, line: 194, baseType: !83, size: 32, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !618, file: !106, line: 195, baseType: !83, size: 32, offset: 352)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !105, file: !106, line: 382, baseType: !630, size: 384)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !106, line: 198, size: 384, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !106, line: 199, baseType: !104, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !106, line: 199, baseType: !91, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !106, line: 199, baseType: !91, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !106, line: 199, baseType: !73, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !106, line: 199, baseType: !91, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !630, file: !106, line: 201, baseType: !91, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !630, file: !106, line: 202, baseType: !91, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !630, file: !106, line: 203, baseType: !535, size: 128, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !630, file: !106, line: 203, baseType: !104, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !630, file: !106, line: 203, baseType: !642, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !96, line: 128, baseType: !86)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !105, file: !106, line: 383, baseType: !644, size: 320)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !106, line: 206, size: 320, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !644, file: !106, line: 207, baseType: !104, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !644, file: !106, line: 207, baseType: !91, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !106, line: 207, baseType: !91, size: 8, offset: 72)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !644, file: !106, line: 207, baseType: !73, size: 16, offset: 80)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !106, line: 207, baseType: !91, size: 8, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !644, file: !106, line: 207, baseType: !535, size: 128, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !644, file: !106, line: 207, baseType: !104, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !105, file: !106, line: 384, baseType: !654, size: 384)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !106, line: 234, size: 384, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !654, file: !106, line: 235, baseType: !104, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !106, line: 235, baseType: !91, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !106, line: 235, baseType: !91, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !654, file: !106, line: 235, baseType: !73, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !106, line: 235, baseType: !91, size: 8, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !654, file: !106, line: 235, baseType: !91, size: 8, offset: 104)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !654, file: !106, line: 235, baseType: !91, size: 8, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !654, file: !106, line: 235, baseType: !91, size: 8, offset: 120)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !106, line: 235, baseType: !99, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !654, file: !106, line: 235, baseType: !83, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !654, file: !106, line: 235, baseType: !83, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !106, line: 235, baseType: !83, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !654, file: !106, line: 235, baseType: !91, size: 8, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !654, file: !106, line: 235, baseType: !91, size: 8, offset: 296)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !654, file: !106, line: 235, baseType: !104, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !105, file: !106, line: 385, baseType: !672, size: 576)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !106, line: 238, size: 576, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !106, line: 239, baseType: !104, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !106, line: 239, baseType: !91, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !106, line: 239, baseType: !91, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !106, line: 239, baseType: !73, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !106, line: 239, baseType: !91, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !672, file: !106, line: 239, baseType: !91, size: 8, offset: 104)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !672, file: !106, line: 239, baseType: !91, size: 8, offset: 112)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !672, file: !106, line: 239, baseType: !91, size: 8, offset: 120)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !106, line: 239, baseType: !99, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !672, file: !106, line: 239, baseType: !83, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !672, file: !106, line: 239, baseType: !83, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !106, line: 239, baseType: !83, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !672, file: !106, line: 239, baseType: !91, size: 8, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !672, file: !106, line: 239, baseType: !91, size: 8, offset: 296)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !672, file: !106, line: 239, baseType: !73, size: 16, offset: 304)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !672, file: !106, line: 240, baseType: !104, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !672, file: !106, line: 241, baseType: !94, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !672, file: !106, line: 242, baseType: !73, size: 16, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !672, file: !106, line: 243, baseType: !94, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !105, file: !106, line: 386, baseType: !694, size: 384)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !106, line: 263, size: 384, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !106, line: 264, baseType: !104, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !106, line: 264, baseType: !73, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 112)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 120)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !106, line: 264, baseType: !99, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !694, file: !106, line: 264, baseType: !83, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !694, file: !106, line: 264, baseType: !83, size: 32, offset: 224)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !106, line: 264, baseType: !83, size: 32, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 288)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 296)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !694, file: !106, line: 264, baseType: !91, size: 8, offset: 304)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !694, file: !106, line: 265, baseType: !104, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !105, file: !106, line: 387, baseType: !713, size: 448)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !106, line: 246, size: 448, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !106, line: 247, baseType: !104, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !106, line: 247, baseType: !91, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !106, line: 247, baseType: !91, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !106, line: 247, baseType: !73, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !106, line: 247, baseType: !91, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !713, file: !106, line: 247, baseType: !91, size: 8, offset: 104)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !713, file: !106, line: 247, baseType: !91, size: 8, offset: 112)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !713, file: !106, line: 247, baseType: !91, size: 8, offset: 120)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !106, line: 247, baseType: !99, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !713, file: !106, line: 247, baseType: !83, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !713, file: !106, line: 247, baseType: !83, size: 32, offset: 224)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !713, file: !106, line: 247, baseType: !83, size: 32, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !713, file: !106, line: 247, baseType: !91, size: 8, offset: 288)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !713, file: !106, line: 247, baseType: !91, size: 8, offset: 296)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !713, file: !106, line: 247, baseType: !104, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !713, file: !106, line: 248, baseType: !104, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !105, file: !106, line: 388, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !106, line: 251, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !106, line: 252, baseType: !104, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !106, line: 252, baseType: !91, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !106, line: 252, baseType: !91, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !106, line: 252, baseType: !73, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !106, line: 252, baseType: !91, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !732, file: !106, line: 252, baseType: !91, size: 8, offset: 104)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !732, file: !106, line: 252, baseType: !91, size: 8, offset: 112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !732, file: !106, line: 252, baseType: !91, size: 8, offset: 120)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !106, line: 252, baseType: !99, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !732, file: !106, line: 252, baseType: !83, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !732, file: !106, line: 252, baseType: !83, size: 32, offset: 224)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !732, file: !106, line: 252, baseType: !83, size: 32, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !732, file: !106, line: 252, baseType: !91, size: 8, offset: 288)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !732, file: !106, line: 252, baseType: !91, size: 8, offset: 296)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !732, file: !106, line: 257, baseType: !104, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !732, file: !106, line: 258, baseType: !104, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !105, file: !106, line: 389, baseType: !751, size: 512)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !106, line: 274, size: 512, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !751, file: !106, line: 275, baseType: !104, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !106, line: 275, baseType: !91, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !106, line: 275, baseType: !91, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !751, file: !106, line: 275, baseType: !73, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !106, line: 275, baseType: !91, size: 8, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !106, line: 275, baseType: !99, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !751, file: !106, line: 276, baseType: !83, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !751, file: !106, line: 277, baseType: !427, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !751, file: !106, line: 278, baseType: !78, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !106, line: 279, baseType: !535, size: 128, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !105, file: !106, line: 390, baseType: !764, size: 576)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !106, line: 282, size: 576, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !778, !779, !780, !781, !787, !788}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !106, line: 283, baseType: !104, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !106, line: 283, baseType: !91, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !106, line: 283, baseType: !91, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !106, line: 283, baseType: !73, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !106, line: 283, baseType: !91, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !764, file: !106, line: 283, baseType: !91, size: 8, offset: 104)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !764, file: !106, line: 284, baseType: !91, size: 8, offset: 112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !764, file: !106, line: 285, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !96, line: 1093, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!197, !83, !523, !83, !85, !78, !78}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !106, line: 286, baseType: !99, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !764, file: !106, line: 287, baseType: !78, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !764, file: !106, line: 288, baseType: !78, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !764, file: !106, line: 289, baseType: !782, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !96, line: 1126, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!197, !431, !83, !78, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !764, file: !106, line: 290, baseType: !104, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !106, line: 291, baseType: !104, size: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !105, file: !106, line: 391, baseType: !790, size: 512)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !106, line: 309, size: 512, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !106, line: 310, baseType: !104, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !106, line: 310, baseType: !91, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !106, line: 310, baseType: !91, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !106, line: 310, baseType: !73, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !106, line: 310, baseType: !91, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !790, file: !106, line: 310, baseType: !91, size: 8, offset: 104)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !790, file: !106, line: 311, baseType: !91, size: 8, offset: 112)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !790, file: !106, line: 312, baseType: !91, size: 8, offset: 120)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !790, file: !106, line: 313, baseType: !78, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !790, file: !106, line: 314, baseType: !99, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !790, file: !106, line: 315, baseType: !162, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !790, file: !106, line: 316, baseType: !94, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !790, file: !106, line: 317, baseType: !94, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !790, file: !106, line: 318, baseType: !83, size: 32, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !105, file: !106, line: 392, baseType: !807, size: 448)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !106, line: 342, size: 448, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !807, file: !106, line: 343, baseType: !104, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !807, file: !106, line: 343, baseType: !91, size: 8, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !106, line: 343, baseType: !91, size: 8, offset: 72)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !807, file: !106, line: 343, baseType: !73, size: 16, offset: 80)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !106, line: 343, baseType: !91, size: 8, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !807, file: !106, line: 343, baseType: !99, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !807, file: !106, line: 344, baseType: !99, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !807, file: !106, line: 345, baseType: !78, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !807, file: !106, line: 346, baseType: !94, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !807, file: !106, line: 347, baseType: !83, size: 32, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !105, file: !106, line: 393, baseType: !820, size: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !106, line: 352, size: 256, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !832}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !820, file: !106, line: 353, baseType: !104, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !820, file: !106, line: 353, baseType: !91, size: 8, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !820, file: !106, line: 353, baseType: !91, size: 8, offset: 72)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !820, file: !106, line: 353, baseType: !73, size: 16, offset: 80)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !106, line: 353, baseType: !91, size: 8, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !820, file: !106, line: 353, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !96, line: 1064, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !431, !78}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !820, file: !106, line: 354, baseType: !78, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !105, file: !106, line: 394, baseType: !834, size: 192)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !106, line: 359, size: 192, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !834, file: !106, line: 360, baseType: !104, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !834, file: !106, line: 360, baseType: !91, size: 8, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !834, file: !106, line: 360, baseType: !91, size: 8, offset: 72)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !834, file: !106, line: 360, baseType: !73, size: 16, offset: 80)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !106, line: 360, baseType: !91, size: 8, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !834, file: !106, line: 360, baseType: !104, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !106, line: 401, baseType: !100, size: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !101, line: 135, baseType: !91, size: 8, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !101, line: 136, baseType: !91, size: 8, offset: 72)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !101, line: 137, baseType: !73, size: 16, offset: 80)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !101, line: 138, baseType: !847, size: 32, offset: 96)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !848, line: 328, size: 32, elements: !849)
!848 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !847, file: !848, line: 329, baseType: !83, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !847, file: !848, line: 330, baseType: !292, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !101, line: 139, baseType: !99, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !100, file: !101, line: 140, baseType: !99, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !100, file: !101, line: 141, baseType: !99, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !100, file: !101, line: 142, baseType: !210, size: 16, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !80, line: 154, baseType: !21)
!857 = !{!0, !7, !9, !11, !13, !858, !15}
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !62, line: 480, type: !860, isLocal: true, isDefinition: true)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 21)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 64, elements: !409)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!865 = !{i32 7, !"Dwarf Version", i32 5}
!866 = !{i32 2, !"Debug Info Version", i32 3}
!867 = !{i32 1, !"wchar_size", i32 2}
!868 = !{i32 8, !"cf-protection-branch", i32 1}
!869 = !{i32 4, !"function_return_thunk_extern", i32 1}
!870 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!871 = !{i32 1, !"Code Model", i32 2}
!872 = !{i32 1, !"override-stack-alignment", i32 8}
!873 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!874 = distinct !DISubprogram(name: "acpi_rs_decode_bitmask", scope: !2, file: !2, line: 28, type: !875, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{!91, !73, !94}
!877 = !{!878, !879, !880, !881}
!878 = !DILocalVariable(name: "mask", arg: 1, scope: !874, file: !2, line: 28, type: !73)
!879 = !DILocalVariable(name: "list", arg: 2, scope: !874, file: !2, line: 28, type: !94)
!880 = !DILocalVariable(name: "i", scope: !874, file: !2, line: 30, type: !91)
!881 = !DILocalVariable(name: "bit_count", scope: !874, file: !2, line: 31, type: !91)
!882 = !DILocation(line: 28, column: 31, scope: !874)
!883 = !DILocation(line: 28, column: 42, scope: !874)
!884 = !DILocation(line: 30, column: 2, scope: !874)
!885 = !DILocation(line: 30, column: 5, scope: !874)
!886 = !DILocation(line: 31, column: 2, scope: !874)
!887 = !DILocation(line: 31, column: 5, scope: !874)
!888 = !DILocation(line: 37, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !874, file: !2, line: 37, column: 2)
!890 = !DILocation(line: 37, column: 24, scope: !889)
!891 = !DILocation(line: 37, column: 7, scope: !889)
!892 = !DILocation(line: 37, column: 29, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !2, line: 37, column: 2)
!894 = !DILocation(line: 37, column: 2, scope: !889)
!895 = !DILocation(line: 38, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 38, column: 7)
!897 = distinct !DILexicalBlock(scope: !893, file: !2, line: 37, column: 40)
!898 = !DILocation(line: 38, column: 12, scope: !896)
!899 = !DILocation(line: 38, column: 7, scope: !897)
!900 = !DILocation(line: 39, column: 22, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !2, line: 38, column: 22)
!902 = !DILocation(line: 39, column: 4, scope: !901)
!903 = !DILocation(line: 39, column: 9, scope: !901)
!904 = !DILocation(line: 39, column: 20, scope: !901)
!905 = !DILocation(line: 40, column: 13, scope: !901)
!906 = !DILocation(line: 41, column: 3, scope: !901)
!907 = !DILocation(line: 43, column: 8, scope: !897)
!908 = !DILocation(line: 44, column: 2, scope: !897)
!909 = !DILocation(line: 37, column: 36, scope: !893)
!910 = !DILocation(line: 37, column: 2, scope: !893)
!911 = distinct !{!911, !894, !912, !913, !914}
!912 = !DILocation(line: 44, column: 2, scope: !889)
!913 = !{!"llvm.loop.mustprogress"}
!914 = !{!"llvm.loop.unroll.disable"}
!915 = !DILocation(line: 46, column: 10, scope: !874)
!916 = !DILocation(line: 47, column: 1, scope: !874)
!917 = !DILocation(line: 46, column: 2, scope: !874)
!918 = distinct !DISubprogram(name: "acpi_rs_encode_bitmask", scope: !2, file: !2, line: 62, type: !919, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{!73, !94, !91}
!921 = !{!922, !923, !924, !925}
!922 = !DILocalVariable(name: "list", arg: 1, scope: !918, file: !2, line: 62, type: !94)
!923 = !DILocalVariable(name: "count", arg: 2, scope: !918, file: !2, line: 62, type: !91)
!924 = !DILocalVariable(name: "i", scope: !918, file: !2, line: 64, type: !83)
!925 = !DILocalVariable(name: "mask", scope: !918, file: !2, line: 65, type: !73)
!926 = !DILocation(line: 62, column: 33, scope: !918)
!927 = !DILocation(line: 62, column: 42, scope: !918)
!928 = !DILocation(line: 64, column: 2, scope: !918)
!929 = !DILocation(line: 64, column: 6, scope: !918)
!930 = !DILocation(line: 65, column: 2, scope: !918)
!931 = !DILocation(line: 65, column: 6, scope: !918)
!932 = !DILocation(line: 71, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !918, file: !2, line: 71, column: 2)
!934 = !DILocation(line: 71, column: 19, scope: !933)
!935 = !DILocation(line: 71, column: 7, scope: !933)
!936 = !DILocation(line: 71, column: 24, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !2, line: 71, column: 2)
!938 = !DILocation(line: 71, column: 28, scope: !937)
!939 = !DILocation(line: 71, column: 26, scope: !937)
!940 = !DILocation(line: 71, column: 2, scope: !933)
!941 = !DILocation(line: 72, column: 19, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !2, line: 71, column: 40)
!943 = !DILocation(line: 72, column: 24, scope: !942)
!944 = !DILocation(line: 72, column: 16, scope: !942)
!945 = !DILocation(line: 72, column: 8, scope: !942)
!946 = !DILocation(line: 73, column: 2, scope: !942)
!947 = !DILocation(line: 71, column: 36, scope: !937)
!948 = !DILocation(line: 71, column: 2, scope: !937)
!949 = distinct !{!949, !940, !950, !913, !914}
!950 = !DILocation(line: 73, column: 2, scope: !933)
!951 = !DILocation(line: 75, column: 10, scope: !918)
!952 = !DILocation(line: 76, column: 1, scope: !918)
!953 = !DILocation(line: 75, column: 2, scope: !918)
!954 = distinct !DISubprogram(name: "acpi_rs_move_data", scope: !2, file: !2, line: 96, type: !955, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !78, !78, !73, !91}
!957 = !{!958, !959, !960, !961, !962}
!958 = !DILocalVariable(name: "destination", arg: 1, scope: !954, file: !2, line: 96, type: !78)
!959 = !DILocalVariable(name: "source", arg: 2, scope: !954, file: !2, line: 96, type: !78)
!960 = !DILocalVariable(name: "item_count", arg: 3, scope: !954, file: !2, line: 96, type: !73)
!961 = !DILocalVariable(name: "move_type", arg: 4, scope: !954, file: !2, line: 96, type: !91)
!962 = !DILocalVariable(name: "i", scope: !954, file: !2, line: 98, type: !83)
!963 = !DILocation(line: 96, column: 25, scope: !954)
!964 = !DILocation(line: 96, column: 44, scope: !954)
!965 = !DILocation(line: 96, column: 56, scope: !954)
!966 = !DILocation(line: 96, column: 71, scope: !954)
!967 = !DILocation(line: 98, column: 2, scope: !954)
!968 = !DILocation(line: 98, column: 6, scope: !954)
!969 = !DILocation(line: 104, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !954, file: !2, line: 104, column: 2)
!971 = !DILocation(line: 104, column: 7, scope: !970)
!972 = !DILocation(line: 104, column: 14, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !2, line: 104, column: 2)
!974 = !DILocation(line: 104, column: 18, scope: !973)
!975 = !DILocation(line: 104, column: 16, scope: !973)
!976 = !DILocation(line: 104, column: 2, scope: !970)
!977 = !DILocation(line: 105, column: 11, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !2, line: 104, column: 35)
!979 = !DILocation(line: 105, column: 3, scope: !978)
!980 = !DILocation(line: 115, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !2, line: 105, column: 22)
!982 = !DILocation(line: 115, column: 24, scope: !981)
!983 = !DILocation(line: 115, column: 32, scope: !981)
!984 = !DILocation(line: 115, column: 4, scope: !981)
!985 = !DILocation(line: 116, column: 4, scope: !981)
!986 = !DILocation(line: 126, column: 4, scope: !981)
!987 = !DILocation(line: 128, column: 4, scope: !981)
!988 = !DILocation(line: 132, column: 4, scope: !981)
!989 = !DILocation(line: 134, column: 4, scope: !981)
!990 = !DILocation(line: 138, column: 4, scope: !981)
!991 = !DILocation(line: 140, column: 4, scope: !981)
!992 = !DILocation(line: 144, column: 4, scope: !981)
!993 = !DILocation(line: 146, column: 2, scope: !978)
!994 = !DILocation(line: 104, column: 31, scope: !973)
!995 = !DILocation(line: 104, column: 2, scope: !973)
!996 = distinct !{!996, !976, !997, !913, !914}
!997 = !DILocation(line: 146, column: 2, scope: !970)
!998 = !DILocation(line: 147, column: 1, scope: !954)
!999 = distinct !DISubprogram(name: "acpi_rs_set_resource_length", scope: !2, file: !2, line: 167, type: !1000, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1362)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !97, !1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !1004, line: 513, size: 448, elements: !1005)
!1004 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39fadf1e91338a4bdfc4b9e2f15bad0f")
!1005 = !{!1006, !1007, !1011, !1016, !1022, !1028, !1033, !1037, !1046, !1052, !1059, !1063, !1068, !1078, !1088, !1093, !1103, !1111, !1124, !1137, !1150, !1166, !1187, !1204, !1218, !1235, !1252, !1264, !1276, !1290, !1304, !1315, !1328, !1342, !1351, !1359, !1360, !1361}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1003, file: !1004, line: 516, baseType: !91, size: 8)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !1003, file: !1004, line: 517, baseType: !1008, size: 8)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !1004, line: 118, size: 8, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1008, file: !1004, line: 119, baseType: !91, size: 8)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !1003, file: !1004, line: 518, baseType: !1012, size: 24)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !1004, line: 178, size: 24, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1012, file: !1004, line: 179, baseType: !91, size: 8)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1012, file: !1004, line: 179, baseType: !73, size: 16, offset: 8)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1003, file: !1004, line: 522, baseType: !1017, size: 32)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !1004, line: 121, size: 32, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1017, file: !1004, line: 122, baseType: !91, size: 8)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !1017, file: !1004, line: 122, baseType: !73, size: 16, offset: 8)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1017, file: !1004, line: 123, baseType: !91, size: 8, offset: 24)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !1003, file: !1004, line: 523, baseType: !1023, size: 24)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !1004, line: 130, size: 24, elements: !1024)
!1024 = !{!1025, !1026, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1023, file: !1004, line: 131, baseType: !91, size: 8)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !1023, file: !1004, line: 131, baseType: !91, size: 8, offset: 8)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1023, file: !1004, line: 132, baseType: !91, size: 8, offset: 16)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !1003, file: !1004, line: 524, baseType: !1029, size: 16)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !1004, line: 135, size: 16, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1029, file: !1004, line: 136, baseType: !91, size: 8)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !1004, line: 136, baseType: !91, size: 8, offset: 8)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !1003, file: !1004, line: 525, baseType: !1034, size: 8)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !1004, line: 142, size: 8, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1034, file: !1004, line: 143, baseType: !91, size: 8)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !1003, file: !1004, line: 526, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !1004, line: 145, size: 64, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1038, file: !1004, line: 146, baseType: !91, size: 8)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !1004, line: 146, baseType: !91, size: 8, offset: 8)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1038, file: !1004, line: 147, baseType: !73, size: 16, offset: 16)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1038, file: !1004, line: 148, baseType: !73, size: 16, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1038, file: !1004, line: 149, baseType: !91, size: 8, offset: 48)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1038, file: !1004, line: 150, baseType: !91, size: 8, offset: 56)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !1003, file: !1004, line: 527, baseType: !1047, size: 32)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !1004, line: 153, size: 32, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1047, file: !1004, line: 154, baseType: !91, size: 8)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1047, file: !1004, line: 154, baseType: !73, size: 16, offset: 8)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1047, file: !1004, line: 155, baseType: !91, size: 8, offset: 24)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !1003, file: !1004, line: 528, baseType: !1053, size: 48)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !1004, line: 165, size: 48, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1053, file: !1004, line: 166, baseType: !91, size: 8)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !1053, file: !1004, line: 166, baseType: !73, size: 16, offset: 8)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !1053, file: !1004, line: 167, baseType: !73, size: 16, offset: 24)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1053, file: !1004, line: 168, baseType: !91, size: 8, offset: 40)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !1003, file: !1004, line: 529, baseType: !1060, size: 8)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !1004, line: 158, size: 8, elements: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1060, file: !1004, line: 159, baseType: !91, size: 8)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !1003, file: !1004, line: 530, baseType: !1064, size: 16)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !1004, line: 161, size: 16, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1064, file: !1004, line: 162, baseType: !91, size: 8)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1064, file: !1004, line: 162, baseType: !91, size: 8, offset: 8)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !1003, file: !1004, line: 534, baseType: !1069, size: 96)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !1004, line: 187, size: 96, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1069, file: !1004, line: 188, baseType: !91, size: 8)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1069, file: !1004, line: 188, baseType: !73, size: 16, offset: 8)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1069, file: !1004, line: 188, baseType: !91, size: 8, offset: 24)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1069, file: !1004, line: 189, baseType: !73, size: 16, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1069, file: !1004, line: 190, baseType: !73, size: 16, offset: 48)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1069, file: !1004, line: 191, baseType: !73, size: 16, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1069, file: !1004, line: 192, baseType: !73, size: 16, offset: 80)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !1003, file: !1004, line: 535, baseType: !1079, size: 120)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !1004, line: 271, size: 120, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1079, file: !1004, line: 272, baseType: !91, size: 8)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1079, file: !1004, line: 272, baseType: !73, size: 16, offset: 8)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !1079, file: !1004, line: 272, baseType: !91, size: 8, offset: 24)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1079, file: !1004, line: 273, baseType: !91, size: 8, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1079, file: !1004, line: 274, baseType: !91, size: 8, offset: 40)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !1079, file: !1004, line: 275, baseType: !91, size: 8, offset: 48)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1079, file: !1004, line: 276, baseType: !86, size: 64, offset: 56)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !1003, file: !1004, line: 536, baseType: !1089, size: 24)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !1004, line: 195, size: 24, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1089, file: !1004, line: 196, baseType: !91, size: 8)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1089, file: !1004, line: 196, baseType: !73, size: 16, offset: 8)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !1003, file: !1004, line: 537, baseType: !1094, size: 160)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !1004, line: 198, size: 160, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1094, file: !1004, line: 199, baseType: !91, size: 8)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1094, file: !1004, line: 199, baseType: !73, size: 16, offset: 8)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !1004, line: 199, baseType: !91, size: 8, offset: 24)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1094, file: !1004, line: 200, baseType: !83, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1094, file: !1004, line: 201, baseType: !83, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1094, file: !1004, line: 202, baseType: !83, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1094, file: !1004, line: 203, baseType: !83, size: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !1003, file: !1004, line: 538, baseType: !1104, size: 96)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !1004, line: 206, size: 96, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1110}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1104, file: !1004, line: 207, baseType: !91, size: 8)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1104, file: !1004, line: 207, baseType: !73, size: 16, offset: 8)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1104, file: !1004, line: 207, baseType: !91, size: 8, offset: 24)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1104, file: !1004, line: 208, baseType: !83, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1104, file: !1004, line: 209, baseType: !83, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !1003, file: !1004, line: 539, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !1004, line: 252, size: 128, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1112, file: !1004, line: 253, baseType: !91, size: 8)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1112, file: !1004, line: 253, baseType: !73, size: 16, offset: 8)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1112, file: !1004, line: 254, baseType: !91, size: 8, offset: 24)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1112, file: !1004, line: 254, baseType: !91, size: 8, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1112, file: !1004, line: 254, baseType: !91, size: 8, offset: 40)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !1112, file: !1004, line: 254, baseType: !73, size: 16, offset: 48)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1112, file: !1004, line: 255, baseType: !73, size: 16, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1112, file: !1004, line: 256, baseType: !73, size: 16, offset: 80)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !1112, file: !1004, line: 257, baseType: !73, size: 16, offset: 96)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1112, file: !1004, line: 258, baseType: !73, size: 16, offset: 112)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !1003, file: !1004, line: 540, baseType: !1125, size: 208)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !1004, line: 243, size: 208, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1125, file: !1004, line: 244, baseType: !91, size: 8)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1125, file: !1004, line: 244, baseType: !73, size: 16, offset: 8)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1125, file: !1004, line: 245, baseType: !91, size: 8, offset: 24)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1125, file: !1004, line: 245, baseType: !91, size: 8, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1125, file: !1004, line: 245, baseType: !91, size: 8, offset: 40)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !1125, file: !1004, line: 245, baseType: !83, size: 32, offset: 48)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1125, file: !1004, line: 246, baseType: !83, size: 32, offset: 80)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1125, file: !1004, line: 247, baseType: !83, size: 32, offset: 112)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !1125, file: !1004, line: 248, baseType: !83, size: 32, offset: 144)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1125, file: !1004, line: 249, baseType: !83, size: 32, offset: 176)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !1003, file: !1004, line: 541, baseType: !1138, size: 368)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !1004, line: 234, size: 368, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1138, file: !1004, line: 235, baseType: !91, size: 8)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1138, file: !1004, line: 235, baseType: !73, size: 16, offset: 8)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1138, file: !1004, line: 236, baseType: !91, size: 8, offset: 24)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1138, file: !1004, line: 236, baseType: !91, size: 8, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1138, file: !1004, line: 236, baseType: !91, size: 8, offset: 40)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !1138, file: !1004, line: 236, baseType: !86, size: 64, offset: 48)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1138, file: !1004, line: 237, baseType: !86, size: 64, offset: 112)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1138, file: !1004, line: 238, baseType: !86, size: 64, offset: 176)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !1138, file: !1004, line: 239, baseType: !86, size: 64, offset: 240)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1138, file: !1004, line: 240, baseType: !86, size: 64, offset: 304)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !1003, file: !1004, line: 542, baseType: !1151, size: 448)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !1004, line: 220, size: 448, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1151, file: !1004, line: 221, baseType: !91, size: 8)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1151, file: !1004, line: 221, baseType: !73, size: 16, offset: 8)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1151, file: !1004, line: 222, baseType: !91, size: 8, offset: 24)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1151, file: !1004, line: 222, baseType: !91, size: 8, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1151, file: !1004, line: 222, baseType: !91, size: 8, offset: 40)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !1151, file: !1004, line: 222, baseType: !91, size: 8, offset: 48)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1151, file: !1004, line: 223, baseType: !91, size: 8, offset: 56)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !1151, file: !1004, line: 224, baseType: !86, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1151, file: !1004, line: 225, baseType: !86, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1151, file: !1004, line: 226, baseType: !86, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !1151, file: !1004, line: 227, baseType: !86, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1151, file: !1004, line: 228, baseType: !86, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !1151, file: !1004, line: 229, baseType: !86, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !1003, file: !1004, line: 543, baseType: !1167, size: 72)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !1004, line: 261, size: 72, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1167, file: !1004, line: 262, baseType: !91, size: 8)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1167, file: !1004, line: 262, baseType: !73, size: 16, offset: 8)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !1004, line: 262, baseType: !91, size: 8, offset: 24)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !1167, file: !1004, line: 263, baseType: !91, size: 8, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !1004, line: 264, baseType: !1174, size: 32, offset: 40)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1167, file: !1004, line: 264, size: 32, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !1174, file: !1004, line: 265, baseType: !83, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !1004, line: 266, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !1004, line: 266, elements: !1179)
!1179 = !{!1180, !1183}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !1178, file: !1004, line: 266, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1004, line: 266, elements: !1182)
!1182 = !{}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !1178, file: !1004, line: 266, baseType: !1184)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: -1)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !1003, file: !1004, line: 544, baseType: !1188, size: 184)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !1004, line: 281, size: 184, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1188, file: !1004, line: 282, baseType: !91, size: 8)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1188, file: !1004, line: 282, baseType: !73, size: 16, offset: 8)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1188, file: !1004, line: 282, baseType: !91, size: 8, offset: 24)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1188, file: !1004, line: 283, baseType: !91, size: 8, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !1004, line: 284, baseType: !73, size: 16, offset: 40)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !1188, file: !1004, line: 285, baseType: !73, size: 16, offset: 56)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !1188, file: !1004, line: 286, baseType: !91, size: 8, offset: 72)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !1188, file: !1004, line: 287, baseType: !73, size: 16, offset: 80)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !1188, file: !1004, line: 288, baseType: !73, size: 16, offset: 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1188, file: !1004, line: 289, baseType: !73, size: 16, offset: 112)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1188, file: !1004, line: 290, baseType: !91, size: 8, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1188, file: !1004, line: 291, baseType: !73, size: 16, offset: 136)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1188, file: !1004, line: 292, baseType: !73, size: 16, offset: 152)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1188, file: !1004, line: 293, baseType: !73, size: 16, offset: 168)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !1003, file: !1004, line: 545, baseType: !1205, size: 144)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !1004, line: 346, size: 144, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1205, file: !1004, line: 347, baseType: !91, size: 8)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1205, file: !1004, line: 347, baseType: !73, size: 16, offset: 8)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1205, file: !1004, line: 348, baseType: !91, size: 8, offset: 24)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1205, file: !1004, line: 348, baseType: !91, size: 8, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1205, file: !1004, line: 348, baseType: !91, size: 8, offset: 40)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1205, file: !1004, line: 348, baseType: !91, size: 8, offset: 48)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1205, file: !1004, line: 348, baseType: !73, size: 16, offset: 56)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1205, file: !1004, line: 348, baseType: !91, size: 8, offset: 72)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1205, file: !1004, line: 348, baseType: !73, size: 16, offset: 80)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !1205, file: !1004, line: 348, baseType: !83, size: 32, offset: 96)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !1205, file: !1004, line: 349, baseType: !73, size: 16, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !1003, file: !1004, line: 546, baseType: !1219, size: 168)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !1004, line: 361, size: 168, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1219, file: !1004, line: 362, baseType: !91, size: 8)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1219, file: !1004, line: 362, baseType: !73, size: 16, offset: 8)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1219, file: !1004, line: 363, baseType: !91, size: 8, offset: 24)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1219, file: !1004, line: 363, baseType: !91, size: 8, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1219, file: !1004, line: 363, baseType: !91, size: 8, offset: 40)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1219, file: !1004, line: 363, baseType: !91, size: 8, offset: 48)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1219, file: !1004, line: 363, baseType: !73, size: 16, offset: 56)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1219, file: !1004, line: 363, baseType: !91, size: 8, offset: 72)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1219, file: !1004, line: 363, baseType: !73, size: 16, offset: 80)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !1219, file: !1004, line: 363, baseType: !83, size: 32, offset: 96)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !1219, file: !1004, line: 364, baseType: !91, size: 8, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !1219, file: !1004, line: 365, baseType: !91, size: 8, offset: 136)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !1219, file: !1004, line: 366, baseType: !91, size: 8, offset: 144)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !1219, file: !1004, line: 367, baseType: !73, size: 16, offset: 152)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !1003, file: !1004, line: 547, baseType: !1236, size: 176)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !1004, line: 379, size: 176, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1236, file: !1004, line: 380, baseType: !91, size: 8)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1236, file: !1004, line: 380, baseType: !73, size: 16, offset: 8)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1236, file: !1004, line: 381, baseType: !91, size: 8, offset: 24)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1236, file: !1004, line: 381, baseType: !91, size: 8, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1236, file: !1004, line: 381, baseType: !91, size: 8, offset: 40)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !1004, line: 381, baseType: !91, size: 8, offset: 48)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1236, file: !1004, line: 381, baseType: !73, size: 16, offset: 56)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1236, file: !1004, line: 381, baseType: !91, size: 8, offset: 72)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1236, file: !1004, line: 381, baseType: !73, size: 16, offset: 80)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !1236, file: !1004, line: 381, baseType: !83, size: 32, offset: 96)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !1236, file: !1004, line: 382, baseType: !73, size: 16, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !1236, file: !1004, line: 383, baseType: !73, size: 16, offset: 144)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !1236, file: !1004, line: 384, baseType: !91, size: 8, offset: 160)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !1236, file: !1004, line: 385, baseType: !91, size: 8, offset: 168)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !1003, file: !1004, line: 548, baseType: !1253, size: 96)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_csi2_serialbus", file: !1004, line: 333, size: 96, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1253, file: !1004, line: 334, baseType: !91, size: 8)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1253, file: !1004, line: 334, baseType: !73, size: 16, offset: 8)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1253, file: !1004, line: 334, baseType: !91, size: 8, offset: 24)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1253, file: !1004, line: 334, baseType: !91, size: 8, offset: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1253, file: !1004, line: 334, baseType: !91, size: 8, offset: 40)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1004, line: 334, baseType: !91, size: 8, offset: 48)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1253, file: !1004, line: 334, baseType: !73, size: 16, offset: 56)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1253, file: !1004, line: 334, baseType: !91, size: 8, offset: 72)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1253, file: !1004, line: 334, baseType: !73, size: 16, offset: 80)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !1003, file: !1004, line: 549, baseType: !1265, size: 96)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !1004, line: 330, size: 96, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1265, file: !1004, line: 331, baseType: !91, size: 8)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1265, file: !1004, line: 331, baseType: !73, size: 16, offset: 8)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1265, file: !1004, line: 331, baseType: !91, size: 8, offset: 24)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1265, file: !1004, line: 331, baseType: !91, size: 8, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1265, file: !1004, line: 331, baseType: !91, size: 8, offset: 40)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !1004, line: 331, baseType: !91, size: 8, offset: 48)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1265, file: !1004, line: 331, baseType: !73, size: 16, offset: 56)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1265, file: !1004, line: 331, baseType: !91, size: 8, offset: 72)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1265, file: !1004, line: 331, baseType: !73, size: 16, offset: 80)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !1003, file: !1004, line: 550, baseType: !1277, size: 144)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !1004, line: 397, size: 144, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1277, file: !1004, line: 398, baseType: !91, size: 8)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1277, file: !1004, line: 398, baseType: !73, size: 16, offset: 8)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1277, file: !1004, line: 398, baseType: !91, size: 8, offset: 24)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1004, line: 399, baseType: !73, size: 16, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !1277, file: !1004, line: 400, baseType: !91, size: 8, offset: 48)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !1277, file: !1004, line: 401, baseType: !73, size: 16, offset: 56)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1277, file: !1004, line: 402, baseType: !73, size: 16, offset: 72)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1277, file: !1004, line: 403, baseType: !91, size: 8, offset: 88)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1277, file: !1004, line: 404, baseType: !73, size: 16, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1277, file: !1004, line: 405, baseType: !73, size: 16, offset: 112)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1277, file: !1004, line: 406, baseType: !73, size: 16, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !1003, file: !1004, line: 551, baseType: !1291, size: 160)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !1004, line: 417, size: 160, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1291, file: !1004, line: 418, baseType: !91, size: 8)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1291, file: !1004, line: 418, baseType: !73, size: 16, offset: 8)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1291, file: !1004, line: 418, baseType: !91, size: 8, offset: 24)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1291, file: !1004, line: 419, baseType: !73, size: 16, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !1291, file: !1004, line: 420, baseType: !91, size: 8, offset: 48)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !1291, file: !1004, line: 421, baseType: !83, size: 32, offset: 56)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1291, file: !1004, line: 422, baseType: !73, size: 16, offset: 88)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1291, file: !1004, line: 423, baseType: !91, size: 8, offset: 104)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1291, file: !1004, line: 424, baseType: !73, size: 16, offset: 112)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1291, file: !1004, line: 425, baseType: !73, size: 16, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1291, file: !1004, line: 426, baseType: !73, size: 16, offset: 144)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !1003, file: !1004, line: 552, baseType: !1305, size: 112)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !1004, line: 451, size: 112, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1305, file: !1004, line: 452, baseType: !91, size: 8)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1305, file: !1004, line: 452, baseType: !73, size: 16, offset: 8)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1305, file: !1004, line: 452, baseType: !91, size: 8, offset: 24)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !1004, line: 453, baseType: !73, size: 16, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1305, file: !1004, line: 454, baseType: !73, size: 16, offset: 48)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !1305, file: !1004, line: 455, baseType: !73, size: 16, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1305, file: !1004, line: 456, baseType: !73, size: 16, offset: 80)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1305, file: !1004, line: 457, baseType: !73, size: 16, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !1003, file: !1004, line: 553, baseType: !1316, size: 136)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !1004, line: 468, size: 136, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1316, file: !1004, line: 469, baseType: !91, size: 8)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1316, file: !1004, line: 469, baseType: !73, size: 16, offset: 8)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1316, file: !1004, line: 469, baseType: !91, size: 8, offset: 24)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !1004, line: 470, baseType: !73, size: 16, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !1316, file: !1004, line: 471, baseType: !73, size: 16, offset: 48)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1316, file: !1004, line: 472, baseType: !91, size: 8, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1316, file: !1004, line: 473, baseType: !73, size: 16, offset: 72)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !1316, file: !1004, line: 474, baseType: !73, size: 16, offset: 88)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1316, file: !1004, line: 475, baseType: !73, size: 16, offset: 104)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1316, file: !1004, line: 476, baseType: !73, size: 16, offset: 120)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !1003, file: !1004, line: 554, baseType: !1329, size: 160)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !1004, line: 487, size: 160, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1329, file: !1004, line: 488, baseType: !91, size: 8)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1329, file: !1004, line: 488, baseType: !73, size: 16, offset: 8)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1329, file: !1004, line: 488, baseType: !91, size: 8, offset: 24)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1329, file: !1004, line: 489, baseType: !73, size: 16, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !1329, file: !1004, line: 490, baseType: !91, size: 8, offset: 48)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !1329, file: !1004, line: 491, baseType: !83, size: 32, offset: 56)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1329, file: !1004, line: 492, baseType: !91, size: 8, offset: 88)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1329, file: !1004, line: 493, baseType: !73, size: 16, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !1329, file: !1004, line: 494, baseType: !73, size: 16, offset: 112)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1329, file: !1004, line: 495, baseType: !73, size: 16, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1329, file: !1004, line: 496, baseType: !73, size: 16, offset: 144)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !1003, file: !1004, line: 555, baseType: !1343, size: 96)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_clock_input", file: !1004, line: 437, size: 96, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1343, file: !1004, line: 438, baseType: !91, size: 8)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1343, file: !1004, line: 438, baseType: !73, size: 16, offset: 8)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1343, file: !1004, line: 438, baseType: !91, size: 8, offset: 24)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1343, file: !1004, line: 439, baseType: !73, size: 16, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !1343, file: !1004, line: 440, baseType: !73, size: 16, offset: 48)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !1343, file: !1004, line: 441, baseType: !83, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1003, file: !1004, line: 559, baseType: !1352, size: 48)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !1004, line: 217, size: 48, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1352, file: !1004, line: 218, baseType: !91, size: 8)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1352, file: !1004, line: 218, baseType: !73, size: 16, offset: 8)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1352, file: !1004, line: 218, baseType: !91, size: 8, offset: 24)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1352, file: !1004, line: 218, baseType: !91, size: 8, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1352, file: !1004, line: 218, baseType: !91, size: 8, offset: 40)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !1003, file: !1004, line: 560, baseType: !83, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !1003, file: !1004, line: 561, baseType: !73, size: 16)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !1003, file: !1004, line: 562, baseType: !91, size: 8)
!1362 = !{!1363, !1364, !1365}
!1363 = !DILocalVariable(name: "total_length", arg: 1, scope: !999, file: !2, line: 167, type: !97)
!1364 = !DILocalVariable(name: "aml", arg: 2, scope: !999, file: !2, line: 168, type: !1002)
!1365 = !DILocalVariable(name: "resource_length", scope: !999, file: !2, line: 170, type: !89)
!1366 = !DILocation(line: 167, column: 46, scope: !999)
!1367 = !DILocation(line: 168, column: 28, scope: !999)
!1368 = !DILocation(line: 170, column: 2, scope: !999)
!1369 = !DILocation(line: 170, column: 17, scope: !999)
!1370 = !DILocation(line: 177, column: 7, scope: !999)
!1371 = !DILocation(line: 177, column: 57, scope: !999)
!1372 = !DILocation(line: 177, column: 22, scope: !999)
!1373 = !DILocation(line: 177, column: 20, scope: !999)
!1374 = !DILocation(line: 176, column: 20, scope: !999)
!1375 = !DILocation(line: 176, column: 18, scope: !999)
!1376 = !DILocation(line: 181, column: 6, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !999, file: !2, line: 181, column: 6)
!1378 = !DILocation(line: 181, column: 24, scope: !1377)
!1379 = !DILocation(line: 181, column: 40, scope: !1377)
!1380 = !DILocation(line: 181, column: 6, scope: !999)
!1381 = !DILocation(line: 185, column: 3, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 181, column: 68)
!1383 = !DILocation(line: 187, column: 2, scope: !1382)
!1384 = !DILocation(line: 193, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 187, column: 9)
!1386 = !DILocation(line: 193, column: 27, scope: !1385)
!1387 = !DILocation(line: 193, column: 43, scope: !1385)
!1388 = !DILocation(line: 195, column: 10, scope: !1385)
!1389 = !DILocation(line: 195, column: 8, scope: !1385)
!1390 = !DILocation(line: 192, column: 39, scope: !1385)
!1391 = !DILocation(line: 192, column: 3, scope: !1385)
!1392 = !DILocation(line: 192, column: 21, scope: !1385)
!1393 = !DILocation(line: 192, column: 37, scope: !1385)
!1394 = !DILocation(line: 197, column: 1, scope: !999)
!1395 = !DISubprogram(name: "acpi_ut_get_resource_header_length", scope: !1396, file: !1396, line: 608, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1396 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!91, !78}
!1399 = distinct !DISubprogram(name: "acpi_rs_set_resource_header", scope: !2, file: !2, line: 217, type: !1400, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1402)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !91, !97, !1002}
!1402 = !{!1403, !1404, !1405}
!1403 = !DILocalVariable(name: "descriptor_type", arg: 1, scope: !1399, file: !2, line: 217, type: !91)
!1404 = !DILocalVariable(name: "total_length", arg: 2, scope: !1399, file: !2, line: 218, type: !97)
!1405 = !DILocalVariable(name: "aml", arg: 3, scope: !1399, file: !2, line: 219, type: !1002)
!1406 = !DILocation(line: 217, column: 32, scope: !1399)
!1407 = !DILocation(line: 218, column: 25, scope: !1399)
!1408 = !DILocation(line: 219, column: 28, scope: !1399)
!1409 = !DILocation(line: 225, column: 38, scope: !1399)
!1410 = !DILocation(line: 225, column: 2, scope: !1399)
!1411 = !DILocation(line: 225, column: 20, scope: !1399)
!1412 = !DILocation(line: 225, column: 36, scope: !1399)
!1413 = !DILocation(line: 229, column: 30, scope: !1399)
!1414 = !DILocation(line: 229, column: 44, scope: !1399)
!1415 = !DILocation(line: 229, column: 2, scope: !1399)
!1416 = !DILocation(line: 230, column: 1, scope: !1399)
!1417 = distinct !DISubprogram(name: "acpi_rs_get_resource_source", scope: !2, file: !2, line: 284, type: !1418, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1426)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!89, !89, !89, !1420, !1002, !98}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !90, line: 269, size: 88, elements: !1422)
!1422 = !{!1423, !1424, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1421, file: !90, line: 270, baseType: !91, size: 8)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !1421, file: !90, line: 271, baseType: !73, size: 16, offset: 8)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !1421, file: !90, line: 272, baseType: !98, size: 64, offset: 24)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1427 = !DILocalVariable(name: "resource_length", arg: 1, scope: !1417, file: !2, line: 284, type: !89)
!1428 = !DILocalVariable(name: "minimum_length", arg: 2, scope: !1417, file: !2, line: 285, type: !89)
!1429 = !DILocalVariable(name: "resource_source", arg: 3, scope: !1417, file: !2, line: 286, type: !1420)
!1430 = !DILocalVariable(name: "aml", arg: 4, scope: !1417, file: !2, line: 287, type: !1002)
!1431 = !DILocalVariable(name: "string_ptr", arg: 5, scope: !1417, file: !2, line: 287, type: !98)
!1432 = !DILocalVariable(name: "total_length", scope: !1417, file: !2, line: 289, type: !97)
!1433 = !DILocalVariable(name: "aml_resource_source", scope: !1417, file: !2, line: 290, type: !94)
!1434 = !DILocation(line: 284, column: 44, scope: !1417)
!1435 = !DILocation(line: 285, column: 23, scope: !1417)
!1436 = !DILocation(line: 286, column: 38, scope: !1417)
!1437 = !DILocation(line: 287, column: 29, scope: !1417)
!1438 = !DILocation(line: 287, column: 40, scope: !1417)
!1439 = !DILocation(line: 289, column: 2, scope: !1417)
!1440 = !DILocation(line: 289, column: 19, scope: !1417)
!1441 = !DILocation(line: 290, column: 2, scope: !1417)
!1442 = !DILocation(line: 290, column: 6, scope: !1417)
!1443 = !DILocation(line: 295, column: 6, scope: !1417)
!1444 = !DILocation(line: 295, column: 22, scope: !1417)
!1445 = !DILocation(line: 294, column: 15, scope: !1417)
!1446 = !DILocation(line: 296, column: 24, scope: !1417)
!1447 = !DILocation(line: 296, column: 22, scope: !1417)
!1448 = !DILocation(line: 305, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 305, column: 6)
!1450 = !DILocation(line: 305, column: 40, scope: !1449)
!1451 = !DILocation(line: 305, column: 55, scope: !1449)
!1452 = !DILocation(line: 305, column: 19, scope: !1449)
!1453 = !DILocation(line: 305, column: 6, scope: !1417)
!1454 = !DILocation(line: 309, column: 28, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 305, column: 61)
!1456 = !DILocation(line: 309, column: 3, scope: !1455)
!1457 = !DILocation(line: 309, column: 20, scope: !1455)
!1458 = !DILocation(line: 309, column: 26, scope: !1455)
!1459 = !DILocation(line: 311, column: 33, scope: !1455)
!1460 = !DILocation(line: 311, column: 3, scope: !1455)
!1461 = !DILocation(line: 311, column: 20, scope: !1455)
!1462 = !DILocation(line: 311, column: 31, scope: !1455)
!1463 = !DILocation(line: 312, column: 8, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 312, column: 7)
!1465 = !DILocation(line: 312, column: 7, scope: !1455)
!1466 = !DILocation(line: 318, column: 8, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 312, column: 20)
!1468 = !DILocation(line: 317, column: 4, scope: !1467)
!1469 = !DILocation(line: 317, column: 21, scope: !1467)
!1470 = !DILocation(line: 317, column: 32, scope: !1467)
!1471 = !DILocation(line: 320, column: 3, scope: !1467)
!1472 = !DILocation(line: 330, column: 19, scope: !1455)
!1473 = !DILocation(line: 330, column: 12, scope: !1455)
!1474 = !DILocation(line: 330, column: 7, scope: !1455)
!1475 = !DILocation(line: 330, column: 65, scope: !1455)
!1476 = !DILocation(line: 329, column: 16, scope: !1455)
!1477 = !DILocation(line: 333, column: 23, scope: !1455)
!1478 = !DILocation(line: 333, column: 18, scope: !1455)
!1479 = !DILocation(line: 333, column: 16, scope: !1455)
!1480 = !DILocation(line: 335, column: 10, scope: !1455)
!1481 = !DILocation(line: 335, column: 27, scope: !1455)
!1482 = !DILocation(line: 335, column: 42, scope: !1455)
!1483 = !DILocation(line: 335, column: 3, scope: !1455)
!1484 = !DILocation(line: 340, column: 22, scope: !1455)
!1485 = !DILocation(line: 340, column: 39, scope: !1455)
!1486 = !DILocation(line: 341, column: 8, scope: !1455)
!1487 = !DILocation(line: 340, column: 7, scope: !1455)
!1488 = !DILocation(line: 339, column: 3, scope: !1455)
!1489 = !DILocation(line: 339, column: 20, scope: !1455)
!1490 = !DILocation(line: 339, column: 34, scope: !1455)
!1491 = !DILocation(line: 344, column: 27, scope: !1455)
!1492 = !DILocation(line: 344, column: 11, scope: !1455)
!1493 = !DILocation(line: 344, column: 3, scope: !1455)
!1494 = !DILocation(line: 349, column: 2, scope: !1417)
!1495 = !DILocation(line: 349, column: 19, scope: !1417)
!1496 = !DILocation(line: 349, column: 25, scope: !1417)
!1497 = !DILocation(line: 350, column: 2, scope: !1417)
!1498 = !DILocation(line: 350, column: 19, scope: !1417)
!1499 = !DILocation(line: 350, column: 33, scope: !1417)
!1500 = !DILocation(line: 351, column: 2, scope: !1417)
!1501 = !DILocation(line: 351, column: 19, scope: !1417)
!1502 = !DILocation(line: 351, column: 30, scope: !1417)
!1503 = !DILocation(line: 352, column: 2, scope: !1417)
!1504 = !DILocation(line: 353, column: 1, scope: !1417)
!1505 = !DISubprogram(name: "strlen", scope: !1506, file: !1506, line: 128, type: !1507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1506 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!81, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!1510 = distinct !DISubprogram(name: "acpi_rs_strcpy", scope: !2, file: !2, line: 246, type: !1511, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!73, !98, !98}
!1513 = !{!1514, !1515, !1516}
!1514 = !DILocalVariable(name: "destination", arg: 1, scope: !1510, file: !2, line: 246, type: !98)
!1515 = !DILocalVariable(name: "source", arg: 2, scope: !1510, file: !2, line: 246, type: !98)
!1516 = !DILocalVariable(name: "i", scope: !1510, file: !2, line: 248, type: !73)
!1517 = !DILocation(line: 246, column: 33, scope: !1510)
!1518 = !DILocation(line: 246, column: 52, scope: !1510)
!1519 = !DILocation(line: 248, column: 2, scope: !1510)
!1520 = !DILocation(line: 248, column: 6, scope: !1510)
!1521 = !DILocation(line: 252, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 252, column: 2)
!1523 = !DILocation(line: 252, column: 7, scope: !1522)
!1524 = !DILocation(line: 252, column: 14, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 252, column: 2)
!1526 = !DILocation(line: 252, column: 21, scope: !1525)
!1527 = !DILocation(line: 252, column: 2, scope: !1522)
!1528 = !DILocation(line: 253, column: 20, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 252, column: 30)
!1530 = !DILocation(line: 253, column: 27, scope: !1529)
!1531 = !DILocation(line: 253, column: 3, scope: !1529)
!1532 = !DILocation(line: 253, column: 15, scope: !1529)
!1533 = !DILocation(line: 253, column: 18, scope: !1529)
!1534 = !DILocation(line: 254, column: 2, scope: !1529)
!1535 = !DILocation(line: 252, column: 26, scope: !1525)
!1536 = !DILocation(line: 252, column: 2, scope: !1525)
!1537 = distinct !{!1537, !1527, !1538, !913, !914}
!1538 = !DILocation(line: 254, column: 2, scope: !1522)
!1539 = !DILocation(line: 256, column: 2, scope: !1510)
!1540 = !DILocation(line: 256, column: 14, scope: !1510)
!1541 = !DILocation(line: 256, column: 17, scope: !1510)
!1542 = !DILocation(line: 260, column: 17, scope: !1510)
!1543 = !DILocation(line: 260, column: 19, scope: !1510)
!1544 = !DILocation(line: 260, column: 10, scope: !1510)
!1545 = !DILocation(line: 261, column: 1, scope: !1510)
!1546 = !DILocation(line: 260, column: 2, scope: !1510)
!1547 = distinct !DISubprogram(name: "acpi_rs_set_resource_source", scope: !2, file: !2, line: 373, type: !1548, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!97, !1002, !89, !1420}
!1550 = !{!1551, !1552, !1553, !1554, !1555}
!1551 = !DILocalVariable(name: "aml", arg: 1, scope: !1547, file: !2, line: 373, type: !1002)
!1552 = !DILocalVariable(name: "minimum_length", arg: 2, scope: !1547, file: !2, line: 374, type: !89)
!1553 = !DILocalVariable(name: "resource_source", arg: 3, scope: !1547, file: !2, line: 375, type: !1420)
!1554 = !DILocalVariable(name: "aml_resource_source", scope: !1547, file: !2, line: 377, type: !94)
!1555 = !DILocalVariable(name: "descriptor_length", scope: !1547, file: !2, line: 378, type: !97)
!1556 = !DILocation(line: 373, column: 49, scope: !1547)
!1557 = !DILocation(line: 374, column: 23, scope: !1547)
!1558 = !DILocation(line: 375, column: 37, scope: !1547)
!1559 = !DILocation(line: 377, column: 2, scope: !1547)
!1560 = !DILocation(line: 377, column: 6, scope: !1547)
!1561 = !DILocation(line: 378, column: 2, scope: !1547)
!1562 = !DILocation(line: 378, column: 19, scope: !1547)
!1563 = !DILocation(line: 382, column: 22, scope: !1547)
!1564 = !DILocation(line: 382, column: 20, scope: !1547)
!1565 = !DILocation(line: 386, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 386, column: 6)
!1567 = !DILocation(line: 386, column: 23, scope: !1566)
!1568 = !DILocation(line: 386, column: 6, scope: !1547)
!1569 = !DILocation(line: 390, column: 25, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 386, column: 38)
!1571 = !DILocation(line: 390, column: 23, scope: !1570)
!1572 = !DILocation(line: 394, column: 33, scope: !1570)
!1573 = !DILocation(line: 394, column: 50, scope: !1570)
!1574 = !DILocation(line: 394, column: 3, scope: !1570)
!1575 = !DILocation(line: 394, column: 26, scope: !1570)
!1576 = !DILocation(line: 398, column: 10, scope: !1570)
!1577 = !DILocation(line: 399, column: 10, scope: !1570)
!1578 = !DILocation(line: 399, column: 27, scope: !1570)
!1579 = !DILocation(line: 398, column: 3, scope: !1570)
!1580 = !DILocation(line: 406, column: 11, scope: !1570)
!1581 = !DILocation(line: 406, column: 28, scope: !1570)
!1582 = !DILocation(line: 405, column: 25, scope: !1570)
!1583 = !DILocation(line: 406, column: 42, scope: !1570)
!1584 = !DILocation(line: 405, column: 21, scope: !1570)
!1585 = !DILocation(line: 407, column: 2, scope: !1570)
!1586 = !DILocation(line: 411, column: 10, scope: !1547)
!1587 = !DILocation(line: 412, column: 1, scope: !1547)
!1588 = !DILocation(line: 411, column: 2, scope: !1547)
!1589 = !DISubprogram(name: "strcpy", scope: !1506, file: !1506, line: 63, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!98, !98, !1509}
!1592 = distinct !DISubprogram(name: "acpi_rs_get_prt_method_data", scope: !2, file: !2, line: 433, type: !1593, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1600)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!197, !99, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !96, line: 978, size: 128, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1596, file: !96, line: 979, baseType: !95, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1596, file: !96, line: 980, baseType: !78, size: 64, offset: 64)
!1600 = !{!1601, !1602, !1603, !1604}
!1601 = !DILocalVariable(name: "node", arg: 1, scope: !1592, file: !2, line: 433, type: !99)
!1602 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1592, file: !2, line: 434, type: !1595)
!1603 = !DILocalVariable(name: "obj_desc", scope: !1592, file: !2, line: 436, type: !104)
!1604 = !DILocalVariable(name: "status", scope: !1592, file: !2, line: 437, type: !197)
!1605 = !DILocation(line: 433, column: 57, scope: !1592)
!1606 = !DILocation(line: 434, column: 28, scope: !1592)
!1607 = !DILocation(line: 436, column: 2, scope: !1592)
!1608 = !DILocation(line: 436, column: 29, scope: !1592)
!1609 = !DILocation(line: 437, column: 2, scope: !1592)
!1610 = !DILocation(line: 437, column: 14, scope: !1592)
!1611 = !DILocation(line: 446, column: 30, scope: !1592)
!1612 = !DILocation(line: 446, column: 6, scope: !1592)
!1613 = !DILocation(line: 445, column: 9, scope: !1592)
!1614 = !DILocation(line: 448, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 448, column: 6)
!1616 = !DILocation(line: 448, column: 6, scope: !1592)
!1617 = !DILocation(line: 449, column: 3, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 448, column: 28)
!1619 = !DILocation(line: 456, column: 44, scope: !1592)
!1620 = !DILocation(line: 456, column: 54, scope: !1592)
!1621 = !DILocation(line: 456, column: 11, scope: !1592)
!1622 = !DILocation(line: 456, column: 9, scope: !1592)
!1623 = !DILocation(line: 460, column: 27, scope: !1592)
!1624 = !DILocation(line: 460, column: 2, scope: !1592)
!1625 = !DILocation(line: 461, column: 2, scope: !1592)
!1626 = !DILocation(line: 462, column: 1, scope: !1592)
!1627 = !DISubprogram(name: "acpi_ut_evaluate_object", scope: !1396, file: !1396, line: 381, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!197, !99, !1509, !83, !162}
!1630 = !DISubprogram(name: "acpi_rs_create_pci_routing_table", scope: !20, file: !20, line: 162, type: !1631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!197, !104, !1595}
!1633 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1396, file: !1396, line: 369, type: !1634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !104}
!1636 = distinct !DISubprogram(name: "acpi_rs_get_crs_method_data", scope: !2, file: !2, line: 483, type: !1593, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1637)
!1637 = !{!1638, !1639, !1640, !1641}
!1638 = !DILocalVariable(name: "node", arg: 1, scope: !1636, file: !2, line: 483, type: !99)
!1639 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1636, file: !2, line: 484, type: !1595)
!1640 = !DILocalVariable(name: "obj_desc", scope: !1636, file: !2, line: 486, type: !104)
!1641 = !DILocalVariable(name: "status", scope: !1636, file: !2, line: 487, type: !197)
!1642 = !DILocation(line: 483, column: 57, scope: !1636)
!1643 = !DILocation(line: 484, column: 28, scope: !1636)
!1644 = !DILocation(line: 486, column: 2, scope: !1636)
!1645 = !DILocation(line: 486, column: 29, scope: !1636)
!1646 = !DILocation(line: 487, column: 2, scope: !1636)
!1647 = !DILocation(line: 487, column: 14, scope: !1636)
!1648 = !DILocation(line: 496, column: 30, scope: !1636)
!1649 = !DILocation(line: 496, column: 6, scope: !1636)
!1650 = !DILocation(line: 495, column: 9, scope: !1636)
!1651 = !DILocation(line: 498, column: 6, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 498, column: 6)
!1653 = !DILocation(line: 498, column: 6, scope: !1636)
!1654 = !DILocation(line: 499, column: 3, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 498, column: 28)
!1656 = !DILocation(line: 507, column: 40, scope: !1636)
!1657 = !DILocation(line: 507, column: 50, scope: !1636)
!1658 = !DILocation(line: 507, column: 11, scope: !1636)
!1659 = !DILocation(line: 507, column: 9, scope: !1636)
!1660 = !DILocation(line: 511, column: 27, scope: !1636)
!1661 = !DILocation(line: 511, column: 2, scope: !1636)
!1662 = !DILocation(line: 512, column: 2, scope: !1636)
!1663 = !DILocation(line: 513, column: 1, scope: !1636)
!1664 = !DISubprogram(name: "acpi_rs_create_resource_list", scope: !20, file: !20, line: 154, type: !1631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1665 = distinct !DISubprogram(name: "acpi_rs_get_prs_method_data", scope: !2, file: !2, line: 534, type: !1593, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1666)
!1666 = !{!1667, !1668, !1669, !1670}
!1667 = !DILocalVariable(name: "node", arg: 1, scope: !1665, file: !2, line: 534, type: !99)
!1668 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1665, file: !2, line: 535, type: !1595)
!1669 = !DILocalVariable(name: "obj_desc", scope: !1665, file: !2, line: 537, type: !104)
!1670 = !DILocalVariable(name: "status", scope: !1665, file: !2, line: 538, type: !197)
!1671 = !DILocation(line: 534, column: 57, scope: !1665)
!1672 = !DILocation(line: 535, column: 28, scope: !1665)
!1673 = !DILocation(line: 537, column: 2, scope: !1665)
!1674 = !DILocation(line: 537, column: 29, scope: !1665)
!1675 = !DILocation(line: 538, column: 2, scope: !1665)
!1676 = !DILocation(line: 538, column: 14, scope: !1665)
!1677 = !DILocation(line: 547, column: 30, scope: !1665)
!1678 = !DILocation(line: 547, column: 6, scope: !1665)
!1679 = !DILocation(line: 546, column: 9, scope: !1665)
!1680 = !DILocation(line: 549, column: 6, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 549, column: 6)
!1682 = !DILocation(line: 549, column: 6, scope: !1665)
!1683 = !DILocation(line: 550, column: 3, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 549, column: 28)
!1685 = !DILocation(line: 558, column: 40, scope: !1665)
!1686 = !DILocation(line: 558, column: 50, scope: !1665)
!1687 = !DILocation(line: 558, column: 11, scope: !1665)
!1688 = !DILocation(line: 558, column: 9, scope: !1665)
!1689 = !DILocation(line: 562, column: 27, scope: !1665)
!1690 = !DILocation(line: 562, column: 2, scope: !1665)
!1691 = !DILocation(line: 563, column: 2, scope: !1665)
!1692 = !DILocation(line: 564, column: 1, scope: !1665)
!1693 = distinct !DISubprogram(name: "acpi_rs_get_aei_method_data", scope: !2, file: !2, line: 585, type: !1593, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1694)
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DILocalVariable(name: "node", arg: 1, scope: !1693, file: !2, line: 585, type: !99)
!1696 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1693, file: !2, line: 586, type: !1595)
!1697 = !DILocalVariable(name: "obj_desc", scope: !1693, file: !2, line: 588, type: !104)
!1698 = !DILocalVariable(name: "status", scope: !1693, file: !2, line: 589, type: !197)
!1699 = !DILocation(line: 585, column: 57, scope: !1693)
!1700 = !DILocation(line: 586, column: 28, scope: !1693)
!1701 = !DILocation(line: 588, column: 2, scope: !1693)
!1702 = !DILocation(line: 588, column: 29, scope: !1693)
!1703 = !DILocation(line: 589, column: 2, scope: !1693)
!1704 = !DILocation(line: 589, column: 14, scope: !1693)
!1705 = !DILocation(line: 598, column: 30, scope: !1693)
!1706 = !DILocation(line: 598, column: 6, scope: !1693)
!1707 = !DILocation(line: 597, column: 9, scope: !1693)
!1708 = !DILocation(line: 600, column: 6, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 600, column: 6)
!1710 = !DILocation(line: 600, column: 6, scope: !1693)
!1711 = !DILocation(line: 601, column: 3, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 600, column: 28)
!1713 = !DILocation(line: 609, column: 40, scope: !1693)
!1714 = !DILocation(line: 609, column: 50, scope: !1693)
!1715 = !DILocation(line: 609, column: 11, scope: !1693)
!1716 = !DILocation(line: 609, column: 9, scope: !1693)
!1717 = !DILocation(line: 613, column: 27, scope: !1693)
!1718 = !DILocation(line: 613, column: 2, scope: !1693)
!1719 = !DILocation(line: 614, column: 2, scope: !1693)
!1720 = !DILocation(line: 615, column: 1, scope: !1693)
!1721 = distinct !DISubprogram(name: "acpi_rs_get_method_data", scope: !2, file: !2, line: 637, type: !1722, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!197, !431, !1509, !1595}
!1724 = !{!1725, !1726, !1727, !1728, !1729}
!1725 = !DILocalVariable(name: "handle", arg: 1, scope: !1721, file: !2, line: 637, type: !431)
!1726 = !DILocalVariable(name: "path", arg: 2, scope: !1721, file: !2, line: 638, type: !1509)
!1727 = !DILocalVariable(name: "ret_buffer", arg: 3, scope: !1721, file: !2, line: 638, type: !1595)
!1728 = !DILocalVariable(name: "obj_desc", scope: !1721, file: !2, line: 640, type: !104)
!1729 = !DILocalVariable(name: "status", scope: !1721, file: !2, line: 641, type: !197)
!1730 = !DILocation(line: 637, column: 37, scope: !1721)
!1731 = !DILocation(line: 638, column: 16, scope: !1721)
!1732 = !DILocation(line: 638, column: 42, scope: !1721)
!1733 = !DILocation(line: 640, column: 2, scope: !1721)
!1734 = !DILocation(line: 640, column: 29, scope: !1721)
!1735 = !DILocation(line: 641, column: 2, scope: !1721)
!1736 = !DILocation(line: 641, column: 14, scope: !1721)
!1737 = !DILocation(line: 650, column: 30, scope: !1721)
!1738 = !DILocation(line: 651, column: 47, scope: !1721)
!1739 = !DILocation(line: 650, column: 6, scope: !1721)
!1740 = !DILocation(line: 649, column: 9, scope: !1721)
!1741 = !DILocation(line: 653, column: 6, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 653, column: 6)
!1743 = !DILocation(line: 653, column: 6, scope: !1721)
!1744 = !DILocation(line: 654, column: 3, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 653, column: 28)
!1746 = !DILocation(line: 662, column: 40, scope: !1721)
!1747 = !DILocation(line: 662, column: 50, scope: !1721)
!1748 = !DILocation(line: 662, column: 11, scope: !1721)
!1749 = !DILocation(line: 662, column: 9, scope: !1721)
!1750 = !DILocation(line: 666, column: 27, scope: !1721)
!1751 = !DILocation(line: 666, column: 2, scope: !1721)
!1752 = !DILocation(line: 667, column: 2, scope: !1721)
!1753 = !DILocation(line: 668, column: 1, scope: !1721)
!1754 = distinct !DISubprogram(name: "acpi_rs_set_srs_method_data", scope: !2, file: !2, line: 691, type: !1593, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1755)
!1755 = !{!1756, !1757, !1758, !1823, !1824, !1825, !1826}
!1756 = !DILocalVariable(name: "node", arg: 1, scope: !1754, file: !2, line: 691, type: !99)
!1757 = !DILocalVariable(name: "in_buffer", arg: 2, scope: !1754, file: !2, line: 692, type: !1595)
!1758 = !DILocalVariable(name: "info", scope: !1754, file: !2, line: 694, type: !1759)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !200, line: 152, size: 704, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1760, file: !200, line: 155, baseType: !99, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1760, file: !200, line: 156, baseType: !1509, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1760, file: !200, line: 157, baseType: !162, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1760, file: !200, line: 159, baseType: !99, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1760, file: !200, line: 160, baseType: !104, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1760, file: !200, line: 161, baseType: !98, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1760, file: !200, line: 163, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !101, line: 351, size: 56, elements: !1772)
!1772 = !{!1773, !1779, !1788, !1796, !1805}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1771, file: !101, line: 352, baseType: !1774, size: 56)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !101, line: 295, size: 56, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1774, file: !101, line: 296, baseType: !292, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1774, file: !101, line: 297, baseType: !73, size: 16, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1774, file: !101, line: 298, baseType: !91, size: 8, offset: 48)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1771, file: !101, line: 353, baseType: !1780, size: 56)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !101, line: 314, size: 56, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1785, !1786, !1787}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1780, file: !101, line: 315, baseType: !91, size: 8)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1780, file: !101, line: 316, baseType: !91, size: 8, offset: 8)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1780, file: !101, line: 317, baseType: !91, size: 8, offset: 16)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1780, file: !101, line: 318, baseType: !91, size: 8, offset: 24)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1780, file: !101, line: 319, baseType: !91, size: 8, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1780, file: !101, line: 320, baseType: !73, size: 16, offset: 40)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1771, file: !101, line: 354, baseType: !1789, size: 56)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !101, line: 325, size: 56, elements: !1790)
!1790 = !{!1791, !1792, !1793, !1795}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1789, file: !101, line: 326, baseType: !91, size: 8)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1789, file: !101, line: 327, baseType: !91, size: 8, offset: 8)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1789, file: !101, line: 328, baseType: !1794, size: 32, offset: 16)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32, elements: !293)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1789, file: !101, line: 329, baseType: !91, size: 8, offset: 48)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1771, file: !101, line: 355, baseType: !1797, size: 56)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !101, line: 334, size: 56, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1803, !1804}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1797, file: !101, line: 335, baseType: !91, size: 8)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1797, file: !101, line: 336, baseType: !91, size: 8, offset: 8)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1797, file: !101, line: 337, baseType: !1802, size: 16, offset: 16)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 16, elements: !536)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1797, file: !101, line: 338, baseType: !91, size: 8, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1797, file: !101, line: 339, baseType: !73, size: 16, offset: 40)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1771, file: !101, line: 356, baseType: !1806, size: 56)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !101, line: 342, size: 56, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !101, line: 343, baseType: !91, size: 8)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1806, file: !101, line: 344, baseType: !91, size: 8, offset: 8)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1806, file: !101, line: 345, baseType: !91, size: 8, offset: 16)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1806, file: !101, line: 346, baseType: !91, size: 8, offset: 24)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1806, file: !101, line: 347, baseType: !91, size: 8, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1806, file: !101, line: 348, baseType: !73, size: 16, offset: 40)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1760, file: !200, line: 164, baseType: !104, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1760, file: !200, line: 165, baseType: !104, size: 64, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1760, file: !200, line: 167, baseType: !83, size: 32, offset: 576)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1760, file: !200, line: 168, baseType: !83, size: 32, offset: 608)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1760, file: !200, line: 169, baseType: !73, size: 16, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1760, file: !200, line: 170, baseType: !73, size: 16, offset: 656)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1760, file: !200, line: 171, baseType: !91, size: 8, offset: 672)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1760, file: !200, line: 172, baseType: !91, size: 8, offset: 680)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1760, file: !200, line: 173, baseType: !91, size: 8, offset: 688)
!1823 = !DILocalVariable(name: "args", scope: !1754, file: !2, line: 695, type: !535)
!1824 = !DILocalVariable(name: "status", scope: !1754, file: !2, line: 696, type: !197)
!1825 = !DILocalVariable(name: "buffer", scope: !1754, file: !2, line: 697, type: !1596)
!1826 = !DILabel(scope: !1754, name: "cleanup", file: !2, line: 752)
!1827 = !DILocation(line: 691, column: 57, scope: !1754)
!1828 = !DILocation(line: 692, column: 28, scope: !1754)
!1829 = !DILocation(line: 694, column: 2, scope: !1754)
!1830 = !DILocation(line: 694, column: 29, scope: !1754)
!1831 = !DILocation(line: 695, column: 2, scope: !1754)
!1832 = !DILocation(line: 695, column: 29, scope: !1754)
!1833 = !DILocation(line: 696, column: 2, scope: !1754)
!1834 = !DILocation(line: 696, column: 14, scope: !1754)
!1835 = !DILocation(line: 697, column: 2, scope: !1754)
!1836 = !DILocation(line: 697, column: 21, scope: !1754)
!1837 = !DILocation(line: 703, column: 9, scope: !1754)
!1838 = !DILocation(line: 703, column: 7, scope: !1754)
!1839 = !DILocation(line: 704, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 704, column: 6)
!1841 = !DILocation(line: 704, column: 6, scope: !1754)
!1842 = !DILocation(line: 705, column: 3, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 704, column: 13)
!1844 = !DILocation(line: 708, column: 22, scope: !1754)
!1845 = !DILocation(line: 708, column: 2, scope: !1754)
!1846 = !DILocation(line: 708, column: 8, scope: !1754)
!1847 = !DILocation(line: 708, column: 20, scope: !1754)
!1848 = !DILocation(line: 709, column: 2, scope: !1754)
!1849 = !DILocation(line: 709, column: 8, scope: !1754)
!1850 = !DILocation(line: 709, column: 26, scope: !1754)
!1851 = !DILocation(line: 710, column: 21, scope: !1754)
!1852 = !DILocation(line: 710, column: 2, scope: !1754)
!1853 = !DILocation(line: 710, column: 8, scope: !1754)
!1854 = !DILocation(line: 710, column: 19, scope: !1754)
!1855 = !DILocation(line: 711, column: 2, scope: !1754)
!1856 = !DILocation(line: 711, column: 8, scope: !1754)
!1857 = !DILocation(line: 711, column: 14, scope: !1754)
!1858 = !DILocation(line: 720, column: 9, scope: !1754)
!1859 = !DILocation(line: 720, column: 16, scope: !1754)
!1860 = !DILocation(line: 721, column: 40, scope: !1754)
!1861 = !DILocation(line: 721, column: 11, scope: !1754)
!1862 = !DILocation(line: 721, column: 9, scope: !1754)
!1863 = !DILocation(line: 722, column: 6, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 722, column: 6)
!1865 = !DILocation(line: 722, column: 6, scope: !1754)
!1866 = !DILocation(line: 723, column: 3, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 722, column: 28)
!1868 = !DILocation(line: 728, column: 12, scope: !1754)
!1869 = !DILocation(line: 728, column: 2, scope: !1754)
!1870 = !DILocation(line: 728, column: 10, scope: !1754)
!1871 = !DILocation(line: 729, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 729, column: 6)
!1873 = !DILocation(line: 729, column: 6, scope: !1754)
!1874 = !DILocation(line: 734, column: 3, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 729, column: 16)
!1876 = !DILocation(line: 735, column: 10, scope: !1875)
!1877 = !DILocation(line: 736, column: 3, scope: !1875)
!1878 = !DILocation(line: 739, column: 40, scope: !1754)
!1879 = !DILocation(line: 739, column: 27, scope: !1754)
!1880 = !DILocation(line: 739, column: 2, scope: !1754)
!1881 = !DILocation(line: 739, column: 18, scope: !1754)
!1882 = !DILocation(line: 739, column: 25, scope: !1754)
!1883 = !DILocation(line: 740, column: 35, scope: !1754)
!1884 = !DILocation(line: 740, column: 2, scope: !1754)
!1885 = !DILocation(line: 740, column: 18, scope: !1754)
!1886 = !DILocation(line: 740, column: 26, scope: !1754)
!1887 = !DILocation(line: 741, column: 2, scope: !1754)
!1888 = !DILocation(line: 741, column: 18, scope: !1754)
!1889 = !DILocation(line: 741, column: 24, scope: !1754)
!1890 = !DILocation(line: 742, column: 2, scope: !1754)
!1891 = !DILocation(line: 742, column: 10, scope: !1754)
!1892 = !DILocation(line: 746, column: 28, scope: !1754)
!1893 = !DILocation(line: 746, column: 11, scope: !1754)
!1894 = !DILocation(line: 746, column: 9, scope: !1754)
!1895 = !DILocation(line: 750, column: 27, scope: !1754)
!1896 = !DILocation(line: 750, column: 2, scope: !1754)
!1897 = !DILocation(line: 752, column: 1, scope: !1754)
!1898 = !DILocation(line: 753, column: 2, scope: !1754)
!1899 = !DILocation(line: 754, column: 2, scope: !1754)
!1900 = !DILocation(line: 755, column: 1, scope: !1754)
!1901 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1902, file: !1902, line: 55, type: !1903, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1905)
!1902 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!78, !95}
!1905 = !{!1906, !1907, !1909, !1912, !1913, !1916}
!1906 = !DILocalVariable(name: "size", arg: 1, scope: !1901, file: !1902, line: 55, type: !95)
!1907 = !DILocalVariable(name: "_flags", scope: !1908, file: !1902, line: 57, type: !81)
!1908 = distinct !DILexicalBlock(scope: !1901, file: !1902, line: 57, column: 23)
!1909 = !DILocalVariable(name: "__dummy", scope: !1910, file: !1902, line: 57, type: !81)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !1902, line: 57, column: 23)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !1902, line: 57, column: 23)
!1912 = !DILocalVariable(name: "__dummy2", scope: !1910, file: !1902, line: 57, type: !81)
!1913 = !DILocalVariable(name: "__dummy", scope: !1914, file: !1902, line: 57, type: !81)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !1902, line: 57, column: 23)
!1915 = distinct !DILexicalBlock(scope: !1908, file: !1902, line: 57, column: 23)
!1916 = !DILocalVariable(name: "__dummy2", scope: !1914, file: !1902, line: 57, type: !81)
!1917 = !DILocation(line: 55, column: 55, scope: !1901)
!1918 = !DILocation(line: 57, column: 17, scope: !1901)
!1919 = !DILocation(line: 57, column: 23, scope: !1908)
!1920 = !DILocation(line: 57, column: 23, scope: !1910)
!1921 = !DILocation(line: 57, column: 23, scope: !1911)
!1922 = !DILocation(line: 57, column: 23, scope: !1914)
!1923 = !DILocation(line: 57, column: 23, scope: !1915)
!1924 = !DILocation(line: 57, column: 23, scope: !1901)
!1925 = !DILocation(line: 57, column: 9, scope: !1901)
!1926 = !DILocation(line: 57, column: 2, scope: !1901)
!1927 = !DISubprogram(name: "acpi_rs_create_aml_resources", scope: !20, file: !20, line: 158, type: !1928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!197, !1595, !1595}
!1930 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1396, file: !1396, line: 436, type: !1931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!104, !1509, !83, !83, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !96, line: 644, baseType: !83)
!1934 = distinct !DISubprogram(name: "acpi_os_free", scope: !1902, file: !1902, line: 60, type: !1935, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !78}
!1937 = !{!1938}
!1938 = !DILocalVariable(name: "memory", arg: 1, scope: !1934, file: !1902, line: 60, type: !78)
!1939 = !DILocation(line: 60, column: 39, scope: !1934)
!1940 = !DILocation(line: 62, column: 8, scope: !1934)
!1941 = !DILocation(line: 62, column: 2, scope: !1934)
!1942 = !DILocation(line: 63, column: 1, scope: !1934)
!1943 = !DISubprogram(name: "acpi_ns_evaluate", scope: !1944, file: !1944, line: 208, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1944 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!197, !1759}
!1947 = distinct !DISubprogram(name: "kzalloc", scope: !62, file: !62, line: 719, type: !1948, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1954)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!78, !1950, !856}
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 61, baseType: !1951)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1952, line: 72, baseType: !1953)
!1952 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1952, line: 16, baseType: !81)
!1954 = !{!1955, !1956}
!1955 = !DILocalVariable(name: "size", arg: 1, scope: !1947, file: !62, line: 719, type: !1950)
!1956 = !DILocalVariable(name: "flags", arg: 2, scope: !1947, file: !62, line: 719, type: !856)
!1957 = !DILocation(line: 719, column: 52, scope: !1947)
!1958 = !DILocation(line: 719, column: 64, scope: !1947)
!1959 = !DILocation(line: 721, column: 17, scope: !1947)
!1960 = !DILocation(line: 721, column: 23, scope: !1947)
!1961 = !DILocation(line: 721, column: 29, scope: !1947)
!1962 = !DILocation(line: 721, column: 9, scope: !1947)
!1963 = !DILocation(line: 721, column: 2, scope: !1947)
!1964 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1965, file: !1965, line: 65, type: !1966, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!1965 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!81}
!1968 = !DILocation(line: 67, column: 9, scope: !1964)
!1969 = !DILocation(line: 67, column: 2, scope: !1964)
!1970 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1965, file: !1965, line: 120, type: !1971, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1974)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!1973, !81}
!1973 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "flags", arg: 1, scope: !1970, file: !1965, line: 120, type: !81)
!1976 = !DILocation(line: 120, column: 67, scope: !1970)
!1977 = !DILocation(line: 122, column: 11, scope: !1970)
!1978 = !DILocation(line: 122, column: 17, scope: !1970)
!1979 = !DILocation(line: 122, column: 9, scope: !1970)
!1980 = !DILocation(line: 122, column: 2, scope: !1970)
!1981 = distinct !DISubprogram(name: "kmalloc", scope: !62, file: !62, line: 591, type: !1948, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DILocalVariable(name: "size", arg: 1, scope: !1981, file: !62, line: 591, type: !1950)
!1984 = !DILocalVariable(name: "flags", arg: 2, scope: !1981, file: !62, line: 591, type: !856)
!1985 = !DILocalVariable(name: "index", scope: !1986, file: !62, line: 594, type: !21)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !62, line: 593, column: 42)
!1987 = distinct !DILexicalBlock(scope: !1981, file: !62, line: 593, column: 6)
!1988 = !DILocation(line: 591, column: 61, scope: !1981)
!1989 = !DILocation(line: 591, column: 73, scope: !1981)
!1990 = !DILocation(line: 593, column: 27, scope: !1987)
!1991 = !DILocation(line: 593, column: 6, scope: !1987)
!1992 = !DILocation(line: 593, column: 33, scope: !1987)
!1993 = !DILocation(line: 593, column: 36, scope: !1987)
!1994 = !DILocation(line: 593, column: 6, scope: !1981)
!1995 = !DILocation(line: 594, column: 3, scope: !1986)
!1996 = !DILocation(line: 594, column: 16, scope: !1986)
!1997 = !DILocation(line: 596, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1986, file: !62, line: 596, column: 7)
!1999 = !DILocation(line: 596, column: 12, scope: !1998)
!2000 = !DILocation(line: 596, column: 7, scope: !1986)
!2001 = !DILocation(line: 597, column: 25, scope: !1998)
!2002 = !DILocation(line: 597, column: 31, scope: !1998)
!2003 = !DILocation(line: 597, column: 11, scope: !1998)
!2004 = !DILocation(line: 597, column: 4, scope: !1998)
!2005 = !DILocation(line: 599, column: 11, scope: !1986)
!2006 = !DILocation(line: 599, column: 9, scope: !1986)
!2007 = !DILocation(line: 601, column: 33, scope: !1986)
!2008 = !DILocation(line: 601, column: 40, scope: !1986)
!2009 = !DILocation(line: 601, column: 20, scope: !1986)
!2010 = !DILocation(line: 601, column: 5, scope: !1986)
!2011 = !DILocation(line: 601, column: 51, scope: !1986)
!2012 = !DILocation(line: 602, column: 5, scope: !1986)
!2013 = !DILocation(line: 602, column: 12, scope: !1986)
!2014 = !DILocation(line: 600, column: 10, scope: !1986)
!2015 = !DILocation(line: 600, column: 3, scope: !1986)
!2016 = !DILocation(line: 603, column: 2, scope: !1987)
!2017 = !DILocation(line: 604, column: 19, scope: !1981)
!2018 = !DILocation(line: 604, column: 25, scope: !1981)
!2019 = !DILocation(line: 604, column: 9, scope: !1981)
!2020 = !DILocation(line: 604, column: 2, scope: !1981)
!2021 = !DILocation(line: 605, column: 1, scope: !1981)
!2022 = !DISubprogram(name: "kmalloc_large", scope: !62, file: !62, line: 531, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2023 = distinct !DISubprogram(name: "__kmalloc_index", scope: !62, file: !62, line: 444, type: !2024, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2028)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!21, !1950, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !80, line: 35, baseType: !2027)
!2027 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2028 = !{!2029, !2030}
!2029 = !DILocalVariable(name: "size", arg: 1, scope: !2023, file: !62, line: 444, type: !1950)
!2030 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2023, file: !62, line: 445, type: !2026)
!2031 = !DILocation(line: 444, column: 60, scope: !2023)
!2032 = !DILocation(line: 445, column: 16, scope: !2023)
!2033 = !DILocation(line: 447, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 447, column: 6)
!2035 = !DILocation(line: 447, column: 6, scope: !2023)
!2036 = !DILocation(line: 448, column: 3, scope: !2034)
!2037 = !DILocation(line: 450, column: 6, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 450, column: 6)
!2039 = !DILocation(line: 450, column: 11, scope: !2038)
!2040 = !DILocation(line: 450, column: 6, scope: !2023)
!2041 = !DILocation(line: 451, column: 3, scope: !2038)
!2042 = !DILocation(line: 453, column: 32, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 453, column: 6)
!2044 = !DILocation(line: 453, column: 37, scope: !2043)
!2045 = !DILocation(line: 453, column: 42, scope: !2043)
!2046 = !DILocation(line: 453, column: 45, scope: !2043)
!2047 = !DILocation(line: 453, column: 50, scope: !2043)
!2048 = !DILocation(line: 453, column: 6, scope: !2023)
!2049 = !DILocation(line: 454, column: 3, scope: !2043)
!2050 = !DILocation(line: 455, column: 32, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 455, column: 6)
!2052 = !DILocation(line: 455, column: 37, scope: !2051)
!2053 = !DILocation(line: 455, column: 43, scope: !2051)
!2054 = !DILocation(line: 455, column: 46, scope: !2051)
!2055 = !DILocation(line: 455, column: 51, scope: !2051)
!2056 = !DILocation(line: 455, column: 6, scope: !2023)
!2057 = !DILocation(line: 456, column: 3, scope: !2051)
!2058 = !DILocation(line: 457, column: 6, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 457, column: 6)
!2060 = !DILocation(line: 457, column: 11, scope: !2059)
!2061 = !DILocation(line: 457, column: 6, scope: !2023)
!2062 = !DILocation(line: 457, column: 26, scope: !2059)
!2063 = !DILocation(line: 458, column: 6, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 458, column: 6)
!2065 = !DILocation(line: 458, column: 11, scope: !2064)
!2066 = !DILocation(line: 458, column: 6, scope: !2023)
!2067 = !DILocation(line: 458, column: 26, scope: !2064)
!2068 = !DILocation(line: 459, column: 6, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 459, column: 6)
!2070 = !DILocation(line: 459, column: 11, scope: !2069)
!2071 = !DILocation(line: 459, column: 6, scope: !2023)
!2072 = !DILocation(line: 459, column: 26, scope: !2069)
!2073 = !DILocation(line: 460, column: 6, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 460, column: 6)
!2075 = !DILocation(line: 460, column: 11, scope: !2074)
!2076 = !DILocation(line: 460, column: 6, scope: !2023)
!2077 = !DILocation(line: 460, column: 26, scope: !2074)
!2078 = !DILocation(line: 461, column: 6, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 461, column: 6)
!2080 = !DILocation(line: 461, column: 11, scope: !2079)
!2081 = !DILocation(line: 461, column: 6, scope: !2023)
!2082 = !DILocation(line: 461, column: 26, scope: !2079)
!2083 = !DILocation(line: 462, column: 6, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 462, column: 6)
!2085 = !DILocation(line: 462, column: 11, scope: !2084)
!2086 = !DILocation(line: 462, column: 6, scope: !2023)
!2087 = !DILocation(line: 462, column: 26, scope: !2084)
!2088 = !DILocation(line: 463, column: 6, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 463, column: 6)
!2090 = !DILocation(line: 463, column: 11, scope: !2089)
!2091 = !DILocation(line: 463, column: 6, scope: !2023)
!2092 = !DILocation(line: 463, column: 26, scope: !2089)
!2093 = !DILocation(line: 464, column: 6, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 464, column: 6)
!2095 = !DILocation(line: 464, column: 11, scope: !2094)
!2096 = !DILocation(line: 464, column: 6, scope: !2023)
!2097 = !DILocation(line: 464, column: 26, scope: !2094)
!2098 = !DILocation(line: 465, column: 6, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 465, column: 6)
!2100 = !DILocation(line: 465, column: 11, scope: !2099)
!2101 = !DILocation(line: 465, column: 6, scope: !2023)
!2102 = !DILocation(line: 465, column: 26, scope: !2099)
!2103 = !DILocation(line: 466, column: 6, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 466, column: 6)
!2105 = !DILocation(line: 466, column: 11, scope: !2104)
!2106 = !DILocation(line: 466, column: 6, scope: !2023)
!2107 = !DILocation(line: 466, column: 26, scope: !2104)
!2108 = !DILocation(line: 467, column: 6, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 467, column: 6)
!2110 = !DILocation(line: 467, column: 11, scope: !2109)
!2111 = !DILocation(line: 467, column: 6, scope: !2023)
!2112 = !DILocation(line: 467, column: 26, scope: !2109)
!2113 = !DILocation(line: 468, column: 6, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 468, column: 6)
!2115 = !DILocation(line: 468, column: 11, scope: !2114)
!2116 = !DILocation(line: 468, column: 6, scope: !2023)
!2117 = !DILocation(line: 468, column: 26, scope: !2114)
!2118 = !DILocation(line: 469, column: 6, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 469, column: 6)
!2120 = !DILocation(line: 469, column: 11, scope: !2119)
!2121 = !DILocation(line: 469, column: 6, scope: !2023)
!2122 = !DILocation(line: 469, column: 26, scope: !2119)
!2123 = !DILocation(line: 470, column: 6, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 470, column: 6)
!2125 = !DILocation(line: 470, column: 11, scope: !2124)
!2126 = !DILocation(line: 470, column: 6, scope: !2023)
!2127 = !DILocation(line: 470, column: 26, scope: !2124)
!2128 = !DILocation(line: 471, column: 6, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 471, column: 6)
!2130 = !DILocation(line: 471, column: 11, scope: !2129)
!2131 = !DILocation(line: 471, column: 6, scope: !2023)
!2132 = !DILocation(line: 471, column: 26, scope: !2129)
!2133 = !DILocation(line: 472, column: 6, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 472, column: 6)
!2135 = !DILocation(line: 472, column: 11, scope: !2134)
!2136 = !DILocation(line: 472, column: 6, scope: !2023)
!2137 = !DILocation(line: 472, column: 26, scope: !2134)
!2138 = !DILocation(line: 473, column: 6, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 473, column: 6)
!2140 = !DILocation(line: 473, column: 11, scope: !2139)
!2141 = !DILocation(line: 473, column: 6, scope: !2023)
!2142 = !DILocation(line: 473, column: 26, scope: !2139)
!2143 = !DILocation(line: 474, column: 6, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 474, column: 6)
!2145 = !DILocation(line: 474, column: 11, scope: !2144)
!2146 = !DILocation(line: 474, column: 6, scope: !2023)
!2147 = !DILocation(line: 474, column: 27, scope: !2144)
!2148 = !DILocation(line: 475, column: 6, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 475, column: 6)
!2150 = !DILocation(line: 475, column: 11, scope: !2149)
!2151 = !DILocation(line: 475, column: 6, scope: !2023)
!2152 = !DILocation(line: 475, column: 32, scope: !2149)
!2153 = !DILocation(line: 477, column: 50, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2023, file: !62, line: 477, column: 6)
!2155 = !{i8 0, i8 2}
!2156 = !DILocation(line: 477, column: 6, scope: !2023)
!2157 = !DILocation(line: 478, column: 3, scope: !2154)
!2158 = !DILocation(line: 478, column: 3, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !62, line: 478, column: 3)
!2160 = distinct !DILexicalBlock(scope: !2154, file: !62, line: 478, column: 3)
!2161 = !{i32 -2143027660}
!2162 = !DILocation(line: 478, column: 3, scope: !2160)
!2163 = !DILocation(line: 480, column: 3, scope: !2154)
!2164 = !DILocation(line: 480, column: 3, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2154, file: !62, line: 480, column: 3)
!2166 = !DILocation(line: 480, column: 3, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2165, file: !62, line: 480, column: 3)
!2168 = !DILocation(line: 480, column: 3, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !62, line: 480, column: 3)
!2170 = !{i64 2151939839, i64 2151939868, i64 2151939914, i64 2151939972, i64 2151940026, i64 2151940080, i64 2151940135, i64 2151940166}
!2171 = !DILocation(line: 483, column: 2, scope: !2023)
!2172 = !DILocation(line: 484, column: 1, scope: !2023)
!2173 = !DISubprogram(name: "kmalloc_trace", scope: !62, file: !62, line: 525, type: !2174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!78, !2176, !856, !1950}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2178, line: 11, flags: DIFlagFwdDecl)
!2178 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2179 = distinct !DISubprogram(name: "kmalloc_type", scope: !62, file: !62, line: 401, type: !2180, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!61, !856, !81}
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "flags", arg: 1, scope: !2179, file: !62, line: 401, type: !856)
!2184 = !DILocalVariable(name: "caller", arg: 2, scope: !2179, file: !62, line: 401, type: !81)
!2185 = !DILocation(line: 401, column: 67, scope: !2179)
!2186 = !DILocation(line: 401, column: 88, scope: !2179)
!2187 = !DILocation(line: 407, column: 6, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2179, file: !62, line: 407, column: 6)
!2189 = !DILocation(line: 407, column: 6, scope: !2179)
!2190 = !DILocation(line: 413, column: 3, scope: !2188)
!2191 = !DILocation(line: 423, column: 38, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2179, file: !62, line: 423, column: 6)
!2193 = !DILocation(line: 423, column: 44, scope: !2192)
!2194 = !DILocation(line: 423, column: 6, scope: !2179)
!2195 = !DILocation(line: 424, column: 3, scope: !2192)
!2196 = !DILocation(line: 426, column: 3, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2179, file: !62, line: 425, column: 6)
!2198 = !DILocation(line: 429, column: 1, scope: !2179)
!2199 = !DISubprogram(name: "__kmalloc", scope: !62, file: !62, line: 488, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2200 = !DISubprogram(name: "__compiletime_assert_173", scope: !62, file: !62, line: 478, type: !2201, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null}
!2203 = distinct !DISubprogram(name: "native_save_fl", scope: !1965, file: !1965, line: 17, type: !1966, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2204)
!2204 = !{!2205}
!2205 = !DILocalVariable(name: "flags", scope: !2203, file: !1965, line: 19, type: !81)
!2206 = !DILocation(line: 19, column: 2, scope: !2203)
!2207 = !DILocation(line: 19, column: 16, scope: !2203)
!2208 = !DILocation(line: 26, column: 2, scope: !2203)
!2209 = !{i64 1529758, i64 1529779}
!2210 = !DILocation(line: 32, column: 9, scope: !2203)
!2211 = !DILocation(line: 33, column: 1, scope: !2203)
!2212 = !DILocation(line: 32, column: 2, scope: !2203)
!2213 = !DISubprogram(name: "kfree", scope: !62, file: !62, line: 227, type: !2214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
