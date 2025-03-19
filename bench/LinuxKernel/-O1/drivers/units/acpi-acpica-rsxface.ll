; ModuleID = 'drivers/acpi/acpica/rsxface.c'
source_filename = "drivers/acpi/acpica/rsxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_irq_routing_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_irq_routing_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_current_resources: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_current_resources ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_possible_resources: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_possible_resources ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_set_current_resources: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_set_current_resources ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_event_resources: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_event_resources ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_resource_to_address64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_resource_to_address64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_vendor_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_vendor_resource ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_walk_resource_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_walk_resource_buffer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_walk_resources: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_walk_resources ; .previous"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor, [58 x i8] }
%struct.acpi_resource_vendor = type { i16, [0 x i8] }
%struct.acpi_resource_address16 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address16_attribute, %struct.acpi_resource_source }>
%union.acpi_resource_attribute = type { %struct.acpi_memory_attribute }
%struct.acpi_memory_attribute = type { i8, i8, i8, i8 }
%struct.acpi_address16_attribute = type { i16, i16, i16, i16, i16 }
%struct.acpi_resource_source = type <{ i8, i16, ptr }>
%struct.acpi_resource_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address64_attribute, %struct.acpi_resource_source }>
%struct.acpi_address64_attribute = type { i64, i64, i64, i64, i64 }
%struct.acpi_resource_address32 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address32_attribute, %struct.acpi_resource_source }>
%struct.acpi_address32_attribute = type { i32, i32, i32, i32, i32 }
%struct.acpi_vendor_walk_info = type { ptr, ptr, i32 }
%struct.acpi_resource_vendor_typed = type <{ i16, i8, [16 x i8], [0 x i8] }>
%struct.acpi_vendor_uuid = type { i8, [16 x i8] }

@__UNIQUE_ID___addressable_acpi_get_irq_routing_table174 = internal global ptr @acpi_get_irq_routing_table, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_acpi_get_current_resources175 = internal global ptr @acpi_get_current_resources, section ".discard.addressable", align 8, !dbg !451
@__UNIQUE_ID___addressable_acpi_get_possible_resources176 = internal global ptr @acpi_get_possible_resources, section ".discard.addressable", align 8, !dbg !453
@__UNIQUE_ID___addressable_acpi_set_current_resources177 = internal global ptr @acpi_set_current_resources, section ".discard.addressable", align 8, !dbg !455
@__UNIQUE_ID___addressable_acpi_get_event_resources178 = internal global ptr @acpi_get_event_resources, section ".discard.addressable", align 8, !dbg !457
@__UNIQUE_ID___addressable_acpi_resource_to_address64179 = internal global ptr @acpi_resource_to_address64, section ".discard.addressable", align 8, !dbg !459
@__UNIQUE_ID___addressable_acpi_get_vendor_resource180 = internal global ptr @acpi_get_vendor_resource, section ".discard.addressable", align 8, !dbg !461
@__UNIQUE_ID___addressable_acpi_walk_resource_buffer181 = internal global ptr @acpi_walk_resource_buffer, section ".discard.addressable", align 8, !dbg !463
@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !465
@.str.1 = private unnamed_addr constant [5 x i8] c"_PRS\00", align 1, !dbg !470
@.str.2 = private unnamed_addr constant [5 x i8] c"_AEI\00", align 1, !dbg !472
@.str.3 = private unnamed_addr constant [5 x i8] c"_DMA\00", align 1, !dbg !474
@__UNIQUE_ID___addressable_acpi_walk_resources182 = internal global ptr @acpi_walk_resources, section ".discard.addressable", align 8, !dbg !476
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_get_irq_routing_table174, ptr @__UNIQUE_ID___addressable_acpi_get_current_resources175, ptr @__UNIQUE_ID___addressable_acpi_get_possible_resources176, ptr @__UNIQUE_ID___addressable_acpi_set_current_resources177, ptr @__UNIQUE_ID___addressable_acpi_get_event_resources178, ptr @__UNIQUE_ID___addressable_acpi_resource_to_address64179, ptr @__UNIQUE_ID___addressable_acpi_get_vendor_resource180, ptr @__UNIQUE_ID___addressable_acpi_walk_resource_buffer181, ptr @__UNIQUE_ID___addressable_acpi_walk_resources182], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_irq_routing_table(ptr noundef %device_handle, ptr noundef %ret_buffer) #0 align 16 !dbg !487 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_handle, ptr %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_handle.addr, metadata !497, metadata !DIExpression()), !dbg !1257
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !498, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %status, metadata !499, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %node, metadata !500, metadata !DIExpression()), !dbg !1262
  %0 = load ptr, ptr %device_handle.addr, align 8, !dbg !1263
  %1 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1264
  %call = call i32 @acpi_rs_validate_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %node) #7, !dbg !1265
  store i32 %call, ptr %status, align 4, !dbg !1266
  %2 = load i32, ptr %status, align 4, !dbg !1267
  %tobool = icmp ne i32 %2, 0, !dbg !1267
  br i1 %tobool, label %if.then, label %if.end, !dbg !1269

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !1270
  store i32 %3, ptr %retval, align 4, !dbg !1270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1270

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node, align 8, !dbg !1272
  %5 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1273
  %call1 = call i32 @acpi_rs_get_prt_method_data(ptr noundef %4, ptr noundef %5) #7, !dbg !1274
  store i32 %call1, ptr %status, align 4, !dbg !1275
  %6 = load i32, ptr %status, align 4, !dbg !1276
  store i32 %6, ptr %retval, align 4, !dbg !1276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1276

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1277
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1277
  %7 = load i32, ptr %retval, align 4, !dbg !1277
  ret i32 %7, !dbg !1277
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_rs_validate_parameters(ptr noundef %device_handle, ptr noundef %buffer, ptr noundef %return_node) #0 align 16 !dbg !1278 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %return_node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_handle, ptr %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_handle.addr, metadata !1283, metadata !DIExpression()), !dbg !1288
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1284, metadata !DIExpression()), !dbg !1289
  store ptr %return_node, ptr %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_node.addr, metadata !1285, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1293
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1287, metadata !DIExpression()), !dbg !1294
  %0 = load ptr, ptr %device_handle.addr, align 8, !dbg !1295
  %tobool = icmp ne ptr %0, null, !dbg !1295
  br i1 %tobool, label %if.end, label %if.then, !dbg !1297

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1298

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %device_handle.addr, align 8, !dbg !1300
  %call = call ptr @acpi_ns_validate_handle(ptr noundef %1) #7, !dbg !1301
  store ptr %call, ptr %node, align 8, !dbg !1302
  %2 = load ptr, ptr %node, align 8, !dbg !1303
  %tobool1 = icmp ne ptr %2, null, !dbg !1303
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1305

if.then2:                                         ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !1306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1306

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %node, align 8, !dbg !1308
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %3, i32 0, i32 2, !dbg !1310
  %4 = load i8, ptr %type, align 1, !dbg !1310
  %conv = zext i8 %4 to i32, !dbg !1308
  %cmp = icmp ne i32 %conv, 6, !dbg !1311
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1312

if.then5:                                         ; preds = %if.end3
  store i32 8, ptr %retval, align 4, !dbg !1313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1313

if.end6:                                          ; preds = %if.end3
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !1315
  %call7 = call i32 @acpi_ut_validate_buffer(ptr noundef %5) #7, !dbg !1316
  store i32 %call7, ptr %status, align 4, !dbg !1317
  %6 = load i32, ptr %status, align 4, !dbg !1318
  %tobool8 = icmp ne i32 %6, 0, !dbg !1318
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1320

if.then9:                                         ; preds = %if.end6
  %7 = load i32, ptr %status, align 4, !dbg !1321
  store i32 %7, ptr %retval, align 4, !dbg !1321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1321

if.end10:                                         ; preds = %if.end6
  %8 = load ptr, ptr %node, align 8, !dbg !1323
  %9 = load ptr, ptr %return_node.addr, align 8, !dbg !1324
  store ptr %8, ptr %9, align 8, !dbg !1325
  store i32 0, ptr %retval, align 4, !dbg !1326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1326

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1327
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1327
  %10 = load i32, ptr %retval, align 4, !dbg !1327
  ret i32 %10, !dbg !1327
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1328 dso_local i32 @acpi_rs_get_prt_method_data(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_current_resources(ptr noundef %device_handle, ptr noundef %ret_buffer) #0 align 16 !dbg !1332 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_handle, ptr %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_handle.addr, metadata !1334, metadata !DIExpression()), !dbg !1338
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1335, metadata !DIExpression()), !dbg !1339
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1340
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1336, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1337, metadata !DIExpression()), !dbg !1343
  %0 = load ptr, ptr %device_handle.addr, align 8, !dbg !1344
  %1 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1345
  %call = call i32 @acpi_rs_validate_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %node) #7, !dbg !1346
  store i32 %call, ptr %status, align 4, !dbg !1347
  %2 = load i32, ptr %status, align 4, !dbg !1348
  %tobool = icmp ne i32 %2, 0, !dbg !1348
  br i1 %tobool, label %if.then, label %if.end, !dbg !1350

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !1351
  store i32 %3, ptr %retval, align 4, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node, align 8, !dbg !1353
  %5 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1354
  %call1 = call i32 @acpi_rs_get_crs_method_data(ptr noundef %4, ptr noundef %5) #7, !dbg !1355
  store i32 %call1, ptr %status, align 4, !dbg !1356
  %6 = load i32, ptr %status, align 4, !dbg !1357
  store i32 %6, ptr %retval, align 4, !dbg !1357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1357

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1358
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1358
  %7 = load i32, ptr %retval, align 4, !dbg !1358
  ret i32 %7, !dbg !1358
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1359 dso_local i32 @acpi_rs_get_crs_method_data(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_possible_resources(ptr noundef %device_handle, ptr noundef %ret_buffer) #0 align 16 !dbg !1360 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_handle, ptr %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_handle.addr, metadata !1362, metadata !DIExpression()), !dbg !1366
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1363, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1364, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1365, metadata !DIExpression()), !dbg !1371
  %0 = load ptr, ptr %device_handle.addr, align 8, !dbg !1372
  %1 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1373
  %call = call i32 @acpi_rs_validate_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %node) #7, !dbg !1374
  store i32 %call, ptr %status, align 4, !dbg !1375
  %2 = load i32, ptr %status, align 4, !dbg !1376
  %tobool = icmp ne i32 %2, 0, !dbg !1376
  br i1 %tobool, label %if.then, label %if.end, !dbg !1378

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !1379
  store i32 %3, ptr %retval, align 4, !dbg !1379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1379

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node, align 8, !dbg !1381
  %5 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1382
  %call1 = call i32 @acpi_rs_get_prs_method_data(ptr noundef %4, ptr noundef %5) #7, !dbg !1383
  store i32 %call1, ptr %status, align 4, !dbg !1384
  %6 = load i32, ptr %status, align 4, !dbg !1385
  store i32 %6, ptr %retval, align 4, !dbg !1385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1385

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1386
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1386
  %7 = load i32, ptr %retval, align 4, !dbg !1386
  ret i32 %7, !dbg !1386
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1387 dso_local i32 @acpi_rs_get_prs_method_data(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_set_current_resources(ptr noundef %device_handle, ptr noundef %in_buffer) #0 align 16 !dbg !1388 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca ptr, align 8
  %in_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_handle, ptr %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_handle.addr, metadata !1390, metadata !DIExpression()), !dbg !1394
  store ptr %in_buffer, ptr %in_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_buffer.addr, metadata !1391, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1392, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1398
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1393, metadata !DIExpression()), !dbg !1399
  %0 = load ptr, ptr %in_buffer.addr, align 8, !dbg !1400
  %tobool = icmp ne ptr %0, null, !dbg !1400
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1402

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %in_buffer.addr, align 8, !dbg !1403
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %1, i32 0, i32 1, !dbg !1404
  %2 = load ptr, ptr %pointer, align 8, !dbg !1404
  %tobool1 = icmp ne ptr %2, null, !dbg !1403
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1405

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %in_buffer.addr, align 8, !dbg !1406
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %3, i32 0, i32 0, !dbg !1407
  %4 = load i64, ptr %length, align 8, !dbg !1407
  %tobool3 = icmp ne i64 %4, 0, !dbg !1406
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1408

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1409

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %device_handle.addr, align 8, !dbg !1411
  %6 = load ptr, ptr %in_buffer.addr, align 8, !dbg !1412
  %call = call i32 @acpi_rs_validate_parameters(ptr noundef %5, ptr noundef %6, ptr noundef %node) #7, !dbg !1413
  store i32 %call, ptr %status, align 4, !dbg !1414
  %7 = load i32, ptr %status, align 4, !dbg !1415
  %tobool4 = icmp ne i32 %7, 0, !dbg !1415
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1417

if.then5:                                         ; preds = %if.end
  %8 = load i32, ptr %status, align 4, !dbg !1418
  store i32 %8, ptr %retval, align 4, !dbg !1418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1418

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %node, align 8, !dbg !1420
  %10 = load ptr, ptr %in_buffer.addr, align 8, !dbg !1421
  %call7 = call i32 @acpi_rs_set_srs_method_data(ptr noundef %9, ptr noundef %10) #7, !dbg !1422
  store i32 %call7, ptr %status, align 4, !dbg !1423
  %11 = load i32, ptr %status, align 4, !dbg !1424
  store i32 %11, ptr %retval, align 4, !dbg !1424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1424

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1425
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1425
  %12 = load i32, ptr %retval, align 4, !dbg !1425
  ret i32 %12, !dbg !1425
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1426 dso_local i32 @acpi_rs_set_srs_method_data(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_event_resources(ptr noundef %device_handle, ptr noundef %ret_buffer) #0 align 16 !dbg !1427 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_handle, ptr %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_handle.addr, metadata !1429, metadata !DIExpression()), !dbg !1433
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1430, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1431, metadata !DIExpression()), !dbg !1436
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1432, metadata !DIExpression()), !dbg !1438
  %0 = load ptr, ptr %device_handle.addr, align 8, !dbg !1439
  %1 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1440
  %call = call i32 @acpi_rs_validate_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %node) #7, !dbg !1441
  store i32 %call, ptr %status, align 4, !dbg !1442
  %2 = load i32, ptr %status, align 4, !dbg !1443
  %tobool = icmp ne i32 %2, 0, !dbg !1443
  br i1 %tobool, label %if.then, label %if.end, !dbg !1445

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !1446
  store i32 %3, ptr %retval, align 4, !dbg !1446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1446

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node, align 8, !dbg !1448
  %5 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1449
  %call1 = call i32 @acpi_rs_get_aei_method_data(ptr noundef %4, ptr noundef %5) #7, !dbg !1450
  store i32 %call1, ptr %status, align 4, !dbg !1451
  %6 = load i32, ptr %status, align 4, !dbg !1452
  store i32 %6, ptr %retval, align 4, !dbg !1452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1452

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1453
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1453
  %7 = load i32, ptr %retval, align 4, !dbg !1453
  ret i32 %7, !dbg !1453
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1454 dso_local i32 @acpi_rs_get_aei_method_data(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_resource_to_address64(ptr noundef %resource, ptr noundef %out) #0 align 16 !dbg !1455 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %address16 = alloca ptr, align 8
  %address32 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !1460, metadata !DIExpression()), !dbg !1464
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1461, metadata !DIExpression()), !dbg !1465
  call void @llvm.lifetime.start.p0(i64 8, ptr %address16) #6, !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %address16, metadata !1462, metadata !DIExpression()), !dbg !1467
  call void @llvm.lifetime.start.p0(i64 8, ptr %address32) #6, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %address32, metadata !1463, metadata !DIExpression()), !dbg !1469
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !1470
  %tobool = icmp ne ptr %0, null, !dbg !1470
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1472

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %out.addr, align 8, !dbg !1473
  %tobool1 = icmp ne ptr %1, null, !dbg !1473
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1474

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1475

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %resource.addr, align 8, !dbg !1477
  %type = getelementptr inbounds %struct.acpi_resource, ptr %2, i32 0, i32 0, !dbg !1478
  %3 = load i32, ptr %type, align 1, !dbg !1478
  switch i32 %3, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb28
    i32 13, label %sw.bb69
  ], !dbg !1479

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %resource.addr, align 8, !dbg !1480
  %data = getelementptr inbounds %struct.acpi_resource, ptr %4, i32 0, i32 2, !dbg !1480
  %5 = ptrtoint ptr %data to i64, !dbg !1480
  %6 = inttoptr i64 %5 to ptr, !dbg !1480
  store ptr %6, ptr %address16, align 8, !dbg !1482
  %7 = load ptr, ptr %address16, align 8, !dbg !1483
  %resource_type = getelementptr inbounds %struct.acpi_resource_address16, ptr %7, i32 0, i32 0, !dbg !1483
  %8 = load i8, ptr %resource_type, align 1, !dbg !1483
  %9 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %resource_type2 = getelementptr inbounds %struct.acpi_resource_address64, ptr %9, i32 0, i32 0, !dbg !1483
  store i8 %8, ptr %resource_type2, align 1, !dbg !1483
  %10 = load ptr, ptr %address16, align 8, !dbg !1483
  %producer_consumer = getelementptr inbounds %struct.acpi_resource_address16, ptr %10, i32 0, i32 1, !dbg !1483
  %11 = load i8, ptr %producer_consumer, align 1, !dbg !1483
  %12 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %producer_consumer3 = getelementptr inbounds %struct.acpi_resource_address64, ptr %12, i32 0, i32 1, !dbg !1483
  store i8 %11, ptr %producer_consumer3, align 1, !dbg !1483
  %13 = load ptr, ptr %address16, align 8, !dbg !1483
  %decode = getelementptr inbounds %struct.acpi_resource_address16, ptr %13, i32 0, i32 2, !dbg !1483
  %14 = load i8, ptr %decode, align 1, !dbg !1483
  %15 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %decode4 = getelementptr inbounds %struct.acpi_resource_address64, ptr %15, i32 0, i32 2, !dbg !1483
  store i8 %14, ptr %decode4, align 1, !dbg !1483
  %16 = load ptr, ptr %address16, align 8, !dbg !1483
  %min_address_fixed = getelementptr inbounds %struct.acpi_resource_address16, ptr %16, i32 0, i32 3, !dbg !1483
  %17 = load i8, ptr %min_address_fixed, align 1, !dbg !1483
  %18 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %min_address_fixed5 = getelementptr inbounds %struct.acpi_resource_address64, ptr %18, i32 0, i32 3, !dbg !1483
  store i8 %17, ptr %min_address_fixed5, align 1, !dbg !1483
  %19 = load ptr, ptr %address16, align 8, !dbg !1483
  %max_address_fixed = getelementptr inbounds %struct.acpi_resource_address16, ptr %19, i32 0, i32 4, !dbg !1483
  %20 = load i8, ptr %max_address_fixed, align 1, !dbg !1483
  %21 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %max_address_fixed6 = getelementptr inbounds %struct.acpi_resource_address64, ptr %21, i32 0, i32 4, !dbg !1483
  store i8 %20, ptr %max_address_fixed6, align 1, !dbg !1483
  %22 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %info = getelementptr inbounds %struct.acpi_resource_address64, ptr %22, i32 0, i32 5, !dbg !1483
  %23 = load ptr, ptr %address16, align 8, !dbg !1483
  %info7 = getelementptr inbounds %struct.acpi_resource_address16, ptr %23, i32 0, i32 5, !dbg !1483
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %info, ptr align 1 %info7, i64 4, i1 false), !dbg !1483
  %24 = load ptr, ptr %address16, align 8, !dbg !1483
  %address = getelementptr inbounds %struct.acpi_resource_address16, ptr %24, i32 0, i32 6, !dbg !1483
  %granularity = getelementptr inbounds %struct.acpi_address16_attribute, ptr %address, i32 0, i32 0, !dbg !1483
  %25 = load i16, ptr %granularity, align 1, !dbg !1483
  %conv = zext i16 %25 to i64, !dbg !1483
  %26 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %address8 = getelementptr inbounds %struct.acpi_resource_address64, ptr %26, i32 0, i32 6, !dbg !1483
  %granularity9 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address8, i32 0, i32 0, !dbg !1483
  store i64 %conv, ptr %granularity9, align 1, !dbg !1483
  %27 = load ptr, ptr %address16, align 8, !dbg !1483
  %address10 = getelementptr inbounds %struct.acpi_resource_address16, ptr %27, i32 0, i32 6, !dbg !1483
  %minimum = getelementptr inbounds %struct.acpi_address16_attribute, ptr %address10, i32 0, i32 1, !dbg !1483
  %28 = load i16, ptr %minimum, align 1, !dbg !1483
  %conv11 = zext i16 %28 to i64, !dbg !1483
  %29 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %address12 = getelementptr inbounds %struct.acpi_resource_address64, ptr %29, i32 0, i32 6, !dbg !1483
  %minimum13 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address12, i32 0, i32 1, !dbg !1483
  store i64 %conv11, ptr %minimum13, align 1, !dbg !1483
  %30 = load ptr, ptr %address16, align 8, !dbg !1483
  %address14 = getelementptr inbounds %struct.acpi_resource_address16, ptr %30, i32 0, i32 6, !dbg !1483
  %maximum = getelementptr inbounds %struct.acpi_address16_attribute, ptr %address14, i32 0, i32 2, !dbg !1483
  %31 = load i16, ptr %maximum, align 1, !dbg !1483
  %conv15 = zext i16 %31 to i64, !dbg !1483
  %32 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %address17 = getelementptr inbounds %struct.acpi_resource_address64, ptr %32, i32 0, i32 6, !dbg !1483
  %maximum18 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address17, i32 0, i32 2, !dbg !1483
  store i64 %conv15, ptr %maximum18, align 1, !dbg !1483
  %33 = load ptr, ptr %address16, align 8, !dbg !1483
  %address19 = getelementptr inbounds %struct.acpi_resource_address16, ptr %33, i32 0, i32 6, !dbg !1483
  %translation_offset = getelementptr inbounds %struct.acpi_address16_attribute, ptr %address19, i32 0, i32 3, !dbg !1483
  %34 = load i16, ptr %translation_offset, align 1, !dbg !1483
  %conv20 = zext i16 %34 to i64, !dbg !1483
  %35 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %address21 = getelementptr inbounds %struct.acpi_resource_address64, ptr %35, i32 0, i32 6, !dbg !1483
  %translation_offset22 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address21, i32 0, i32 3, !dbg !1483
  store i64 %conv20, ptr %translation_offset22, align 1, !dbg !1483
  %36 = load ptr, ptr %address16, align 8, !dbg !1483
  %address23 = getelementptr inbounds %struct.acpi_resource_address16, ptr %36, i32 0, i32 6, !dbg !1483
  %address_length = getelementptr inbounds %struct.acpi_address16_attribute, ptr %address23, i32 0, i32 4, !dbg !1483
  %37 = load i16, ptr %address_length, align 1, !dbg !1483
  %conv24 = zext i16 %37 to i64, !dbg !1483
  %38 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %address25 = getelementptr inbounds %struct.acpi_resource_address64, ptr %38, i32 0, i32 6, !dbg !1483
  %address_length26 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address25, i32 0, i32 4, !dbg !1483
  store i64 %conv24, ptr %address_length26, align 1, !dbg !1483
  %39 = load ptr, ptr %out.addr, align 8, !dbg !1483
  %resource_source = getelementptr inbounds %struct.acpi_resource_address64, ptr %39, i32 0, i32 7, !dbg !1483
  %40 = load ptr, ptr %address16, align 8, !dbg !1483
  %resource_source27 = getelementptr inbounds %struct.acpi_resource_address16, ptr %40, i32 0, i32 7, !dbg !1483
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %resource_source, ptr align 1 %resource_source27, i64 11, i1 false), !dbg !1483
  br label %sw.epilog, !dbg !1484

sw.bb28:                                          ; preds = %if.end
  %41 = load ptr, ptr %resource.addr, align 8, !dbg !1485
  %data29 = getelementptr inbounds %struct.acpi_resource, ptr %41, i32 0, i32 2, !dbg !1485
  %42 = ptrtoint ptr %data29 to i64, !dbg !1485
  %43 = inttoptr i64 %42 to ptr, !dbg !1485
  store ptr %43, ptr %address32, align 8, !dbg !1486
  %44 = load ptr, ptr %address32, align 8, !dbg !1487
  %resource_type30 = getelementptr inbounds %struct.acpi_resource_address32, ptr %44, i32 0, i32 0, !dbg !1487
  %45 = load i8, ptr %resource_type30, align 1, !dbg !1487
  %46 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %resource_type31 = getelementptr inbounds %struct.acpi_resource_address64, ptr %46, i32 0, i32 0, !dbg !1487
  store i8 %45, ptr %resource_type31, align 1, !dbg !1487
  %47 = load ptr, ptr %address32, align 8, !dbg !1487
  %producer_consumer32 = getelementptr inbounds %struct.acpi_resource_address32, ptr %47, i32 0, i32 1, !dbg !1487
  %48 = load i8, ptr %producer_consumer32, align 1, !dbg !1487
  %49 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %producer_consumer33 = getelementptr inbounds %struct.acpi_resource_address64, ptr %49, i32 0, i32 1, !dbg !1487
  store i8 %48, ptr %producer_consumer33, align 1, !dbg !1487
  %50 = load ptr, ptr %address32, align 8, !dbg !1487
  %decode34 = getelementptr inbounds %struct.acpi_resource_address32, ptr %50, i32 0, i32 2, !dbg !1487
  %51 = load i8, ptr %decode34, align 1, !dbg !1487
  %52 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %decode35 = getelementptr inbounds %struct.acpi_resource_address64, ptr %52, i32 0, i32 2, !dbg !1487
  store i8 %51, ptr %decode35, align 1, !dbg !1487
  %53 = load ptr, ptr %address32, align 8, !dbg !1487
  %min_address_fixed36 = getelementptr inbounds %struct.acpi_resource_address32, ptr %53, i32 0, i32 3, !dbg !1487
  %54 = load i8, ptr %min_address_fixed36, align 1, !dbg !1487
  %55 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %min_address_fixed37 = getelementptr inbounds %struct.acpi_resource_address64, ptr %55, i32 0, i32 3, !dbg !1487
  store i8 %54, ptr %min_address_fixed37, align 1, !dbg !1487
  %56 = load ptr, ptr %address32, align 8, !dbg !1487
  %max_address_fixed38 = getelementptr inbounds %struct.acpi_resource_address32, ptr %56, i32 0, i32 4, !dbg !1487
  %57 = load i8, ptr %max_address_fixed38, align 1, !dbg !1487
  %58 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %max_address_fixed39 = getelementptr inbounds %struct.acpi_resource_address64, ptr %58, i32 0, i32 4, !dbg !1487
  store i8 %57, ptr %max_address_fixed39, align 1, !dbg !1487
  %59 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %info40 = getelementptr inbounds %struct.acpi_resource_address64, ptr %59, i32 0, i32 5, !dbg !1487
  %60 = load ptr, ptr %address32, align 8, !dbg !1487
  %info41 = getelementptr inbounds %struct.acpi_resource_address32, ptr %60, i32 0, i32 5, !dbg !1487
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %info40, ptr align 1 %info41, i64 4, i1 false), !dbg !1487
  %61 = load ptr, ptr %address32, align 8, !dbg !1487
  %address42 = getelementptr inbounds %struct.acpi_resource_address32, ptr %61, i32 0, i32 6, !dbg !1487
  %granularity43 = getelementptr inbounds %struct.acpi_address32_attribute, ptr %address42, i32 0, i32 0, !dbg !1487
  %62 = load i32, ptr %granularity43, align 1, !dbg !1487
  %conv44 = zext i32 %62 to i64, !dbg !1487
  %63 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %address45 = getelementptr inbounds %struct.acpi_resource_address64, ptr %63, i32 0, i32 6, !dbg !1487
  %granularity46 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address45, i32 0, i32 0, !dbg !1487
  store i64 %conv44, ptr %granularity46, align 1, !dbg !1487
  %64 = load ptr, ptr %address32, align 8, !dbg !1487
  %address47 = getelementptr inbounds %struct.acpi_resource_address32, ptr %64, i32 0, i32 6, !dbg !1487
  %minimum48 = getelementptr inbounds %struct.acpi_address32_attribute, ptr %address47, i32 0, i32 1, !dbg !1487
  %65 = load i32, ptr %minimum48, align 1, !dbg !1487
  %conv49 = zext i32 %65 to i64, !dbg !1487
  %66 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %address50 = getelementptr inbounds %struct.acpi_resource_address64, ptr %66, i32 0, i32 6, !dbg !1487
  %minimum51 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address50, i32 0, i32 1, !dbg !1487
  store i64 %conv49, ptr %minimum51, align 1, !dbg !1487
  %67 = load ptr, ptr %address32, align 8, !dbg !1487
  %address52 = getelementptr inbounds %struct.acpi_resource_address32, ptr %67, i32 0, i32 6, !dbg !1487
  %maximum53 = getelementptr inbounds %struct.acpi_address32_attribute, ptr %address52, i32 0, i32 2, !dbg !1487
  %68 = load i32, ptr %maximum53, align 1, !dbg !1487
  %conv54 = zext i32 %68 to i64, !dbg !1487
  %69 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %address55 = getelementptr inbounds %struct.acpi_resource_address64, ptr %69, i32 0, i32 6, !dbg !1487
  %maximum56 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address55, i32 0, i32 2, !dbg !1487
  store i64 %conv54, ptr %maximum56, align 1, !dbg !1487
  %70 = load ptr, ptr %address32, align 8, !dbg !1487
  %address57 = getelementptr inbounds %struct.acpi_resource_address32, ptr %70, i32 0, i32 6, !dbg !1487
  %translation_offset58 = getelementptr inbounds %struct.acpi_address32_attribute, ptr %address57, i32 0, i32 3, !dbg !1487
  %71 = load i32, ptr %translation_offset58, align 1, !dbg !1487
  %conv59 = zext i32 %71 to i64, !dbg !1487
  %72 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %address60 = getelementptr inbounds %struct.acpi_resource_address64, ptr %72, i32 0, i32 6, !dbg !1487
  %translation_offset61 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address60, i32 0, i32 3, !dbg !1487
  store i64 %conv59, ptr %translation_offset61, align 1, !dbg !1487
  %73 = load ptr, ptr %address32, align 8, !dbg !1487
  %address62 = getelementptr inbounds %struct.acpi_resource_address32, ptr %73, i32 0, i32 6, !dbg !1487
  %address_length63 = getelementptr inbounds %struct.acpi_address32_attribute, ptr %address62, i32 0, i32 4, !dbg !1487
  %74 = load i32, ptr %address_length63, align 1, !dbg !1487
  %conv64 = zext i32 %74 to i64, !dbg !1487
  %75 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %address65 = getelementptr inbounds %struct.acpi_resource_address64, ptr %75, i32 0, i32 6, !dbg !1487
  %address_length66 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address65, i32 0, i32 4, !dbg !1487
  store i64 %conv64, ptr %address_length66, align 1, !dbg !1487
  %76 = load ptr, ptr %out.addr, align 8, !dbg !1487
  %resource_source67 = getelementptr inbounds %struct.acpi_resource_address64, ptr %76, i32 0, i32 7, !dbg !1487
  %77 = load ptr, ptr %address32, align 8, !dbg !1487
  %resource_source68 = getelementptr inbounds %struct.acpi_resource_address32, ptr %77, i32 0, i32 7, !dbg !1487
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %resource_source67, ptr align 1 %resource_source68, i64 11, i1 false), !dbg !1487
  br label %sw.epilog, !dbg !1488

sw.bb69:                                          ; preds = %if.end
  %78 = load ptr, ptr %out.addr, align 8, !dbg !1489
  %79 = load ptr, ptr %resource.addr, align 8, !dbg !1490
  %data70 = getelementptr inbounds %struct.acpi_resource, ptr %79, i32 0, i32 2, !dbg !1491
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr align 1 %data70, i64 60, i1 false), !dbg !1492
  br label %sw.epilog, !dbg !1493

sw.default:                                       ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !1494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1494

sw.epilog:                                        ; preds = %sw.bb69, %sw.bb28, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !1495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1495

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %address32) #6, !dbg !1496
  call void @llvm.lifetime.end.p0(i64 8, ptr %address16) #6, !dbg !1496
  %80 = load i32, ptr %retval, align 4, !dbg !1496
  ret i32 %80, !dbg !1496
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_vendor_resource(ptr noundef %device_handle, ptr noundef %name, ptr noundef %uuid, ptr noundef %ret_buffer) #0 align 16 !dbg !1497 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %uuid.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %info = alloca %struct.acpi_vendor_walk_info, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_handle, ptr %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_handle.addr, metadata !1506, metadata !DIExpression()), !dbg !1517
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1507, metadata !DIExpression()), !dbg !1518
  store ptr %uuid, ptr %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid.addr, metadata !1508, metadata !DIExpression()), !dbg !1519
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !1509, metadata !DIExpression()), !dbg !1520
  call void @llvm.lifetime.start.p0(i64 24, ptr %info) #6, !dbg !1521
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1510, metadata !DIExpression()), !dbg !1522
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1523
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1516, metadata !DIExpression()), !dbg !1524
  %0 = load ptr, ptr %uuid.addr, align 8, !dbg !1525
  %tobool = icmp ne ptr %0, null, !dbg !1525
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1527

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1528
  %tobool1 = icmp ne ptr %1, null, !dbg !1528
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1529

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1530

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %uuid.addr, align 8, !dbg !1532
  %uuid2 = getelementptr inbounds %struct.acpi_vendor_walk_info, ptr %info, i32 0, i32 0, !dbg !1533
  store ptr %2, ptr %uuid2, align 8, !dbg !1534
  %3 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !1535
  %buffer = getelementptr inbounds %struct.acpi_vendor_walk_info, ptr %info, i32 0, i32 1, !dbg !1536
  store ptr %3, ptr %buffer, align 8, !dbg !1537
  %status3 = getelementptr inbounds %struct.acpi_vendor_walk_info, ptr %info, i32 0, i32 2, !dbg !1538
  store i32 6, ptr %status3, align 8, !dbg !1539
  %4 = load ptr, ptr %device_handle.addr, align 8, !dbg !1540
  %5 = load ptr, ptr %name.addr, align 8, !dbg !1541
  %call = call i32 @acpi_walk_resources(ptr noundef %4, ptr noundef %5, ptr noundef @acpi_rs_match_vendor_resource, ptr noundef %info) #7, !dbg !1542
  store i32 %call, ptr %status, align 4, !dbg !1543
  %6 = load i32, ptr %status, align 4, !dbg !1544
  %tobool4 = icmp ne i32 %6, 0, !dbg !1544
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1546

if.then5:                                         ; preds = %if.end
  %7 = load i32, ptr %status, align 4, !dbg !1547
  store i32 %7, ptr %retval, align 4, !dbg !1549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1549

if.end6:                                          ; preds = %if.end
  %status7 = getelementptr inbounds %struct.acpi_vendor_walk_info, ptr %info, i32 0, i32 2, !dbg !1550
  %8 = load i32, ptr %status7, align 8, !dbg !1550
  store i32 %8, ptr %retval, align 4, !dbg !1551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1551

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1552
  call void @llvm.lifetime.end.p0(i64 24, ptr %info) #6, !dbg !1552
  %9 = load i32, ptr %retval, align 4, !dbg !1552
  ret i32 %9, !dbg !1552
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_walk_resources(ptr noundef %device_handle, ptr noundef %name, ptr noundef %user_function, ptr noundef %context) #0 align 16 !dbg !1553 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %user_function.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_handle, ptr %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_handle.addr, metadata !1562, metadata !DIExpression()), !dbg !1568
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1563, metadata !DIExpression()), !dbg !1569
  store ptr %user_function, ptr %user_function.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_function.addr, metadata !1564, metadata !DIExpression()), !dbg !1570
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1565, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1572
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1566, metadata !DIExpression()), !dbg !1573
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #6, !dbg !1574
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1567, metadata !DIExpression()), !dbg !1575
  %0 = load ptr, ptr %device_handle.addr, align 8, !dbg !1576
  %tobool = icmp ne ptr %0, null, !dbg !1576
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1578

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %user_function.addr, align 8, !dbg !1579
  %tobool1 = icmp ne ptr %1, null, !dbg !1579
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1580

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %name.addr, align 8, !dbg !1581
  %tobool3 = icmp ne ptr %2, null, !dbg !1581
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !1582

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1583
  %4 = ptrtoint ptr %3 to i64, !dbg !1583
  %5 = inttoptr i64 %4 to ptr, !dbg !1583
  %6 = load i32, ptr %5, align 4, !dbg !1583
  %7 = load i32, ptr @.str, align 4, !dbg !1583
  %cmp = icmp eq i32 %6, %7, !dbg !1583
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !1584

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %name.addr, align 8, !dbg !1585
  %9 = ptrtoint ptr %8 to i64, !dbg !1585
  %10 = inttoptr i64 %9 to ptr, !dbg !1585
  %11 = load i32, ptr %10, align 4, !dbg !1585
  %12 = load i32, ptr @.str.1, align 4, !dbg !1585
  %cmp5 = icmp eq i32 %11, %12, !dbg !1585
  br i1 %cmp5, label %if.end, label %land.lhs.true6, !dbg !1586

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %name.addr, align 8, !dbg !1587
  %14 = ptrtoint ptr %13 to i64, !dbg !1587
  %15 = inttoptr i64 %14 to ptr, !dbg !1587
  %16 = load i32, ptr %15, align 4, !dbg !1587
  %17 = load i32, ptr @.str.2, align 4, !dbg !1587
  %cmp7 = icmp eq i32 %16, %17, !dbg !1587
  br i1 %cmp7, label %if.end, label %land.lhs.true8, !dbg !1588

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %18 = load ptr, ptr %name.addr, align 8, !dbg !1589
  %19 = ptrtoint ptr %18 to i64, !dbg !1589
  %20 = inttoptr i64 %19 to ptr, !dbg !1589
  %21 = load i32, ptr %20, align 4, !dbg !1589
  %22 = load i32, ptr @.str.3, align 4, !dbg !1589
  %cmp9 = icmp eq i32 %21, %22, !dbg !1589
  br i1 %cmp9, label %if.end, label %if.then, !dbg !1590

if.then:                                          ; preds = %land.lhs.true8, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1591

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %lor.lhs.false4
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !1593
  store i64 -2, ptr %length, align 8, !dbg !1594
  %23 = load ptr, ptr %device_handle.addr, align 8, !dbg !1595
  %24 = load ptr, ptr %name.addr, align 8, !dbg !1596
  %call = call i32 @acpi_rs_get_method_data(ptr noundef %23, ptr noundef %24, ptr noundef %buffer) #7, !dbg !1597
  store i32 %call, ptr %status, align 4, !dbg !1598
  %25 = load i32, ptr %status, align 4, !dbg !1599
  %tobool10 = icmp ne i32 %25, 0, !dbg !1599
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1601

if.then11:                                        ; preds = %if.end
  %26 = load i32, ptr %status, align 4, !dbg !1602
  store i32 %26, ptr %retval, align 4, !dbg !1602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1602

if.end12:                                         ; preds = %if.end
  %27 = load ptr, ptr %user_function.addr, align 8, !dbg !1604
  %28 = load ptr, ptr %context.addr, align 8, !dbg !1605
  %call13 = call i32 @acpi_walk_resource_buffer(ptr noundef %buffer, ptr noundef %27, ptr noundef %28) #7, !dbg !1606
  store i32 %call13, ptr %status, align 4, !dbg !1607
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !1608
  %29 = load ptr, ptr %pointer, align 8, !dbg !1608
  call void @acpi_os_free(ptr noundef %29) #7, !dbg !1608
  %30 = load i32, ptr %status, align 4, !dbg !1609
  store i32 %30, ptr %retval, align 4, !dbg !1609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1609

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #6, !dbg !1610
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1610
  %31 = load i32, ptr %retval, align 4, !dbg !1610
  ret i32 %31, !dbg !1610
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_rs_match_vendor_resource(ptr noundef %resource, ptr noundef %context) #0 align 16 !dbg !1611 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %vendor = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !1613, metadata !DIExpression()), !dbg !1621
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1614, metadata !DIExpression()), !dbg !1622
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #6, !dbg !1623
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1615, metadata !DIExpression()), !dbg !1624
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1625
  store ptr %0, ptr %info, align 8, !dbg !1624
  call void @llvm.lifetime.start.p0(i64 8, ptr %vendor) #6, !dbg !1626
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !1617, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #6, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1619, metadata !DIExpression()), !dbg !1629
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1630
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1620, metadata !DIExpression()), !dbg !1631
  %1 = load ptr, ptr %resource.addr, align 8, !dbg !1632
  %type = getelementptr inbounds %struct.acpi_resource, ptr %1, i32 0, i32 0, !dbg !1634
  %2 = load i32, ptr %type, align 1, !dbg !1634
  %cmp = icmp ne i32 %2, 6, !dbg !1635
  br i1 %cmp, label %if.then, label %if.end, !dbg !1636

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1637

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %resource.addr, align 8, !dbg !1639
  %data = getelementptr inbounds %struct.acpi_resource, ptr %3, i32 0, i32 2, !dbg !1640
  store ptr %data, ptr %vendor, align 8, !dbg !1641
  %4 = load ptr, ptr %vendor, align 8, !dbg !1642
  %byte_length = getelementptr inbounds %struct.acpi_resource_vendor_typed, ptr %4, i32 0, i32 0, !dbg !1644
  %5 = load i16, ptr %byte_length, align 1, !dbg !1644
  %conv = zext i16 %5 to i32, !dbg !1642
  %cmp1 = icmp slt i32 %conv, 17, !dbg !1645
  br i1 %cmp1, label %if.then12, label %lor.lhs.false, !dbg !1646

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %vendor, align 8, !dbg !1647
  %uuid_subtype = getelementptr inbounds %struct.acpi_resource_vendor_typed, ptr %6, i32 0, i32 1, !dbg !1648
  %7 = load i8, ptr %uuid_subtype, align 1, !dbg !1648
  %conv3 = zext i8 %7 to i32, !dbg !1647
  %8 = load ptr, ptr %info, align 8, !dbg !1649
  %uuid = getelementptr inbounds %struct.acpi_vendor_walk_info, ptr %8, i32 0, i32 0, !dbg !1650
  %9 = load ptr, ptr %uuid, align 8, !dbg !1650
  %subtype = getelementptr inbounds %struct.acpi_vendor_uuid, ptr %9, i32 0, i32 0, !dbg !1651
  %10 = load i8, ptr %subtype, align 1, !dbg !1651
  %conv4 = zext i8 %10 to i32, !dbg !1649
  %cmp5 = icmp ne i32 %conv3, %conv4, !dbg !1652
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !1653

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %vendor, align 8, !dbg !1654
  %uuid8 = getelementptr inbounds %struct.acpi_resource_vendor_typed, ptr %11, i32 0, i32 2, !dbg !1655
  %arraydecay = getelementptr inbounds [16 x i8], ptr %uuid8, i64 0, i64 0, !dbg !1654
  %12 = load ptr, ptr %info, align 8, !dbg !1656
  %uuid9 = getelementptr inbounds %struct.acpi_vendor_walk_info, ptr %12, i32 0, i32 0, !dbg !1657
  %13 = load ptr, ptr %uuid9, align 8, !dbg !1657
  %data10 = getelementptr inbounds %struct.acpi_vendor_uuid, ptr %13, i32 0, i32 1, !dbg !1658
  %arraydecay11 = getelementptr inbounds [16 x i8], ptr %data10, i64 0, i64 0, !dbg !1656
  %call = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef %arraydecay11, i64 noundef 16) #7, !dbg !1659
  %tobool = icmp ne i32 %call, 0, !dbg !1659
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !1660

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !1661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1661

if.end13:                                         ; preds = %lor.lhs.false7
  %14 = load ptr, ptr %info, align 8, !dbg !1663
  %buffer14 = getelementptr inbounds %struct.acpi_vendor_walk_info, ptr %14, i32 0, i32 1, !dbg !1664
  %15 = load ptr, ptr %buffer14, align 8, !dbg !1664
  store ptr %15, ptr %buffer, align 8, !dbg !1665
  %16 = load ptr, ptr %buffer, align 8, !dbg !1666
  %17 = load ptr, ptr %resource.addr, align 8, !dbg !1667
  %length = getelementptr inbounds %struct.acpi_resource, ptr %17, i32 0, i32 1, !dbg !1668
  %18 = load i32, ptr %length, align 1, !dbg !1668
  %conv15 = zext i32 %18 to i64, !dbg !1667
  %call16 = call i32 @acpi_ut_initialize_buffer(ptr noundef %16, i64 noundef %conv15) #7, !dbg !1669
  store i32 %call16, ptr %status, align 4, !dbg !1670
  %19 = load i32, ptr %status, align 4, !dbg !1671
  %tobool17 = icmp ne i32 %19, 0, !dbg !1671
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1673

if.then18:                                        ; preds = %if.end13
  %20 = load i32, ptr %status, align 4, !dbg !1674
  store i32 %20, ptr %retval, align 4, !dbg !1676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1676

if.end19:                                         ; preds = %if.end13
  %21 = load ptr, ptr %buffer, align 8, !dbg !1677
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %21, i32 0, i32 1, !dbg !1678
  %22 = load ptr, ptr %pointer, align 8, !dbg !1678
  %23 = load ptr, ptr %resource.addr, align 8, !dbg !1679
  %24 = load ptr, ptr %resource.addr, align 8, !dbg !1680
  %length20 = getelementptr inbounds %struct.acpi_resource, ptr %24, i32 0, i32 1, !dbg !1681
  %25 = load i32, ptr %length20, align 1, !dbg !1681
  %conv21 = zext i32 %25 to i64, !dbg !1680
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %23, i64 %conv21, i1 false), !dbg !1682
  %26 = load ptr, ptr %resource.addr, align 8, !dbg !1683
  %length22 = getelementptr inbounds %struct.acpi_resource, ptr %26, i32 0, i32 1, !dbg !1684
  %27 = load i32, ptr %length22, align 1, !dbg !1684
  %conv23 = zext i32 %27 to i64, !dbg !1683
  %28 = load ptr, ptr %buffer, align 8, !dbg !1685
  %length24 = getelementptr inbounds %struct.acpi_buffer, ptr %28, i32 0, i32 0, !dbg !1686
  store i64 %conv23, ptr %length24, align 8, !dbg !1687
  %29 = load ptr, ptr %info, align 8, !dbg !1688
  %status25 = getelementptr inbounds %struct.acpi_vendor_walk_info, ptr %29, i32 0, i32 2, !dbg !1689
  store i32 0, ptr %status25, align 8, !dbg !1690
  store i32 16387, ptr %retval, align 4, !dbg !1691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1691

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #6, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 8, ptr %vendor) #6, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #6, !dbg !1692
  %30 = load i32, ptr %retval, align 4, !dbg !1692
  ret i32 %30, !dbg !1692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_walk_resource_buffer(ptr noundef %buffer, ptr noundef %user_function, ptr noundef %context) #0 align 16 !dbg !1693 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %user_function.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %resource = alloca ptr, align 8
  %resource_end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1697, metadata !DIExpression()), !dbg !1703
  store ptr %user_function, ptr %user_function.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_function.addr, metadata !1698, metadata !DIExpression()), !dbg !1704
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1699, metadata !DIExpression()), !dbg !1705
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1700, metadata !DIExpression()), !dbg !1707
  store i32 0, ptr %status, align 4, !dbg !1707
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #6, !dbg !1708
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !1701, metadata !DIExpression()), !dbg !1709
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource_end) #6, !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %resource_end, metadata !1702, metadata !DIExpression()), !dbg !1711
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !1712
  %tobool = icmp ne ptr %0, null, !dbg !1712
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1714

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !1715
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %1, i32 0, i32 1, !dbg !1716
  %2 = load ptr, ptr %pointer, align 8, !dbg !1716
  %tobool1 = icmp ne ptr %2, null, !dbg !1715
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1717

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %user_function.addr, align 8, !dbg !1718
  %tobool3 = icmp ne ptr %3, null, !dbg !1718
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1719

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1720

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !1722
  %pointer4 = getelementptr inbounds %struct.acpi_buffer, ptr %4, i32 0, i32 1, !dbg !1722
  %5 = load ptr, ptr %pointer4, align 8, !dbg !1722
  %6 = ptrtoint ptr %5 to i64, !dbg !1722
  %7 = inttoptr i64 %6 to ptr, !dbg !1722
  store ptr %7, ptr %resource, align 8, !dbg !1723
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !1724
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, ptr %8, i32 0, i32 1, !dbg !1724
  %9 = load ptr, ptr %pointer5, align 8, !dbg !1724
  %10 = ptrtoint ptr %9 to i64, !dbg !1724
  %11 = inttoptr i64 %10 to ptr, !dbg !1724
  %12 = load ptr, ptr %buffer.addr, align 8, !dbg !1724
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %12, i32 0, i32 0, !dbg !1724
  %13 = load i64, ptr %length, align 8, !dbg !1724
  %add.ptr = getelementptr i8, ptr %11, i64 %13, !dbg !1724
  %14 = ptrtoint ptr %add.ptr to i64, !dbg !1724
  %15 = inttoptr i64 %14 to ptr, !dbg !1724
  store ptr %15, ptr %resource_end, align 8, !dbg !1725
  br label %while.cond, !dbg !1726

while.cond:                                       ; preds = %if.end22, %if.end
  %16 = load ptr, ptr %resource, align 8, !dbg !1727
  %17 = load ptr, ptr %resource_end, align 8, !dbg !1728
  %cmp = icmp ult ptr %16, %17, !dbg !1729
  br i1 %cmp, label %while.body, label %while.end, !dbg !1726

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %resource, align 8, !dbg !1730
  %type = getelementptr inbounds %struct.acpi_resource, ptr %18, i32 0, i32 0, !dbg !1733
  %19 = load i32, ptr %type, align 1, !dbg !1733
  %cmp6 = icmp ugt i32 %19, 25, !dbg !1734
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1735

if.then7:                                         ; preds = %while.body
  store i32 12311, ptr %status, align 4, !dbg !1736
  br label %while.end, !dbg !1738

if.end8:                                          ; preds = %while.body
  %20 = load ptr, ptr %resource, align 8, !dbg !1739
  %length9 = getelementptr inbounds %struct.acpi_resource, ptr %20, i32 0, i32 1, !dbg !1741
  %21 = load i32, ptr %length9, align 1, !dbg !1741
  %tobool10 = icmp ne i32 %21, 0, !dbg !1739
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1742

if.then11:                                        ; preds = %if.end8
  store i32 12319, ptr %retval, align 4, !dbg !1743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1743

if.end12:                                         ; preds = %if.end8
  %22 = load ptr, ptr %user_function.addr, align 8, !dbg !1745
  %23 = load ptr, ptr %resource, align 8, !dbg !1746
  %24 = load ptr, ptr %context.addr, align 8, !dbg !1747
  %call = call i32 %22(ptr noundef %23, ptr noundef %24) #7, !dbg !1745
  store i32 %call, ptr %status, align 4, !dbg !1748
  %25 = load i32, ptr %status, align 4, !dbg !1749
  %tobool13 = icmp ne i32 %25, 0, !dbg !1749
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !1751

if.then14:                                        ; preds = %if.end12
  %26 = load i32, ptr %status, align 4, !dbg !1752
  %cmp15 = icmp eq i32 %26, 16387, !dbg !1755
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1756

if.then16:                                        ; preds = %if.then14
  store i32 0, ptr %status, align 4, !dbg !1757
  br label %if.end17, !dbg !1759

if.end17:                                         ; preds = %if.then16, %if.then14
  br label %while.end, !dbg !1760

if.end18:                                         ; preds = %if.end12
  %27 = load ptr, ptr %resource, align 8, !dbg !1761
  %type19 = getelementptr inbounds %struct.acpi_resource, ptr %27, i32 0, i32 0, !dbg !1763
  %28 = load i32, ptr %type19, align 1, !dbg !1763
  %cmp20 = icmp eq i32 %28, 7, !dbg !1764
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !1765

if.then21:                                        ; preds = %if.end18
  br label %while.end, !dbg !1766

if.end22:                                         ; preds = %if.end18
  %29 = load ptr, ptr %resource, align 8, !dbg !1768
  %30 = ptrtoint ptr %29 to i64, !dbg !1768
  %31 = inttoptr i64 %30 to ptr, !dbg !1768
  %32 = load ptr, ptr %resource, align 8, !dbg !1768
  %length23 = getelementptr inbounds %struct.acpi_resource, ptr %32, i32 0, i32 1, !dbg !1768
  %33 = load i32, ptr %length23, align 1, !dbg !1768
  %conv = zext i32 %33 to i64, !dbg !1768
  %add.ptr24 = getelementptr i8, ptr %31, i64 %conv, !dbg !1768
  %34 = ptrtoint ptr %add.ptr24 to i64, !dbg !1768
  %35 = inttoptr i64 %34 to ptr, !dbg !1768
  store ptr %35, ptr %resource, align 8, !dbg !1769
  br label %while.cond, !dbg !1726, !llvm.loop !1770

while.end:                                        ; preds = %if.then21, %if.end17, %if.then7, %while.cond
  %36 = load i32, ptr %status, align 4, !dbg !1774
  store i32 %36, ptr %retval, align 4, !dbg !1774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1774

cleanup:                                          ; preds = %while.end, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource_end) #6, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #6, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1775
  %37 = load i32, ptr %retval, align 4, !dbg !1775
  ret i32 %37, !dbg !1775
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1776 dso_local i32 @acpi_rs_get_method_data(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #5 align 16 !dbg !1781 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1786, metadata !DIExpression()), !dbg !1787
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1788
  call void @kfree(ptr noundef %0) #7, !dbg !1789
  ret void, !dbg !1790
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1791 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1795 dso_local i32 @acpi_ut_validate_buffer(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1799 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1809 dso_local i32 @acpi_ut_initialize_buffer(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1812 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!478, !479, !480, !481, !482, !483, !484, !485}
!llvm.ident = !{!486}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_irq_routing_table174", scope: !2, file: !3, line: 141, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.rsxface.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22rsxface\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/rsxface.ll drivers/acpi/acpica/rsxface.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !450, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rsxface.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aec39620146465dac68733f1471f52e5")
!4 = !{!5, !6, !13, !62, !65, !83, !281, !448, !449}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !15, line: 312, size: 240, elements: !16)
!15 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!16 = !{!17, !21, !22, !23, !24, !25, !43, !54}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !14, file: !15, line: 313, baseType: !18, size: 8)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !14, file: !15, line: 313, baseType: !18, size: 8, offset: 8)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !14, file: !15, line: 313, baseType: !18, size: 8, offset: 16)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !14, file: !15, line: 313, baseType: !18, size: 8, offset: 24)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !14, file: !15, line: 313, baseType: !18, size: 8, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !14, file: !15, line: 313, baseType: !26, size: 32, offset: 40)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !15, line: 255, size: 32, elements: !27)
!27 = !{!28, !35, !42}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !26, file: !15, line: 256, baseType: !29, size: 32)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !15, line: 241, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !29, file: !15, line: 242, baseType: !18, size: 8)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !29, file: !15, line: 243, baseType: !18, size: 8, offset: 8)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !29, file: !15, line: 244, baseType: !18, size: 8, offset: 16)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !29, file: !15, line: 245, baseType: !18, size: 8, offset: 24)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !26, file: !15, line: 257, baseType: !36, size: 32)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !15, line: 248, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !36, file: !15, line: 249, baseType: !18, size: 8)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !36, file: !15, line: 250, baseType: !18, size: 8, offset: 8)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !36, file: !15, line: 251, baseType: !18, size: 8, offset: 16)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !36, file: !15, line: 252, baseType: !18, size: 8, offset: 24)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !26, file: !15, line: 261, baseType: !18, size: 8)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !14, file: !15, line: 313, baseType: !44, size: 80, offset: 72)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !15, line: 285, size: 80, elements: !45)
!45 = !{!46, !50, !51, !52, !53}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !44, file: !15, line: 286, baseType: !47, size: 16)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !44, file: !15, line: 287, baseType: !47, size: 16, offset: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !44, file: !15, line: 288, baseType: !47, size: 16, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !44, file: !15, line: 289, baseType: !47, size: 16, offset: 48)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !44, file: !15, line: 290, baseType: !47, size: 16, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !14, file: !15, line: 314, baseType: !55, size: 88, offset: 152)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !15, line: 269, size: 88, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !55, file: !15, line: 270, baseType: !18, size: 8)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !55, file: !15, line: 271, baseType: !47, size: 16, offset: 8)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !55, file: !15, line: 272, baseType: !60, size: 64, offset: 24)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !63, line: 42, baseType: !64)
!63 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !15, line: 317, size: 320, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !82}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !66, file: !15, line: 318, baseType: !18, size: 8)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !66, file: !15, line: 318, baseType: !18, size: 8, offset: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !66, file: !15, line: 318, baseType: !18, size: 8, offset: 16)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !66, file: !15, line: 318, baseType: !18, size: 8, offset: 24)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !66, file: !15, line: 318, baseType: !18, size: 8, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !66, file: !15, line: 318, baseType: !26, size: 32, offset: 40)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !66, file: !15, line: 318, baseType: !75, size: 160, offset: 72)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !15, line: 293, size: 160, elements: !76)
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !75, file: !15, line: 294, baseType: !8, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !75, file: !15, line: 295, baseType: !8, size: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !75, file: !15, line: 296, baseType: !8, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !75, file: !15, line: 297, baseType: !8, size: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !75, file: !15, line: 298, baseType: !8, size: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !66, file: !15, line: 319, baseType: !55, size: 88, offset: 232)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !15, line: 678, size: 544, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !15, line: 679, baseType: !8, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !84, file: !15, line: 680, baseType: !8, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !84, file: !15, line: 681, baseType: !89, size: 480, offset: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !15, line: 639, size: 480, elements: !90)
!90 = !{!91, !114, !131, !137, !145, !150, !156, !161, !171, !175, !183, !191, !197, !198, !199, !220, !232, !253, !261, !282, !298, !318, !340, !355, !368, !380, !393, !407, !418, !430, !439}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !89, file: !15, line: 640, baseType: !92, size: 56)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !15, line: 138, size: 56, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !92, file: !15, line: 139, baseType: !18, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !92, file: !15, line: 140, baseType: !18, size: 8, offset: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !92, file: !15, line: 141, baseType: !18, size: 8, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !92, file: !15, line: 142, baseType: !18, size: 8, offset: 24)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !92, file: !15, line: 143, baseType: !18, size: 8, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !92, file: !15, line: 144, baseType: !18, size: 8, offset: 40)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !15, line: 145, baseType: !101, size: 8, offset: 48)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !15, line: 145, size: 8, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !101, file: !15, line: 146, baseType: !18, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !15, line: 147, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !15, line: 147, elements: !106)
!106 = !{!107, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !105, file: !15, line: 147, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !15, line: 147, elements: !109)
!109 = !{}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !105, file: !15, line: 147, baseType: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: -1)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !89, file: !15, line: 641, baseType: !115, size: 40)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !15, line: 151, size: 40, elements: !116)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !15, line: 152, baseType: !18, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !115, file: !15, line: 153, baseType: !18, size: 8, offset: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !115, file: !15, line: 154, baseType: !18, size: 8, offset: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !115, file: !15, line: 155, baseType: !18, size: 8, offset: 24)
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !15, line: 156, baseType: !122, size: 8, offset: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !15, line: 156, size: 8, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !122, file: !15, line: 157, baseType: !18, size: 8)
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !15, line: 158, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !15, line: 158, elements: !127)
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !126, file: !15, line: 158, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !126, file: !15, line: 158, elements: !109)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !126, file: !15, line: 158, baseType: !111)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !89, file: !15, line: 642, baseType: !132, size: 24)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !15, line: 162, size: 24, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !132, file: !15, line: 163, baseType: !18, size: 8)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !132, file: !15, line: 164, baseType: !18, size: 8, offset: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !132, file: !15, line: 165, baseType: !18, size: 8, offset: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !89, file: !15, line: 643, baseType: !138, size: 56)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !15, line: 173, size: 56, elements: !139)
!139 = !{!140, !141, !142, !143, !144}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !138, file: !15, line: 174, baseType: !18, size: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !138, file: !15, line: 175, baseType: !18, size: 8, offset: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !138, file: !15, line: 176, baseType: !18, size: 8, offset: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !138, file: !15, line: 177, baseType: !47, size: 16, offset: 24)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !138, file: !15, line: 178, baseType: !47, size: 16, offset: 40)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !89, file: !15, line: 644, baseType: !146, size: 24)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !15, line: 181, size: 24, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !146, file: !15, line: 182, baseType: !47, size: 16)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !146, file: !15, line: 183, baseType: !18, size: 8, offset: 16)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !89, file: !15, line: 645, baseType: !151, size: 40)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !15, line: 186, size: 40, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !151, file: !15, line: 187, baseType: !47, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !151, file: !15, line: 188, baseType: !47, size: 16, offset: 16)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !151, file: !15, line: 189, baseType: !18, size: 8, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !89, file: !15, line: 646, baseType: !157, size: 16)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !15, line: 201, size: 16, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !157, file: !15, line: 202, baseType: !47, size: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !157, file: !15, line: 203, baseType: !111, offset: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !89, file: !15, line: 647, baseType: !162, size: 152)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !15, line: 208, size: 152, elements: !163)
!163 = !{!164, !165, !166, !170}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !162, file: !15, line: 209, baseType: !47, size: 16)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !162, file: !15, line: 210, baseType: !18, size: 8, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !162, file: !15, line: 211, baseType: !167, size: 128, offset: 24)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !162, file: !15, line: 212, baseType: !111, offset: 152)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !89, file: !15, line: 648, baseType: !172, size: 8)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !15, line: 215, size: 8, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !172, file: !15, line: 216, baseType: !18, size: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !89, file: !15, line: 649, baseType: !176, size: 72)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !15, line: 219, size: 72, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !176, file: !15, line: 220, baseType: !18, size: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !176, file: !15, line: 221, baseType: !47, size: 16, offset: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !176, file: !15, line: 222, baseType: !47, size: 16, offset: 24)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !176, file: !15, line: 223, baseType: !47, size: 16, offset: 40)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !176, file: !15, line: 224, baseType: !47, size: 16, offset: 56)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !89, file: !15, line: 650, baseType: !184, size: 136)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !15, line: 227, size: 136, elements: !185)
!185 = !{!186, !187, !188, !189, !190}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !184, file: !15, line: 228, baseType: !18, size: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !184, file: !15, line: 229, baseType: !8, size: 32, offset: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !184, file: !15, line: 230, baseType: !8, size: 32, offset: 40)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !184, file: !15, line: 231, baseType: !8, size: 32, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !184, file: !15, line: 232, baseType: !8, size: 32, offset: 104)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !89, file: !15, line: 651, baseType: !192, size: 72)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !15, line: 235, size: 72, elements: !193)
!193 = !{!194, !195, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !192, file: !15, line: 236, baseType: !18, size: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !192, file: !15, line: 237, baseType: !8, size: 32, offset: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !192, file: !15, line: 238, baseType: !8, size: 32, offset: 40)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !89, file: !15, line: 652, baseType: !14, size: 240)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !89, file: !15, line: 653, baseType: !66, size: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !89, file: !15, line: 654, baseType: !200, size: 480)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !15, line: 322, size: 480, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !219}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !200, file: !15, line: 323, baseType: !18, size: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !200, file: !15, line: 323, baseType: !18, size: 8, offset: 8)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !200, file: !15, line: 323, baseType: !18, size: 8, offset: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !200, file: !15, line: 323, baseType: !18, size: 8, offset: 24)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !200, file: !15, line: 323, baseType: !18, size: 8, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !200, file: !15, line: 323, baseType: !26, size: 32, offset: 40)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !200, file: !15, line: 323, baseType: !209, size: 320, offset: 72)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !15, line: 301, size: 320, elements: !210)
!210 = !{!211, !215, !216, !217, !218}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !209, file: !15, line: 302, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !214)
!214 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !209, file: !15, line: 303, baseType: !212, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !209, file: !15, line: 304, baseType: !212, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !209, file: !15, line: 305, baseType: !212, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !209, file: !15, line: 306, baseType: !212, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !200, file: !15, line: 324, baseType: !55, size: 88, offset: 392)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !89, file: !15, line: 655, baseType: !221, size: 464)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !15, line: 327, size: 464, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !221, file: !15, line: 328, baseType: !18, size: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !221, file: !15, line: 328, baseType: !18, size: 8, offset: 8)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !221, file: !15, line: 328, baseType: !18, size: 8, offset: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !221, file: !15, line: 328, baseType: !18, size: 8, offset: 24)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !221, file: !15, line: 328, baseType: !18, size: 8, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !221, file: !15, line: 328, baseType: !26, size: 32, offset: 40)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !221, file: !15, line: 328, baseType: !18, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !221, file: !15, line: 329, baseType: !209, size: 320, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !221, file: !15, line: 330, baseType: !212, size: 64, offset: 400)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !89, file: !15, line: 656, baseType: !233, size: 168)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !15, line: 333, size: 168, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !233, file: !15, line: 334, baseType: !18, size: 8)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !233, file: !15, line: 335, baseType: !18, size: 8, offset: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !233, file: !15, line: 336, baseType: !18, size: 8, offset: 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !233, file: !15, line: 337, baseType: !18, size: 8, offset: 24)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !233, file: !15, line: 338, baseType: !18, size: 8, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !233, file: !15, line: 339, baseType: !18, size: 8, offset: 40)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !233, file: !15, line: 340, baseType: !55, size: 88, offset: 48)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !15, line: 341, baseType: !243, size: 32, offset: 136)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !15, line: 341, size: 32, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !243, file: !15, line: 342, baseType: !8, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !15, line: 343, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !243, file: !15, line: 343, elements: !248)
!248 = !{!249, !251}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !247, file: !15, line: 343, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !15, line: 343, elements: !109)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !247, file: !15, line: 343, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, elements: !112)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !89, file: !15, line: 657, baseType: !254, size: 96)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !15, line: 347, size: 96, elements: !255)
!255 = !{!256, !257, !258, !259, !260}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !254, file: !15, line: 348, baseType: !18, size: 8)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !254, file: !15, line: 349, baseType: !18, size: 8, offset: 8)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !254, file: !15, line: 350, baseType: !18, size: 8, offset: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !254, file: !15, line: 351, baseType: !18, size: 8, offset: 24)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !254, file: !15, line: 352, baseType: !212, size: 64, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !89, file: !15, line: 658, baseType: !262, size: 352)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !15, line: 355, size: 352, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !280}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !262, file: !15, line: 356, baseType: !18, size: 8)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !262, file: !15, line: 357, baseType: !18, size: 8, offset: 8)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !262, file: !15, line: 358, baseType: !18, size: 8, offset: 16)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !262, file: !15, line: 359, baseType: !18, size: 8, offset: 24)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !262, file: !15, line: 360, baseType: !18, size: 8, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !262, file: !15, line: 361, baseType: !18, size: 8, offset: 40)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !262, file: !15, line: 362, baseType: !18, size: 8, offset: 48)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !262, file: !15, line: 363, baseType: !18, size: 8, offset: 56)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !262, file: !15, line: 364, baseType: !18, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !262, file: !15, line: 365, baseType: !47, size: 16, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !262, file: !15, line: 366, baseType: !47, size: 16, offset: 88)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !262, file: !15, line: 367, baseType: !47, size: 16, offset: 104)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !262, file: !15, line: 368, baseType: !47, size: 16, offset: 120)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !262, file: !15, line: 369, baseType: !55, size: 88, offset: 136)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !262, file: !15, line: 370, baseType: !279, size: 64, offset: 224)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !262, file: !15, line: 371, baseType: !281, size: 64, offset: 288)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !89, file: !15, line: 659, baseType: !283, size: 288)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !15, line: 422, size: 288, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !283, file: !15, line: 423, baseType: !18, size: 8)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !15, line: 423, baseType: !18, size: 8, offset: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !283, file: !15, line: 423, baseType: !18, size: 8, offset: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !283, file: !15, line: 423, baseType: !18, size: 8, offset: 24)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !283, file: !15, line: 423, baseType: !18, size: 8, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !283, file: !15, line: 423, baseType: !18, size: 8, offset: 40)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !283, file: !15, line: 423, baseType: !47, size: 16, offset: 48)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !283, file: !15, line: 423, baseType: !47, size: 16, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !283, file: !15, line: 423, baseType: !55, size: 88, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !283, file: !15, line: 423, baseType: !281, size: 64, offset: 168)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !283, file: !15, line: 423, baseType: !18, size: 8, offset: 232)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !283, file: !15, line: 424, baseType: !47, size: 16, offset: 240)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !283, file: !15, line: 425, baseType: !8, size: 32, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !89, file: !15, line: 660, baseType: !299, size: 320)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !15, line: 433, size: 320, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !299, file: !15, line: 434, baseType: !18, size: 8)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !299, file: !15, line: 434, baseType: !18, size: 8, offset: 8)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !299, file: !15, line: 434, baseType: !18, size: 8, offset: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !299, file: !15, line: 434, baseType: !18, size: 8, offset: 24)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !299, file: !15, line: 434, baseType: !18, size: 8, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !299, file: !15, line: 434, baseType: !18, size: 8, offset: 40)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !299, file: !15, line: 434, baseType: !47, size: 16, offset: 48)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !299, file: !15, line: 434, baseType: !47, size: 16, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !299, file: !15, line: 434, baseType: !55, size: 88, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !299, file: !15, line: 434, baseType: !281, size: 64, offset: 168)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !299, file: !15, line: 434, baseType: !18, size: 8, offset: 232)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !299, file: !15, line: 435, baseType: !18, size: 8, offset: 240)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !299, file: !15, line: 436, baseType: !18, size: 8, offset: 248)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !299, file: !15, line: 437, baseType: !18, size: 8, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !299, file: !15, line: 438, baseType: !18, size: 8, offset: 264)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !299, file: !15, line: 439, baseType: !47, size: 16, offset: 272)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !299, file: !15, line: 440, baseType: !8, size: 32, offset: 288)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !89, file: !15, line: 661, baseType: !319, size: 344)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !15, line: 463, size: 344, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !319, file: !15, line: 464, baseType: !18, size: 8)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !319, file: !15, line: 464, baseType: !18, size: 8, offset: 8)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !319, file: !15, line: 464, baseType: !18, size: 8, offset: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !319, file: !15, line: 464, baseType: !18, size: 8, offset: 24)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !319, file: !15, line: 464, baseType: !18, size: 8, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !319, file: !15, line: 464, baseType: !18, size: 8, offset: 40)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !319, file: !15, line: 464, baseType: !47, size: 16, offset: 48)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !319, file: !15, line: 464, baseType: !47, size: 16, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !319, file: !15, line: 464, baseType: !55, size: 88, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !319, file: !15, line: 464, baseType: !281, size: 64, offset: 168)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !319, file: !15, line: 464, baseType: !18, size: 8, offset: 232)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !319, file: !15, line: 465, baseType: !18, size: 8, offset: 240)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !319, file: !15, line: 466, baseType: !18, size: 8, offset: 248)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !319, file: !15, line: 467, baseType: !18, size: 8, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !319, file: !15, line: 468, baseType: !18, size: 8, offset: 264)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !319, file: !15, line: 469, baseType: !18, size: 8, offset: 272)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !319, file: !15, line: 470, baseType: !47, size: 16, offset: 280)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !319, file: !15, line: 471, baseType: !47, size: 16, offset: 296)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !319, file: !15, line: 472, baseType: !8, size: 32, offset: 312)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !89, file: !15, line: 662, baseType: !341, size: 248)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !15, line: 518, size: 248, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !341, file: !15, line: 519, baseType: !18, size: 8)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !341, file: !15, line: 519, baseType: !18, size: 8, offset: 8)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !341, file: !15, line: 519, baseType: !18, size: 8, offset: 16)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !341, file: !15, line: 519, baseType: !18, size: 8, offset: 24)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !341, file: !15, line: 519, baseType: !18, size: 8, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !341, file: !15, line: 519, baseType: !18, size: 8, offset: 40)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !341, file: !15, line: 519, baseType: !47, size: 16, offset: 48)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !341, file: !15, line: 519, baseType: !47, size: 16, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !341, file: !15, line: 519, baseType: !55, size: 88, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !341, file: !15, line: 519, baseType: !281, size: 64, offset: 168)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !341, file: !15, line: 519, baseType: !18, size: 8, offset: 232)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !341, file: !15, line: 520, baseType: !18, size: 8, offset: 240)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !89, file: !15, line: 663, baseType: !356, size: 232)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !15, line: 407, size: 232, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !356, file: !15, line: 408, baseType: !18, size: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !356, file: !15, line: 408, baseType: !18, size: 8, offset: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !356, file: !15, line: 408, baseType: !18, size: 8, offset: 16)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !356, file: !15, line: 408, baseType: !18, size: 8, offset: 24)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !356, file: !15, line: 408, baseType: !18, size: 8, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !356, file: !15, line: 408, baseType: !18, size: 8, offset: 40)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !356, file: !15, line: 408, baseType: !47, size: 16, offset: 48)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !356, file: !15, line: 408, baseType: !47, size: 16, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !356, file: !15, line: 408, baseType: !55, size: 88, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !356, file: !15, line: 408, baseType: !281, size: 64, offset: 168)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !89, file: !15, line: 664, baseType: !369, size: 288)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !15, line: 523, size: 288, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !369, file: !15, line: 524, baseType: !18, size: 8)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !369, file: !15, line: 525, baseType: !18, size: 8, offset: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !369, file: !15, line: 526, baseType: !18, size: 8, offset: 16)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !369, file: !15, line: 527, baseType: !47, size: 16, offset: 24)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !369, file: !15, line: 528, baseType: !47, size: 16, offset: 40)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !369, file: !15, line: 529, baseType: !47, size: 16, offset: 56)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !369, file: !15, line: 530, baseType: !55, size: 88, offset: 72)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !369, file: !15, line: 531, baseType: !279, size: 64, offset: 160)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !369, file: !15, line: 532, baseType: !281, size: 64, offset: 224)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !89, file: !15, line: 665, baseType: !381, size: 312)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !15, line: 535, size: 312, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !381, file: !15, line: 536, baseType: !18, size: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !381, file: !15, line: 537, baseType: !18, size: 8, offset: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !381, file: !15, line: 538, baseType: !18, size: 8, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !381, file: !15, line: 539, baseType: !18, size: 8, offset: 24)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !381, file: !15, line: 540, baseType: !8, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !381, file: !15, line: 541, baseType: !47, size: 16, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !381, file: !15, line: 542, baseType: !47, size: 16, offset: 80)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !381, file: !15, line: 543, baseType: !55, size: 88, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !381, file: !15, line: 544, baseType: !279, size: 64, offset: 184)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !381, file: !15, line: 545, baseType: !281, size: 64, offset: 248)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !89, file: !15, line: 666, baseType: !394, size: 256)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !15, line: 574, size: 256, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !406}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !394, file: !15, line: 575, baseType: !18, size: 8)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !394, file: !15, line: 576, baseType: !18, size: 8, offset: 8)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !394, file: !15, line: 577, baseType: !47, size: 16, offset: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !394, file: !15, line: 578, baseType: !47, size: 16, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !394, file: !15, line: 579, baseType: !279, size: 64, offset: 48)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !394, file: !15, line: 580, baseType: !402, size: 80, offset: 112)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !15, line: 264, size: 80, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !402, file: !15, line: 265, baseType: !47, size: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !402, file: !15, line: 266, baseType: !60, size: 64, offset: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !394, file: !15, line: 581, baseType: !281, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !89, file: !15, line: 667, baseType: !408, size: 288)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !15, line: 584, size: 288, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !408, file: !15, line: 585, baseType: !18, size: 8)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !408, file: !15, line: 586, baseType: !18, size: 8, offset: 8)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !408, file: !15, line: 587, baseType: !18, size: 8, offset: 16)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !408, file: !15, line: 588, baseType: !47, size: 16, offset: 24)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !408, file: !15, line: 589, baseType: !47, size: 16, offset: 40)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !408, file: !15, line: 590, baseType: !55, size: 88, offset: 56)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !408, file: !15, line: 591, baseType: !402, size: 80, offset: 144)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !408, file: !15, line: 592, baseType: !281, size: 64, offset: 224)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !89, file: !15, line: 668, baseType: !419, size: 312)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !15, line: 595, size: 312, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !419, file: !15, line: 596, baseType: !18, size: 8)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !419, file: !15, line: 597, baseType: !18, size: 8, offset: 8)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !419, file: !15, line: 598, baseType: !18, size: 8, offset: 16)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !419, file: !15, line: 599, baseType: !18, size: 8, offset: 24)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !419, file: !15, line: 600, baseType: !8, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !419, file: !15, line: 601, baseType: !47, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !419, file: !15, line: 602, baseType: !55, size: 88, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !419, file: !15, line: 603, baseType: !402, size: 80, offset: 168)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !419, file: !15, line: 604, baseType: !281, size: 64, offset: 248)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !89, file: !15, line: 669, baseType: !431, size: 160)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !15, line: 548, size: 160, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !431, file: !15, line: 549, baseType: !18, size: 8)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !431, file: !15, line: 550, baseType: !18, size: 8, offset: 8)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !431, file: !15, line: 551, baseType: !18, size: 8, offset: 16)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !431, file: !15, line: 552, baseType: !47, size: 16, offset: 24)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !431, file: !15, line: 553, baseType: !8, size: 32, offset: 40)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !431, file: !15, line: 554, baseType: !55, size: 88, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !89, file: !15, line: 673, baseType: !440, size: 72)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !15, line: 309, size: 72, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !440, file: !15, line: 310, baseType: !18, size: 8)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !440, file: !15, line: 310, baseType: !18, size: 8, offset: 8)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !440, file: !15, line: 310, baseType: !18, size: 8, offset: 16)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !440, file: !15, line: 310, baseType: !18, size: 8, offset: 24)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !440, file: !15, line: 310, baseType: !18, size: 8, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !440, file: !15, line: 310, baseType: !26, size: 32, offset: 40)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !212)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!450 = !{!0, !451, !453, !455, !457, !459, !461, !463, !465, !470, !472, !474, !476}
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_current_resources175", scope: !2, file: !3, line: 186, type: !5, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_possible_resources176", scope: !2, file: !3, line: 228, type: !5, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_set_current_resources177", scope: !2, file: !3, line: 273, type: !5, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_event_resources178", scope: !2, file: !3, line: 313, type: !5, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_resource_to_address64179", scope: !2, file: !3, line: 377, type: !5, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_vendor_resource180", scope: !2, file: !3, line: 428, type: !5, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_walk_resource_buffer181", scope: !2, file: !3, line: 572, type: !5, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 606, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 40, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 5)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !467, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !3, line: 608, type: !467, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !3, line: 609, type: !467, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_walk_resources182", scope: !2, file: !3, line: 628, type: !5, isLocal: true, isDefinition: true)
!478 = !{i32 7, !"Dwarf Version", i32 5}
!479 = !{i32 2, !"Debug Info Version", i32 3}
!480 = !{i32 1, !"wchar_size", i32 2}
!481 = !{i32 8, !"cf-protection-branch", i32 1}
!482 = !{i32 4, !"function_return_thunk_extern", i32 1}
!483 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!484 = !{i32 1, !"Code Model", i32 2}
!485 = !{i32 1, !"override-stack-alignment", i32 8}
!486 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!487 = distinct !DISubprogram(name: "acpi_get_irq_routing_table", scope: !3, file: !3, line: 122, type: !488, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!488 = !DISubroutineType(types: !489)
!489 = !{!6, !490, !491}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !5)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !7, line: 978, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !492, file: !7, line: 979, baseType: !448, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !492, file: !7, line: 980, baseType: !5, size: 64, offset: 64)
!496 = !{!497, !498, !499, !500}
!497 = !DILocalVariable(name: "device_handle", arg: 1, scope: !487, file: !3, line: 122, type: !490)
!498 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !487, file: !3, line: 123, type: !491)
!499 = !DILocalVariable(name: "status", scope: !487, file: !3, line: 125, type: !6)
!500 = !DILocalVariable(name: "node", scope: !487, file: !3, line: 126, type: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !503, line: 133, size: 384, elements: !504)
!503 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!504 = !{!505, !1244, !1245, !1246, !1247, !1253, !1254, !1255, !1256}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !502, file: !503, line: 134, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !508, line: 369, size: 576, elements: !509)
!508 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!509 = !{!510, !518, !531, !541, !554, !568, !577, !893, !910, !926, !939, !1017, !1029, !1043, !1053, !1071, !1093, !1112, !1131, !1150, !1163, !1190, !1207, !1220, !1234, !1243}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !507, file: !508, line: 370, baseType: !511, size: 128)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !508, line: 73, size: 128, elements: !512)
!512 = !{!513, !514, !515, !516, !517}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !511, file: !508, line: 74, baseType: !506, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !508, line: 74, baseType: !18, size: 8, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !508, line: 74, baseType: !18, size: 8, offset: 72)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !511, file: !508, line: 74, baseType: !47, size: 16, offset: 80)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !508, line: 74, baseType: !18, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !507, file: !508, line: 371, baseType: !519, size: 192)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !508, line: 76, size: 192, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !530}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !519, file: !508, line: 77, baseType: !506, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !508, line: 77, baseType: !18, size: 8, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !508, line: 77, baseType: !18, size: 8, offset: 72)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !519, file: !508, line: 77, baseType: !47, size: 16, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !508, line: 77, baseType: !18, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !519, file: !508, line: 77, baseType: !527, size: 24, offset: 104)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 3)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !519, file: !508, line: 78, baseType: !212, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !507, file: !508, line: 372, baseType: !532, size: 256)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !508, line: 93, size: 256, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !532, file: !508, line: 94, baseType: !506, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !532, file: !508, line: 94, baseType: !18, size: 8, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !532, file: !508, line: 94, baseType: !18, size: 8, offset: 72)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !532, file: !508, line: 94, baseType: !47, size: 16, offset: 80)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !508, line: 94, baseType: !18, size: 8, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !532, file: !508, line: 94, baseType: !60, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !532, file: !508, line: 94, baseType: !8, size: 32, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !507, file: !508, line: 373, baseType: !542, size: 384)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !508, line: 97, size: 384, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !542, file: !508, line: 98, baseType: !506, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !542, file: !508, line: 98, baseType: !18, size: 8, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !542, file: !508, line: 98, baseType: !18, size: 8, offset: 72)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !542, file: !508, line: 98, baseType: !47, size: 16, offset: 80)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !508, line: 98, baseType: !18, size: 8, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !542, file: !508, line: 98, baseType: !281, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !542, file: !508, line: 98, baseType: !8, size: 32, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !542, file: !508, line: 99, baseType: !8, size: 32, offset: 224)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !542, file: !508, line: 100, baseType: !281, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !542, file: !508, line: 101, baseType: !501, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !507, file: !508, line: 374, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !508, line: 104, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !565, !566, !567}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !508, line: 105, baseType: !506, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !508, line: 105, baseType: !18, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !508, line: 105, baseType: !18, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !508, line: 105, baseType: !47, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !508, line: 105, baseType: !18, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !555, file: !508, line: 105, baseType: !501, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !555, file: !508, line: 106, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !555, file: !508, line: 107, baseType: !281, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !555, file: !508, line: 108, baseType: !8, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !555, file: !508, line: 109, baseType: !8, size: 32, offset: 352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !507, file: !508, line: 375, baseType: !569, size: 192)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !508, line: 118, size: 192, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !508, line: 119, baseType: !506, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !508, line: 119, baseType: !18, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !508, line: 119, baseType: !18, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !508, line: 119, baseType: !47, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !508, line: 119, baseType: !18, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !569, file: !508, line: 119, baseType: !5, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !507, file: !508, line: 376, baseType: !578, size: 448)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !508, line: 144, size: 448, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !890, !891, !892}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !508, line: 145, baseType: !506, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !508, line: 145, baseType: !18, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !508, line: 145, baseType: !18, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !508, line: 145, baseType: !47, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !508, line: 145, baseType: !18, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !578, file: !508, line: 145, baseType: !18, size: 8, offset: 104)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !578, file: !508, line: 146, baseType: !18, size: 8, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !578, file: !508, line: 147, baseType: !18, size: 8, offset: 120)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !578, file: !508, line: 148, baseType: !506, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !578, file: !508, line: 149, baseType: !506, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !578, file: !508, line: 150, baseType: !281, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !578, file: !508, line: 154, baseType: !592, size: 64, offset: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !578, file: !508, line: 151, size: 64, elements: !593)
!593 = !{!594, !889}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !592, file: !508, line: 152, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !503, line: 248, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!6, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !601, line: 37, size: 9024, elements: !602)
!601 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !835, !836, !837, !838, !839, !843, !845, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !872, !873, !874, !875, !876, !877, !878, !879, !881, !887}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !600, file: !601, line: 38, baseType: !599, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !600, file: !601, line: 39, baseType: !18, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !600, file: !601, line: 40, baseType: !18, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !600, file: !601, line: 41, baseType: !47, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !600, file: !601, line: 42, baseType: !18, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !600, file: !601, line: 43, baseType: !18, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !600, file: !601, line: 44, baseType: !18, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !600, file: !601, line: 45, baseType: !611, size: 16, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !47)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !600, file: !601, line: 46, baseType: !18, size: 8, offset: 144)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !600, file: !601, line: 47, baseType: !18, size: 8, offset: 152)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !600, file: !601, line: 48, baseType: !18, size: 8, offset: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !600, file: !601, line: 49, baseType: !18, size: 8, offset: 168)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !600, file: !601, line: 50, baseType: !18, size: 8, offset: 176)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !600, file: !601, line: 51, baseType: !18, size: 8, offset: 184)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !600, file: !601, line: 52, baseType: !18, size: 8, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !600, file: !601, line: 53, baseType: !18, size: 8, offset: 200)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !600, file: !601, line: 54, baseType: !281, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !600, file: !601, line: 55, baseType: !8, size: 32, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !600, file: !601, line: 56, baseType: !8, size: 32, offset: 352)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !600, file: !601, line: 57, baseType: !8, size: 32, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !600, file: !601, line: 58, baseType: !8, size: 32, offset: 416)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !600, file: !601, line: 60, baseType: !626, size: 640, offset: 448)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !503, line: 909, size: 640, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !717, !718, !833, !834}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !626, file: !503, line: 910, baseType: !281, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !626, file: !503, line: 911, baseType: !281, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !626, file: !503, line: 912, baseType: !281, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !626, file: !503, line: 913, baseType: !281, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !626, file: !503, line: 914, baseType: !281, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !626, file: !503, line: 915, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !503, line: 891, size: 1600, elements: !636)
!636 = !{!637, !657, !673}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !635, file: !503, line: 892, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !503, line: 844, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !656}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !638, file: !503, line: 845, baseType: !634, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !503, line: 845, baseType: !18, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !503, line: 845, baseType: !18, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !638, file: !503, line: 845, baseType: !47, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !638, file: !503, line: 845, baseType: !281, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !503, line: 845, baseType: !634, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !503, line: 845, baseType: !501, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !503, line: 845, baseType: !648, size: 64, offset: 320)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !503, line: 732, size: 64, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !648, file: !503, line: 733, baseType: !212, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !648, file: !503, line: 734, baseType: !8, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !648, file: !503, line: 735, baseType: !60, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !648, file: !503, line: 736, baseType: !281, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !648, file: !503, line: 737, baseType: !60, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !648, file: !503, line: 738, baseType: !634, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !638, file: !503, line: 845, baseType: !18, size: 8, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !635, file: !503, line: 893, baseType: !658, size: 640)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !503, line: 851, size: 640, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !658, file: !503, line: 852, baseType: !634, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !503, line: 852, baseType: !18, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !503, line: 852, baseType: !18, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !658, file: !503, line: 852, baseType: !47, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !658, file: !503, line: 852, baseType: !281, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !658, file: !503, line: 852, baseType: !634, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !503, line: 852, baseType: !501, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !503, line: 852, baseType: !648, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !658, file: !503, line: 852, baseType: !18, size: 8, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !658, file: !503, line: 852, baseType: !60, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !658, file: !503, line: 853, baseType: !281, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !658, file: !503, line: 854, baseType: !8, size: 32, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !503, line: 855, baseType: !8, size: 32, offset: 608)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !635, file: !503, line: 894, baseType: !674, size: 1600)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !503, line: 862, size: 1600, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !674, file: !503, line: 863, baseType: !634, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !503, line: 863, baseType: !18, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !503, line: 863, baseType: !18, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !674, file: !503, line: 863, baseType: !47, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !674, file: !503, line: 863, baseType: !281, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !503, line: 863, baseType: !634, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !503, line: 863, baseType: !501, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !503, line: 863, baseType: !648, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !674, file: !503, line: 863, baseType: !18, size: 8, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !674, file: !503, line: 863, baseType: !634, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !674, file: !503, line: 864, baseType: !634, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !674, file: !503, line: 865, baseType: !60, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !674, file: !503, line: 866, baseType: !18, size: 8, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !674, file: !503, line: 867, baseType: !60, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !674, file: !503, line: 868, baseType: !60, size: 64, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !674, file: !503, line: 869, baseType: !60, size: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !674, file: !503, line: 870, baseType: !693, size: 32, offset: 896)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 4)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !674, file: !503, line: 871, baseType: !8, size: 32, offset: 928)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !674, file: !503, line: 872, baseType: !8, size: 32, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !674, file: !503, line: 873, baseType: !8, size: 32, offset: 992)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !674, file: !503, line: 874, baseType: !8, size: 32, offset: 1024)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !674, file: !503, line: 875, baseType: !8, size: 32, offset: 1056)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !674, file: !503, line: 876, baseType: !8, size: 32, offset: 1088)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !674, file: !503, line: 877, baseType: !8, size: 32, offset: 1120)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !674, file: !503, line: 878, baseType: !8, size: 32, offset: 1152)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !674, file: !503, line: 879, baseType: !8, size: 32, offset: 1184)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !674, file: !503, line: 880, baseType: !8, size: 32, offset: 1216)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !674, file: !503, line: 881, baseType: !8, size: 32, offset: 1248)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !674, file: !503, line: 882, baseType: !8, size: 32, offset: 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !674, file: !503, line: 883, baseType: !8, size: 32, offset: 1312)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !674, file: !503, line: 884, baseType: !47, size: 16, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !674, file: !503, line: 885, baseType: !18, size: 8, offset: 1360)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !674, file: !503, line: 886, baseType: !18, size: 8, offset: 1368)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !674, file: !503, line: 887, baseType: !18, size: 8, offset: 1376)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !674, file: !503, line: 888, baseType: !714, size: 160, offset: 1384)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 20)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !626, file: !503, line: 916, baseType: !501, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !626, file: !503, line: 917, baseType: !719, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !503, line: 679, size: 640, elements: !721)
!721 = !{!722, !730, !743, !752, !761, !774, !788, !800, !812}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !720, file: !503, line: 680, baseType: !723, size: 128)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !503, line: 575, size: 128, elements: !724)
!724 = !{!725, !726, !727, !728, !729}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !503, line: 576, baseType: !5, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !503, line: 576, baseType: !18, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !503, line: 576, baseType: !18, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !723, file: !503, line: 576, baseType: !47, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !723, file: !503, line: 576, baseType: !47, size: 16, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !720, file: !503, line: 681, baseType: !731, size: 384)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !503, line: 604, size: 384, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !503, line: 605, baseType: !5, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !731, file: !503, line: 605, baseType: !18, size: 8, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !503, line: 605, baseType: !18, size: 8, offset: 72)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !731, file: !503, line: 605, baseType: !47, size: 16, offset: 80)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !731, file: !503, line: 605, baseType: !47, size: 16, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !731, file: !503, line: 606, baseType: !47, size: 16, offset: 112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !731, file: !503, line: 607, baseType: !634, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !731, file: !503, line: 608, baseType: !281, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !731, file: !503, line: 609, baseType: !281, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !731, file: !503, line: 610, baseType: !212, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !720, file: !503, line: 682, baseType: !744, size: 192)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !503, line: 582, size: 192, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !503, line: 583, baseType: !5, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !503, line: 583, baseType: !18, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !503, line: 583, baseType: !18, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !744, file: !503, line: 583, baseType: !47, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !744, file: !503, line: 583, baseType: !47, size: 16, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !744, file: !503, line: 584, baseType: !506, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !720, file: !503, line: 683, baseType: !753, size: 192)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !503, line: 616, size: 192, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !503, line: 617, baseType: !5, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !503, line: 617, baseType: !18, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !503, line: 617, baseType: !18, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !753, file: !503, line: 617, baseType: !47, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !753, file: !503, line: 617, baseType: !47, size: 16, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !503, line: 618, baseType: !501, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !720, file: !503, line: 684, baseType: !762, size: 448)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !503, line: 621, size: 448, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !762, file: !503, line: 622, baseType: !5, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !762, file: !503, line: 622, baseType: !18, size: 8, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !503, line: 622, baseType: !18, size: 8, offset: 72)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !762, file: !503, line: 622, baseType: !47, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !762, file: !503, line: 622, baseType: !47, size: 16, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !762, file: !503, line: 623, baseType: !8, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !762, file: !503, line: 624, baseType: !634, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !762, file: !503, line: 625, baseType: !281, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !762, file: !503, line: 626, baseType: !281, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !762, file: !503, line: 627, baseType: !8, size: 32, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !720, file: !503, line: 685, baseType: !775, size: 512)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !503, line: 590, size: 512, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !503, line: 591, baseType: !5, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !503, line: 591, baseType: !18, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !503, line: 591, baseType: !18, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !775, file: !503, line: 591, baseType: !47, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !775, file: !503, line: 591, baseType: !47, size: 16, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !775, file: !503, line: 592, baseType: !8, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !775, file: !503, line: 593, baseType: !506, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !775, file: !503, line: 594, baseType: !506, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !775, file: !503, line: 595, baseType: !599, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !775, file: !503, line: 596, baseType: !5, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !775, file: !503, line: 597, baseType: !8, size: 32, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !720, file: !503, line: 686, baseType: !789, size: 320)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !503, line: 634, size: 320, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796, !797, !798, !799}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !503, line: 635, baseType: !5, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !789, file: !503, line: 635, baseType: !18, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !503, line: 635, baseType: !18, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !789, file: !503, line: 635, baseType: !47, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !789, file: !503, line: 635, baseType: !47, size: 16, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !789, file: !503, line: 636, baseType: !18, size: 8, offset: 112)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !789, file: !503, line: 637, baseType: !599, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !789, file: !503, line: 638, baseType: !506, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !789, file: !503, line: 639, baseType: !212, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !720, file: !503, line: 687, baseType: !801, size: 640)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !503, line: 646, size: 640, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !503, line: 647, baseType: !5, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !801, file: !503, line: 647, baseType: !18, size: 8, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !503, line: 647, baseType: !18, size: 8, offset: 72)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !801, file: !503, line: 647, baseType: !47, size: 16, offset: 80)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !801, file: !503, line: 647, baseType: !47, size: 16, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !801, file: !503, line: 648, baseType: !809, size: 512, offset: 128)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 512, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 8)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !720, file: !503, line: 688, baseType: !813, size: 320)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !503, line: 669, size: 320, elements: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822, !823}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !813, file: !503, line: 670, baseType: !5, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !813, file: !503, line: 670, baseType: !18, size: 8, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !503, line: 670, baseType: !18, size: 8, offset: 72)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !813, file: !503, line: 670, baseType: !47, size: 16, offset: 80)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !813, file: !503, line: 670, baseType: !47, size: 16, offset: 96)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !813, file: !503, line: 671, baseType: !18, size: 8, offset: 112)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !813, file: !503, line: 672, baseType: !501, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !813, file: !503, line: 673, baseType: !506, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !813, file: !503, line: 674, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !503, line: 660, size: 128, elements: !826)
!826 = !{!827, !832}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !825, file: !503, line: 661, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1061, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !490, !8, !5}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !825, file: !503, line: 662, baseType: !5, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !626, file: !503, line: 918, baseType: !634, size: 64, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !626, file: !503, line: 919, baseType: !8, size: 32, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !600, file: !601, line: 61, baseType: !8, size: 32, offset: 1088)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !600, file: !601, line: 62, baseType: !8, size: 32, offset: 1120)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !600, file: !601, line: 63, baseType: !47, size: 16, offset: 1152)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !600, file: !601, line: 64, baseType: !18, size: 8, offset: 1168)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !600, file: !601, line: 66, baseType: !840, size: 2688, offset: 1216)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 2688, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 7)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !600, file: !601, line: 67, baseType: !844, size: 3072, offset: 3904)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 3072, elements: !810)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !600, file: !601, line: 68, baseType: !846, size: 576, offset: 6976)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 576, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 9)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !600, file: !601, line: 69, baseType: !564, size: 64, offset: 7552)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !600, file: !601, line: 71, baseType: !281, size: 64, offset: 7616)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !600, file: !601, line: 72, baseType: !564, size: 64, offset: 7680)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !600, file: !601, line: 73, baseType: !719, size: 64, offset: 7744)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !600, file: !601, line: 74, baseType: !501, size: 64, offset: 7808)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !600, file: !601, line: 75, baseType: !506, size: 64, offset: 7872)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !600, file: !601, line: 76, baseType: !501, size: 64, offset: 7936)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !600, file: !601, line: 77, baseType: !634, size: 64, offset: 8000)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !600, file: !601, line: 78, baseType: !506, size: 64, offset: 8064)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !600, file: !601, line: 79, baseType: !501, size: 64, offset: 8128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !600, file: !601, line: 80, baseType: !60, size: 64, offset: 8192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !600, file: !601, line: 81, baseType: !634, size: 64, offset: 8256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !600, file: !601, line: 82, baseType: !862, size: 64, offset: 8320)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !503, line: 718, size: 128, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !864, file: !503, line: 722, baseType: !8, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !864, file: !503, line: 723, baseType: !8, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !503, line: 724, baseType: !47, size: 16, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !864, file: !503, line: 725, baseType: !18, size: 8, offset: 80)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !864, file: !503, line: 726, baseType: !18, size: 8, offset: 88)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !864, file: !503, line: 727, baseType: !18, size: 8, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !600, file: !601, line: 83, baseType: !634, size: 64, offset: 8384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !600, file: !601, line: 84, baseType: !506, size: 64, offset: 8448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !600, file: !601, line: 85, baseType: !719, size: 64, offset: 8512)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !600, file: !601, line: 86, baseType: !506, size: 64, offset: 8576)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !600, file: !601, line: 87, baseType: !719, size: 64, offset: 8640)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !600, file: !601, line: 88, baseType: !634, size: 64, offset: 8704)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !600, file: !601, line: 89, baseType: !634, size: 64, offset: 8768)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !600, file: !601, line: 90, baseType: !880, size: 64, offset: 8832)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !600, file: !601, line: 91, baseType: !882, size: 64, offset: 8896)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !503, line: 652, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!6, !599, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !600, file: !601, line: 92, baseType: !888, size: 64, offset: 8960)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !503, line: 656, baseType: !596)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !508, line: 153, baseType: !506, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !578, file: !508, line: 156, baseType: !8, size: 32, offset: 384)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !578, file: !508, line: 157, baseType: !611, size: 16, offset: 416)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !578, file: !508, line: 158, baseType: !18, size: 8, offset: 432)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !507, file: !508, line: 377, baseType: !894, size: 576)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !508, line: 122, size: 576, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !894, file: !508, line: 123, baseType: !506, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !894, file: !508, line: 123, baseType: !18, size: 8, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !894, file: !508, line: 123, baseType: !18, size: 8, offset: 72)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !894, file: !508, line: 123, baseType: !47, size: 16, offset: 80)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !508, line: 123, baseType: !18, size: 8, offset: 96)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !894, file: !508, line: 123, baseType: !18, size: 8, offset: 104)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !894, file: !508, line: 124, baseType: !47, size: 16, offset: 112)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !894, file: !508, line: 125, baseType: !5, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !894, file: !508, line: 126, baseType: !212, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !894, file: !508, line: 127, baseType: !880, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !894, file: !508, line: 128, baseType: !506, size: 64, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !894, file: !508, line: 129, baseType: !506, size: 64, offset: 384)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !894, file: !508, line: 130, baseType: !501, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !894, file: !508, line: 131, baseType: !18, size: 8, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !507, file: !508, line: 378, baseType: !911, size: 512)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !508, line: 134, size: 512, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !924, !925}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !911, file: !508, line: 135, baseType: !506, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !911, file: !508, line: 135, baseType: !18, size: 8, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !911, file: !508, line: 135, baseType: !18, size: 8, offset: 72)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !911, file: !508, line: 135, baseType: !47, size: 16, offset: 80)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !911, file: !508, line: 135, baseType: !18, size: 8, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !911, file: !508, line: 135, baseType: !18, size: 8, offset: 104)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !911, file: !508, line: 136, baseType: !501, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !911, file: !508, line: 137, baseType: !506, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !911, file: !508, line: 138, baseType: !506, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !911, file: !508, line: 139, baseType: !923, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !212)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !911, file: !508, line: 140, baseType: !8, size: 32, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !911, file: !508, line: 141, baseType: !5, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !507, file: !508, line: 379, baseType: !927, size: 320)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !508, line: 185, size: 320, elements: !928)
!928 = !{!929, !930, !931, !932, !933, !934, !938}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !927, file: !508, line: 186, baseType: !506, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !927, file: !508, line: 186, baseType: !18, size: 8, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !927, file: !508, line: 186, baseType: !18, size: 8, offset: 72)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !927, file: !508, line: 186, baseType: !47, size: 16, offset: 80)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !508, line: 186, baseType: !18, size: 8, offset: 96)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !927, file: !508, line: 186, baseType: !935, size: 128, offset: 128)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 128, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 2)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !927, file: !508, line: 186, baseType: !506, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !507, file: !508, line: 380, baseType: !940, size: 384)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !508, line: 188, size: 384, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !940, file: !508, line: 189, baseType: !506, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !940, file: !508, line: 189, baseType: !18, size: 8, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !940, file: !508, line: 189, baseType: !18, size: 8, offset: 72)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !940, file: !508, line: 189, baseType: !47, size: 16, offset: 80)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !508, line: 189, baseType: !18, size: 8, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !940, file: !508, line: 190, baseType: !935, size: 128, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !940, file: !508, line: 190, baseType: !506, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !940, file: !508, line: 190, baseType: !950, size: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !503, line: 480, size: 576, elements: !952)
!952 = !{!953, !954, !955, !956, !964, !979, !1011, !1012, !1013, !1014, !1015, !1016}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !951, file: !503, line: 481, baseType: !501, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !951, file: !503, line: 482, baseType: !950, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !503, line: 483, baseType: !950, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !951, file: !503, line: 484, baseType: !957, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !503, line: 497, size: 256, elements: !959)
!959 = !{!960, !961, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !958, file: !503, line: 498, baseType: !957, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !958, file: !503, line: 499, baseType: !957, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !958, file: !503, line: 500, baseType: !950, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !958, file: !503, line: 501, baseType: !8, size: 32, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !951, file: !503, line: 485, baseType: !965, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !503, line: 466, size: 320, elements: !967)
!967 = !{!968, !973, !974, !975, !976, !977, !978}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !966, file: !503, line: 467, baseType: !969, size: 128)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !503, line: 459, size: 128, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !969, file: !503, line: 460, baseType: !18, size: 8)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !969, file: !503, line: 461, baseType: !212, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !966, file: !503, line: 468, baseType: !969, size: 128, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !966, file: !503, line: 469, baseType: !47, size: 16, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !966, file: !503, line: 470, baseType: !18, size: 8, offset: 272)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !966, file: !503, line: 471, baseType: !18, size: 8, offset: 280)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !966, file: !503, line: 472, baseType: !18, size: 8, offset: 288)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !966, file: !503, line: 473, baseType: !18, size: 8, offset: 296)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !951, file: !503, line: 486, baseType: !980, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !503, line: 448, size: 192, elements: !982)
!982 = !{!983, !1006, !1007, !1008, !1009, !1010}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !981, file: !503, line: 449, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !503, line: 438, size: 64, elements: !985)
!985 = !{!986, !987, !1000}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !984, file: !503, line: 439, baseType: !501, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !984, file: !503, line: 440, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !503, line: 419, size: 256, elements: !990)
!990 = !{!991, !996, !997, !998, !999}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !989, file: !503, line: 420, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1058, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!8, !490, !8, !5}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !989, file: !503, line: 421, baseType: !5, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !989, file: !503, line: 422, baseType: !501, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !989, file: !503, line: 423, baseType: !18, size: 8, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !989, file: !503, line: 424, baseType: !18, size: 8, offset: 200)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !984, file: !503, line: 441, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !503, line: 429, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !1002, file: !503, line: 430, baseType: !501, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1002, file: !503, line: 431, baseType: !1001, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !981, file: !503, line: 450, baseType: !965, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !503, line: 451, baseType: !18, size: 8, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !981, file: !503, line: 452, baseType: !18, size: 8, offset: 136)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !981, file: !503, line: 453, baseType: !18, size: 8, offset: 144)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !981, file: !503, line: 454, baseType: !18, size: 8, offset: 152)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !951, file: !503, line: 487, baseType: !212, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !951, file: !503, line: 488, baseType: !8, size: 32, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !951, file: !503, line: 489, baseType: !47, size: 16, offset: 480)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !951, file: !503, line: 490, baseType: !47, size: 16, offset: 496)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !951, file: !503, line: 491, baseType: !18, size: 8, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !951, file: !503, line: 492, baseType: !18, size: 8, offset: 520)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !507, file: !508, line: 381, baseType: !1018, size: 384)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !508, line: 193, size: 384, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1018, file: !508, line: 194, baseType: !506, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1018, file: !508, line: 194, baseType: !18, size: 8, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1018, file: !508, line: 194, baseType: !18, size: 8, offset: 72)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1018, file: !508, line: 194, baseType: !47, size: 16, offset: 80)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !508, line: 194, baseType: !18, size: 8, offset: 96)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1018, file: !508, line: 194, baseType: !935, size: 128, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1018, file: !508, line: 194, baseType: !506, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1018, file: !508, line: 194, baseType: !8, size: 32, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1018, file: !508, line: 195, baseType: !8, size: 32, offset: 352)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !507, file: !508, line: 382, baseType: !1030, size: 384)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !508, line: 198, size: 384, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1030, file: !508, line: 199, baseType: !506, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1030, file: !508, line: 199, baseType: !18, size: 8, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1030, file: !508, line: 199, baseType: !18, size: 8, offset: 72)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1030, file: !508, line: 199, baseType: !47, size: 16, offset: 80)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1030, file: !508, line: 199, baseType: !18, size: 8, offset: 96)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1030, file: !508, line: 201, baseType: !18, size: 8, offset: 104)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1030, file: !508, line: 202, baseType: !18, size: 8, offset: 112)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1030, file: !508, line: 203, baseType: !935, size: 128, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1030, file: !508, line: 203, baseType: !506, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1030, file: !508, line: 203, baseType: !1042, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !212)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !507, file: !508, line: 383, baseType: !1044, size: 320)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !508, line: 206, size: 320, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1044, file: !508, line: 207, baseType: !506, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1044, file: !508, line: 207, baseType: !18, size: 8, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1044, file: !508, line: 207, baseType: !18, size: 8, offset: 72)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1044, file: !508, line: 207, baseType: !47, size: 16, offset: 80)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !508, line: 207, baseType: !18, size: 8, offset: 96)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1044, file: !508, line: 207, baseType: !935, size: 128, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1044, file: !508, line: 207, baseType: !506, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !507, file: !508, line: 384, baseType: !1054, size: 384)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !508, line: 234, size: 384, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1054, file: !508, line: 235, baseType: !506, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1054, file: !508, line: 235, baseType: !18, size: 8, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1054, file: !508, line: 235, baseType: !18, size: 8, offset: 72)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1054, file: !508, line: 235, baseType: !47, size: 16, offset: 80)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !508, line: 235, baseType: !18, size: 8, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1054, file: !508, line: 235, baseType: !18, size: 8, offset: 104)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1054, file: !508, line: 235, baseType: !18, size: 8, offset: 112)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1054, file: !508, line: 235, baseType: !18, size: 8, offset: 120)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1054, file: !508, line: 235, baseType: !501, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1054, file: !508, line: 235, baseType: !8, size: 32, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1054, file: !508, line: 235, baseType: !8, size: 32, offset: 224)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1054, file: !508, line: 235, baseType: !8, size: 32, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1054, file: !508, line: 235, baseType: !18, size: 8, offset: 288)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1054, file: !508, line: 235, baseType: !18, size: 8, offset: 296)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1054, file: !508, line: 235, baseType: !506, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !507, file: !508, line: 385, baseType: !1072, size: 576)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !508, line: 238, size: 576, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1072, file: !508, line: 239, baseType: !506, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1072, file: !508, line: 239, baseType: !18, size: 8, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1072, file: !508, line: 239, baseType: !18, size: 8, offset: 72)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1072, file: !508, line: 239, baseType: !47, size: 16, offset: 80)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !508, line: 239, baseType: !18, size: 8, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1072, file: !508, line: 239, baseType: !18, size: 8, offset: 104)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1072, file: !508, line: 239, baseType: !18, size: 8, offset: 112)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1072, file: !508, line: 239, baseType: !18, size: 8, offset: 120)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1072, file: !508, line: 239, baseType: !501, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1072, file: !508, line: 239, baseType: !8, size: 32, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1072, file: !508, line: 239, baseType: !8, size: 32, offset: 224)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1072, file: !508, line: 239, baseType: !8, size: 32, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1072, file: !508, line: 239, baseType: !18, size: 8, offset: 288)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1072, file: !508, line: 239, baseType: !18, size: 8, offset: 296)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1072, file: !508, line: 239, baseType: !47, size: 16, offset: 304)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1072, file: !508, line: 240, baseType: !506, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1072, file: !508, line: 241, baseType: !281, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1072, file: !508, line: 242, baseType: !47, size: 16, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !1072, file: !508, line: 243, baseType: !281, size: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !507, file: !508, line: 386, baseType: !1094, size: 384)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !508, line: 263, size: 384, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1094, file: !508, line: 264, baseType: !506, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 72)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1094, file: !508, line: 264, baseType: !47, size: 16, offset: 80)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 96)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 104)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 112)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 120)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1094, file: !508, line: 264, baseType: !501, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1094, file: !508, line: 264, baseType: !8, size: 32, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1094, file: !508, line: 264, baseType: !8, size: 32, offset: 224)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1094, file: !508, line: 264, baseType: !8, size: 32, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 288)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 296)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1094, file: !508, line: 264, baseType: !18, size: 8, offset: 304)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1094, file: !508, line: 265, baseType: !506, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !507, file: !508, line: 387, baseType: !1113, size: 448)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !508, line: 246, size: 448, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1113, file: !508, line: 247, baseType: !506, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1113, file: !508, line: 247, baseType: !18, size: 8, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1113, file: !508, line: 247, baseType: !18, size: 8, offset: 72)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1113, file: !508, line: 247, baseType: !47, size: 16, offset: 80)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1113, file: !508, line: 247, baseType: !18, size: 8, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1113, file: !508, line: 247, baseType: !18, size: 8, offset: 104)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1113, file: !508, line: 247, baseType: !18, size: 8, offset: 112)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1113, file: !508, line: 247, baseType: !18, size: 8, offset: 120)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1113, file: !508, line: 247, baseType: !501, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1113, file: !508, line: 247, baseType: !8, size: 32, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1113, file: !508, line: 247, baseType: !8, size: 32, offset: 224)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1113, file: !508, line: 247, baseType: !8, size: 32, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1113, file: !508, line: 247, baseType: !18, size: 8, offset: 288)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1113, file: !508, line: 247, baseType: !18, size: 8, offset: 296)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1113, file: !508, line: 247, baseType: !506, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1113, file: !508, line: 248, baseType: !506, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !507, file: !508, line: 388, baseType: !1132, size: 448)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !508, line: 251, size: 448, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1132, file: !508, line: 252, baseType: !506, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1132, file: !508, line: 252, baseType: !18, size: 8, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1132, file: !508, line: 252, baseType: !18, size: 8, offset: 72)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1132, file: !508, line: 252, baseType: !47, size: 16, offset: 80)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1132, file: !508, line: 252, baseType: !18, size: 8, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1132, file: !508, line: 252, baseType: !18, size: 8, offset: 104)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1132, file: !508, line: 252, baseType: !18, size: 8, offset: 112)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1132, file: !508, line: 252, baseType: !18, size: 8, offset: 120)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1132, file: !508, line: 252, baseType: !501, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1132, file: !508, line: 252, baseType: !8, size: 32, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1132, file: !508, line: 252, baseType: !8, size: 32, offset: 224)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1132, file: !508, line: 252, baseType: !8, size: 32, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1132, file: !508, line: 252, baseType: !18, size: 8, offset: 288)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1132, file: !508, line: 252, baseType: !18, size: 8, offset: 296)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1132, file: !508, line: 257, baseType: !506, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1132, file: !508, line: 258, baseType: !506, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !507, file: !508, line: 389, baseType: !1151, size: 512)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !508, line: 274, size: 512, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1151, file: !508, line: 275, baseType: !506, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1151, file: !508, line: 275, baseType: !18, size: 8, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1151, file: !508, line: 275, baseType: !18, size: 8, offset: 72)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1151, file: !508, line: 275, baseType: !47, size: 16, offset: 80)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1151, file: !508, line: 275, baseType: !18, size: 8, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1151, file: !508, line: 275, baseType: !501, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1151, file: !508, line: 276, baseType: !8, size: 32, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1151, file: !508, line: 277, baseType: !828, size: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1151, file: !508, line: 278, baseType: !5, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1151, file: !508, line: 279, baseType: !935, size: 128, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !507, file: !508, line: 390, baseType: !1164, size: 576)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !508, line: 282, size: 576, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1179, !1180, !1181, !1182, !1188, !1189}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1164, file: !508, line: 283, baseType: !506, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1164, file: !508, line: 283, baseType: !18, size: 8, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1164, file: !508, line: 283, baseType: !18, size: 8, offset: 72)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1164, file: !508, line: 283, baseType: !47, size: 16, offset: 80)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1164, file: !508, line: 283, baseType: !18, size: 8, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1164, file: !508, line: 283, baseType: !18, size: 8, offset: 104)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1164, file: !508, line: 284, baseType: !18, size: 8, offset: 112)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1164, file: !508, line: 285, baseType: !1174, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1093, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!6, !8, !923, !8, !1178, !5, !5}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1164, file: !508, line: 286, baseType: !501, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1164, file: !508, line: 287, baseType: !5, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !1164, file: !508, line: 288, baseType: !5, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1164, file: !508, line: 289, baseType: !1183, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1126, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!6, !490, !8, !5, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1164, file: !508, line: 290, baseType: !506, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !508, line: 291, baseType: !506, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !507, file: !508, line: 391, baseType: !1191, size: 512)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !508, line: 309, size: 512, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1191, file: !508, line: 310, baseType: !506, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1191, file: !508, line: 310, baseType: !18, size: 8, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1191, file: !508, line: 310, baseType: !18, size: 8, offset: 72)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1191, file: !508, line: 310, baseType: !47, size: 16, offset: 80)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !508, line: 310, baseType: !18, size: 8, offset: 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1191, file: !508, line: 310, baseType: !18, size: 8, offset: 104)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1191, file: !508, line: 311, baseType: !18, size: 8, offset: 112)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1191, file: !508, line: 312, baseType: !18, size: 8, offset: 120)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1191, file: !508, line: 313, baseType: !5, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1191, file: !508, line: 314, baseType: !501, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1191, file: !508, line: 315, baseType: !564, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1191, file: !508, line: 316, baseType: !281, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1191, file: !508, line: 317, baseType: !281, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1191, file: !508, line: 318, baseType: !8, size: 32, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !507, file: !508, line: 392, baseType: !1208, size: 448)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !508, line: 342, size: 448, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1208, file: !508, line: 343, baseType: !506, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1208, file: !508, line: 343, baseType: !18, size: 8, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1208, file: !508, line: 343, baseType: !18, size: 8, offset: 72)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1208, file: !508, line: 343, baseType: !47, size: 16, offset: 80)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1208, file: !508, line: 343, baseType: !18, size: 8, offset: 96)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1208, file: !508, line: 343, baseType: !501, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1208, file: !508, line: 344, baseType: !501, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1208, file: !508, line: 345, baseType: !5, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1208, file: !508, line: 346, baseType: !281, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1208, file: !508, line: 347, baseType: !8, size: 32, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !507, file: !508, line: 393, baseType: !1221, size: 256)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !508, line: 352, size: 256, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1233}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1221, file: !508, line: 353, baseType: !506, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1221, file: !508, line: 353, baseType: !18, size: 8, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1221, file: !508, line: 353, baseType: !18, size: 8, offset: 72)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1221, file: !508, line: 353, baseType: !47, size: 16, offset: 80)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !508, line: 353, baseType: !18, size: 8, offset: 96)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1221, file: !508, line: 353, baseType: !1229, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1064, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !490, !5}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1221, file: !508, line: 354, baseType: !5, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !507, file: !508, line: 394, baseType: !1235, size: 192)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !508, line: 359, size: 192, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1235, file: !508, line: 360, baseType: !506, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1235, file: !508, line: 360, baseType: !18, size: 8, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1235, file: !508, line: 360, baseType: !18, size: 8, offset: 72)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1235, file: !508, line: 360, baseType: !47, size: 16, offset: 80)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1235, file: !508, line: 360, baseType: !18, size: 8, offset: 96)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1235, file: !508, line: 360, baseType: !506, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !507, file: !508, line: 401, baseType: !502, size: 384)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !502, file: !503, line: 135, baseType: !18, size: 8, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !503, line: 136, baseType: !18, size: 8, offset: 72)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !503, line: 137, baseType: !47, size: 16, offset: 80)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !502, file: !503, line: 138, baseType: !1248, size: 32, offset: 96)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !1249, line: 328, size: 32, elements: !1250)
!1249 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1248, file: !1249, line: 329, baseType: !8, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1248, file: !1249, line: 330, baseType: !693, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !502, file: !503, line: 139, baseType: !501, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !502, file: !503, line: 140, baseType: !501, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !502, file: !503, line: 141, baseType: !501, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !502, file: !503, line: 142, baseType: !611, size: 16, offset: 320)
!1257 = !DILocation(line: 122, column: 40, scope: !487)
!1258 = !DILocation(line: 123, column: 27, scope: !487)
!1259 = !DILocation(line: 125, column: 2, scope: !487)
!1260 = !DILocation(line: 125, column: 14, scope: !487)
!1261 = !DILocation(line: 126, column: 2, scope: !487)
!1262 = !DILocation(line: 126, column: 30, scope: !487)
!1263 = !DILocation(line: 132, column: 39, scope: !487)
!1264 = !DILocation(line: 132, column: 54, scope: !487)
!1265 = !DILocation(line: 132, column: 11, scope: !487)
!1266 = !DILocation(line: 132, column: 9, scope: !487)
!1267 = !DILocation(line: 133, column: 6, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !487, file: !3, line: 133, column: 6)
!1269 = !DILocation(line: 133, column: 6, scope: !487)
!1270 = !DILocation(line: 134, column: 3, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 133, column: 28)
!1272 = !DILocation(line: 137, column: 39, scope: !487)
!1273 = !DILocation(line: 137, column: 45, scope: !487)
!1274 = !DILocation(line: 137, column: 11, scope: !487)
!1275 = !DILocation(line: 137, column: 9, scope: !487)
!1276 = !DILocation(line: 138, column: 2, scope: !487)
!1277 = !DILocation(line: 139, column: 1, scope: !487)
!1278 = distinct !DISubprogram(name: "acpi_rs_validate_parameters", scope: !3, file: !3, line: 57, type: !1279, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1282)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!6, !490, !491, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!1282 = !{!1283, !1284, !1285, !1286, !1287}
!1283 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1278, file: !3, line: 57, type: !490)
!1284 = !DILocalVariable(name: "buffer", arg: 2, scope: !1278, file: !3, line: 58, type: !491)
!1285 = !DILocalVariable(name: "return_node", arg: 3, scope: !1278, file: !3, line: 59, type: !1281)
!1286 = !DILocalVariable(name: "status", scope: !1278, file: !3, line: 61, type: !6)
!1287 = !DILocalVariable(name: "node", scope: !1278, file: !3, line: 62, type: !501)
!1288 = !DILocation(line: 57, column: 41, scope: !1278)
!1289 = !DILocation(line: 58, column: 28, scope: !1278)
!1290 = !DILocation(line: 59, column: 37, scope: !1278)
!1291 = !DILocation(line: 61, column: 2, scope: !1278)
!1292 = !DILocation(line: 61, column: 14, scope: !1278)
!1293 = !DILocation(line: 62, column: 2, scope: !1278)
!1294 = !DILocation(line: 62, column: 30, scope: !1278)
!1295 = !DILocation(line: 69, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 69, column: 6)
!1297 = !DILocation(line: 69, column: 6, scope: !1278)
!1298 = !DILocation(line: 70, column: 3, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 69, column: 22)
!1300 = !DILocation(line: 73, column: 33, scope: !1278)
!1301 = !DILocation(line: 73, column: 9, scope: !1278)
!1302 = !DILocation(line: 73, column: 7, scope: !1278)
!1303 = !DILocation(line: 74, column: 7, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 74, column: 6)
!1305 = !DILocation(line: 74, column: 6, scope: !1278)
!1306 = !DILocation(line: 75, column: 3, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 74, column: 13)
!1308 = !DILocation(line: 78, column: 6, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 78, column: 6)
!1310 = !DILocation(line: 78, column: 12, scope: !1309)
!1311 = !DILocation(line: 78, column: 17, scope: !1309)
!1312 = !DILocation(line: 78, column: 6, scope: !1278)
!1313 = !DILocation(line: 79, column: 3, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 78, column: 38)
!1315 = !DILocation(line: 89, column: 35, scope: !1278)
!1316 = !DILocation(line: 89, column: 11, scope: !1278)
!1317 = !DILocation(line: 89, column: 9, scope: !1278)
!1318 = !DILocation(line: 90, column: 6, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 90, column: 6)
!1320 = !DILocation(line: 90, column: 6, scope: !1278)
!1321 = !DILocation(line: 91, column: 3, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 90, column: 28)
!1323 = !DILocation(line: 94, column: 17, scope: !1278)
!1324 = !DILocation(line: 94, column: 3, scope: !1278)
!1325 = !DILocation(line: 94, column: 15, scope: !1278)
!1326 = !DILocation(line: 95, column: 2, scope: !1278)
!1327 = !DILocation(line: 96, column: 1, scope: !1278)
!1328 = !DISubprogram(name: "acpi_rs_get_prt_method_data", scope: !1329, file: !1329, line: 170, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1329 = !DIFile(filename: "drivers/acpi/acpica/acresrc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2965293fe7c26b9b589feaadd667de1d")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!6, !501, !491}
!1332 = distinct !DISubprogram(name: "acpi_get_current_resources", scope: !3, file: !3, line: 167, type: !488, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1333)
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1332, file: !3, line: 167, type: !490)
!1335 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1332, file: !3, line: 168, type: !491)
!1336 = !DILocalVariable(name: "status", scope: !1332, file: !3, line: 170, type: !6)
!1337 = !DILocalVariable(name: "node", scope: !1332, file: !3, line: 171, type: !501)
!1338 = !DILocation(line: 167, column: 40, scope: !1332)
!1339 = !DILocation(line: 168, column: 27, scope: !1332)
!1340 = !DILocation(line: 170, column: 2, scope: !1332)
!1341 = !DILocation(line: 170, column: 14, scope: !1332)
!1342 = !DILocation(line: 171, column: 2, scope: !1332)
!1343 = !DILocation(line: 171, column: 30, scope: !1332)
!1344 = !DILocation(line: 177, column: 39, scope: !1332)
!1345 = !DILocation(line: 177, column: 54, scope: !1332)
!1346 = !DILocation(line: 177, column: 11, scope: !1332)
!1347 = !DILocation(line: 177, column: 9, scope: !1332)
!1348 = !DILocation(line: 178, column: 6, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 178, column: 6)
!1350 = !DILocation(line: 178, column: 6, scope: !1332)
!1351 = !DILocation(line: 179, column: 3, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 178, column: 28)
!1353 = !DILocation(line: 182, column: 39, scope: !1332)
!1354 = !DILocation(line: 182, column: 45, scope: !1332)
!1355 = !DILocation(line: 182, column: 11, scope: !1332)
!1356 = !DILocation(line: 182, column: 9, scope: !1332)
!1357 = !DILocation(line: 183, column: 2, scope: !1332)
!1358 = !DILocation(line: 184, column: 1, scope: !1332)
!1359 = !DISubprogram(name: "acpi_rs_get_crs_method_data", scope: !1329, file: !1329, line: 174, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = distinct !DISubprogram(name: "acpi_get_possible_resources", scope: !3, file: !3, line: 209, type: !488, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1361)
!1361 = !{!1362, !1363, !1364, !1365}
!1362 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1360, file: !3, line: 209, type: !490)
!1363 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1360, file: !3, line: 210, type: !491)
!1364 = !DILocalVariable(name: "status", scope: !1360, file: !3, line: 212, type: !6)
!1365 = !DILocalVariable(name: "node", scope: !1360, file: !3, line: 213, type: !501)
!1366 = !DILocation(line: 209, column: 41, scope: !1360)
!1367 = !DILocation(line: 210, column: 28, scope: !1360)
!1368 = !DILocation(line: 212, column: 2, scope: !1360)
!1369 = !DILocation(line: 212, column: 14, scope: !1360)
!1370 = !DILocation(line: 213, column: 2, scope: !1360)
!1371 = !DILocation(line: 213, column: 30, scope: !1360)
!1372 = !DILocation(line: 219, column: 39, scope: !1360)
!1373 = !DILocation(line: 219, column: 54, scope: !1360)
!1374 = !DILocation(line: 219, column: 11, scope: !1360)
!1375 = !DILocation(line: 219, column: 9, scope: !1360)
!1376 = !DILocation(line: 220, column: 6, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 220, column: 6)
!1378 = !DILocation(line: 220, column: 6, scope: !1360)
!1379 = !DILocation(line: 221, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 220, column: 28)
!1381 = !DILocation(line: 224, column: 39, scope: !1360)
!1382 = !DILocation(line: 224, column: 45, scope: !1360)
!1383 = !DILocation(line: 224, column: 11, scope: !1360)
!1384 = !DILocation(line: 224, column: 9, scope: !1360)
!1385 = !DILocation(line: 225, column: 2, scope: !1360)
!1386 = !DILocation(line: 226, column: 1, scope: !1360)
!1387 = !DISubprogram(name: "acpi_rs_get_prs_method_data", scope: !1329, file: !1329, line: 178, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = distinct !DISubprogram(name: "acpi_set_current_resources", scope: !3, file: !3, line: 248, type: !488, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1389)
!1389 = !{!1390, !1391, !1392, !1393}
!1390 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1388, file: !3, line: 248, type: !490)
!1391 = !DILocalVariable(name: "in_buffer", arg: 2, scope: !1388, file: !3, line: 249, type: !491)
!1392 = !DILocalVariable(name: "status", scope: !1388, file: !3, line: 251, type: !6)
!1393 = !DILocalVariable(name: "node", scope: !1388, file: !3, line: 252, type: !501)
!1394 = !DILocation(line: 248, column: 40, scope: !1388)
!1395 = !DILocation(line: 249, column: 27, scope: !1388)
!1396 = !DILocation(line: 251, column: 2, scope: !1388)
!1397 = !DILocation(line: 251, column: 14, scope: !1388)
!1398 = !DILocation(line: 252, column: 2, scope: !1388)
!1399 = !DILocation(line: 252, column: 30, scope: !1388)
!1400 = !DILocation(line: 258, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 258, column: 6)
!1402 = !DILocation(line: 258, column: 19, scope: !1401)
!1403 = !DILocation(line: 258, column: 24, scope: !1401)
!1404 = !DILocation(line: 258, column: 35, scope: !1401)
!1405 = !DILocation(line: 258, column: 44, scope: !1401)
!1406 = !DILocation(line: 258, column: 49, scope: !1401)
!1407 = !DILocation(line: 258, column: 60, scope: !1401)
!1408 = !DILocation(line: 258, column: 6, scope: !1388)
!1409 = !DILocation(line: 259, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 258, column: 69)
!1411 = !DILocation(line: 264, column: 39, scope: !1388)
!1412 = !DILocation(line: 264, column: 54, scope: !1388)
!1413 = !DILocation(line: 264, column: 11, scope: !1388)
!1414 = !DILocation(line: 264, column: 9, scope: !1388)
!1415 = !DILocation(line: 265, column: 6, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 265, column: 6)
!1417 = !DILocation(line: 265, column: 6, scope: !1388)
!1418 = !DILocation(line: 266, column: 3, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 265, column: 28)
!1420 = !DILocation(line: 269, column: 39, scope: !1388)
!1421 = !DILocation(line: 269, column: 45, scope: !1388)
!1422 = !DILocation(line: 269, column: 11, scope: !1388)
!1423 = !DILocation(line: 269, column: 9, scope: !1388)
!1424 = !DILocation(line: 270, column: 2, scope: !1388)
!1425 = !DILocation(line: 271, column: 1, scope: !1388)
!1426 = !DISubprogram(name: "acpi_rs_set_srs_method_data", scope: !1329, file: !1329, line: 186, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1427 = distinct !DISubprogram(name: "acpi_get_event_resources", scope: !3, file: !3, line: 294, type: !488, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1428)
!1428 = !{!1429, !1430, !1431, !1432}
!1429 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1427, file: !3, line: 294, type: !490)
!1430 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1427, file: !3, line: 295, type: !491)
!1431 = !DILocalVariable(name: "status", scope: !1427, file: !3, line: 297, type: !6)
!1432 = !DILocalVariable(name: "node", scope: !1427, file: !3, line: 298, type: !501)
!1433 = !DILocation(line: 294, column: 38, scope: !1427)
!1434 = !DILocation(line: 295, column: 25, scope: !1427)
!1435 = !DILocation(line: 297, column: 2, scope: !1427)
!1436 = !DILocation(line: 297, column: 14, scope: !1427)
!1437 = !DILocation(line: 298, column: 2, scope: !1427)
!1438 = !DILocation(line: 298, column: 30, scope: !1427)
!1439 = !DILocation(line: 304, column: 39, scope: !1427)
!1440 = !DILocation(line: 304, column: 54, scope: !1427)
!1441 = !DILocation(line: 304, column: 11, scope: !1427)
!1442 = !DILocation(line: 304, column: 9, scope: !1427)
!1443 = !DILocation(line: 305, column: 6, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 305, column: 6)
!1445 = !DILocation(line: 305, column: 6, scope: !1427)
!1446 = !DILocation(line: 306, column: 3, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 305, column: 28)
!1448 = !DILocation(line: 309, column: 39, scope: !1427)
!1449 = !DILocation(line: 309, column: 45, scope: !1427)
!1450 = !DILocation(line: 309, column: 11, scope: !1427)
!1451 = !DILocation(line: 309, column: 9, scope: !1427)
!1452 = !DILocation(line: 310, column: 2, scope: !1427)
!1453 = !DILocation(line: 311, column: 1, scope: !1427)
!1454 = !DISubprogram(name: "acpi_rs_get_aei_method_data", scope: !1329, file: !1329, line: 190, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = distinct !DISubprogram(name: "acpi_resource_to_address64", scope: !3, file: !3, line: 332, type: !1456, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!6, !83, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1459 = !{!1460, !1461, !1462, !1463}
!1460 = !DILocalVariable(name: "resource", arg: 1, scope: !1455, file: !3, line: 332, type: !83)
!1461 = !DILocalVariable(name: "out", arg: 2, scope: !1455, file: !3, line: 333, type: !1458)
!1462 = !DILocalVariable(name: "address16", scope: !1455, file: !3, line: 335, type: !13)
!1463 = !DILocalVariable(name: "address32", scope: !1455, file: !3, line: 336, type: !65)
!1464 = !DILocation(line: 332, column: 50, scope: !1455)
!1465 = !DILocation(line: 333, column: 39, scope: !1455)
!1466 = !DILocation(line: 335, column: 2, scope: !1455)
!1467 = !DILocation(line: 335, column: 34, scope: !1455)
!1468 = !DILocation(line: 336, column: 2, scope: !1455)
!1469 = !DILocation(line: 336, column: 34, scope: !1455)
!1470 = !DILocation(line: 338, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 338, column: 6)
!1472 = !DILocation(line: 338, column: 16, scope: !1471)
!1473 = !DILocation(line: 338, column: 20, scope: !1471)
!1474 = !DILocation(line: 338, column: 6, scope: !1455)
!1475 = !DILocation(line: 339, column: 3, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 338, column: 25)
!1477 = !DILocation(line: 344, column: 10, scope: !1455)
!1478 = !DILocation(line: 344, column: 20, scope: !1455)
!1479 = !DILocation(line: 344, column: 2, scope: !1455)
!1480 = !DILocation(line: 348, column: 7, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 344, column: 26)
!1482 = !DILocation(line: 347, column: 13, scope: !1481)
!1483 = !DILocation(line: 350, column: 3, scope: !1481)
!1484 = !DILocation(line: 351, column: 3, scope: !1481)
!1485 = !DILocation(line: 356, column: 7, scope: !1481)
!1486 = !DILocation(line: 355, column: 13, scope: !1481)
!1487 = !DILocation(line: 358, column: 3, scope: !1481)
!1488 = !DILocation(line: 359, column: 3, scope: !1481)
!1489 = !DILocation(line: 365, column: 10, scope: !1481)
!1490 = !DILocation(line: 365, column: 16, scope: !1481)
!1491 = !DILocation(line: 365, column: 26, scope: !1481)
!1492 = !DILocation(line: 365, column: 3, scope: !1481)
!1493 = !DILocation(line: 367, column: 3, scope: !1481)
!1494 = !DILocation(line: 371, column: 3, scope: !1481)
!1495 = !DILocation(line: 374, column: 2, scope: !1455)
!1496 = !DILocation(line: 375, column: 1, scope: !1455)
!1497 = distinct !DISubprogram(name: "acpi_get_vendor_resource", scope: !3, file: !3, line: 398, type: !1498, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!6, !490, !60, !1500, !491}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_vendor_uuid", file: !15, line: 130, size: 136, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !1501, file: !15, line: 131, baseType: !18, size: 8)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1501, file: !15, line: 132, baseType: !167, size: 128, offset: 8)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1516}
!1506 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1497, file: !3, line: 398, type: !490)
!1507 = !DILocalVariable(name: "name", arg: 2, scope: !1497, file: !3, line: 399, type: !60)
!1508 = !DILocalVariable(name: "uuid", arg: 3, scope: !1497, file: !3, line: 400, type: !1500)
!1509 = !DILocalVariable(name: "ret_buffer", arg: 4, scope: !1497, file: !3, line: 401, type: !491)
!1510 = !DILocalVariable(name: "info", scope: !1497, file: !3, line: 403, type: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_vendor_walk_info", file: !1329, line: 144, size: 192, elements: !1512)
!1512 = !{!1513, !1514, !1515}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1511, file: !1329, line: 145, baseType: !1500, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1511, file: !1329, line: 146, baseType: !491, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1511, file: !1329, line: 147, baseType: !6, size: 32, offset: 128)
!1516 = !DILocalVariable(name: "status", scope: !1497, file: !3, line: 404, type: !6)
!1517 = !DILocation(line: 398, column: 38, scope: !1497)
!1518 = !DILocation(line: 399, column: 11, scope: !1497)
!1519 = !DILocation(line: 400, column: 30, scope: !1497)
!1520 = !DILocation(line: 401, column: 25, scope: !1497)
!1521 = !DILocation(line: 403, column: 2, scope: !1497)
!1522 = !DILocation(line: 403, column: 31, scope: !1497)
!1523 = !DILocation(line: 404, column: 2, scope: !1497)
!1524 = !DILocation(line: 404, column: 14, scope: !1497)
!1525 = !DILocation(line: 408, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 408, column: 6)
!1527 = !DILocation(line: 408, column: 12, scope: !1526)
!1528 = !DILocation(line: 408, column: 16, scope: !1526)
!1529 = !DILocation(line: 408, column: 6, scope: !1497)
!1530 = !DILocation(line: 409, column: 3, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 408, column: 28)
!1532 = !DILocation(line: 412, column: 14, scope: !1497)
!1533 = !DILocation(line: 412, column: 7, scope: !1497)
!1534 = !DILocation(line: 412, column: 12, scope: !1497)
!1535 = !DILocation(line: 413, column: 16, scope: !1497)
!1536 = !DILocation(line: 413, column: 7, scope: !1497)
!1537 = !DILocation(line: 413, column: 14, scope: !1497)
!1538 = !DILocation(line: 414, column: 7, scope: !1497)
!1539 = !DILocation(line: 414, column: 14, scope: !1497)
!1540 = !DILocation(line: 419, column: 26, scope: !1497)
!1541 = !DILocation(line: 419, column: 41, scope: !1497)
!1542 = !DILocation(line: 419, column: 6, scope: !1497)
!1543 = !DILocation(line: 418, column: 9, scope: !1497)
!1544 = !DILocation(line: 421, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 421, column: 6)
!1546 = !DILocation(line: 421, column: 6, scope: !1497)
!1547 = !DILocation(line: 422, column: 11, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 421, column: 28)
!1549 = !DILocation(line: 422, column: 3, scope: !1548)
!1550 = !DILocation(line: 425, column: 15, scope: !1497)
!1551 = !DILocation(line: 425, column: 2, scope: !1497)
!1552 = !DILocation(line: 426, column: 1, scope: !1497)
!1553 = distinct !DISubprogram(name: "acpi_walk_resources", scope: !3, file: !3, line: 594, type: !1554, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1561)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!6, !490, !60, !1556, !5}
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_resource_callback", file: !1557, line: 791, baseType: !1558)
!1557 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!6, !83, !5}
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567}
!1562 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1553, file: !3, line: 594, type: !490)
!1563 = !DILocalVariable(name: "name", arg: 2, scope: !1553, file: !3, line: 595, type: !60)
!1564 = !DILocalVariable(name: "user_function", arg: 3, scope: !1553, file: !3, line: 596, type: !1556)
!1565 = !DILocalVariable(name: "context", arg: 4, scope: !1553, file: !3, line: 596, type: !5)
!1566 = !DILocalVariable(name: "status", scope: !1553, file: !3, line: 598, type: !6)
!1567 = !DILocalVariable(name: "buffer", scope: !1553, file: !3, line: 599, type: !492)
!1568 = !DILocation(line: 594, column: 33, scope: !1553)
!1569 = !DILocation(line: 595, column: 13, scope: !1553)
!1570 = !DILocation(line: 596, column: 35, scope: !1553)
!1571 = !DILocation(line: 596, column: 56, scope: !1553)
!1572 = !DILocation(line: 598, column: 2, scope: !1553)
!1573 = !DILocation(line: 598, column: 14, scope: !1553)
!1574 = !DILocation(line: 599, column: 2, scope: !1553)
!1575 = !DILocation(line: 599, column: 21, scope: !1553)
!1576 = !DILocation(line: 605, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 605, column: 6)
!1578 = !DILocation(line: 605, column: 21, scope: !1577)
!1579 = !DILocation(line: 605, column: 25, scope: !1577)
!1580 = !DILocation(line: 605, column: 39, scope: !1577)
!1581 = !DILocation(line: 605, column: 43, scope: !1577)
!1582 = !DILocation(line: 605, column: 48, scope: !1577)
!1583 = !DILocation(line: 606, column: 8, scope: !1577)
!1584 = !DILocation(line: 606, column: 53, scope: !1577)
!1585 = !DILocation(line: 607, column: 8, scope: !1577)
!1586 = !DILocation(line: 607, column: 53, scope: !1577)
!1587 = !DILocation(line: 608, column: 8, scope: !1577)
!1588 = !DILocation(line: 608, column: 53, scope: !1577)
!1589 = !DILocation(line: 609, column: 8, scope: !1577)
!1590 = !DILocation(line: 605, column: 6, scope: !1553)
!1591 = !DILocation(line: 610, column: 3, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 609, column: 55)
!1593 = !DILocation(line: 615, column: 9, scope: !1553)
!1594 = !DILocation(line: 615, column: 16, scope: !1553)
!1595 = !DILocation(line: 616, column: 35, scope: !1553)
!1596 = !DILocation(line: 616, column: 50, scope: !1553)
!1597 = !DILocation(line: 616, column: 11, scope: !1553)
!1598 = !DILocation(line: 616, column: 9, scope: !1553)
!1599 = !DILocation(line: 617, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 617, column: 6)
!1601 = !DILocation(line: 617, column: 6, scope: !1553)
!1602 = !DILocation(line: 618, column: 3, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 617, column: 28)
!1604 = !DILocation(line: 623, column: 46, scope: !1553)
!1605 = !DILocation(line: 623, column: 61, scope: !1553)
!1606 = !DILocation(line: 623, column: 11, scope: !1553)
!1607 = !DILocation(line: 623, column: 9, scope: !1553)
!1608 = !DILocation(line: 624, column: 2, scope: !1553)
!1609 = !DILocation(line: 625, column: 2, scope: !1553)
!1610 = !DILocation(line: 626, column: 1, scope: !1553)
!1611 = distinct !DISubprogram(name: "acpi_rs_match_vendor_resource", scope: !3, file: !3, line: 442, type: !1559, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1612)
!1612 = !{!1613, !1614, !1615, !1617, !1619, !1620}
!1613 = !DILocalVariable(name: "resource", arg: 1, scope: !1611, file: !3, line: 442, type: !83)
!1614 = !DILocalVariable(name: "context", arg: 2, scope: !1611, file: !3, line: 442, type: !5)
!1615 = !DILocalVariable(name: "info", scope: !1611, file: !3, line: 444, type: !1616)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1617 = !DILocalVariable(name: "vendor", scope: !1611, file: !3, line: 445, type: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1619 = !DILocalVariable(name: "buffer", scope: !1611, file: !3, line: 446, type: !491)
!1620 = !DILocalVariable(name: "status", scope: !1611, file: !3, line: 447, type: !6)
!1621 = !DILocation(line: 442, column: 53, scope: !1611)
!1622 = !DILocation(line: 442, column: 69, scope: !1611)
!1623 = !DILocation(line: 444, column: 2, scope: !1611)
!1624 = !DILocation(line: 444, column: 32, scope: !1611)
!1625 = !DILocation(line: 444, column: 39, scope: !1611)
!1626 = !DILocation(line: 445, column: 2, scope: !1611)
!1627 = !DILocation(line: 445, column: 37, scope: !1611)
!1628 = !DILocation(line: 446, column: 2, scope: !1611)
!1629 = !DILocation(line: 446, column: 22, scope: !1611)
!1630 = !DILocation(line: 447, column: 2, scope: !1611)
!1631 = !DILocation(line: 447, column: 14, scope: !1611)
!1632 = !DILocation(line: 451, column: 6, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 451, column: 6)
!1634 = !DILocation(line: 451, column: 16, scope: !1633)
!1635 = !DILocation(line: 451, column: 21, scope: !1633)
!1636 = !DILocation(line: 451, column: 6, scope: !1611)
!1637 = !DILocation(line: 452, column: 3, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 451, column: 51)
!1639 = !DILocation(line: 455, column: 12, scope: !1611)
!1640 = !DILocation(line: 455, column: 22, scope: !1611)
!1641 = !DILocation(line: 455, column: 9, scope: !1611)
!1642 = !DILocation(line: 464, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 464, column: 6)
!1644 = !DILocation(line: 464, column: 15, scope: !1643)
!1645 = !DILocation(line: 464, column: 27, scope: !1643)
!1646 = !DILocation(line: 464, column: 53, scope: !1643)
!1647 = !DILocation(line: 465, column: 7, scope: !1643)
!1648 = !DILocation(line: 465, column: 15, scope: !1643)
!1649 = !DILocation(line: 465, column: 31, scope: !1643)
!1650 = !DILocation(line: 465, column: 37, scope: !1643)
!1651 = !DILocation(line: 465, column: 43, scope: !1643)
!1652 = !DILocation(line: 465, column: 28, scope: !1643)
!1653 = !DILocation(line: 465, column: 52, scope: !1643)
!1654 = !DILocation(line: 466, column: 14, scope: !1643)
!1655 = !DILocation(line: 466, column: 22, scope: !1643)
!1656 = !DILocation(line: 466, column: 28, scope: !1643)
!1657 = !DILocation(line: 466, column: 34, scope: !1643)
!1658 = !DILocation(line: 466, column: 40, scope: !1643)
!1659 = !DILocation(line: 466, column: 7, scope: !1643)
!1660 = !DILocation(line: 464, column: 6, scope: !1611)
!1661 = !DILocation(line: 467, column: 3, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 466, column: 66)
!1663 = !DILocation(line: 472, column: 11, scope: !1611)
!1664 = !DILocation(line: 472, column: 17, scope: !1611)
!1665 = !DILocation(line: 472, column: 9, scope: !1611)
!1666 = !DILocation(line: 473, column: 37, scope: !1611)
!1667 = !DILocation(line: 473, column: 45, scope: !1611)
!1668 = !DILocation(line: 473, column: 55, scope: !1611)
!1669 = !DILocation(line: 473, column: 11, scope: !1611)
!1670 = !DILocation(line: 473, column: 9, scope: !1611)
!1671 = !DILocation(line: 474, column: 6, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 474, column: 6)
!1673 = !DILocation(line: 474, column: 6, scope: !1611)
!1674 = !DILocation(line: 475, column: 11, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 474, column: 28)
!1676 = !DILocation(line: 475, column: 3, scope: !1675)
!1677 = !DILocation(line: 480, column: 9, scope: !1611)
!1678 = !DILocation(line: 480, column: 17, scope: !1611)
!1679 = !DILocation(line: 480, column: 26, scope: !1611)
!1680 = !DILocation(line: 480, column: 36, scope: !1611)
!1681 = !DILocation(line: 480, column: 46, scope: !1611)
!1682 = !DILocation(line: 480, column: 2, scope: !1611)
!1683 = !DILocation(line: 481, column: 19, scope: !1611)
!1684 = !DILocation(line: 481, column: 29, scope: !1611)
!1685 = !DILocation(line: 481, column: 2, scope: !1611)
!1686 = !DILocation(line: 481, column: 10, scope: !1611)
!1687 = !DILocation(line: 481, column: 17, scope: !1611)
!1688 = !DILocation(line: 485, column: 2, scope: !1611)
!1689 = !DILocation(line: 485, column: 8, scope: !1611)
!1690 = !DILocation(line: 485, column: 15, scope: !1611)
!1691 = !DILocation(line: 486, column: 2, scope: !1611)
!1692 = !DILocation(line: 487, column: 1, scope: !1611)
!1693 = distinct !DISubprogram(name: "acpi_walk_resource_buffer", scope: !3, file: !3, line: 506, type: !1694, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!6, !491, !1556, !5}
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702}
!1697 = !DILocalVariable(name: "buffer", arg: 1, scope: !1693, file: !3, line: 506, type: !491)
!1698 = !DILocalVariable(name: "user_function", arg: 2, scope: !1693, file: !3, line: 507, type: !1556)
!1699 = !DILocalVariable(name: "context", arg: 3, scope: !1693, file: !3, line: 508, type: !5)
!1700 = !DILocalVariable(name: "status", scope: !1693, file: !3, line: 510, type: !6)
!1701 = !DILocalVariable(name: "resource", scope: !1693, file: !3, line: 511, type: !83)
!1702 = !DILocalVariable(name: "resource_end", scope: !1693, file: !3, line: 512, type: !83)
!1703 = !DILocation(line: 506, column: 47, scope: !1693)
!1704 = !DILocation(line: 507, column: 34, scope: !1693)
!1705 = !DILocation(line: 508, column: 12, scope: !1693)
!1706 = !DILocation(line: 510, column: 2, scope: !1693)
!1707 = !DILocation(line: 510, column: 14, scope: !1693)
!1708 = !DILocation(line: 511, column: 2, scope: !1693)
!1709 = !DILocation(line: 511, column: 24, scope: !1693)
!1710 = !DILocation(line: 512, column: 2, scope: !1693)
!1711 = !DILocation(line: 512, column: 24, scope: !1693)
!1712 = !DILocation(line: 518, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 518, column: 6)
!1714 = !DILocation(line: 518, column: 14, scope: !1713)
!1715 = !DILocation(line: 518, column: 18, scope: !1713)
!1716 = !DILocation(line: 518, column: 26, scope: !1713)
!1717 = !DILocation(line: 518, column: 34, scope: !1713)
!1718 = !DILocation(line: 518, column: 38, scope: !1713)
!1719 = !DILocation(line: 518, column: 6, scope: !1693)
!1720 = !DILocation(line: 519, column: 3, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 518, column: 53)
!1722 = !DILocation(line: 524, column: 13, scope: !1693)
!1723 = !DILocation(line: 524, column: 11, scope: !1693)
!1724 = !DILocation(line: 526, column: 6, scope: !1693)
!1725 = !DILocation(line: 525, column: 15, scope: !1693)
!1726 = !DILocation(line: 530, column: 2, scope: !1693)
!1727 = !DILocation(line: 530, column: 9, scope: !1693)
!1728 = !DILocation(line: 530, column: 20, scope: !1693)
!1729 = !DILocation(line: 530, column: 18, scope: !1693)
!1730 = !DILocation(line: 534, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 534, column: 7)
!1732 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 530, column: 34)
!1733 = !DILocation(line: 534, column: 17, scope: !1731)
!1734 = !DILocation(line: 534, column: 22, scope: !1731)
!1735 = !DILocation(line: 534, column: 7, scope: !1732)
!1736 = !DILocation(line: 535, column: 11, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 534, column: 48)
!1738 = !DILocation(line: 536, column: 4, scope: !1737)
!1739 = !DILocation(line: 541, column: 8, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 541, column: 7)
!1741 = !DILocation(line: 541, column: 18, scope: !1740)
!1742 = !DILocation(line: 541, column: 7, scope: !1732)
!1743 = !DILocation(line: 542, column: 4, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 541, column: 26)
!1745 = !DILocation(line: 547, column: 12, scope: !1732)
!1746 = !DILocation(line: 547, column: 26, scope: !1732)
!1747 = !DILocation(line: 547, column: 36, scope: !1732)
!1748 = !DILocation(line: 547, column: 10, scope: !1732)
!1749 = !DILocation(line: 548, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 548, column: 7)
!1751 = !DILocation(line: 548, column: 7, scope: !1732)
!1752 = !DILocation(line: 549, column: 8, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 549, column: 8)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 548, column: 29)
!1755 = !DILocation(line: 549, column: 15, scope: !1753)
!1756 = !DILocation(line: 549, column: 8, scope: !1754)
!1757 = !DILocation(line: 553, column: 12, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 549, column: 37)
!1759 = !DILocation(line: 554, column: 4, scope: !1758)
!1760 = !DILocation(line: 555, column: 4, scope: !1754)
!1761 = !DILocation(line: 560, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 560, column: 7)
!1763 = !DILocation(line: 560, column: 17, scope: !1762)
!1764 = !DILocation(line: 560, column: 22, scope: !1762)
!1765 = !DILocation(line: 560, column: 7, scope: !1732)
!1766 = !DILocation(line: 561, column: 4, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 560, column: 53)
!1768 = !DILocation(line: 566, column: 14, scope: !1732)
!1769 = !DILocation(line: 566, column: 12, scope: !1732)
!1770 = distinct !{!1770, !1726, !1771, !1772, !1773}
!1771 = !DILocation(line: 567, column: 2, scope: !1693)
!1772 = !{!"llvm.loop.mustprogress"}
!1773 = !{!"llvm.loop.unroll.disable"}
!1774 = !DILocation(line: 569, column: 2, scope: !1693)
!1775 = !DILocation(line: 570, column: 1, scope: !1693)
!1776 = !DISubprogram(name: "acpi_rs_get_method_data", scope: !1329, file: !1329, line: 182, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!6, !490, !1779, !491}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!1781 = distinct !DISubprogram(name: "acpi_os_free", scope: !1782, file: !1782, line: 60, type: !1783, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1785)
!1782 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !5}
!1785 = !{!1786}
!1786 = !DILocalVariable(name: "memory", arg: 1, scope: !1781, file: !1782, line: 60, type: !5)
!1787 = !DILocation(line: 60, column: 39, scope: !1781)
!1788 = !DILocation(line: 62, column: 8, scope: !1781)
!1789 = !DILocation(line: 62, column: 2, scope: !1781)
!1790 = !DILocation(line: 63, column: 1, scope: !1781)
!1791 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !1792, file: !1792, line: 398, type: !1793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1792 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!501, !490}
!1795 = !DISubprogram(name: "acpi_ut_validate_buffer", scope: !1796, file: !1796, line: 657, type: !1797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1796 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!6, !491}
!1799 = !DISubprogram(name: "memcmp", scope: !1800, file: !1800, line: 196, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1800 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!1803, !1804, !1804, !1806}
!1803 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1807, line: 72, baseType: !1808)
!1807 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1807, line: 16, baseType: !64)
!1809 = !DISubprogram(name: "acpi_ut_initialize_buffer", scope: !1796, file: !1796, line: 660, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!6, !491, !448}
!1812 = !DISubprogram(name: "kfree", scope: !1813, file: !1813, line: 227, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1813 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !1804}
