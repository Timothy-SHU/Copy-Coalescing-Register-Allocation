; ModuleID = 'drivers/acpi/acpica/dsmethod.c'
source_filename = "drivers/acpi/acpica/dsmethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_thread_state = type { ptr, i8, i8, i16, i16, i8, ptr, ptr, i64 }
%struct.acpi_object_mutex = type { ptr, i8, i8, i16, i8, i8, i16, ptr, i64, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }

@acpi_gbl_exception_handler = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [9 x i8] c"dsmethod\00", align 1, !dbg !0
@.str = private unnamed_addr constant [46 x i8] c"Method reached maximum reentrancy limit (255)\00", align 1, !dbg !2276
@.str.1 = private unnamed_addr constant [77 x i8] c"Cannot acquire Mutex for method [%4.4s], current SyncLevel is too large (%u)\00", align 1, !dbg !2281
@acpi_method_count = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid zero thread count in method\00", align 1, !dbg !2286
@.str.3 = private unnamed_addr constant [70 x i8] c"Marking method %4.4s as Serialized because of AE_ALREADY_EXISTS error\00", align 1, !dbg !2291
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2296

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_auto_serialize_method(ptr noundef %node, ptr noundef %obj_desc) #0 align 16 !dbg !2312 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %op = alloca ptr, align 8
  %walk_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2316, metadata !DIExpression()), !dbg !2321
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !2317, metadata !DIExpression()), !dbg !2322
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2323
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2318, metadata !DIExpression()), !dbg !2324
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #13, !dbg !2325
  call void @llvm.dbg.declare(metadata ptr %op, metadata !2319, metadata !DIExpression()), !dbg !2326
  store ptr null, ptr %op, align 8, !dbg !2326
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_state) #13, !dbg !2327
  call void @llvm.dbg.declare(metadata ptr %walk_state, metadata !2320, metadata !DIExpression()), !dbg !2328
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2329
  %aml_start = getelementptr inbounds %struct.acpi_object_method, ptr %0, i32 0, i32 10, !dbg !2330
  %1 = load ptr, ptr %aml_start, align 8, !dbg !2330
  %call = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 20, ptr noundef %1) #14, !dbg !2331
  store ptr %call, ptr %op, align 8, !dbg !2332
  %2 = load ptr, ptr %op, align 8, !dbg !2333
  %tobool = icmp ne ptr %2, null, !dbg !2333
  br i1 %tobool, label %if.end, label %if.then, !dbg !2335

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !2336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2336

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %op, align 8, !dbg !2338
  %4 = load ptr, ptr %node.addr, align 8, !dbg !2339
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %4, i32 0, i32 4, !dbg !2340
  %5 = load i32, ptr %name, align 4, !dbg !2341
  call void @acpi_ps_set_name(ptr noundef %3, i32 noundef %5) #14, !dbg !2342
  %6 = load ptr, ptr %node.addr, align 8, !dbg !2343
  %7 = load ptr, ptr %op, align 8, !dbg !2344
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %7, i32 0, i32 6, !dbg !2345
  store ptr %6, ptr %node1, align 8, !dbg !2346
  %8 = load ptr, ptr %node.addr, align 8, !dbg !2347
  %owner_id = getelementptr inbounds %struct.acpi_namespace_node, ptr %8, i32 0, i32 8, !dbg !2348
  %9 = load i16, ptr %owner_id, align 8, !dbg !2348
  %call2 = call ptr @acpi_ds_create_walk_state(i16 noundef zeroext %9, ptr noundef null, ptr noundef null, ptr noundef null) #14, !dbg !2349
  store ptr %call2, ptr %walk_state, align 8, !dbg !2350
  %10 = load ptr, ptr %walk_state, align 8, !dbg !2351
  %tobool3 = icmp ne ptr %10, null, !dbg !2351
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2353

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %op, align 8, !dbg !2354
  call void @acpi_ps_free_op(ptr noundef %11) #14, !dbg !2356
  store i32 4, ptr %retval, align 4, !dbg !2357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2357

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %walk_state, align 8, !dbg !2358
  %13 = load ptr, ptr %op, align 8, !dbg !2359
  %14 = load ptr, ptr %node.addr, align 8, !dbg !2360
  %15 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2361
  %aml_start6 = getelementptr inbounds %struct.acpi_object_method, ptr %15, i32 0, i32 10, !dbg !2362
  %16 = load ptr, ptr %aml_start6, align 8, !dbg !2362
  %17 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2363
  %aml_length = getelementptr inbounds %struct.acpi_object_method, ptr %17, i32 0, i32 12, !dbg !2364
  %18 = load i32, ptr %aml_length, align 8, !dbg !2364
  %call7 = call i32 @acpi_ds_init_aml_walk(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %16, i32 noundef %18, ptr noundef null, i8 noundef zeroext 0) #14, !dbg !2365
  store i32 %call7, ptr %status, align 4, !dbg !2366
  %19 = load i32, ptr %status, align 4, !dbg !2367
  %tobool8 = icmp ne i32 %19, 0, !dbg !2367
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2369

if.then9:                                         ; preds = %if.end5
  %20 = load ptr, ptr %walk_state, align 8, !dbg !2370
  call void @acpi_ds_delete_walk_state(ptr noundef %20) #14, !dbg !2372
  %21 = load ptr, ptr %op, align 8, !dbg !2373
  call void @acpi_ps_free_op(ptr noundef %21) #14, !dbg !2374
  %22 = load i32, ptr %status, align 4, !dbg !2375
  store i32 %22, ptr %retval, align 4, !dbg !2375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2375

if.end10:                                         ; preds = %if.end5
  %23 = load ptr, ptr %walk_state, align 8, !dbg !2376
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 50, !dbg !2377
  store ptr @acpi_ds_detect_named_opcodes, ptr %descending_callback, align 8, !dbg !2378
  %24 = load ptr, ptr %walk_state, align 8, !dbg !2379
  %call11 = call i32 @acpi_ps_parse_aml(ptr noundef %24) #14, !dbg !2380
  store i32 %call11, ptr %status, align 4, !dbg !2381
  %25 = load ptr, ptr %op, align 8, !dbg !2382
  call void @acpi_ps_delete_parse_tree(ptr noundef %25) #14, !dbg !2383
  %26 = load i32, ptr %status, align 4, !dbg !2384
  store i32 %26, ptr %retval, align 4, !dbg !2384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2384

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_state) #13, !dbg !2385
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #13, !dbg !2385
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !2385
  %27 = load i32, ptr %retval, align 4, !dbg !2385
  ret i32 %27, !dbg !2385
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2386 dso_local ptr @acpi_ps_alloc_op(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2390 dso_local void @acpi_ps_set_name(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2393 dso_local ptr @acpi_ds_create_walk_state(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2397 dso_local void @acpi_ps_free_op(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2400 dso_local i32 @acpi_ds_init_aml_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2468 dso_local void @acpi_ds_delete_walk_state(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_detect_named_opcodes(ptr noundef %walk_state, ptr noundef %out_op) #0 align 16 !dbg !2471 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %out_op.addr = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !2473, metadata !DIExpression()), !dbg !2475
  store ptr %out_op, ptr %out_op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_op.addr, metadata !2474, metadata !DIExpression()), !dbg !2476
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !2477
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 41, !dbg !2479
  %1 = load ptr, ptr %op_info, align 8, !dbg !2479
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %1, i32 0, i32 2, !dbg !2480
  %2 = load i16, ptr %flags, align 4, !dbg !2480
  %conv = zext i16 %2 to i32, !dbg !2477
  %and = and i32 %conv, 88, !dbg !2481
  %tobool = icmp ne i32 %and, 0, !dbg !2481
  br i1 %tobool, label %if.end, label %if.then, !dbg !2482

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2483
  br label %return, !dbg !2483

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !2485
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 37, !dbg !2486
  %4 = load ptr, ptr %method_desc, align 8, !dbg !2486
  %sync_level = getelementptr inbounds %struct.acpi_object_method, ptr %4, i32 0, i32 7, !dbg !2487
  store i8 0, ptr %sync_level, align 1, !dbg !2488
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !2489
  %method_desc1 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 37, !dbg !2490
  %6 = load ptr, ptr %method_desc1, align 8, !dbg !2490
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %6, i32 0, i32 5, !dbg !2491
  %7 = load i8, ptr %info_flags, align 1, !dbg !2492
  %conv2 = zext i8 %7 to i32, !dbg !2492
  %or = or i32 %conv2, 20, !dbg !2492
  %conv3 = trunc i32 %or to i8, !dbg !2492
  store i8 %conv3, ptr %info_flags, align 1, !dbg !2492
  store i32 16387, ptr %retval, align 4, !dbg !2493
  br label %return, !dbg !2493

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !2494
  ret i32 %8, !dbg !2494
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2495 dso_local i32 @acpi_ps_parse_aml(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2496 dso_local void @acpi_ps_delete_parse_tree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_method_error(i32 noundef %status, ptr noundef %walk_state) #0 align 16 !dbg !2497 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %aml_offset = alloca i32, align 4
  %name = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2501, metadata !DIExpression()), !dbg !2506
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_offset) #13, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %aml_offset, metadata !2503, metadata !DIExpression()), !dbg !2509
  call void @llvm.lifetime.start.p0(i64 4, ptr %name) #13, !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %name, metadata !2504, metadata !DIExpression()), !dbg !2511
  store i32 0, ptr %name, align 4, !dbg !2511
  %0 = load i32, ptr %status.addr, align 4, !dbg !2512
  %tobool = icmp ne i32 %0, 0, !dbg !2512
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2514

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %status.addr, align 4, !dbg !2515
  %and = and i32 %1, 16384, !dbg !2516
  %tobool1 = icmp ne i32 %and, 0, !dbg !2516
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2517

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %status.addr, align 4, !dbg !2518
  store i32 %2, ptr %retval, align 4, !dbg !2520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2520

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr @acpi_gbl_exception_handler, align 8, !dbg !2521
  %tobool2 = icmp ne ptr %3, null, !dbg !2521
  br i1 %tobool2, label %if.then3, label %if.end14, !dbg !2523

if.then3:                                         ; preds = %if.end
  call void @acpi_ex_exit_interpreter() #14, !dbg !2524
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !2526
  %aml = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 16, !dbg !2526
  %5 = load ptr, ptr %aml, align 8, !dbg !2526
  %6 = ptrtoint ptr %5 to i64, !dbg !2526
  %7 = inttoptr i64 %6 to ptr, !dbg !2526
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !2526
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 21, !dbg !2526
  %aml_start = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 0, !dbg !2526
  %9 = load ptr, ptr %aml_start, align 8, !dbg !2526
  %10 = ptrtoint ptr %9 to i64, !dbg !2526
  %11 = inttoptr i64 %10 to ptr, !dbg !2526
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !2526
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !2526
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2526
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2527
  store i32 %conv, ptr %aml_offset, align 4, !dbg !2528
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !2529
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 38, !dbg !2531
  %13 = load ptr, ptr %method_node, align 8, !dbg !2531
  %tobool4 = icmp ne ptr %13, null, !dbg !2529
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2532

if.then5:                                         ; preds = %if.then3
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !2533
  %method_node6 = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 38, !dbg !2535
  %15 = load ptr, ptr %method_node6, align 8, !dbg !2535
  %name7 = getelementptr inbounds %struct.acpi_namespace_node, ptr %15, i32 0, i32 4, !dbg !2536
  %16 = load i32, ptr %name7, align 4, !dbg !2537
  store i32 %16, ptr %name, align 4, !dbg !2538
  br label %if.end13, !dbg !2539

if.else:                                          ; preds = %if.then3
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !2540
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 33, !dbg !2542
  %18 = load ptr, ptr %deferred_node, align 8, !dbg !2542
  %tobool8 = icmp ne ptr %18, null, !dbg !2540
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !2543

if.then9:                                         ; preds = %if.else
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !2544
  %deferred_node10 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 33, !dbg !2546
  %20 = load ptr, ptr %deferred_node10, align 8, !dbg !2546
  %name11 = getelementptr inbounds %struct.acpi_namespace_node, ptr %20, i32 0, i32 4, !dbg !2547
  %21 = load i32, ptr %name11, align 4, !dbg !2548
  store i32 %21, ptr %name, align 4, !dbg !2549
  br label %if.end12, !dbg !2550

if.end12:                                         ; preds = %if.then9, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  %22 = load ptr, ptr @acpi_gbl_exception_handler, align 8, !dbg !2551
  %23 = load i32, ptr %status.addr, align 4, !dbg !2552
  %24 = load i32, ptr %name, align 4, !dbg !2553
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !2554
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %25, i32 0, i32 3, !dbg !2555
  %26 = load i16, ptr %opcode, align 2, !dbg !2555
  %27 = load i32, ptr %aml_offset, align 4, !dbg !2556
  %call = call i32 %22(i32 noundef %23, i32 noundef %24, i16 noundef zeroext %26, i32 noundef %27, ptr noundef null) #14, !dbg !2551
  store i32 %call, ptr %status.addr, align 4, !dbg !2557
  call void @acpi_ex_enter_interpreter() #14, !dbg !2558
  br label %if.end14, !dbg !2559

if.end14:                                         ; preds = %if.end13, %if.end
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !2560
  call void @acpi_ds_clear_implicit_return(ptr noundef %28) #14, !dbg !2561
  %29 = load i32, ptr %status.addr, align 4, !dbg !2562
  %tobool15 = icmp ne i32 %29, 0, !dbg !2562
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2564

if.then16:                                        ; preds = %if.end14
  %30 = load i32, ptr %status.addr, align 4, !dbg !2565
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !2567
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !2568
  %op = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 40, !dbg !2569
  %33 = load ptr, ptr %op, align 8, !dbg !2569
  call void @acpi_ds_dump_method_stack(i32 noundef %30, ptr noundef %31, ptr noundef %33) #14, !dbg !2570
  br label %if.end17, !dbg !2571

if.end17:                                         ; preds = %if.then16, %if.end14
  %34 = load i32, ptr %status.addr, align 4, !dbg !2572
  store i32 %34, ptr %retval, align 4, !dbg !2573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2573

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %name) #13, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_offset) #13, !dbg !2574
  %35 = load i32, ptr %retval, align 4, !dbg !2574
  ret i32 %35, !dbg !2574
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2575 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2579 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2580 dso_local void @acpi_ds_clear_implicit_return(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2581 dso_local void @acpi_ds_dump_method_stack(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_begin_method_execution(ptr noundef %method_node, ptr noundef %obj_desc, ptr noundef %walk_state) #0 align 16 !dbg !2584 {
entry:
  %retval = alloca i32, align 4
  %method_node.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %method_node, ptr %method_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_node.addr, metadata !2588, metadata !DIExpression()), !dbg !2593
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !2589, metadata !DIExpression()), !dbg !2594
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !2590, metadata !DIExpression()), !dbg !2595
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2596
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2591, metadata !DIExpression()), !dbg !2597
  store i32 0, ptr %status, align 4, !dbg !2597
  %0 = load ptr, ptr %method_node.addr, align 8, !dbg !2598
  %tobool = icmp ne ptr %0, null, !dbg !2598
  br i1 %tobool, label %if.end, label %if.then, !dbg !2600

if.then:                                          ; preds = %entry
  store i32 10, ptr %retval, align 4, !dbg !2601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !2601

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %method_node.addr, align 8, !dbg !2603
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2604
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !2605
  call void @acpi_ex_start_trace_method(ptr noundef %1, ptr noundef %2, ptr noundef %3) #14, !dbg !2606
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2607
  %thread_count = getelementptr inbounds %struct.acpi_object_method, ptr %4, i32 0, i32 14, !dbg !2609
  %5 = load i8, ptr %thread_count, align 2, !dbg !2609
  %conv = zext i8 %5 to i32, !dbg !2607
  %cmp = icmp eq i32 %conv, 255, !dbg !2610
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2611

if.then2:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 309, ptr noundef @.str) #14, !dbg !2612
  store i32 12307, ptr %retval, align 4, !dbg !2614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !2614

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2615
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %6, i32 0, i32 5, !dbg !2617
  %7 = load i8, ptr %info_flags, align 1, !dbg !2617
  %conv4 = zext i8 %7 to i32, !dbg !2615
  %and = and i32 %conv4, 4, !dbg !2618
  %tobool5 = icmp ne i32 %and, 0, !dbg !2618
  br i1 %tobool5, label %if.then6, label %if.end74, !dbg !2619

if.then6:                                         ; preds = %if.end3
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2620
  %mutex = getelementptr inbounds %struct.acpi_object_method, ptr %8, i32 0, i32 8, !dbg !2623
  %9 = load ptr, ptr %mutex, align 8, !dbg !2623
  %tobool7 = icmp ne ptr %9, null, !dbg !2620
  br i1 %tobool7, label %if.end12, label %if.then8, !dbg !2624

if.then8:                                         ; preds = %if.then6
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2625
  %call = call i32 @acpi_ds_create_method_mutex(ptr noundef %10) #14, !dbg !2627
  store i32 %call, ptr %status, align 4, !dbg !2628
  %11 = load i32, ptr %status, align 4, !dbg !2629
  %tobool9 = icmp ne i32 %11, 0, !dbg !2629
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2631

if.then10:                                        ; preds = %if.then8
  %12 = load i32, ptr %status, align 4, !dbg !2632
  store i32 %12, ptr %retval, align 4, !dbg !2632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !2632

if.end11:                                         ; preds = %if.then8
  br label %if.end12, !dbg !2634

if.end12:                                         ; preds = %if.end11, %if.then6
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !2635
  %tobool13 = icmp ne ptr %13, null, !dbg !2635
  br i1 %tobool13, label %land.lhs.true, label %if.end29, !dbg !2637

land.lhs.true:                                    ; preds = %if.end12
  %14 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2638
  %info_flags14 = getelementptr inbounds %struct.acpi_object_method, ptr %14, i32 0, i32 5, !dbg !2639
  %15 = load i8, ptr %info_flags14, align 1, !dbg !2639
  %conv15 = zext i8 %15 to i32, !dbg !2638
  %and16 = and i32 %conv15, 16, !dbg !2640
  %tobool17 = icmp ne i32 %and16, 0, !dbg !2640
  br i1 %tobool17, label %if.end29, label %land.lhs.true18, !dbg !2641

land.lhs.true18:                                  ; preds = %land.lhs.true
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !2642
  %thread = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 49, !dbg !2643
  %17 = load ptr, ptr %thread, align 8, !dbg !2643
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, ptr %17, i32 0, i32 5, !dbg !2644
  %18 = load i8, ptr %current_sync_level, align 2, !dbg !2644
  %conv19 = zext i8 %18 to i32, !dbg !2642
  %19 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2645
  %mutex20 = getelementptr inbounds %struct.acpi_object_method, ptr %19, i32 0, i32 8, !dbg !2646
  %20 = load ptr, ptr %mutex20, align 8, !dbg !2646
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %20, i32 0, i32 5, !dbg !2647
  %21 = load i8, ptr %sync_level, align 1, !dbg !2647
  %conv21 = zext i8 %21 to i32, !dbg !2645
  %cmp22 = icmp sgt i32 %conv19, %conv21, !dbg !2648
  br i1 %cmp22, label %if.then24, label %if.end29, !dbg !2649

if.then24:                                        ; preds = %land.lhs.true18
  %22 = load ptr, ptr %method_node.addr, align 8, !dbg !2650
  %call25 = call ptr @acpi_ut_get_node_name(ptr noundef %22) #14, !dbg !2650
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !2650
  %thread26 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 49, !dbg !2650
  %24 = load ptr, ptr %thread26, align 8, !dbg !2650
  %current_sync_level27 = getelementptr inbounds %struct.acpi_thread_state, ptr %24, i32 0, i32 5, !dbg !2650
  %25 = load i8, ptr %current_sync_level27, align 2, !dbg !2650
  %conv28 = zext i8 %25 to i32, !dbg !2650
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 346, ptr noundef @.str.1, ptr noundef %call25, i32 noundef %conv28) #14, !dbg !2650
  store i32 12309, ptr %retval, align 4, !dbg !2652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !2652

if.end29:                                         ; preds = %land.lhs.true18, %land.lhs.true, %if.end12
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !2653
  %tobool30 = icmp ne ptr %26, null, !dbg !2653
  br i1 %tobool30, label %lor.lhs.false, label %if.then40, !dbg !2655

lor.lhs.false:                                    ; preds = %if.end29
  %27 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2656
  %mutex31 = getelementptr inbounds %struct.acpi_object_method, ptr %27, i32 0, i32 8, !dbg !2657
  %28 = load ptr, ptr %mutex31, align 8, !dbg !2657
  %thread_id = getelementptr inbounds %struct.acpi_object_mutex, ptr %28, i32 0, i32 8, !dbg !2658
  %29 = load i64, ptr %thread_id, align 8, !dbg !2658
  %tobool32 = icmp ne i64 %29, 0, !dbg !2656
  br i1 %tobool32, label %lor.lhs.false33, label %if.then40, !dbg !2659

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !2660
  %thread34 = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 49, !dbg !2661
  %31 = load ptr, ptr %thread34, align 8, !dbg !2661
  %thread_id35 = getelementptr inbounds %struct.acpi_thread_state, ptr %31, i32 0, i32 8, !dbg !2662
  %32 = load i64, ptr %thread_id35, align 8, !dbg !2662
  %33 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2663
  %mutex36 = getelementptr inbounds %struct.acpi_object_method, ptr %33, i32 0, i32 8, !dbg !2664
  %34 = load ptr, ptr %mutex36, align 8, !dbg !2664
  %thread_id37 = getelementptr inbounds %struct.acpi_object_mutex, ptr %34, i32 0, i32 8, !dbg !2665
  %35 = load i64, ptr %thread_id37, align 8, !dbg !2665
  %cmp38 = icmp ne i64 %32, %35, !dbg !2666
  br i1 %cmp38, label %if.then40, label %if.end72, !dbg !2667

if.then40:                                        ; preds = %lor.lhs.false33, %lor.lhs.false, %if.end29
  %36 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2668
  %mutex41 = getelementptr inbounds %struct.acpi_object_method, ptr %36, i32 0, i32 8, !dbg !2670
  %37 = load ptr, ptr %mutex41, align 8, !dbg !2670
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %37, i32 0, i32 7, !dbg !2671
  %38 = load ptr, ptr %os_mutex, align 8, !dbg !2671
  %call42 = call i32 @acpi_ex_system_wait_mutex(ptr noundef %38, i16 noundef zeroext -1) #14, !dbg !2672
  store i32 %call42, ptr %status, align 4, !dbg !2673
  %39 = load i32, ptr %status, align 4, !dbg !2674
  %tobool43 = icmp ne i32 %39, 0, !dbg !2674
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !2676

if.then44:                                        ; preds = %if.then40
  %40 = load i32, ptr %status, align 4, !dbg !2677
  store i32 %40, ptr %retval, align 4, !dbg !2677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !2677

if.end45:                                         ; preds = %if.then40
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !2679
  %tobool46 = icmp ne ptr %41, null, !dbg !2679
  br i1 %tobool46, label %if.then47, label %if.else, !dbg !2681

if.then47:                                        ; preds = %if.end45
  %42 = load ptr, ptr %walk_state.addr, align 8, !dbg !2682
  %thread48 = getelementptr inbounds %struct.acpi_walk_state, ptr %42, i32 0, i32 49, !dbg !2684
  %43 = load ptr, ptr %thread48, align 8, !dbg !2684
  %current_sync_level49 = getelementptr inbounds %struct.acpi_thread_state, ptr %43, i32 0, i32 5, !dbg !2685
  %44 = load i8, ptr %current_sync_level49, align 2, !dbg !2685
  %45 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2686
  %mutex50 = getelementptr inbounds %struct.acpi_object_method, ptr %45, i32 0, i32 8, !dbg !2687
  %46 = load ptr, ptr %mutex50, align 8, !dbg !2687
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %46, i32 0, i32 13, !dbg !2688
  store i8 %44, ptr %original_sync_level, align 8, !dbg !2689
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !2690
  %thread51 = getelementptr inbounds %struct.acpi_walk_state, ptr %47, i32 0, i32 49, !dbg !2691
  %48 = load ptr, ptr %thread51, align 8, !dbg !2691
  %thread_id52 = getelementptr inbounds %struct.acpi_thread_state, ptr %48, i32 0, i32 8, !dbg !2692
  %49 = load i64, ptr %thread_id52, align 8, !dbg !2692
  %50 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2693
  %mutex53 = getelementptr inbounds %struct.acpi_object_method, ptr %50, i32 0, i32 8, !dbg !2694
  %51 = load ptr, ptr %mutex53, align 8, !dbg !2694
  %thread_id54 = getelementptr inbounds %struct.acpi_object_mutex, ptr %51, i32 0, i32 8, !dbg !2695
  store i64 %49, ptr %thread_id54, align 8, !dbg !2696
  %52 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2697
  %info_flags55 = getelementptr inbounds %struct.acpi_object_method, ptr %52, i32 0, i32 5, !dbg !2699
  %53 = load i8, ptr %info_flags55, align 1, !dbg !2699
  %conv56 = zext i8 %53 to i32, !dbg !2697
  %and57 = and i32 %conv56, 16, !dbg !2700
  %tobool58 = icmp ne i32 %and57, 0, !dbg !2700
  br i1 %tobool58, label %if.end63, label %if.then59, !dbg !2701

if.then59:                                        ; preds = %if.then47
  %54 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2702
  %sync_level60 = getelementptr inbounds %struct.acpi_object_method, ptr %54, i32 0, i32 7, !dbg !2704
  %55 = load i8, ptr %sync_level60, align 1, !dbg !2704
  %56 = load ptr, ptr %walk_state.addr, align 8, !dbg !2705
  %thread61 = getelementptr inbounds %struct.acpi_walk_state, ptr %56, i32 0, i32 49, !dbg !2706
  %57 = load ptr, ptr %thread61, align 8, !dbg !2706
  %current_sync_level62 = getelementptr inbounds %struct.acpi_thread_state, ptr %57, i32 0, i32 5, !dbg !2707
  store i8 %55, ptr %current_sync_level62, align 2, !dbg !2708
  br label %if.end63, !dbg !2709

if.end63:                                         ; preds = %if.then59, %if.then47
  br label %if.end71, !dbg !2710

if.else:                                          ; preds = %if.end45
  %58 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2711
  %mutex64 = getelementptr inbounds %struct.acpi_object_method, ptr %58, i32 0, i32 8, !dbg !2713
  %59 = load ptr, ptr %mutex64, align 8, !dbg !2713
  %sync_level65 = getelementptr inbounds %struct.acpi_object_mutex, ptr %59, i32 0, i32 5, !dbg !2714
  %60 = load i8, ptr %sync_level65, align 1, !dbg !2714
  %61 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2715
  %mutex66 = getelementptr inbounds %struct.acpi_object_method, ptr %61, i32 0, i32 8, !dbg !2716
  %62 = load ptr, ptr %mutex66, align 8, !dbg !2716
  %original_sync_level67 = getelementptr inbounds %struct.acpi_object_mutex, ptr %62, i32 0, i32 13, !dbg !2717
  store i8 %60, ptr %original_sync_level67, align 8, !dbg !2718
  %call68 = call i64 @acpi_os_get_thread_id() #14, !dbg !2719
  %63 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2720
  %mutex69 = getelementptr inbounds %struct.acpi_object_method, ptr %63, i32 0, i32 8, !dbg !2721
  %64 = load ptr, ptr %mutex69, align 8, !dbg !2721
  %thread_id70 = getelementptr inbounds %struct.acpi_object_mutex, ptr %64, i32 0, i32 8, !dbg !2722
  store i64 %call68, ptr %thread_id70, align 8, !dbg !2723
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.end63
  br label %if.end72, !dbg !2724

if.end72:                                         ; preds = %if.end71, %lor.lhs.false33
  %65 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2725
  %mutex73 = getelementptr inbounds %struct.acpi_object_method, ptr %65, i32 0, i32 8, !dbg !2726
  %66 = load ptr, ptr %mutex73, align 8, !dbg !2726
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, ptr %66, i32 0, i32 6, !dbg !2727
  %67 = load i16, ptr %acquisition_depth, align 2, !dbg !2728
  %inc = add i16 %67, 1, !dbg !2728
  store i16 %inc, ptr %acquisition_depth, align 2, !dbg !2728
  br label %if.end74, !dbg !2729

if.end74:                                         ; preds = %if.end72, %if.end3
  %68 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2730
  %owner_id = getelementptr inbounds %struct.acpi_object_method, ptr %68, i32 0, i32 13, !dbg !2732
  %69 = load i16, ptr %owner_id, align 4, !dbg !2732
  %tobool75 = icmp ne i16 %69, 0, !dbg !2730
  br i1 %tobool75, label %if.end82, label %if.then76, !dbg !2733

if.then76:                                        ; preds = %if.end74
  %70 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2734
  %owner_id77 = getelementptr inbounds %struct.acpi_object_method, ptr %70, i32 0, i32 13, !dbg !2736
  %call78 = call i32 @acpi_ut_allocate_owner_id(ptr noundef %owner_id77) #14, !dbg !2737
  store i32 %call78, ptr %status, align 4, !dbg !2738
  %71 = load i32, ptr %status, align 4, !dbg !2739
  %tobool79 = icmp ne i32 %71, 0, !dbg !2739
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !2741

if.then80:                                        ; preds = %if.then76
  br label %cleanup, !dbg !2742

if.end81:                                         ; preds = %if.then76
  br label %if.end82, !dbg !2744

if.end82:                                         ; preds = %if.end81, %if.end74
  %72 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2745
  %thread_count83 = getelementptr inbounds %struct.acpi_object_method, ptr %72, i32 0, i32 14, !dbg !2746
  %73 = load i8, ptr %thread_count83, align 2, !dbg !2747
  %inc84 = add i8 %73, 1, !dbg !2747
  store i8 %inc84, ptr %thread_count83, align 2, !dbg !2747
  %74 = load i32, ptr @acpi_method_count, align 4, !dbg !2748
  %inc85 = add i32 %74, 1, !dbg !2748
  store i32 %inc85, ptr @acpi_method_count, align 4, !dbg !2748
  %75 = load i32, ptr %status, align 4, !dbg !2749
  store i32 %75, ptr %retval, align 4, !dbg !2749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !2749

cleanup:                                          ; preds = %if.then80
  call void @llvm.dbg.label(metadata !2592), !dbg !2750
  %76 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2751
  %mutex86 = getelementptr inbounds %struct.acpi_object_method, ptr %76, i32 0, i32 8, !dbg !2753
  %77 = load ptr, ptr %mutex86, align 8, !dbg !2753
  %tobool87 = icmp ne ptr %77, null, !dbg !2751
  br i1 %tobool87, label %if.then88, label %if.end92, !dbg !2754

if.then88:                                        ; preds = %cleanup
  %78 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2755
  %mutex89 = getelementptr inbounds %struct.acpi_object_method, ptr %78, i32 0, i32 8, !dbg !2755
  %79 = load ptr, ptr %mutex89, align 8, !dbg !2755
  %os_mutex90 = getelementptr inbounds %struct.acpi_object_mutex, ptr %79, i32 0, i32 7, !dbg !2755
  %80 = load ptr, ptr %os_mutex90, align 8, !dbg !2755
  %call91 = call i32 @acpi_os_signal_semaphore(ptr noundef %80, i32 noundef 1) #14, !dbg !2755
  br label %if.end92, !dbg !2757

if.end92:                                         ; preds = %if.then88, %cleanup
  %81 = load i32, ptr %status, align 4, !dbg !2758
  store i32 %81, ptr %retval, align 4, !dbg !2758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !2758

cleanup93:                                        ; preds = %if.end92, %if.end82, %if.then44, %if.then24, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !2759
  %82 = load i32, ptr %retval, align 4, !dbg !2759
  ret i32 %82, !dbg !2759
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2760 dso_local void @acpi_ex_start_trace_method(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2763 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_create_method_mutex(ptr noundef %method_desc) #0 align 16 !dbg !2767 {
entry:
  %retval = alloca i32, align 4
  %method_desc.addr = alloca ptr, align 8
  %mutex_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %method_desc, ptr %method_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_desc.addr, metadata !2771, metadata !DIExpression()), !dbg !2774
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex_desc) #13, !dbg !2775
  call void @llvm.dbg.declare(metadata ptr %mutex_desc, metadata !2772, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2777
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2773, metadata !DIExpression()), !dbg !2778
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 256, i32 noundef 64, i32 noundef 9) #14, !dbg !2779
  store ptr %call, ptr %mutex_desc, align 8, !dbg !2780
  %0 = load ptr, ptr %mutex_desc, align 8, !dbg !2781
  %tobool = icmp ne ptr %0, null, !dbg !2781
  br i1 %tobool, label %if.end, label %if.then, !dbg !2783

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !2784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2784

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mutex_desc, align 8, !dbg !2786
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %1, i32 0, i32 7, !dbg !2786
  %call1 = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %os_mutex) #14, !dbg !2786
  store i32 %call1, ptr %status, align 4, !dbg !2787
  %2 = load i32, ptr %status, align 4, !dbg !2788
  %tobool2 = icmp ne i32 %2, 0, !dbg !2788
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2790

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %mutex_desc, align 8, !dbg !2791
  call void @acpi_ut_delete_object_desc(ptr noundef %3) #14, !dbg !2793
  %4 = load i32, ptr %status, align 4, !dbg !2794
  store i32 %4, ptr %retval, align 4, !dbg !2794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2794

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %method_desc.addr, align 8, !dbg !2795
  %sync_level = getelementptr inbounds %struct.acpi_object_method, ptr %5, i32 0, i32 7, !dbg !2796
  %6 = load i8, ptr %sync_level, align 1, !dbg !2796
  %7 = load ptr, ptr %mutex_desc, align 8, !dbg !2797
  %sync_level5 = getelementptr inbounds %struct.acpi_object_mutex, ptr %7, i32 0, i32 5, !dbg !2798
  store i8 %6, ptr %sync_level5, align 1, !dbg !2799
  %8 = load ptr, ptr %mutex_desc, align 8, !dbg !2800
  %9 = load ptr, ptr %method_desc.addr, align 8, !dbg !2801
  %mutex = getelementptr inbounds %struct.acpi_object_method, ptr %9, i32 0, i32 8, !dbg !2802
  store ptr %8, ptr %mutex, align 8, !dbg !2803
  store i32 0, ptr %retval, align 4, !dbg !2804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2804

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !2805
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex_desc) #13, !dbg !2805
  %10 = load i32, ptr %retval, align 4, !dbg !2805
  ret i32 %10, !dbg !2805
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2806 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2810 dso_local i32 @acpi_ex_system_wait_mutex(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_os_get_thread_id() #4 align 16 !dbg !2813 {
entry:
  %call = call ptr @get_current() #14, !dbg !2817
  %0 = ptrtoint ptr %call to i64, !dbg !2818
  ret i64 %0, !dbg !2819
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2820 dso_local i32 @acpi_ut_allocate_owner_id(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2824 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_call_control_method(ptr noundef %thread, ptr noundef %this_walk_state, ptr noundef %op) #0 align 16 !dbg !2828 {
entry:
  %retval = alloca i32, align 4
  %thread.addr = alloca ptr, align 8
  %this_walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %method_node = alloca ptr, align 8
  %next_walk_state = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %info = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %thread, ptr %thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread.addr, metadata !2832, metadata !DIExpression()), !dbg !2843
  store ptr %this_walk_state, ptr %this_walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %this_walk_state.addr, metadata !2833, metadata !DIExpression()), !dbg !2844
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2834, metadata !DIExpression()), !dbg !2845
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2835, metadata !DIExpression()), !dbg !2847
  call void @llvm.lifetime.start.p0(i64 8, ptr %method_node) #13, !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %method_node, metadata !2836, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_walk_state) #13, !dbg !2850
  call void @llvm.dbg.declare(metadata ptr %next_walk_state, metadata !2837, metadata !DIExpression()), !dbg !2851
  store ptr null, ptr %next_walk_state, align 8, !dbg !2851
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !2852
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !2838, metadata !DIExpression()), !dbg !2853
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !2854
  call void @llvm.dbg.declare(metadata ptr %info, metadata !2839, metadata !DIExpression()), !dbg !2855
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2856
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2840, metadata !DIExpression()), !dbg !2857
  %0 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2858
  %method_call_node = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 35, !dbg !2859
  %1 = load ptr, ptr %method_call_node, align 8, !dbg !2859
  store ptr %1, ptr %method_node, align 8, !dbg !2860
  %2 = load ptr, ptr %method_node, align 8, !dbg !2861
  %tobool = icmp ne ptr %2, null, !dbg !2861
  br i1 %tobool, label %if.end, label %if.then, !dbg !2863

if.then:                                          ; preds = %entry
  store i32 10, ptr %retval, align 4, !dbg !2864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2864

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %method_node, align 8, !dbg !2866
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %3) #14, !dbg !2867
  store ptr %call, ptr %obj_desc, align 8, !dbg !2868
  %4 = load ptr, ptr %obj_desc, align 8, !dbg !2869
  %tobool1 = icmp ne ptr %4, null, !dbg !2869
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2871

if.then2:                                         ; preds = %if.end
  store i32 9, ptr %retval, align 4, !dbg !2872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2872

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %method_node, align 8, !dbg !2874
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !2875
  %7 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2876
  %call4 = call i32 @acpi_ds_begin_method_execution(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14, !dbg !2877
  store i32 %call4, ptr %status, align 4, !dbg !2878
  %8 = load i32, ptr %status, align 4, !dbg !2879
  %tobool5 = icmp ne i32 %8, 0, !dbg !2879
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2881

if.then6:                                         ; preds = %if.end3
  %9 = load i32, ptr %status, align 4, !dbg !2882
  store i32 %9, ptr %retval, align 4, !dbg !2882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2882

if.end7:                                          ; preds = %if.end3
  %10 = load ptr, ptr %obj_desc, align 8, !dbg !2884
  %owner_id = getelementptr inbounds %struct.acpi_object_method, ptr %10, i32 0, i32 13, !dbg !2885
  %11 = load i16, ptr %owner_id, align 4, !dbg !2885
  %12 = load ptr, ptr %obj_desc, align 8, !dbg !2886
  %13 = load ptr, ptr %thread.addr, align 8, !dbg !2887
  %call8 = call ptr @acpi_ds_create_walk_state(i16 noundef zeroext %11, ptr noundef null, ptr noundef %12, ptr noundef %13) #14, !dbg !2888
  store ptr %call8, ptr %next_walk_state, align 8, !dbg !2889
  %14 = load ptr, ptr %next_walk_state, align 8, !dbg !2890
  %tobool9 = icmp ne ptr %14, null, !dbg !2890
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2892

if.then10:                                        ; preds = %if.end7
  store i32 4, ptr %status, align 4, !dbg !2893
  br label %cleanup, !dbg !2895

if.end11:                                         ; preds = %if.end7
  %15 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2896
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 28, !dbg !2897
  %16 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2898
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 5, !dbg !2899
  %17 = load i8, ptr %num_operands, align 1, !dbg !2899
  %idxprom = zext i8 %17 to i64, !dbg !2896
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !2896
  store ptr null, ptr %arrayidx, align 8, !dbg !2900
  %call12 = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #14, !dbg !2901
  store ptr %call12, ptr %info, align 8, !dbg !2902
  %18 = load ptr, ptr %info, align 8, !dbg !2903
  %tobool13 = icmp ne ptr %18, null, !dbg !2903
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2905

if.then14:                                        ; preds = %if.end11
  store i32 4, ptr %status, align 4, !dbg !2906
  br label %pop_walk_state, !dbg !2908

if.end15:                                         ; preds = %if.end11
  %19 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2909
  %operands16 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 28, !dbg !2910
  %arrayidx17 = getelementptr [9 x ptr], ptr %operands16, i64 0, i64 0, !dbg !2909
  %20 = load ptr, ptr %info, align 8, !dbg !2911
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %20, i32 0, i32 2, !dbg !2912
  store ptr %arrayidx17, ptr %parameters, align 8, !dbg !2913
  %21 = load ptr, ptr %next_walk_state, align 8, !dbg !2914
  %22 = load ptr, ptr %method_node, align 8, !dbg !2915
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !2916
  %aml_start = getelementptr inbounds %struct.acpi_object_method, ptr %23, i32 0, i32 10, !dbg !2917
  %24 = load ptr, ptr %aml_start, align 8, !dbg !2917
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !2918
  %aml_length = getelementptr inbounds %struct.acpi_object_method, ptr %25, i32 0, i32 12, !dbg !2919
  %26 = load i32, ptr %aml_length, align 8, !dbg !2919
  %27 = load ptr, ptr %info, align 8, !dbg !2920
  %call18 = call i32 @acpi_ds_init_aml_walk(ptr noundef %21, ptr noundef null, ptr noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef %27, i8 noundef zeroext 3) #14, !dbg !2921
  store i32 %call18, ptr %status, align 4, !dbg !2922
  %28 = load ptr, ptr %info, align 8, !dbg !2923
  call void @acpi_os_free(ptr noundef %28) #14, !dbg !2923
  %29 = load i32, ptr %status, align 4, !dbg !2924
  %tobool19 = icmp ne i32 %29, 0, !dbg !2924
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2926

if.then20:                                        ; preds = %if.end15
  br label %pop_walk_state, !dbg !2927

if.end21:                                         ; preds = %if.end15
  %30 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2929
  %method_nesting_depth = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 24, !dbg !2930
  %31 = load i16, ptr %method_nesting_depth, align 8, !dbg !2930
  %conv = zext i16 %31 to i32, !dbg !2929
  %add = add i32 %conv, 1, !dbg !2931
  %conv22 = trunc i32 %add to i16, !dbg !2929
  %32 = load ptr, ptr %next_walk_state, align 8, !dbg !2932
  %method_nesting_depth23 = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 24, !dbg !2933
  store i16 %conv22, ptr %method_nesting_depth23, align 8, !dbg !2934
  store i32 0, ptr %i, align 4, !dbg !2935
  br label %for.cond, !dbg !2937

for.cond:                                         ; preds = %for.inc, %if.end21
  %33 = load i32, ptr %i, align 4, !dbg !2938
  %34 = load ptr, ptr %obj_desc, align 8, !dbg !2940
  %param_count = getelementptr inbounds %struct.acpi_object_method, ptr %34, i32 0, i32 6, !dbg !2941
  %35 = load i8, ptr %param_count, align 2, !dbg !2941
  %conv24 = zext i8 %35 to i32, !dbg !2940
  %cmp = icmp ult i32 %33, %conv24, !dbg !2942
  br i1 %cmp, label %for.body, label %for.end, !dbg !2943

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2944
  %operands26 = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 28, !dbg !2946
  %37 = load i32, ptr %i, align 4, !dbg !2947
  %idxprom27 = zext i32 %37 to i64, !dbg !2944
  %arrayidx28 = getelementptr [9 x ptr], ptr %operands26, i64 0, i64 %idxprom27, !dbg !2944
  %38 = load ptr, ptr %arrayidx28, align 8, !dbg !2944
  call void @acpi_ut_remove_reference(ptr noundef %38) #14, !dbg !2948
  %39 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2949
  %operands29 = getelementptr inbounds %struct.acpi_walk_state, ptr %39, i32 0, i32 28, !dbg !2950
  %40 = load i32, ptr %i, align 4, !dbg !2951
  %idxprom30 = zext i32 %40 to i64, !dbg !2949
  %arrayidx31 = getelementptr [9 x ptr], ptr %operands29, i64 0, i64 %idxprom30, !dbg !2949
  store ptr null, ptr %arrayidx31, align 8, !dbg !2952
  br label %for.inc, !dbg !2953

for.inc:                                          ; preds = %for.body
  %41 = load i32, ptr %i, align 4, !dbg !2954
  %inc = add i32 %41, 1, !dbg !2954
  store i32 %inc, ptr %i, align 4, !dbg !2954
  br label %for.cond, !dbg !2955, !llvm.loop !2956

for.end:                                          ; preds = %for.cond
  %42 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2960
  %num_operands32 = getelementptr inbounds %struct.acpi_walk_state, ptr %42, i32 0, i32 5, !dbg !2961
  store i8 0, ptr %num_operands32, align 1, !dbg !2962
  %43 = load ptr, ptr %method_node, align 8, !dbg !2963
  %call33 = call ptr @acpi_ns_get_normalized_pathname(ptr noundef %43, i8 noundef zeroext 1) #14, !dbg !2964
  %44 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2965
  %method_pathname = getelementptr inbounds %struct.acpi_walk_state, ptr %44, i32 0, i32 39, !dbg !2966
  store ptr %call33, ptr %method_pathname, align 8, !dbg !2967
  %45 = load ptr, ptr %this_walk_state.addr, align 8, !dbg !2968
  %method_is_nested = getelementptr inbounds %struct.acpi_walk_state, ptr %45, i32 0, i32 25, !dbg !2969
  store i8 1, ptr %method_is_nested, align 2, !dbg !2970
  %46 = load ptr, ptr %obj_desc, align 8, !dbg !2971
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %46, i32 0, i32 5, !dbg !2973
  %47 = load i8, ptr %info_flags, align 1, !dbg !2973
  %conv34 = zext i8 %47 to i32, !dbg !2971
  %and = and i32 %conv34, 2, !dbg !2974
  %tobool35 = icmp ne i32 %and, 0, !dbg !2974
  br i1 %tobool35, label %if.then36, label %if.end42, !dbg !2975

if.then36:                                        ; preds = %for.end
  %48 = load ptr, ptr %obj_desc, align 8, !dbg !2976
  %dispatch = getelementptr inbounds %struct.acpi_object_method, ptr %48, i32 0, i32 11, !dbg !2978
  %49 = load ptr, ptr %dispatch, align 8, !dbg !2979
  %50 = load ptr, ptr %next_walk_state, align 8, !dbg !2980
  %call37 = call i32 %49(ptr noundef %50) #14, !dbg !2976
  store i32 %call37, ptr %status, align 4, !dbg !2981
  %51 = load i32, ptr %status, align 4, !dbg !2982
  %cmp38 = icmp eq i32 %51, 0, !dbg !2984
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !2985

if.then40:                                        ; preds = %if.then36
  store i32 16387, ptr %status, align 4, !dbg !2986
  br label %if.end41, !dbg !2988

if.end41:                                         ; preds = %if.then40, %if.then36
  br label %if.end42, !dbg !2989

if.end42:                                         ; preds = %if.end41, %for.end
  %52 = load i32, ptr %status, align 4, !dbg !2990
  store i32 %52, ptr %retval, align 4, !dbg !2990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2990

pop_walk_state:                                   ; preds = %if.then20, %if.then14
  call void @llvm.dbg.label(metadata !2841), !dbg !2991
  %53 = load ptr, ptr %thread.addr, align 8, !dbg !2992
  %call43 = call ptr @acpi_ds_pop_walk_state(ptr noundef %53) #14, !dbg !2993
  br label %cleanup, !dbg !2993

cleanup:                                          ; preds = %pop_walk_state, %if.then10
  call void @llvm.dbg.label(metadata !2842), !dbg !2994
  %54 = load ptr, ptr %obj_desc, align 8, !dbg !2995
  %55 = load ptr, ptr %next_walk_state, align 8, !dbg !2996
  call void @acpi_ds_terminate_control_method(ptr noundef %54, ptr noundef %55) #14, !dbg !2997
  %56 = load ptr, ptr %next_walk_state, align 8, !dbg !2998
  call void @acpi_ds_delete_walk_state(ptr noundef %56) #14, !dbg !2999
  %57 = load i32, ptr %status, align 4, !dbg !3000
  store i32 %57, ptr %retval, align 4, !dbg !3000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !3000

cleanup44:                                        ; preds = %cleanup, %if.end42, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_walk_state) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 8, ptr %method_node) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3001
  %58 = load i32, ptr %retval, align 4, !dbg !3001
  ret i32 %58, !dbg !3001
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3002 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !3006 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3010, metadata !DIExpression()), !dbg !3021
  %0 = load i64, ptr %size.addr, align 8, !dbg !3022
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !3023
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !3011, metadata !DIExpression()), !dbg !3023
  br label %do.body, !dbg !3023

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !3024
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3013, metadata !DIExpression()), !dbg !3024
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !3024
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3016, metadata !DIExpression()), !dbg !3024
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3024
  %conv = zext i1 %cmp to i32, !dbg !3024
  store i32 1, ptr %tmp, align 4, !dbg !3024
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !3025
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !3025
  %1 = load i32, ptr %tmp, align 4, !dbg !3024
  %call = call i64 @arch_local_save_flags() #14, !dbg !3025
  store i64 %call, ptr %_flags, align 8, !dbg !3025
  br label %do.cond, !dbg !3025

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3025

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !3026
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !3017, metadata !DIExpression()), !dbg !3026
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !3026
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !3020, metadata !DIExpression()), !dbg !3026
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !3026
  %conv6 = zext i1 %cmp5 to i32, !dbg !3026
  store i32 1, ptr %tmp7, align 4, !dbg !3026
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !3027
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !3027
  %2 = load i32, ptr %tmp7, align 4, !dbg !3026
  %3 = load i64, ptr %_flags, align 8, !dbg !3027
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !3027
  store i32 %call9, ptr %tmp8, align 4, !dbg !3027
  %4 = load i32, ptr %tmp8, align 4, !dbg !3027
  store i32 %4, ptr %tmp1, align 4, !dbg !3025
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !3028
  %5 = load i32, ptr %tmp1, align 4, !dbg !3023
  %tobool = icmp ne i32 %5, 0, !dbg !3028
  %6 = zext i1 %tobool to i64, !dbg !3028
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !3028
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !3029
  ret ptr %call10, !dbg !3030
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !3031 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !3035, metadata !DIExpression()), !dbg !3036
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !3037
  call void @kfree(ptr noundef %0) #14, !dbg !3038
  ret void, !dbg !3039
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3040 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3043 dso_local ptr @acpi_ns_get_normalized_pathname(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3046 dso_local ptr @acpi_ds_pop_walk_state(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_terminate_control_method(ptr noundef %method_desc, ptr noundef %walk_state) #0 align 16 !dbg !3049 {
entry:
  %method_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  store ptr %method_desc, ptr %method_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_desc.addr, metadata !3053, metadata !DIExpression()), !dbg !3055
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !3054, metadata !DIExpression()), !dbg !3056
  %0 = load ptr, ptr %method_desc.addr, align 8, !dbg !3057
  %tobool = icmp ne ptr %0, null, !dbg !3057
  br i1 %tobool, label %if.end, label %if.then, !dbg !3059

if.then:                                          ; preds = %entry
  br label %return, !dbg !3060

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !3062
  %tobool1 = icmp ne ptr %1, null, !dbg !3062
  br i1 %tobool1, label %if.then2, label %if.end30, !dbg !3064

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !3065
  call void @acpi_ds_method_data_delete_all(ptr noundef %2) #14, !dbg !3067
  %3 = load ptr, ptr %method_desc.addr, align 8, !dbg !3068
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %3, i32 0, i32 5, !dbg !3070
  %4 = load i8, ptr %info_flags, align 1, !dbg !3070
  %conv = zext i8 %4 to i32, !dbg !3068
  %and = and i32 %conv, 1, !dbg !3071
  %tobool3 = icmp ne i32 %and, 0, !dbg !3071
  br i1 %tobool3, label %if.end17, label %land.lhs.true, !dbg !3072

land.lhs.true:                                    ; preds = %if.then2
  %5 = load ptr, ptr %method_desc.addr, align 8, !dbg !3073
  %thread_count = getelementptr inbounds %struct.acpi_object_method, ptr %5, i32 0, i32 14, !dbg !3074
  %6 = load i8, ptr %thread_count, align 2, !dbg !3074
  %conv4 = zext i8 %6 to i32, !dbg !3073
  %cmp = icmp eq i32 %conv4, 1, !dbg !3075
  br i1 %cmp, label %if.then6, label %if.end17, !dbg !3076

if.then6:                                         ; preds = %land.lhs.true
  call void @acpi_ex_exit_interpreter() #14, !dbg !3077
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !3079
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 38, !dbg !3080
  %8 = load ptr, ptr %method_node, align 8, !dbg !3080
  call void @acpi_ns_delete_namespace_subtree(ptr noundef %8) #14, !dbg !3081
  call void @acpi_ex_enter_interpreter() #14, !dbg !3082
  %9 = load ptr, ptr %method_desc.addr, align 8, !dbg !3083
  %info_flags7 = getelementptr inbounds %struct.acpi_object_method, ptr %9, i32 0, i32 5, !dbg !3085
  %10 = load i8, ptr %info_flags7, align 1, !dbg !3085
  %conv8 = zext i8 %10 to i32, !dbg !3083
  %and9 = and i32 %conv8, 32, !dbg !3086
  %tobool10 = icmp ne i32 %and9, 0, !dbg !3086
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !3087

if.then11:                                        ; preds = %if.then6
  call void @acpi_ex_exit_interpreter() #14, !dbg !3088
  %11 = load ptr, ptr %method_desc.addr, align 8, !dbg !3090
  %owner_id = getelementptr inbounds %struct.acpi_object_method, ptr %11, i32 0, i32 13, !dbg !3091
  %12 = load i16, ptr %owner_id, align 4, !dbg !3091
  call void @acpi_ns_delete_namespace_by_owner(i16 noundef zeroext %12) #14, !dbg !3092
  call void @acpi_ex_enter_interpreter() #14, !dbg !3093
  %13 = load ptr, ptr %method_desc.addr, align 8, !dbg !3094
  %info_flags12 = getelementptr inbounds %struct.acpi_object_method, ptr %13, i32 0, i32 5, !dbg !3095
  %14 = load i8, ptr %info_flags12, align 1, !dbg !3096
  %conv13 = zext i8 %14 to i32, !dbg !3096
  %and14 = and i32 %conv13, -33, !dbg !3096
  %conv15 = trunc i32 %and14 to i8, !dbg !3096
  store i8 %conv15, ptr %info_flags12, align 1, !dbg !3096
  br label %if.end16, !dbg !3097

if.end16:                                         ; preds = %if.then11, %if.then6
  br label %if.end17, !dbg !3098

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.then2
  %15 = load ptr, ptr %method_desc.addr, align 8, !dbg !3099
  %mutex = getelementptr inbounds %struct.acpi_object_method, ptr %15, i32 0, i32 8, !dbg !3101
  %16 = load ptr, ptr %mutex, align 8, !dbg !3101
  %tobool18 = icmp ne ptr %16, null, !dbg !3099
  br i1 %tobool18, label %if.then19, label %if.end29, !dbg !3102

if.then19:                                        ; preds = %if.end17
  %17 = load ptr, ptr %method_desc.addr, align 8, !dbg !3103
  %mutex20 = getelementptr inbounds %struct.acpi_object_method, ptr %17, i32 0, i32 8, !dbg !3105
  %18 = load ptr, ptr %mutex20, align 8, !dbg !3105
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, ptr %18, i32 0, i32 6, !dbg !3106
  %19 = load i16, ptr %acquisition_depth, align 2, !dbg !3107
  %dec = add i16 %19, -1, !dbg !3107
  store i16 %dec, ptr %acquisition_depth, align 2, !dbg !3107
  %20 = load ptr, ptr %method_desc.addr, align 8, !dbg !3108
  %mutex21 = getelementptr inbounds %struct.acpi_object_method, ptr %20, i32 0, i32 8, !dbg !3110
  %21 = load ptr, ptr %mutex21, align 8, !dbg !3110
  %acquisition_depth22 = getelementptr inbounds %struct.acpi_object_mutex, ptr %21, i32 0, i32 6, !dbg !3111
  %22 = load i16, ptr %acquisition_depth22, align 2, !dbg !3111
  %tobool23 = icmp ne i16 %22, 0, !dbg !3108
  br i1 %tobool23, label %if.end28, label %if.then24, !dbg !3112

if.then24:                                        ; preds = %if.then19
  %23 = load ptr, ptr %method_desc.addr, align 8, !dbg !3113
  %mutex25 = getelementptr inbounds %struct.acpi_object_method, ptr %23, i32 0, i32 8, !dbg !3115
  %24 = load ptr, ptr %mutex25, align 8, !dbg !3115
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %24, i32 0, i32 13, !dbg !3116
  %25 = load i8, ptr %original_sync_level, align 8, !dbg !3116
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !3117
  %thread = getelementptr inbounds %struct.acpi_walk_state, ptr %26, i32 0, i32 49, !dbg !3118
  %27 = load ptr, ptr %thread, align 8, !dbg !3118
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, ptr %27, i32 0, i32 5, !dbg !3119
  store i8 %25, ptr %current_sync_level, align 2, !dbg !3120
  %28 = load ptr, ptr %method_desc.addr, align 8, !dbg !3121
  %mutex26 = getelementptr inbounds %struct.acpi_object_method, ptr %28, i32 0, i32 8, !dbg !3121
  %29 = load ptr, ptr %mutex26, align 8, !dbg !3121
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %29, i32 0, i32 7, !dbg !3121
  %30 = load ptr, ptr %os_mutex, align 8, !dbg !3121
  %call = call i32 @acpi_os_signal_semaphore(ptr noundef %30, i32 noundef 1) #14, !dbg !3121
  %31 = load ptr, ptr %method_desc.addr, align 8, !dbg !3122
  %mutex27 = getelementptr inbounds %struct.acpi_object_method, ptr %31, i32 0, i32 8, !dbg !3123
  %32 = load ptr, ptr %mutex27, align 8, !dbg !3123
  %thread_id = getelementptr inbounds %struct.acpi_object_mutex, ptr %32, i32 0, i32 8, !dbg !3124
  store i64 0, ptr %thread_id, align 8, !dbg !3125
  br label %if.end28, !dbg !3126

if.end28:                                         ; preds = %if.then24, %if.then19
  br label %if.end29, !dbg !3127

if.end29:                                         ; preds = %if.end28, %if.end17
  br label %if.end30, !dbg !3128

if.end30:                                         ; preds = %if.end29, %if.end
  %33 = load ptr, ptr %method_desc.addr, align 8, !dbg !3129
  %thread_count31 = getelementptr inbounds %struct.acpi_object_method, ptr %33, i32 0, i32 14, !dbg !3131
  %34 = load i8, ptr %thread_count31, align 2, !dbg !3131
  %tobool32 = icmp ne i8 %34, 0, !dbg !3129
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !3132

if.then33:                                        ; preds = %if.end30
  %35 = load ptr, ptr %method_desc.addr, align 8, !dbg !3133
  %thread_count34 = getelementptr inbounds %struct.acpi_object_method, ptr %35, i32 0, i32 14, !dbg !3135
  %36 = load i8, ptr %thread_count34, align 2, !dbg !3136
  %dec35 = add i8 %36, -1, !dbg !3136
  store i8 %dec35, ptr %thread_count34, align 2, !dbg !3136
  br label %if.end36, !dbg !3137

if.else:                                          ; preds = %if.end30
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 780, ptr noundef @.str.2) #14, !dbg !3138
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %37 = load ptr, ptr %method_desc.addr, align 8, !dbg !3140
  %thread_count37 = getelementptr inbounds %struct.acpi_object_method, ptr %37, i32 0, i32 14, !dbg !3142
  %38 = load i8, ptr %thread_count37, align 2, !dbg !3142
  %tobool38 = icmp ne i8 %38, 0, !dbg !3140
  br i1 %tobool38, label %if.then39, label %if.else40, !dbg !3143

if.then39:                                        ; preds = %if.end36
  br label %if.end65, !dbg !3144

if.else40:                                        ; preds = %if.end36
  %39 = load ptr, ptr %method_desc.addr, align 8, !dbg !3146
  %info_flags41 = getelementptr inbounds %struct.acpi_object_method, ptr %39, i32 0, i32 5, !dbg !3149
  %40 = load i8, ptr %info_flags41, align 1, !dbg !3149
  %conv42 = zext i8 %40 to i32, !dbg !3146
  %and43 = and i32 %conv42, 8, !dbg !3150
  %tobool44 = icmp ne i32 %and43, 0, !dbg !3150
  br i1 %tobool44, label %if.then45, label %if.end57, !dbg !3151

if.then45:                                        ; preds = %if.else40
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !3152
  %tobool46 = icmp ne ptr %41, null, !dbg !3152
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !3155

if.then47:                                        ; preds = %if.then45
  %42 = load ptr, ptr %walk_state.addr, align 8, !dbg !3156
  %method_node48 = getelementptr inbounds %struct.acpi_walk_state, ptr %42, i32 0, i32 38, !dbg !3156
  %43 = load ptr, ptr %method_node48, align 8, !dbg !3156
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %43, i32 0, i32 4, !dbg !3156
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !3156
  call void (ptr, ...) @acpi_info(ptr noundef @.str.3, ptr noundef %arraydecay) #14, !dbg !3156
  br label %if.end49, !dbg !3158

if.end49:                                         ; preds = %if.then47, %if.then45
  %44 = load ptr, ptr %method_desc.addr, align 8, !dbg !3159
  %info_flags50 = getelementptr inbounds %struct.acpi_object_method, ptr %44, i32 0, i32 5, !dbg !3160
  %45 = load i8, ptr %info_flags50, align 1, !dbg !3161
  %conv51 = zext i8 %45 to i32, !dbg !3161
  %and52 = and i32 %conv51, -9, !dbg !3161
  %conv53 = trunc i32 %and52 to i8, !dbg !3161
  store i8 %conv53, ptr %info_flags50, align 1, !dbg !3161
  %46 = load ptr, ptr %method_desc.addr, align 8, !dbg !3162
  %info_flags54 = getelementptr inbounds %struct.acpi_object_method, ptr %46, i32 0, i32 5, !dbg !3163
  %47 = load i8, ptr %info_flags54, align 1, !dbg !3164
  %conv55 = zext i8 %47 to i32, !dbg !3164
  %or = or i32 %conv55, 20, !dbg !3164
  %conv56 = trunc i32 %or to i8, !dbg !3164
  store i8 %conv56, ptr %info_flags54, align 1, !dbg !3164
  %48 = load ptr, ptr %method_desc.addr, align 8, !dbg !3165
  %sync_level = getelementptr inbounds %struct.acpi_object_method, ptr %48, i32 0, i32 7, !dbg !3166
  store i8 0, ptr %sync_level, align 1, !dbg !3167
  br label %if.end57, !dbg !3168

if.end57:                                         ; preds = %if.end49, %if.else40
  %49 = load ptr, ptr %method_desc.addr, align 8, !dbg !3169
  %info_flags58 = getelementptr inbounds %struct.acpi_object_method, ptr %49, i32 0, i32 5, !dbg !3171
  %50 = load i8, ptr %info_flags58, align 1, !dbg !3171
  %conv59 = zext i8 %50 to i32, !dbg !3169
  %and60 = and i32 %conv59, 1, !dbg !3172
  %tobool61 = icmp ne i32 %and60, 0, !dbg !3172
  br i1 %tobool61, label %if.end64, label %if.then62, !dbg !3173

if.then62:                                        ; preds = %if.end57
  %51 = load ptr, ptr %method_desc.addr, align 8, !dbg !3174
  %owner_id63 = getelementptr inbounds %struct.acpi_object_method, ptr %51, i32 0, i32 13, !dbg !3176
  call void @acpi_ut_release_owner_id(ptr noundef %owner_id63) #14, !dbg !3177
  br label %if.end64, !dbg !3178

if.end64:                                         ; preds = %if.then62, %if.end57
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then39
  %52 = load ptr, ptr %method_desc.addr, align 8, !dbg !3179
  %node = getelementptr inbounds %struct.acpi_object_method, ptr %52, i32 0, i32 9, !dbg !3180
  %53 = load ptr, ptr %node, align 8, !dbg !3180
  %54 = load ptr, ptr %method_desc.addr, align 8, !dbg !3181
  %55 = load ptr, ptr %walk_state.addr, align 8, !dbg !3182
  call void @acpi_ex_stop_trace_method(ptr noundef %53, ptr noundef %54, ptr noundef %55) #14, !dbg !3183
  br label %return, !dbg !3184

return:                                           ; preds = %if.end65, %if.then
  ret void, !dbg !3185
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_restart_control_method(ptr noundef %walk_state, ptr noundef %return_desc) #0 align 16 !dbg !3186 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %return_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %same_as_implicit_return = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !3190, metadata !DIExpression()), !dbg !3194
  store ptr %return_desc, ptr %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_desc.addr, metadata !3191, metadata !DIExpression()), !dbg !3195
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3196
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3192, metadata !DIExpression()), !dbg !3197
  call void @llvm.lifetime.start.p0(i64 4, ptr %same_as_implicit_return) #13, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %same_as_implicit_return, metadata !3193, metadata !DIExpression()), !dbg !3199
  %0 = load ptr, ptr %return_desc.addr, align 8, !dbg !3200
  %tobool = icmp ne ptr %0, null, !dbg !3200
  br i1 %tobool, label %if.then, label %if.end12, !dbg !3202

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !3203
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 34, !dbg !3205
  %2 = load ptr, ptr %implicit_return_obj, align 8, !dbg !3205
  %3 = load ptr, ptr %return_desc.addr, align 8, !dbg !3206
  %cmp = icmp eq ptr %2, %3, !dbg !3207
  %conv = zext i1 %cmp to i32, !dbg !3207
  store i32 %conv, ptr %same_as_implicit_return, align 4, !dbg !3208
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !3209
  %return_used = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 10, !dbg !3211
  %5 = load i8, ptr %return_used, align 4, !dbg !3211
  %tobool1 = icmp ne i8 %5, 0, !dbg !3209
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3212

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %return_desc.addr, align 8, !dbg !3213
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !3215
  %call = call i32 @acpi_ds_result_push(ptr noundef %6, ptr noundef %7) #14, !dbg !3216
  store i32 %call, ptr %status, align 4, !dbg !3217
  %8 = load i32, ptr %status, align 4, !dbg !3218
  %tobool3 = icmp ne i32 %8, 0, !dbg !3218
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !3220

if.then4:                                         ; preds = %if.then2
  %9 = load ptr, ptr %return_desc.addr, align 8, !dbg !3221
  call void @acpi_ut_remove_reference(ptr noundef %9) #14, !dbg !3223
  %10 = load i32, ptr %status, align 4, !dbg !3224
  store i32 %10, ptr %retval, align 4, !dbg !3224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3224

if.end:                                           ; preds = %if.then2
  %11 = load ptr, ptr %return_desc.addr, align 8, !dbg !3225
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !3226
  %return_desc5 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 45, !dbg !3227
  store ptr %11, ptr %return_desc5, align 8, !dbg !3228
  br label %if.end11, !dbg !3229

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %return_desc.addr, align 8, !dbg !3230
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !3232
  %call6 = call zeroext i8 @acpi_ds_do_implicit_return(ptr noundef %13, ptr noundef %14, i8 noundef zeroext 0) #14, !dbg !3233
  %tobool7 = icmp ne i8 %call6, 0, !dbg !3233
  br i1 %tobool7, label %lor.lhs.false, label %if.then9, !dbg !3234

lor.lhs.false:                                    ; preds = %if.else
  %15 = load i32, ptr %same_as_implicit_return, align 4, !dbg !3235
  %tobool8 = icmp ne i32 %15, 0, !dbg !3235
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3236

if.then9:                                         ; preds = %lor.lhs.false, %if.else
  %16 = load ptr, ptr %return_desc.addr, align 8, !dbg !3237
  call void @acpi_ut_remove_reference(ptr noundef %16) #14, !dbg !3239
  br label %if.end10, !dbg !3240

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  br label %if.end12, !dbg !3241

if.end12:                                         ; preds = %if.end11, %entry
  store i32 0, ptr %retval, align 4, !dbg !3242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3242

cleanup:                                          ; preds = %if.end12, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %same_as_implicit_return) #13, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3243
  %17 = load i32, ptr %retval, align 4, !dbg !3243
  ret i32 %17, !dbg !3243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3244 dso_local i32 @acpi_ds_result_push(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3247 dso_local zeroext i8 @acpi_ds_do_implicit_return(ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3250 dso_local void @acpi_ds_method_data_delete_all(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3251 dso_local void @acpi_ns_delete_namespace_subtree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3254 dso_local void @acpi_ns_delete_namespace_by_owner(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3257 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3260 dso_local void @acpi_ut_release_owner_id(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3263 dso_local void @acpi_ex_stop_trace_method(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3264 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3268 dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3271 dso_local void @acpi_ut_delete_object_desc(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !3272 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !3285
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3277, metadata !DIExpression()), !dbg !3285
  br label %do.body, !dbg !3285

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3286
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3279, metadata !DIExpression()), !dbg !3286
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3286
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3286
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3285
  br label %do.cond, !dbg !3286

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3286

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !3287
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3283, metadata !DIExpression()), !dbg !3287
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !3287, !srcloc !3288
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3287
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3287
  %3 = inttoptr i64 %2 to ptr, !dbg !3287
  store ptr %3, ptr %tmp, align 8, !dbg !3287
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !3285
  %4 = load ptr, ptr %tmp, align 8, !dbg !3287
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3285
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3285
  store ptr %5, ptr %tmp1, align 8, !dbg !3285
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !3289
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3285
  ret ptr %6, !dbg !3290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !3291 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3295, metadata !DIExpression()), !dbg !3297
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3296, metadata !DIExpression()), !dbg !3298
  %0 = load i64, ptr %size.addr, align 8, !dbg !3299
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3300
  %or = or i32 %1, 256, !dbg !3301
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !3302
  ret ptr %call, !dbg !3303
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !3304 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !3308
  ret i64 %call, !dbg !3309
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !3310 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3314, metadata !DIExpression()), !dbg !3315
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3316
  %and = and i64 %0, 512, !dbg !3317
  %tobool = icmp ne i64 %and, 0, !dbg !3318
  %lnot = xor i1 %tobool, true, !dbg !3318
  %lnot.ext = zext i1 %lnot to i32, !dbg !3318
  ret i32 %lnot.ext, !dbg !3319
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !3320 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3322, metadata !DIExpression()), !dbg !3327
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3323, metadata !DIExpression()), !dbg !3328
  %0 = load i64, ptr %size.addr, align 8, !dbg !3329
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3330
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3331

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3332
  %tobool = icmp ne i64 %2, 0, !dbg !3332
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3333

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !3334
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3324, metadata !DIExpression()), !dbg !3335
  %3 = load i64, ptr %size.addr, align 8, !dbg !3336
  %cmp = icmp ugt i64 %3, 8192, !dbg !3338
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3339

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3340
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3341
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !3342
  store ptr %call, ptr %retval, align 8, !dbg !3343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3343

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3344
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !3344
  store i32 %call2, ptr %index, align 4, !dbg !3345
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3346
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3347
  %9 = ptrtoint ptr %8 to i64, !dbg !3347
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !3348
  %idxprom = zext i32 %call3 to i64, !dbg !3349
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3349
  %10 = load i32, ptr %index, align 4, !dbg !3350
  %idxprom4 = zext i32 %10 to i64, !dbg !3349
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3349
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3349
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3351
  %13 = load i64, ptr %size.addr, align 8, !dbg !3352
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !3353
  store ptr %call6, ptr %retval, align 8, !dbg !3354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3354

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !3355
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3356
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3357
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !3358
  store ptr %call8, ptr %retval, align 8, !dbg !3359
  br label %return, !dbg !3359

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3360
  ret ptr %16, !dbg !3360
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3361 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !3362 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3366, metadata !DIExpression()), !dbg !3368
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3367, metadata !DIExpression()), !dbg !3369
  %0 = load i64, ptr %size.addr, align 8, !dbg !3370
  %tobool = icmp ne i64 %0, 0, !dbg !3370
  br i1 %tobool, label %if.end, label %if.then, !dbg !3372

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3373
  br label %return, !dbg !3373

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3374
  %cmp = icmp ule i64 %1, 8, !dbg !3376
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3377

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3378
  br label %return, !dbg !3378

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3379
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3381
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3382

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3383
  %cmp4 = icmp ule i64 %3, 96, !dbg !3384
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3385

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3386
  br label %return, !dbg !3386

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3387
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3389
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3390

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3391
  %cmp9 = icmp ule i64 %5, 192, !dbg !3392
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3393

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3394
  br label %return, !dbg !3394

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3395
  %cmp12 = icmp ule i64 %6, 8, !dbg !3397
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3398

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3399
  br label %return, !dbg !3399

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3400
  %cmp15 = icmp ule i64 %7, 16, !dbg !3402
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3403

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3404
  br label %return, !dbg !3404

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3405
  %cmp18 = icmp ule i64 %8, 32, !dbg !3407
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3408

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3409
  br label %return, !dbg !3409

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3410
  %cmp21 = icmp ule i64 %9, 64, !dbg !3412
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3413

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3414
  br label %return, !dbg !3414

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3415
  %cmp24 = icmp ule i64 %10, 128, !dbg !3417
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3418

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3419
  br label %return, !dbg !3419

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3420
  %cmp27 = icmp ule i64 %11, 256, !dbg !3422
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3423

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3424
  br label %return, !dbg !3424

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3425
  %cmp30 = icmp ule i64 %12, 512, !dbg !3427
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3428

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3429
  br label %return, !dbg !3429

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3430
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3432
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3433

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3434
  br label %return, !dbg !3434

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3435
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3437
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3438

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3439
  br label %return, !dbg !3439

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3440
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3442
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3443

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3444
  br label %return, !dbg !3444

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3445
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3447
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3448

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3449
  br label %return, !dbg !3449

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3450
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3452
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3453

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3454
  br label %return, !dbg !3454

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3455
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3457
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3458

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3459
  br label %return, !dbg !3459

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3460
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3462
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3463

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3464
  br label %return, !dbg !3464

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3465
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3467
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3468

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3469
  br label %return, !dbg !3469

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3470
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3472
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3473

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3474
  br label %return, !dbg !3474

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3475
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3477
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3478

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3479
  br label %return, !dbg !3479

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3480
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3482
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3483

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3484
  br label %return, !dbg !3484

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3485
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3487
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3488

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3489
  br label %return, !dbg !3489

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3490, !range !3492, !noundef !1201
  %tobool69 = trunc i8 %25 to i1, !dbg !3490
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3493

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3494

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !3495, !srcloc !3498
  unreachable, !dbg !3495

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3499

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3500

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3501

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3503

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3501

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #13, !dbg !3505, !srcloc !3507
  br label %do.end75, !dbg !3505

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3501

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3508
  br label %return, !dbg !3508

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3509
  ret i32 %26, !dbg !3509
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3510 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !3516 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3520, metadata !DIExpression()), !dbg !3522
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3521, metadata !DIExpression()), !dbg !3523
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3524
  %and = and i32 %0, 17, !dbg !3524
  %cmp = icmp eq i32 %and, 0, !dbg !3524
  %lnot = xor i1 %cmp, true, !dbg !3524
  %lnot1 = xor i1 %lnot, true, !dbg !3524
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3524
  %conv = sext i32 %lnot.ext to i64, !dbg !3524
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3524
  %tobool = icmp ne i64 %expval, 0, !dbg !3524
  br i1 %tobool, label %if.then, label %if.end, !dbg !3526

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3527
  br label %return, !dbg !3527

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3528
  %and2 = and i32 %1, 1, !dbg !3530
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3530
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3531

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3532
  br label %return, !dbg !3532

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3533
  br label %return, !dbg !3533

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3535
  ret i32 %2, !dbg !3535
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3536 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3537 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !3538 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !3541
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !3543, !srcloc !3544
  %0 = load i64, ptr %flags, align 8, !dbg !3545
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !3546
  ret i64 %0, !dbg !3547
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3548 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { nounwind memory(none) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!llvm.ident = !{!2311}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 20, type: !2301, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dsmethod.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dsmethod\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dsmethod.ll drivers/acpi/acpica/dsmethod.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !2275, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsmethod.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9921b79d500c6780e5b86514a3d7058c")
!4 = !{!5, !12, !17, !23, !30, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !13, line: 65, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !18, line: 16, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "TT_NONE", value: 0)
!21 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!22 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !24, line: 51, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!27 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!28 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!29 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 10, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "false", value: 0)
!34 = !DIEnumerator(name: "true", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !36, line: 364, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!37 = !{!38, !39, !40, !41, !42, !43, !44}
!38 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!39 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!40 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!41 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!42 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!43 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!44 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!45 = !{!46, !51, !53, !55, !59, !63, !66, !60, !67, !56, !65, !825, !826, !2274}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !47, line: 19, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !52, line: 421, baseType: !53)
!52 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !47, line: 21, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !49, line: 27, baseType: !7)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !52, line: 127, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !47, line: 23, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !49, line: 31, baseType: !58)
!58 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !47, line: 17, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !49, line: 21, baseType: !62)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !64, line: 42, baseType: !65)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !69)
!69 = !{!70, !812, !813, !814, !815, !821, !822, !823, !824}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !68, file: !6, line: 134, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !73, line: 369, size: 576, elements: !74)
!73 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!74 = !{!75, !83, !96, !108, !121, !135, !144, !461, !478, !494, !507, !585, !597, !611, !621, !639, !661, !680, !699, !718, !731, !758, !775, !788, !802, !811}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !72, file: !73, line: 370, baseType: !76, size: 128)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !73, line: 73, size: 128, elements: !77)
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !76, file: !73, line: 74, baseType: !71, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !76, file: !73, line: 74, baseType: !60, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !73, line: 74, baseType: !60, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !76, file: !73, line: 74, baseType: !46, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !73, line: 74, baseType: !60, size: 8, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !72, file: !73, line: 371, baseType: !84, size: 192)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !73, line: 76, size: 192, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !95}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !84, file: !73, line: 77, baseType: !71, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !73, line: 77, baseType: !60, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !73, line: 77, baseType: !60, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !84, file: !73, line: 77, baseType: !46, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !73, line: 77, baseType: !60, size: 8, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !84, file: !73, line: 77, baseType: !92, size: 24, offset: 104)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 24, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !84, file: !73, line: 78, baseType: !56, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !72, file: !73, line: 372, baseType: !97, size: 256)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !73, line: 93, size: 256, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !107}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !73, line: 94, baseType: !71, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !73, line: 94, baseType: !60, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !73, line: 94, baseType: !60, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !73, line: 94, baseType: !46, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !73, line: 94, baseType: !60, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !97, file: !73, line: 94, baseType: !105, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !97, file: !73, line: 94, baseType: !53, size: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !72, file: !73, line: 373, baseType: !109, size: 384)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !73, line: 97, size: 384, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !109, file: !73, line: 98, baseType: !71, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !109, file: !73, line: 98, baseType: !60, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !73, line: 98, baseType: !60, size: 8, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !109, file: !73, line: 98, baseType: !46, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !73, line: 98, baseType: !60, size: 8, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !109, file: !73, line: 98, baseType: !59, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !109, file: !73, line: 98, baseType: !53, size: 32, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !109, file: !73, line: 99, baseType: !53, size: 32, offset: 224)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !109, file: !73, line: 100, baseType: !59, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !109, file: !73, line: 101, baseType: !67, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !72, file: !73, line: 374, baseType: !122, size: 384)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !73, line: 104, size: 384, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130, !132, !133, !134}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !122, file: !73, line: 105, baseType: !71, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !122, file: !73, line: 105, baseType: !60, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !73, line: 105, baseType: !60, size: 8, offset: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !122, file: !73, line: 105, baseType: !46, size: 16, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !73, line: 105, baseType: !60, size: 8, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !122, file: !73, line: 105, baseType: !67, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !122, file: !73, line: 106, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !122, file: !73, line: 107, baseType: !59, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !122, file: !73, line: 108, baseType: !53, size: 32, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !122, file: !73, line: 109, baseType: !53, size: 32, offset: 352)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !72, file: !73, line: 375, baseType: !136, size: 192)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !73, line: 118, size: 192, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !136, file: !73, line: 119, baseType: !71, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !136, file: !73, line: 119, baseType: !60, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !73, line: 119, baseType: !60, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !136, file: !73, line: 119, baseType: !46, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !73, line: 119, baseType: !60, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !136, file: !73, line: 119, baseType: !66, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !72, file: !73, line: 376, baseType: !145, size: 448)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !73, line: 144, size: 448, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !458, !459, !460}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !145, file: !73, line: 145, baseType: !71, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !145, file: !73, line: 145, baseType: !60, size: 8, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !73, line: 145, baseType: !60, size: 8, offset: 72)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !145, file: !73, line: 145, baseType: !46, size: 16, offset: 80)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !73, line: 145, baseType: !60, size: 8, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !145, file: !73, line: 145, baseType: !60, size: 8, offset: 104)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !145, file: !73, line: 146, baseType: !60, size: 8, offset: 112)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !145, file: !73, line: 147, baseType: !60, size: 8, offset: 120)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !145, file: !73, line: 148, baseType: !71, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !145, file: !73, line: 149, baseType: !71, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !145, file: !73, line: 150, baseType: !59, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !145, file: !73, line: 154, baseType: !159, size: 64, offset: 320)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !73, line: 151, size: 64, elements: !160)
!160 = !{!161, !457}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !159, file: !73, line: 152, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!51, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !168, line: 37, size: 9024, elements: !169)
!168 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !403, !404, !405, !406, !407, !411, !413, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !440, !441, !442, !443, !444, !445, !446, !447, !449, !455}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !168, line: 38, baseType: !166, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !167, file: !168, line: 39, baseType: !60, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !167, file: !168, line: 40, baseType: !60, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !167, file: !168, line: 41, baseType: !46, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !167, file: !168, line: 42, baseType: !60, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !167, file: !168, line: 43, baseType: !60, size: 8, offset: 104)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !167, file: !168, line: 44, baseType: !60, size: 8, offset: 112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !167, file: !168, line: 45, baseType: !178, size: 16, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !52, line: 445, baseType: !46)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !167, file: !168, line: 46, baseType: !60, size: 8, offset: 144)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !167, file: !168, line: 47, baseType: !60, size: 8, offset: 152)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !167, file: !168, line: 48, baseType: !60, size: 8, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !167, file: !168, line: 49, baseType: !60, size: 8, offset: 168)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !167, file: !168, line: 50, baseType: !60, size: 8, offset: 176)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !167, file: !168, line: 51, baseType: !60, size: 8, offset: 184)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !167, file: !168, line: 52, baseType: !60, size: 8, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !167, file: !168, line: 53, baseType: !60, size: 8, offset: 200)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !167, file: !168, line: 54, baseType: !59, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !167, file: !168, line: 55, baseType: !53, size: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !167, file: !168, line: 56, baseType: !53, size: 32, offset: 352)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !167, file: !168, line: 57, baseType: !53, size: 32, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !167, file: !168, line: 58, baseType: !53, size: 32, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !167, file: !168, line: 60, baseType: !193, size: 640, offset: 448)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !284, !285, !401, !402}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !193, file: !6, line: 910, baseType: !59, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !6, line: 911, baseType: !59, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !193, file: !6, line: 912, baseType: !59, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !193, file: !6, line: 913, baseType: !59, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !193, file: !6, line: 914, baseType: !59, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !193, file: !6, line: 915, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !203)
!203 = !{!204, !224, !240}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !202, file: !6, line: 892, baseType: !205, size: 448)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !223}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !6, line: 845, baseType: !201, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !205, file: !6, line: 845, baseType: !60, size: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !6, line: 845, baseType: !60, size: 8, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !205, file: !6, line: 845, baseType: !46, size: 16, offset: 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !205, file: !6, line: 845, baseType: !59, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !6, line: 845, baseType: !201, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !6, line: 845, baseType: !67, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !205, file: !6, line: 845, baseType: !215, size: 64, offset: 320)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !215, file: !6, line: 733, baseType: !56, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !215, file: !6, line: 734, baseType: !53, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !215, file: !6, line: 735, baseType: !105, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !215, file: !6, line: 736, baseType: !59, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !6, line: 737, baseType: !105, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !215, file: !6, line: 738, baseType: !201, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !205, file: !6, line: 845, baseType: !60, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !202, file: !6, line: 893, baseType: !225, size: 640)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !6, line: 852, baseType: !201, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !6, line: 852, baseType: !60, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !6, line: 852, baseType: !60, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !225, file: !6, line: 852, baseType: !46, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !225, file: !6, line: 852, baseType: !59, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !6, line: 852, baseType: !201, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !225, file: !6, line: 852, baseType: !67, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !6, line: 852, baseType: !215, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !225, file: !6, line: 852, baseType: !60, size: 8, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !225, file: !6, line: 852, baseType: !105, size: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !225, file: !6, line: 853, baseType: !59, size: 64, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !225, file: !6, line: 854, baseType: !53, size: 32, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !6, line: 855, baseType: !53, size: 32, offset: 608)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !202, file: !6, line: 894, baseType: !241, size: 1600)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !241, file: !6, line: 863, baseType: !201, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !6, line: 863, baseType: !60, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !6, line: 863, baseType: !60, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !241, file: !6, line: 863, baseType: !46, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !241, file: !6, line: 863, baseType: !59, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !6, line: 863, baseType: !201, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !241, file: !6, line: 863, baseType: !67, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !6, line: 863, baseType: !215, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !241, file: !6, line: 863, baseType: !60, size: 8, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !241, file: !6, line: 863, baseType: !201, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !241, file: !6, line: 864, baseType: !201, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !241, file: !6, line: 865, baseType: !105, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !241, file: !6, line: 866, baseType: !60, size: 8, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !241, file: !6, line: 867, baseType: !105, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !241, file: !6, line: 868, baseType: !105, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !241, file: !6, line: 869, baseType: !105, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !241, file: !6, line: 870, baseType: !260, size: 32, offset: 896)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 32, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 4)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !241, file: !6, line: 871, baseType: !53, size: 32, offset: 928)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !241, file: !6, line: 872, baseType: !53, size: 32, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !241, file: !6, line: 873, baseType: !53, size: 32, offset: 992)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !241, file: !6, line: 874, baseType: !53, size: 32, offset: 1024)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !241, file: !6, line: 875, baseType: !53, size: 32, offset: 1056)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !241, file: !6, line: 876, baseType: !53, size: 32, offset: 1088)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !241, file: !6, line: 877, baseType: !53, size: 32, offset: 1120)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !241, file: !6, line: 878, baseType: !53, size: 32, offset: 1152)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !241, file: !6, line: 879, baseType: !53, size: 32, offset: 1184)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !241, file: !6, line: 880, baseType: !53, size: 32, offset: 1216)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !241, file: !6, line: 881, baseType: !53, size: 32, offset: 1248)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !241, file: !6, line: 882, baseType: !53, size: 32, offset: 1280)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !241, file: !6, line: 883, baseType: !53, size: 32, offset: 1312)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !241, file: !6, line: 884, baseType: !46, size: 16, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !241, file: !6, line: 885, baseType: !60, size: 8, offset: 1360)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !241, file: !6, line: 886, baseType: !60, size: 8, offset: 1368)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !241, file: !6, line: 887, baseType: !60, size: 8, offset: 1376)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !241, file: !6, line: 888, baseType: !281, size: 160, offset: 1384)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 160, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 20)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !193, file: !6, line: 916, baseType: !67, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !193, file: !6, line: 917, baseType: !286, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !288)
!288 = !{!289, !297, !310, !319, !328, !341, !355, !367, !379}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !287, file: !6, line: 680, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !291)
!291 = !{!292, !293, !294, !295, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !6, line: 576, baseType: !66, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !290, file: !6, line: 576, baseType: !60, size: 8, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !6, line: 576, baseType: !60, size: 8, offset: 72)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !290, file: !6, line: 576, baseType: !46, size: 16, offset: 80)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !6, line: 576, baseType: !46, size: 16, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !287, file: !6, line: 681, baseType: !298, size: 384)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !6, line: 605, baseType: !66, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !6, line: 605, baseType: !60, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !6, line: 605, baseType: !60, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !6, line: 605, baseType: !46, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !6, line: 605, baseType: !46, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !298, file: !6, line: 606, baseType: !46, size: 16, offset: 112)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !298, file: !6, line: 607, baseType: !201, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !298, file: !6, line: 608, baseType: !59, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !298, file: !6, line: 609, baseType: !59, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !298, file: !6, line: 610, baseType: !56, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !287, file: !6, line: 682, baseType: !311, size: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !6, line: 583, baseType: !66, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !6, line: 583, baseType: !60, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !6, line: 583, baseType: !60, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !6, line: 583, baseType: !46, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !6, line: 583, baseType: !46, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !311, file: !6, line: 584, baseType: !71, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !287, file: !6, line: 683, baseType: !320, size: 192)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !6, line: 617, baseType: !66, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !6, line: 617, baseType: !60, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !6, line: 617, baseType: !60, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !6, line: 617, baseType: !46, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !6, line: 617, baseType: !46, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !320, file: !6, line: 618, baseType: !67, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !287, file: !6, line: 684, baseType: !329, size: 448)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !6, line: 622, baseType: !66, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !329, file: !6, line: 622, baseType: !60, size: 8, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !6, line: 622, baseType: !60, size: 8, offset: 72)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !329, file: !6, line: 622, baseType: !46, size: 16, offset: 80)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !329, file: !6, line: 622, baseType: !46, size: 16, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !329, file: !6, line: 623, baseType: !53, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !329, file: !6, line: 624, baseType: !201, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !329, file: !6, line: 625, baseType: !59, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !329, file: !6, line: 626, baseType: !59, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !329, file: !6, line: 627, baseType: !53, size: 32, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !287, file: !6, line: 685, baseType: !342, size: 512)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !6, line: 591, baseType: !66, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !6, line: 591, baseType: !60, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !6, line: 591, baseType: !60, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !6, line: 591, baseType: !46, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !6, line: 591, baseType: !46, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !342, file: !6, line: 592, baseType: !53, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !342, file: !6, line: 593, baseType: !71, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !342, file: !6, line: 594, baseType: !71, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !342, file: !6, line: 595, baseType: !166, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !342, file: !6, line: 596, baseType: !66, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !342, file: !6, line: 597, baseType: !53, size: 32, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !287, file: !6, line: 686, baseType: !356, size: 320)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !6, line: 635, baseType: !66, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !6, line: 635, baseType: !60, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !6, line: 635, baseType: !60, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !6, line: 635, baseType: !46, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !6, line: 635, baseType: !46, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !356, file: !6, line: 636, baseType: !60, size: 8, offset: 112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !356, file: !6, line: 637, baseType: !166, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !356, file: !6, line: 638, baseType: !71, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !356, file: !6, line: 639, baseType: !56, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !287, file: !6, line: 687, baseType: !368, size: 640)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !6, line: 647, baseType: !66, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !6, line: 647, baseType: !60, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !6, line: 647, baseType: !60, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !6, line: 647, baseType: !46, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !368, file: !6, line: 647, baseType: !46, size: 16, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !368, file: !6, line: 648, baseType: !376, size: 512, offset: 128)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 512, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !287, file: !6, line: 688, baseType: !380, size: 320)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !6, line: 670, baseType: !66, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !380, file: !6, line: 670, baseType: !60, size: 8, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !6, line: 670, baseType: !60, size: 8, offset: 72)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !380, file: !6, line: 670, baseType: !46, size: 16, offset: 80)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !380, file: !6, line: 670, baseType: !46, size: 16, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !380, file: !6, line: 671, baseType: !60, size: 8, offset: 112)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !380, file: !6, line: 672, baseType: !67, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !380, file: !6, line: 673, baseType: !71, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !380, file: !6, line: 674, baseType: !391, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !393)
!393 = !{!394, !400}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !392, file: !6, line: 661, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !52, line: 1061, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399, !53, !66}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !52, line: 424, baseType: !66)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !392, file: !6, line: 662, baseType: !66, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !193, file: !6, line: 918, baseType: !201, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !193, file: !6, line: 919, baseType: !53, size: 32, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !167, file: !168, line: 61, baseType: !53, size: 32, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !167, file: !168, line: 62, baseType: !53, size: 32, offset: 1120)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !167, file: !168, line: 63, baseType: !46, size: 16, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !167, file: !168, line: 64, baseType: !60, size: 8, offset: 1168)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !167, file: !168, line: 66, baseType: !408, size: 2688, offset: 1216)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2688, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !167, file: !168, line: 67, baseType: !412, size: 3072, offset: 3904)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 3072, elements: !377)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !167, file: !168, line: 68, baseType: !414, size: 576, offset: 6976)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 576, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 9)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !167, file: !168, line: 69, baseType: !131, size: 64, offset: 7552)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !167, file: !168, line: 71, baseType: !59, size: 64, offset: 7616)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !167, file: !168, line: 72, baseType: !131, size: 64, offset: 7680)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !167, file: !168, line: 73, baseType: !286, size: 64, offset: 7744)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !167, file: !168, line: 74, baseType: !67, size: 64, offset: 7808)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !167, file: !168, line: 75, baseType: !71, size: 64, offset: 7872)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !167, file: !168, line: 76, baseType: !67, size: 64, offset: 7936)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !167, file: !168, line: 77, baseType: !201, size: 64, offset: 8000)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !167, file: !168, line: 78, baseType: !71, size: 64, offset: 8064)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !167, file: !168, line: 79, baseType: !67, size: 64, offset: 8128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !167, file: !168, line: 80, baseType: !105, size: 64, offset: 8192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !167, file: !168, line: 81, baseType: !201, size: 64, offset: 8256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !167, file: !168, line: 82, baseType: !430, size: 64, offset: 8320)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !433)
!433 = !{!434, !435, !436, !437, !438, !439}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !432, file: !6, line: 722, baseType: !53, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !432, file: !6, line: 723, baseType: !53, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !6, line: 724, baseType: !46, size: 16, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !432, file: !6, line: 725, baseType: !60, size: 8, offset: 80)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !432, file: !6, line: 726, baseType: !60, size: 8, offset: 88)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !432, file: !6, line: 727, baseType: !60, size: 8, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !167, file: !168, line: 83, baseType: !201, size: 64, offset: 8384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !167, file: !168, line: 84, baseType: !71, size: 64, offset: 8448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !167, file: !168, line: 85, baseType: !286, size: 64, offset: 8512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !167, file: !168, line: 86, baseType: !71, size: 64, offset: 8576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !167, file: !168, line: 87, baseType: !286, size: 64, offset: 8640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !167, file: !168, line: 88, baseType: !201, size: 64, offset: 8704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !167, file: !168, line: 89, baseType: !201, size: 64, offset: 8768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !167, file: !168, line: 90, baseType: !448, size: 64, offset: 8832)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !167, file: !168, line: 91, baseType: !450, size: 64, offset: 8896)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!51, !166, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !167, file: !168, line: 92, baseType: !456, size: 64, offset: 8960)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !163)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !159, file: !73, line: 153, baseType: !71, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !145, file: !73, line: 156, baseType: !53, size: 32, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !145, file: !73, line: 157, baseType: !178, size: 16, offset: 416)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !145, file: !73, line: 158, baseType: !60, size: 8, offset: 432)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !72, file: !73, line: 377, baseType: !462, size: 576)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !73, line: 122, size: 576, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !462, file: !73, line: 123, baseType: !71, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !462, file: !73, line: 123, baseType: !60, size: 8, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !73, line: 123, baseType: !60, size: 8, offset: 72)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !462, file: !73, line: 123, baseType: !46, size: 16, offset: 80)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !73, line: 123, baseType: !60, size: 8, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !462, file: !73, line: 123, baseType: !60, size: 8, offset: 104)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !462, file: !73, line: 124, baseType: !46, size: 16, offset: 112)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !462, file: !73, line: 125, baseType: !66, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !462, file: !73, line: 126, baseType: !56, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !462, file: !73, line: 127, baseType: !448, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !462, file: !73, line: 128, baseType: !71, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !73, line: 129, baseType: !71, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !462, file: !73, line: 130, baseType: !67, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !462, file: !73, line: 131, baseType: !60, size: 8, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !72, file: !73, line: 378, baseType: !479, size: 512)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !73, line: 134, size: 512, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !492, !493}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !479, file: !73, line: 135, baseType: !71, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !479, file: !73, line: 135, baseType: !60, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !73, line: 135, baseType: !60, size: 8, offset: 72)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !479, file: !73, line: 135, baseType: !46, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !73, line: 135, baseType: !60, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !479, file: !73, line: 135, baseType: !60, size: 8, offset: 104)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !479, file: !73, line: 136, baseType: !67, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !479, file: !73, line: 137, baseType: !71, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !479, file: !73, line: 138, baseType: !71, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !479, file: !73, line: 139, baseType: !491, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !52, line: 129, baseType: !56)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !479, file: !73, line: 140, baseType: !53, size: 32, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !479, file: !73, line: 141, baseType: !66, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !72, file: !73, line: 379, baseType: !495, size: 320)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !73, line: 185, size: 320, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !506}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !73, line: 186, baseType: !71, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !73, line: 186, baseType: !60, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !73, line: 186, baseType: !60, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !73, line: 186, baseType: !46, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !73, line: 186, baseType: !60, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !495, file: !73, line: 186, baseType: !503, size: 128, offset: 128)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 128, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 2)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !73, line: 186, baseType: !71, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !72, file: !73, line: 380, baseType: !508, size: 384)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !73, line: 188, size: 384, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !508, file: !73, line: 189, baseType: !71, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !73, line: 189, baseType: !60, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !73, line: 189, baseType: !60, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !508, file: !73, line: 189, baseType: !46, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !73, line: 189, baseType: !60, size: 8, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !508, file: !73, line: 190, baseType: !503, size: 128, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !508, file: !73, line: 190, baseType: !71, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !508, file: !73, line: 190, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !520)
!520 = !{!521, !522, !523, !524, !532, !547, !579, !580, !581, !582, !583, !584}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !6, line: 481, baseType: !67, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !519, file: !6, line: 482, baseType: !518, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !6, line: 483, baseType: !518, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !519, file: !6, line: 484, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !527)
!527 = !{!528, !529, !530, !531}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !526, file: !6, line: 498, baseType: !525, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !6, line: 499, baseType: !525, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !526, file: !6, line: 500, baseType: !518, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !526, file: !6, line: 501, baseType: !53, size: 32, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !519, file: !6, line: 485, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !535)
!535 = !{!536, !541, !542, !543, !544, !545, !546}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !534, file: !6, line: 467, baseType: !537, size: 128)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !537, file: !6, line: 460, baseType: !60, size: 8)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !537, file: !6, line: 461, baseType: !56, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !534, file: !6, line: 468, baseType: !537, size: 128, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !534, file: !6, line: 469, baseType: !46, size: 16, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !534, file: !6, line: 470, baseType: !60, size: 8, offset: 272)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !534, file: !6, line: 471, baseType: !60, size: 8, offset: 280)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !534, file: !6, line: 472, baseType: !60, size: 8, offset: 288)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !534, file: !6, line: 473, baseType: !60, size: 8, offset: 296)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !519, file: !6, line: 486, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !550)
!550 = !{!551, !574, !575, !576, !577, !578}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !549, file: !6, line: 449, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !553)
!553 = !{!554, !555, !568}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !552, file: !6, line: 439, baseType: !67, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !552, file: !6, line: 440, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !558)
!558 = !{!559, !564, !565, !566, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !557, file: !6, line: 420, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !52, line: 1058, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!53, !399, !53, !66}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !557, file: !6, line: 421, baseType: !66, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !557, file: !6, line: 422, baseType: !67, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !557, file: !6, line: 423, baseType: !60, size: 8, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !557, file: !6, line: 424, baseType: !60, size: 8, offset: 200)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !552, file: !6, line: 441, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !570, file: !6, line: 430, baseType: !67, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !6, line: 431, baseType: !569, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !549, file: !6, line: 450, baseType: !533, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !6, line: 451, baseType: !60, size: 8, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !549, file: !6, line: 452, baseType: !60, size: 8, offset: 136)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !549, file: !6, line: 453, baseType: !60, size: 8, offset: 144)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !549, file: !6, line: 454, baseType: !60, size: 8, offset: 152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !519, file: !6, line: 487, baseType: !56, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !519, file: !6, line: 488, baseType: !53, size: 32, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !519, file: !6, line: 489, baseType: !46, size: 16, offset: 480)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !519, file: !6, line: 490, baseType: !46, size: 16, offset: 496)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !519, file: !6, line: 491, baseType: !60, size: 8, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !519, file: !6, line: 492, baseType: !60, size: 8, offset: 520)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !72, file: !73, line: 381, baseType: !586, size: 384)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !73, line: 193, size: 384, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !73, line: 194, baseType: !71, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !73, line: 194, baseType: !60, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !73, line: 194, baseType: !60, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !73, line: 194, baseType: !46, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !73, line: 194, baseType: !60, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !586, file: !73, line: 194, baseType: !503, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !586, file: !73, line: 194, baseType: !71, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !586, file: !73, line: 194, baseType: !53, size: 32, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !586, file: !73, line: 195, baseType: !53, size: 32, offset: 352)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !72, file: !73, line: 382, baseType: !598, size: 384)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !73, line: 198, size: 384, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !73, line: 199, baseType: !71, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !73, line: 199, baseType: !60, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !73, line: 199, baseType: !60, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !73, line: 199, baseType: !46, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !73, line: 199, baseType: !60, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !598, file: !73, line: 201, baseType: !60, size: 8, offset: 104)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !598, file: !73, line: 202, baseType: !60, size: 8, offset: 112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !598, file: !73, line: 203, baseType: !503, size: 128, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !598, file: !73, line: 203, baseType: !71, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !598, file: !73, line: 203, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !52, line: 128, baseType: !56)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !72, file: !73, line: 383, baseType: !612, size: 320)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !73, line: 206, size: 320, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !73, line: 207, baseType: !71, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !73, line: 207, baseType: !60, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !73, line: 207, baseType: !60, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !73, line: 207, baseType: !46, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !73, line: 207, baseType: !60, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !612, file: !73, line: 207, baseType: !503, size: 128, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !612, file: !73, line: 207, baseType: !71, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !72, file: !73, line: 384, baseType: !622, size: 384)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !73, line: 234, size: 384, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !622, file: !73, line: 235, baseType: !71, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !622, file: !73, line: 235, baseType: !60, size: 8, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !73, line: 235, baseType: !60, size: 8, offset: 72)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !622, file: !73, line: 235, baseType: !46, size: 16, offset: 80)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !73, line: 235, baseType: !60, size: 8, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !622, file: !73, line: 235, baseType: !60, size: 8, offset: 104)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !622, file: !73, line: 235, baseType: !60, size: 8, offset: 112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !622, file: !73, line: 235, baseType: !60, size: 8, offset: 120)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !73, line: 235, baseType: !67, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !622, file: !73, line: 235, baseType: !53, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !622, file: !73, line: 235, baseType: !53, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !622, file: !73, line: 235, baseType: !53, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !622, file: !73, line: 235, baseType: !60, size: 8, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !622, file: !73, line: 235, baseType: !60, size: 8, offset: 296)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !622, file: !73, line: 235, baseType: !71, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !72, file: !73, line: 385, baseType: !640, size: 576)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !73, line: 238, size: 576, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !640, file: !73, line: 239, baseType: !71, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !640, file: !73, line: 239, baseType: !60, size: 8, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !73, line: 239, baseType: !60, size: 8, offset: 72)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !640, file: !73, line: 239, baseType: !46, size: 16, offset: 80)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !73, line: 239, baseType: !60, size: 8, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !640, file: !73, line: 239, baseType: !60, size: 8, offset: 104)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !640, file: !73, line: 239, baseType: !60, size: 8, offset: 112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !640, file: !73, line: 239, baseType: !60, size: 8, offset: 120)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !640, file: !73, line: 239, baseType: !67, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !640, file: !73, line: 239, baseType: !53, size: 32, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !640, file: !73, line: 239, baseType: !53, size: 32, offset: 224)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !640, file: !73, line: 239, baseType: !53, size: 32, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !640, file: !73, line: 239, baseType: !60, size: 8, offset: 288)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !640, file: !73, line: 239, baseType: !60, size: 8, offset: 296)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !640, file: !73, line: 239, baseType: !46, size: 16, offset: 304)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !640, file: !73, line: 240, baseType: !71, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !640, file: !73, line: 241, baseType: !59, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !640, file: !73, line: 242, baseType: !46, size: 16, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !640, file: !73, line: 243, baseType: !59, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !72, file: !73, line: 386, baseType: !662, size: 384)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !73, line: 263, size: 384, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !662, file: !73, line: 264, baseType: !71, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 72)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !662, file: !73, line: 264, baseType: !46, size: 16, offset: 80)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 104)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 120)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !662, file: !73, line: 264, baseType: !67, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !662, file: !73, line: 264, baseType: !53, size: 32, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !662, file: !73, line: 264, baseType: !53, size: 32, offset: 224)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !662, file: !73, line: 264, baseType: !53, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 288)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 296)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !662, file: !73, line: 264, baseType: !60, size: 8, offset: 304)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !662, file: !73, line: 265, baseType: !71, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !72, file: !73, line: 387, baseType: !681, size: 448)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !73, line: 246, size: 448, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !681, file: !73, line: 247, baseType: !71, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !681, file: !73, line: 247, baseType: !60, size: 8, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !73, line: 247, baseType: !60, size: 8, offset: 72)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !681, file: !73, line: 247, baseType: !46, size: 16, offset: 80)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !73, line: 247, baseType: !60, size: 8, offset: 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !681, file: !73, line: 247, baseType: !60, size: 8, offset: 104)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !681, file: !73, line: 247, baseType: !60, size: 8, offset: 112)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !681, file: !73, line: 247, baseType: !60, size: 8, offset: 120)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !681, file: !73, line: 247, baseType: !67, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !681, file: !73, line: 247, baseType: !53, size: 32, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !681, file: !73, line: 247, baseType: !53, size: 32, offset: 224)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !681, file: !73, line: 247, baseType: !53, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !681, file: !73, line: 247, baseType: !60, size: 8, offset: 288)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !681, file: !73, line: 247, baseType: !60, size: 8, offset: 296)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !681, file: !73, line: 247, baseType: !71, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !681, file: !73, line: 248, baseType: !71, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !72, file: !73, line: 388, baseType: !700, size: 448)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !73, line: 251, size: 448, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !700, file: !73, line: 252, baseType: !71, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !73, line: 252, baseType: !60, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !73, line: 252, baseType: !60, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !700, file: !73, line: 252, baseType: !46, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !73, line: 252, baseType: !60, size: 8, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !700, file: !73, line: 252, baseType: !60, size: 8, offset: 104)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !700, file: !73, line: 252, baseType: !60, size: 8, offset: 112)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !700, file: !73, line: 252, baseType: !60, size: 8, offset: 120)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !73, line: 252, baseType: !67, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !700, file: !73, line: 252, baseType: !53, size: 32, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !700, file: !73, line: 252, baseType: !53, size: 32, offset: 224)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !700, file: !73, line: 252, baseType: !53, size: 32, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !700, file: !73, line: 252, baseType: !60, size: 8, offset: 288)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !700, file: !73, line: 252, baseType: !60, size: 8, offset: 296)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !700, file: !73, line: 257, baseType: !71, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !700, file: !73, line: 258, baseType: !71, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !72, file: !73, line: 389, baseType: !719, size: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !73, line: 274, size: 512, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !719, file: !73, line: 275, baseType: !71, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !73, line: 275, baseType: !60, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !73, line: 275, baseType: !60, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !719, file: !73, line: 275, baseType: !46, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !73, line: 275, baseType: !60, size: 8, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !719, file: !73, line: 275, baseType: !67, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !719, file: !73, line: 276, baseType: !53, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !719, file: !73, line: 277, baseType: !395, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !719, file: !73, line: 278, baseType: !66, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !73, line: 279, baseType: !503, size: 128, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !72, file: !73, line: 390, baseType: !732, size: 576)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !73, line: 282, size: 576, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !747, !748, !749, !750, !756, !757}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !73, line: 283, baseType: !71, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !73, line: 283, baseType: !60, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !73, line: 283, baseType: !60, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !73, line: 283, baseType: !46, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !73, line: 283, baseType: !60, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !732, file: !73, line: 283, baseType: !60, size: 8, offset: 104)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !732, file: !73, line: 284, baseType: !60, size: 8, offset: 112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !732, file: !73, line: 285, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !52, line: 1093, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!51, !53, !491, !53, !746, !66, !66}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !73, line: 286, baseType: !67, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !732, file: !73, line: 287, baseType: !66, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !732, file: !73, line: 288, baseType: !66, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !732, file: !73, line: 289, baseType: !751, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !52, line: 1126, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!51, !399, !53, !66, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !732, file: !73, line: 290, baseType: !71, size: 64, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !73, line: 291, baseType: !71, size: 64, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !72, file: !73, line: 391, baseType: !759, size: 512)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !73, line: 309, size: 512, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !73, line: 310, baseType: !71, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !73, line: 310, baseType: !60, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !73, line: 310, baseType: !60, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !73, line: 310, baseType: !46, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !73, line: 310, baseType: !60, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !759, file: !73, line: 310, baseType: !60, size: 8, offset: 104)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !759, file: !73, line: 311, baseType: !60, size: 8, offset: 112)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !759, file: !73, line: 312, baseType: !60, size: 8, offset: 120)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !759, file: !73, line: 313, baseType: !66, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !759, file: !73, line: 314, baseType: !67, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !759, file: !73, line: 315, baseType: !131, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !759, file: !73, line: 316, baseType: !59, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !759, file: !73, line: 317, baseType: !59, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !759, file: !73, line: 318, baseType: !53, size: 32, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !72, file: !73, line: 392, baseType: !776, size: 448)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !73, line: 342, size: 448, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !776, file: !73, line: 343, baseType: !71, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !776, file: !73, line: 343, baseType: !60, size: 8, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !776, file: !73, line: 343, baseType: !60, size: 8, offset: 72)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !776, file: !73, line: 343, baseType: !46, size: 16, offset: 80)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !73, line: 343, baseType: !60, size: 8, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !776, file: !73, line: 343, baseType: !67, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !776, file: !73, line: 344, baseType: !67, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !776, file: !73, line: 345, baseType: !66, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !776, file: !73, line: 346, baseType: !59, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !776, file: !73, line: 347, baseType: !53, size: 32, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !72, file: !73, line: 393, baseType: !789, size: 256)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !73, line: 352, size: 256, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796, !801}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !789, file: !73, line: 353, baseType: !71, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !789, file: !73, line: 353, baseType: !60, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !789, file: !73, line: 353, baseType: !60, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !789, file: !73, line: 353, baseType: !46, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !73, line: 353, baseType: !60, size: 8, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !789, file: !73, line: 353, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !52, line: 1064, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !399, !66}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !789, file: !73, line: 354, baseType: !66, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !72, file: !73, line: 394, baseType: !803, size: 192)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !73, line: 359, size: 192, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !803, file: !73, line: 360, baseType: !71, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !803, file: !73, line: 360, baseType: !60, size: 8, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !73, line: 360, baseType: !60, size: 8, offset: 72)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !803, file: !73, line: 360, baseType: !46, size: 16, offset: 80)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !73, line: 360, baseType: !60, size: 8, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !73, line: 360, baseType: !71, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !72, file: !73, line: 401, baseType: !68, size: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !6, line: 135, baseType: !60, size: 8, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !6, line: 136, baseType: !60, size: 8, offset: 72)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !6, line: 137, baseType: !46, size: 16, offset: 80)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !6, line: 138, baseType: !816, size: 32, offset: 96)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !817, line: 328, size: 32, elements: !818)
!817 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !816, file: !817, line: 329, baseType: !53, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !816, file: !817, line: 330, baseType: !260, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !68, file: !6, line: 139, baseType: !67, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !68, file: !6, line: 140, baseType: !67, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !68, file: !6, line: 141, baseType: !67, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !68, file: !6, line: 142, baseType: !178, size: 16, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !828, line: 746, size: 58368, elements: !829)
!828 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!829 = !{!830, !838, !839, !840, !851, !852, !853, !854, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !940, !951, !1073, !1077, !1080, !1111, !1112, !1113, !1114, !1125, !1127, !1128, !1129, !1130, !1131, !1132, !1143, !1144, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1161, !1162, !1169, !1170, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1448, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1504, !1506, !1507, !1508, !1520, !1522, !1523, !1524, !1525, !1526, !1527, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1551, !1557, !1561, !1562, !1563, !1566, !1570, !1573, !1580, !1585, !1588, !1591, !1594, !1597, !1600, !1603, !1609, !1610, !1611, !1617, !1618, !1622, !1623, !1624, !1627, !1634, !1635, !1644, !1654, !1655, !1656, !1657, !1658, !1663, !1664, !1665, !1668, !1669, !1672, !1675, !1678, !1681, !1684, !1685, !1772, !1783, !1784, !1785, !1786, !1792, !1797, !1798, !1799, !1802, !1803, !1806, !1809, !1810, !1813, !1814, !1815, !1818, !1819, !1820, !1823, !1824, !1825, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1857, !1860, !1928, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1940, !2012, !2014, !2015, !2016, !2017, !2018, !2030, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2047, !2048, !2049}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !827, file: !828, line: 752, baseType: !831, size: 192)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !832, line: 56, size: 192, elements: !833)
!832 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!833 = !{!834, !835, !836, !837}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !832, line: 57, baseType: !65, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !831, file: !832, line: 58, baseType: !65, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !831, file: !832, line: 59, baseType: !53, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !831, file: !832, line: 61, baseType: !53, size: 32, offset: 160)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !827, file: !828, line: 754, baseType: !7, size: 32, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !827, file: !828, line: 767, baseType: !66, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !827, file: !828, line: 768, baseType: !841, size: 32, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !842, line: 113, baseType: !843)
!842 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !842, line: 111, size: 32, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !843, file: !842, line: 112, baseType: !846, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !64, line: 174, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 172, size: 32, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !847, file: !64, line: 173, baseType: !850, size: 32)
!850 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !828, line: 770, baseType: !7, size: 32, offset: 352)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !827, file: !828, line: 771, baseType: !7, size: 32, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !827, file: !828, line: 774, baseType: !850, size: 32, offset: 416)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !827, file: !828, line: 775, baseType: !855, size: 128, offset: 448)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !856, line: 58, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!857 = !{!858, !864, !869, !870}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !855, file: !856, line: 59, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !860, line: 60, size: 64, elements: !861)
!860 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !859, file: !860, line: 61, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !856, line: 60, baseType: !865, size: 32, offset: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 60, size: 32, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !865, file: !856, line: 61, baseType: !7, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !865, file: !856, line: 62, baseType: !846, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !855, file: !856, line: 65, baseType: !46, size: 16, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !855, file: !856, line: 65, baseType: !46, size: 16, offset: 112)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !827, file: !828, line: 776, baseType: !7, size: 32, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !827, file: !828, line: 777, baseType: !65, size: 64, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !827, file: !828, line: 778, baseType: !826, size: 64, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !827, file: !828, line: 787, baseType: !850, size: 32, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !827, file: !828, line: 788, baseType: !850, size: 32, offset: 800)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !827, file: !828, line: 790, baseType: !850, size: 32, offset: 832)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !827, file: !828, line: 792, baseType: !850, size: 32, offset: 864)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !827, file: !828, line: 793, baseType: !850, size: 32, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !827, file: !828, line: 794, baseType: !850, size: 32, offset: 928)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !827, file: !828, line: 795, baseType: !7, size: 32, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !827, file: !828, line: 797, baseType: !882, size: 2048, offset: 1024)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !828, line: 551, size: 2048, elements: !883)
!883 = !{!884, !889, !897, !898, !899, !905, !906, !907, !908, !909, !910, !914, !915, !916, !917, !919, !922, !923, !924}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !882, file: !828, line: 553, baseType: !885, size: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !828, line: 411, size: 128, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !885, file: !828, line: 412, baseType: !65, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !885, file: !828, line: 413, baseType: !53, size: 32, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !882, file: !828, line: 554, baseType: !890, size: 192, align: 64, offset: 128)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !891, line: 5, size: 192, align: 64, elements: !892)
!891 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!892 = !{!893, !894, !896}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !890, file: !891, line: 6, baseType: !65, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !890, file: !891, line: 7, baseType: !895, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !890, file: !891, line: 8, baseType: !895, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !882, file: !828, line: 555, baseType: !56, size: 64, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !882, file: !828, line: 556, baseType: !56, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !882, file: !828, line: 558, baseType: !900, size: 128, offset: 448)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !64, line: 190, size: 128, elements: !901)
!901 = !{!902, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !900, file: !64, line: 191, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !900, file: !64, line: 191, baseType: !903, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !882, file: !828, line: 559, baseType: !7, size: 32, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !882, file: !828, line: 561, baseType: !56, size: 64, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !882, file: !828, line: 562, baseType: !56, size: 64, offset: 704)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !882, file: !828, line: 563, baseType: !56, size: 64, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !882, file: !828, line: 564, baseType: !56, size: 64, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !882, file: !828, line: 565, baseType: !911, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !47, line: 22, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !49, line: 30, baseType: !913)
!913 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !882, file: !828, line: 566, baseType: !56, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !882, file: !828, line: 568, baseType: !56, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !882, file: !828, line: 571, baseType: !850, size: 32, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !882, file: !828, line: 572, baseType: !918, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !882, file: !828, line: 574, baseType: !920, size: 64, offset: 1216)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !828, line: 49, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !882, file: !828, line: 576, baseType: !920, size: 64, offset: 1280)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !882, file: !828, line: 578, baseType: !65, size: 64, offset: 1344)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !882, file: !828, line: 588, baseType: !925, size: 512, align: 512, offset: 1536)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !828, line: 497, size: 512, align: 512, elements: !926)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934, !935}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !925, file: !828, line: 498, baseType: !56, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !925, file: !828, line: 499, baseType: !56, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !925, file: !828, line: 500, baseType: !56, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !925, file: !828, line: 501, baseType: !53, size: 32, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !925, file: !828, line: 502, baseType: !53, size: 32, offset: 224)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !925, file: !828, line: 503, baseType: !65, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !925, file: !828, line: 504, baseType: !65, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !925, file: !828, line: 505, baseType: !65, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !925, file: !828, line: 506, baseType: !936, size: 64, align: 64, offset: 448)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !828, line: 445, size: 64, align: 64, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !936, file: !828, line: 446, baseType: !7, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !936, file: !828, line: 447, baseType: !7, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !827, file: !828, line: 798, baseType: !941, size: 384, offset: 3072)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !828, line: 592, size: 384, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948, !949}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !941, file: !828, line: 593, baseType: !900, size: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !941, file: !828, line: 594, baseType: !65, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !941, file: !828, line: 595, baseType: !65, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !941, file: !828, line: 596, baseType: !7, size: 32, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !941, file: !828, line: 597, baseType: !50, size: 16, offset: 288)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !941, file: !828, line: 598, baseType: !50, size: 16, offset: 304)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !941, file: !828, line: 600, baseType: !950, size: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !827, file: !828, line: 799, baseType: !952, size: 1792, offset: 3456)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !828, line: 610, size: 1792, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !1070, !1071}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !952, file: !828, line: 611, baseType: !890, size: 192, align: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !952, file: !828, line: 618, baseType: !56, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !952, file: !828, line: 619, baseType: !56, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !952, file: !828, line: 620, baseType: !56, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !952, file: !828, line: 621, baseType: !56, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !952, file: !828, line: 622, baseType: !56, size: 64, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !952, file: !828, line: 629, baseType: !911, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !952, file: !828, line: 630, baseType: !56, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !828, line: 631, baseType: !7, size: 32, offset: 640)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !952, file: !828, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !952, file: !828, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !952, file: !828, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !952, file: !828, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !952, file: !828, line: 662, baseType: !968, size: 512, offset: 704)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !969)
!969 = !{!970, !978, !979, !984, !1066, !1067, !1068, !1069}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !968, file: !13, line: 119, baseType: !971, size: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !972, line: 9, size: 256, elements: !973)
!972 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !971, file: !972, line: 10, baseType: !890, size: 192, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !971, file: !972, line: 11, baseType: !976, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !977, line: 29, baseType: !911)
!977 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !968, file: !13, line: 120, baseType: !976, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !968, file: !13, line: 121, baseType: !980, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!12, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !968, file: !13, line: 122, baseType: !985, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !987)
!987 = !{!988, !1034, !1035, !1039, !1049, !1050, !1061, !1065}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !986, file: !13, line: 160, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 215, size: 4608, align: 512, elements: !991)
!991 = !{!992, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !990, file: !13, line: 216, baseType: !993, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !994, line: 23, baseType: !995)
!994 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !994, line: 14, size: 32, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !995, file: !994, line: 15, baseType: !998, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !999, line: 44, baseType: !1000)
!999 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !999, line: 14, size: 32, elements: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !999, line: 15, baseType: !1003, size: 32)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !999, line: 15, size: 32, elements: !1004)
!1004 = !{!1005, !1006, !1011}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1003, file: !999, line: 16, baseType: !846, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !999, line: 24, baseType: !1007, size: 16)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !999, line: 24, size: 16, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1007, file: !999, line: 25, baseType: !60, size: 8)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1007, file: !999, line: 26, baseType: !60, size: 8, offset: 8)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !999, line: 28, baseType: !1012, size: 32)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !999, line: 28, size: 32, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1012, file: !999, line: 29, baseType: !46, size: 16)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1012, file: !999, line: 30, baseType: !46, size: 16, offset: 16)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !990, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !990, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !990, file: !13, line: 219, baseType: !7, size: 32, offset: 96)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !990, file: !13, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !990, file: !13, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !990, file: !13, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !990, file: !13, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !990, file: !13, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !990, file: !13, line: 226, baseType: !7, size: 32, offset: 160)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !990, file: !13, line: 227, baseType: !50, size: 16, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !990, file: !13, line: 228, baseType: !50, size: 16, offset: 208)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !990, file: !13, line: 229, baseType: !7, size: 32, offset: 224)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !990, file: !13, line: 235, baseType: !976, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !990, file: !13, line: 236, baseType: !983, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !990, file: !13, line: 237, baseType: !976, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !990, file: !13, line: 238, baseType: !983, size: 64, offset: 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !990, file: !13, line: 239, baseType: !1033, size: 4096, align: 512, offset: 512)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 4096, align: 512, elements: !377)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !986, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !986, file: !13, line: 162, baseType: !1036, size: 32, offset: 96)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !64, line: 32, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !1038, line: 96, baseType: !850)
!1038 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !986, file: !13, line: 163, baseType: !1040, size: 32, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1041, line: 274, baseType: !1042)
!1041 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1041, line: 274, size: 32, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1042, file: !1041, line: 274, baseType: !1045, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1041, line: 69, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1041, line: 64, size: 32, elements: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1046, file: !1041, line: 65, baseType: !7, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !986, file: !13, line: 164, baseType: !983, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !986, file: !13, line: 165, baseType: !1051, size: 128, offset: 256)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !972, line: 14, size: 128, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1051, file: !972, line: 15, baseType: !1054, size: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !891, line: 26, size: 128, elements: !1055)
!1055 = !{!1056, !1060}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1054, file: !891, line: 27, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !891, line: 12, size: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1057, file: !891, line: 13, baseType: !895, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1054, file: !891, line: 28, baseType: !895, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !986, file: !13, line: 166, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!976}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !986, file: !13, line: 167, baseType: !976, size: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !968, file: !13, line: 123, baseType: !60, size: 8, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !968, file: !13, line: 124, baseType: !60, size: 8, offset: 456)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !968, file: !13, line: 125, baseType: !60, size: 8, offset: 464)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !968, file: !13, line: 126, baseType: !60, size: 8, offset: 472)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !952, file: !828, line: 671, baseType: !968, size: 512, offset: 1216)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !952, file: !828, line: 679, baseType: !1072, size: 64, offset: 1728)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !827, file: !828, line: 800, baseType: !1074, size: 64, offset: 5248)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !828, line: 800, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !827, file: !828, line: 809, baseType: !1078, size: 64, offset: 5312)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !828, line: 70, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !827, file: !828, line: 825, baseType: !1081, size: 2048, align: 512, offset: 5632)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !828, line: 509, size: 2048, align: 512, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1081, file: !828, line: 511, baseType: !56, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1081, file: !828, line: 512, baseType: !56, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1081, file: !828, line: 513, baseType: !56, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1081, file: !828, line: 514, baseType: !56, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1081, file: !828, line: 515, baseType: !56, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1081, file: !828, line: 516, baseType: !56, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1081, file: !828, line: 518, baseType: !56, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1081, file: !828, line: 519, baseType: !56, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1081, file: !828, line: 520, baseType: !911, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1081, file: !828, line: 522, baseType: !56, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1081, file: !828, line: 523, baseType: !56, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1081, file: !828, line: 524, baseType: !911, size: 64, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1081, file: !828, line: 526, baseType: !911, size: 64, offset: 768)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1081, file: !828, line: 527, baseType: !56, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1081, file: !828, line: 529, baseType: !56, size: 64, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1081, file: !828, line: 530, baseType: !56, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1081, file: !828, line: 531, baseType: !56, size: 64, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1081, file: !828, line: 532, baseType: !56, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1081, file: !828, line: 533, baseType: !56, size: 64, offset: 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1081, file: !828, line: 535, baseType: !56, size: 64, offset: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1081, file: !828, line: 536, baseType: !56, size: 64, offset: 1280)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1081, file: !828, line: 537, baseType: !56, size: 64, offset: 1344)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1081, file: !828, line: 538, baseType: !56, size: 64, offset: 1408)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1081, file: !828, line: 539, baseType: !56, size: 64, offset: 1472)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1081, file: !828, line: 540, baseType: !56, size: 64, offset: 1536)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1081, file: !828, line: 541, baseType: !56, size: 64, offset: 1600)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1081, file: !828, line: 542, baseType: !56, size: 64, offset: 1664)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1081, file: !828, line: 543, baseType: !56, size: 64, offset: 1728)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !827, file: !828, line: 833, baseType: !7, size: 32, offset: 7680)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !827, file: !828, line: 836, baseType: !7, size: 32, offset: 7712)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !827, file: !828, line: 837, baseType: !850, size: 32, offset: 7744)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !827, file: !828, line: 838, baseType: !1115, size: 64, offset: 7808)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1118, line: 19, baseType: !1119)
!1118 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1118, line: 19, size: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1119, file: !1118, line: 19, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 64, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 1)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !827, file: !828, line: 839, baseType: !1126, size: 64, offset: 7872)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !827, file: !828, line: 840, baseType: !1117, size: 64, offset: 7936)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !827, file: !828, line: 841, baseType: !66, size: 64, offset: 8000)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !827, file: !828, line: 843, baseType: !50, size: 16, offset: 8064)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !827, file: !828, line: 845, baseType: !50, size: 16, offset: 8080)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !827, file: !828, line: 848, baseType: !850, size: 32, offset: 8096)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !827, file: !828, line: 849, baseType: !1133, size: 32, offset: 8128)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !828, line: 718, size: 32, elements: !1134)
!1134 = !{!1135, !1142}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1133, file: !828, line: 724, baseType: !1136, size: 32)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !828, line: 719, size: 32, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1136, file: !828, line: 720, baseType: !60, size: 8)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1136, file: !828, line: 721, baseType: !60, size: 8, offset: 8)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1136, file: !828, line: 722, baseType: !60, size: 8, offset: 16)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1136, file: !828, line: 723, baseType: !60, size: 8, offset: 24)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1133, file: !828, line: 725, baseType: !53, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !827, file: !828, line: 850, baseType: !900, size: 128, offset: 8192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !827, file: !828, line: 851, baseType: !1145, size: 64, offset: 8320)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !828, line: 60, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !827, file: !828, line: 855, baseType: !65, size: 64, offset: 8384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !827, file: !828, line: 856, baseType: !60, size: 8, offset: 8448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !827, file: !828, line: 857, baseType: !60, size: 8, offset: 8456)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !827, file: !828, line: 858, baseType: !850, size: 32, offset: 8480)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !827, file: !828, line: 859, baseType: !900, size: 128, offset: 8512)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !827, file: !828, line: 860, baseType: !850, size: 32, offset: 8640)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !827, file: !828, line: 861, baseType: !900, size: 128, offset: 8704)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !827, file: !828, line: 873, baseType: !1155, size: 256, offset: 8832)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !828, line: 376, size: 256, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1155, file: !828, line: 381, baseType: !65, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1155, file: !828, line: 384, baseType: !58, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1155, file: !828, line: 389, baseType: !58, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1155, file: !828, line: 392, baseType: !58, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !827, file: !828, line: 875, baseType: !900, size: 128, offset: 9088)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !827, file: !828, line: 877, baseType: !1163, size: 320, offset: 9216)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1164, line: 86, size: 320, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1163, file: !1164, line: 87, baseType: !850, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1163, file: !1164, line: 88, baseType: !900, size: 128, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1163, file: !1164, line: 89, baseType: !900, size: 128, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !827, file: !828, line: 878, baseType: !890, size: 192, align: 64, offset: 9536)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !827, file: !828, line: 881, baseType: !1171, size: 64, offset: 9728)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1173, line: 733, size: 10240, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1174 = !{!1175, !1364}
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !1173, line: 734, baseType: !1176, size: 10240)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !1173, line: 734, size: 10240, elements: !1177)
!1177 = !{!1178, !1182, !1204, !1211, !1212, !1213, !1214, !1215, !1216, !1224, !1225, !1226, !1232, !1233, !1240, !1241, !1242, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1283, !1295, !1298, !1330, !1331, !1332, !1335, !1339, !1340, !1343, !1344, !1345, !1351, !1352}
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1173, line: 739, baseType: !1179, size: 512, align: 512)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !1173, line: 739, size: 512, align: 512, elements: !1180)
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1179, file: !1173, line: 747, baseType: !846, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1176, file: !1173, line: 750, baseType: !1183, size: 128, offset: 512)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1184, line: 218, size: 128, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1185 = !{!1186, !1202, !1203}
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1184, line: 219, baseType: !1187, size: 32)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !1184, line: 219, size: 32, elements: !1188)
!1188 = !{!1189, !1198}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1187, file: !1184, line: 220, baseType: !1190, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1191, line: 29, baseType: !1192)
!1191 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1191, line: 17, size: 32, elements: !1193)
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1191, line: 18, baseType: !1195, size: 32)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1191, line: 18, size: 32, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1195, file: !1191, line: 19, baseType: !995, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1187, file: !1184, line: 221, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1184, line: 197, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1184, line: 197, elements: !1201)
!1201 = !{}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1183, file: !1184, line: 223, baseType: !7, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1183, file: !1184, line: 224, baseType: !66, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1176, file: !1173, line: 752, baseType: !1205, size: 64, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!65, !1208, !65, !65, !65, !65}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1210, line: 537, flags: DIFlagFwdDecl)
!1210 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1176, file: !1173, line: 756, baseType: !65, size: 64, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1176, file: !1173, line: 757, baseType: !65, size: 64, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1176, file: !1173, line: 760, baseType: !65, size: 64, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1176, file: !1173, line: 761, baseType: !65, size: 64, offset: 896)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1176, file: !1173, line: 763, baseType: !65, size: 64, offset: 960)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1176, file: !1173, line: 764, baseType: !1217, size: 64, offset: 1024)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1210, line: 299, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 299, size: 64, elements: !1220)
!1220 = !{!1221}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1219, file: !1210, line: 299, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1223, line: 18, baseType: !65)
!1223 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1176, file: !1173, line: 773, baseType: !846, size: 32, offset: 1088)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1176, file: !1173, line: 785, baseType: !846, size: 32, offset: 1120)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1176, file: !1173, line: 795, baseType: !1227, size: 64, offset: 1152)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1173, line: 726, size: 128, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1228, file: !1173, line: 727, baseType: !56, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1228, file: !1173, line: 728, baseType: !850, size: 32, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1176, file: !1173, line: 801, baseType: !65, size: 64, offset: 1216)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1176, file: !1173, line: 804, baseType: !1234, size: 64, offset: 1280)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1235, line: 13, baseType: !1236)
!1235 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !64, line: 181, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 179, size: 64, elements: !1238)
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1237, file: !64, line: 180, baseType: !911, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1176, file: !1173, line: 806, baseType: !850, size: 32, offset: 1344)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1176, file: !1173, line: 808, baseType: !1190, size: 32, offset: 1376)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1176, file: !1173, line: 823, baseType: !1243, size: 320, offset: 1408)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1244, line: 48, size: 320, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1245 = !{!1246, !1247, !1248, !1253, !1254}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1243, file: !1244, line: 49, baseType: !1234, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1243, file: !1244, line: 55, baseType: !1234, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1243, file: !1244, line: 57, baseType: !1249, size: 32, offset: 128)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1250, line: 15, size: 32, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1251 = !{!1252}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1249, file: !1250, line: 20, baseType: !846, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1243, file: !1244, line: 59, baseType: !993, size: 32, offset: 160)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1243, file: !1244, line: 60, baseType: !900, size: 128, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1176, file: !1173, line: 825, baseType: !900, size: 128, offset: 1728)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1176, file: !1173, line: 845, baseType: !850, size: 32, offset: 1856)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1176, file: !1173, line: 849, baseType: !65, size: 64, offset: 1920)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1176, file: !1173, line: 850, baseType: !65, size: 64, offset: 1984)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1176, file: !1173, line: 852, baseType: !65, size: 64, offset: 2048)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1176, file: !1173, line: 853, baseType: !65, size: 64, offset: 2112)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1176, file: !1173, line: 854, baseType: !1236, size: 64, offset: 2176)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1176, file: !1173, line: 855, baseType: !65, size: 64, offset: 2240)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1176, file: !1173, line: 856, baseType: !65, size: 64, offset: 2304)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1176, file: !1173, line: 857, baseType: !65, size: 64, offset: 2368)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1176, file: !1173, line: 858, baseType: !65, size: 64, offset: 2432)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1176, file: !1173, line: 865, baseType: !1045, size: 32, offset: 2496)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1176, file: !1173, line: 867, baseType: !1190, size: 32, offset: 2528)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1176, file: !1173, line: 869, baseType: !65, size: 64, offset: 2560)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1176, file: !1173, line: 869, baseType: !65, size: 64, offset: 2624)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1176, file: !1173, line: 869, baseType: !65, size: 64, offset: 2688)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1176, file: !1173, line: 869, baseType: !65, size: 64, offset: 2752)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1176, file: !1173, line: 870, baseType: !65, size: 64, offset: 2816)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1176, file: !1173, line: 870, baseType: !65, size: 64, offset: 2880)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1176, file: !1173, line: 870, baseType: !65, size: 64, offset: 2944)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1176, file: !1173, line: 871, baseType: !65, size: 64, offset: 3008)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1176, file: !1173, line: 871, baseType: !65, size: 64, offset: 3072)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1176, file: !1173, line: 871, baseType: !65, size: 64, offset: 3136)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1176, file: !1173, line: 871, baseType: !65, size: 64, offset: 3200)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1176, file: !1173, line: 873, baseType: !1280, size: 3328, offset: 3264)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 3328, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 52)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1176, file: !1173, line: 875, baseType: !1284, size: 1280, offset: 6592)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1285, size: 1280, elements: !261)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1286, line: 22, size: 320, elements: !1287)
!1286 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1287 = !{!1288, !1289, !1290, !1291}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1285, file: !1286, line: 23, baseType: !993, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1285, file: !1286, line: 24, baseType: !911, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1285, file: !1286, line: 26, baseType: !900, size: 128, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1285, file: !1286, line: 28, baseType: !1292, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !47, line: 20, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !49, line: 26, baseType: !850)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1176, file: !1173, line: 877, baseType: !1296, size: 64, offset: 7872)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1173, line: 877, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1176, file: !1173, line: 880, baseType: !1299, size: 1088, offset: 7936)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1300, line: 72, baseType: !1301)
!1300 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1300, line: 23, size: 1088, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1310, !1311, !1319, !1320, !1324, !1325, !1326}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1301, file: !1300, line: 28, baseType: !56, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1301, file: !1300, line: 38, baseType: !1236, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1301, file: !1300, line: 40, baseType: !65, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1301, file: !1300, line: 43, baseType: !1243, size: 320, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1301, file: !1300, line: 44, baseType: !1308, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1300, line: 44, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1301, file: !1300, line: 48, baseType: !65, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1301, file: !1300, line: 59, baseType: !1312, size: 256, offset: 640)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1313, line: 66, size: 256, elements: !1314)
!1313 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1314 = !{!1315, !1316, !1317, !1318}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1312, file: !1313, line: 67, baseType: !1234, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1312, file: !1313, line: 68, baseType: !993, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1312, file: !1313, line: 70, baseType: !1249, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1312, file: !1313, line: 72, baseType: !900, size: 128, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1301, file: !1300, line: 60, baseType: !66, size: 64, offset: 896)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1301, file: !1300, line: 61, baseType: !1321, size: 64, offset: 960)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1300, line: 61, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1301, file: !1300, line: 63, baseType: !846, size: 32, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1301, file: !1300, line: 69, baseType: !46, size: 16, offset: 1056)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1301, file: !1300, line: 70, baseType: !1327, size: 16, offset: 1072)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !47, line: 18, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !49, line: 23, baseType: !1329)
!1329 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1176, file: !1173, line: 882, baseType: !65, size: 64, offset: 9024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1176, file: !1173, line: 885, baseType: !1190, size: 32, offset: 9088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1176, file: !1173, line: 886, baseType: !1333, size: 64, offset: 9152)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1173, line: 732, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1176, file: !1173, line: 901, baseType: !1336, size: 64, offset: 9216)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1338, line: 18, flags: DIFlagFwdDecl)
!1338 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1176, file: !1173, line: 904, baseType: !1208, size: 64, offset: 9280)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1176, file: !1173, line: 906, baseType: !1341, size: 64, offset: 9344)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1173, line: 906, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1176, file: !1173, line: 930, baseType: !846, size: 32, offset: 9408)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1176, file: !1173, line: 933, baseType: !846, size: 32, offset: 9440)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1176, file: !1173, line: 935, baseType: !1346, size: 64, offset: 9472)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !24, line: 103, size: 64, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1346, file: !24, line: 104, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !24, line: 101, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1176, file: !1173, line: 940, baseType: !1234, size: 64, offset: 9536)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1176, file: !1173, line: 942, baseType: !1353, size: 256, offset: 9600)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1354, line: 98, size: 256, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1355 = !{!1356, !1357, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1353, file: !1354, line: 99, baseType: !1234, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1353, file: !1354, line: 100, baseType: !900, size: 128, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1353, file: !1354, line: 101, baseType: !1359, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1354, line: 21, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !1363}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1172, file: !1173, line: 986, baseType: !1365, offset: 10240)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: -1)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !827, file: !828, line: 882, baseType: !1171, size: 64, offset: 9792)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !827, file: !828, line: 884, baseType: !850, size: 32, offset: 9856)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !827, file: !828, line: 885, baseType: !850, size: 32, offset: 9888)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !827, file: !828, line: 886, baseType: !850, size: 32, offset: 9920)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !827, file: !828, line: 888, baseType: !850, size: 32, offset: 9952)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !827, file: !828, line: 890, baseType: !65, size: 64, offset: 9984)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !827, file: !828, line: 893, baseType: !7, size: 32, offset: 10048)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !827, file: !828, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !827, file: !828, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !827, file: !828, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !827, file: !828, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !827, file: !828, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !827, file: !828, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !827, file: !828, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !827, file: !828, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !827, file: !828, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !827, file: !828, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !827, file: !828, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !827, file: !828, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !827, file: !828, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !827, file: !828, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !827, file: !828, line: 969, baseType: !65, size: 64, offset: 10176)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !827, file: !828, line: 971, baseType: !1391, size: 448, offset: 10240)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 448, elements: !1392)
!1392 = !{!1393, !1394, !1400}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1391, file: !18, line: 26, baseType: !65, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1391, file: !18, line: 27, baseType: !1395, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !18, line: 28, baseType: !1401, size: 320, offset: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !18, line: 28, size: 320, elements: !1402)
!1402 = !{!1403, !1413, !1438}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1401, file: !18, line: 37, baseType: !1404, size: 320)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !18, line: 30, size: 320, elements: !1405)
!1405 = !{!1406, !1408, !1409, !1410, !1411, !1412}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1404, file: !18, line: 31, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1404, file: !18, line: 32, baseType: !53, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !18, line: 33, baseType: !53, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1404, file: !18, line: 34, baseType: !53, size: 32, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1404, file: !18, line: 35, baseType: !56, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1404, file: !18, line: 36, baseType: !1407, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1401, file: !18, line: 47, baseType: !1414, size: 192)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !18, line: 39, size: 192, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1437}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1414, file: !18, line: 40, baseType: !1036, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1414, file: !18, line: 41, baseType: !17, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !18, line: 42, baseType: !1419, size: 64, offset: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !18, line: 42, size: 64, elements: !1420)
!1420 = !{!1421, !1429}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1419, file: !18, line: 43, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1424, line: 7, size: 128, elements: !1425)
!1424 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1425 = !{!1426, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1423, file: !1424, line: 8, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !1038, line: 93, baseType: !913)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1423, file: !1424, line: 9, baseType: !913, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1419, file: !18, line: 44, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1432, line: 7, size: 64, elements: !1433)
!1432 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1433 = !{!1434, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1431, file: !1432, line: 8, baseType: !1435, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1432, line: 5, baseType: !1293)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1431, file: !1432, line: 9, baseType: !1293, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1414, file: !18, line: 46, baseType: !56, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1401, file: !18, line: 55, baseType: !1439, size: 256)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !18, line: 49, size: 256, elements: !1440)
!1440 = !{!1441, !1444, !1445, !1446, !1447}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1439, file: !18, line: 50, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1439, file: !18, line: 51, baseType: !850, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1439, file: !18, line: 52, baseType: !850, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1439, file: !18, line: 53, baseType: !65, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1439, file: !18, line: 54, baseType: !65, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !827, file: !828, line: 973, baseType: !1449, size: 32, offset: 10688)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !64, line: 27, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !1038, line: 28, baseType: !850)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !827, file: !828, line: 974, baseType: !1449, size: 32, offset: 10720)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !827, file: !828, line: 978, baseType: !65, size: 64, offset: 10752)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !827, file: !828, line: 987, baseType: !826, size: 64, offset: 10816)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !827, file: !828, line: 990, baseType: !826, size: 64, offset: 10880)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !827, file: !828, line: 995, baseType: !900, size: 128, offset: 10944)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !827, file: !828, line: 996, baseType: !900, size: 128, offset: 11072)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !827, file: !828, line: 997, baseType: !826, size: 64, offset: 11200)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !827, file: !828, line: 1005, baseType: !900, size: 128, offset: 11264)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !827, file: !828, line: 1006, baseType: !900, size: 128, offset: 11392)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !827, file: !828, line: 1009, baseType: !1461, size: 64, offset: 11520)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1463, line: 59, size: 768, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1464 = !{!1465, !1466, !1467, !1468, !1479, !1480, !1487, !1496}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1462, file: !1463, line: 61, baseType: !841, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1462, file: !1463, line: 62, baseType: !7, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1462, file: !1463, line: 63, baseType: !1190, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1462, file: !1463, line: 65, baseType: !1469, size: 256, offset: 128)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 256, elements: !261)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !64, line: 194, size: 64, elements: !1471)
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1470, file: !64, line: 195, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !64, line: 198, size: 128, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1474, file: !64, line: 199, baseType: !1473, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1474, file: !64, line: 199, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1462, file: !1463, line: 66, baseType: !1470, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1462, file: !1463, line: 68, baseType: !1481, size: 192, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1482, line: 41, baseType: !1483)
!1482 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1482, line: 37, size: 192, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1483, file: !1482, line: 38, baseType: !1190, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1483, file: !1482, line: 39, baseType: !900, size: 128, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1462, file: !1463, line: 69, baseType: !1488, size: 128, align: 64, offset: 640)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !64, line: 232, size: 128, align: 64, elements: !1489)
!1489 = !{!1490, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1488, file: !64, line: 233, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1488, file: !64, line: 234, baseType: !1493, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !1491}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1462, file: !1463, line: 70, baseType: !1497, offset: 768)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1498, elements: !1366)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1463, line: 54, size: 128, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1498, file: !1463, line: 55, baseType: !850, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1498, file: !1463, line: 56, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1463, line: 56, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !827, file: !828, line: 1010, baseType: !1505, size: 512, offset: 11584)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1474, size: 512, elements: !261)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !827, file: !828, line: 1011, baseType: !900, size: 128, offset: 12096)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !827, file: !828, line: 1012, baseType: !900, size: 128, offset: 12224)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !827, file: !828, line: 1014, baseType: !1509, size: 64, offset: 12352)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1511, line: 26, size: 256, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1510, file: !1511, line: 27, baseType: !7, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1510, file: !1511, line: 28, baseType: !1515, size: 192, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1516, line: 43, size: 192, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !1516, line: 44, baseType: !993, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1515, file: !1516, line: 45, baseType: !900, size: 128, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !827, file: !828, line: 1017, baseType: !1521, size: 64, offset: 12416)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !827, file: !828, line: 1020, baseType: !1521, size: 64, offset: 12480)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !827, file: !828, line: 1023, baseType: !66, size: 64, offset: 12544)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !827, file: !828, line: 1025, baseType: !56, size: 64, offset: 12608)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !827, file: !828, line: 1026, baseType: !56, size: 64, offset: 12672)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !827, file: !828, line: 1031, baseType: !56, size: 64, offset: 12736)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !827, file: !828, line: 1032, baseType: !1528, size: 192, offset: 12800)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !828, line: 324, size: 192, elements: !1529)
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1528, file: !828, line: 326, baseType: !56, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1528, file: !828, line: 327, baseType: !56, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !828, line: 328, baseType: !993, size: 32, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !827, file: !828, line: 1041, baseType: !65, size: 64, offset: 12992)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !827, file: !828, line: 1042, baseType: !65, size: 64, offset: 13056)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !827, file: !828, line: 1045, baseType: !56, size: 64, offset: 13120)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !827, file: !828, line: 1048, baseType: !56, size: 64, offset: 13184)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !827, file: !828, line: 1051, baseType: !65, size: 64, offset: 13248)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !827, file: !828, line: 1052, baseType: !65, size: 64, offset: 13312)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !827, file: !828, line: 1055, baseType: !1540, size: 640, offset: 13376)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1541, line: 132, size: 640, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1542 = !{!1543, !1549, !1550}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1540, file: !1541, line: 133, baseType: !1544, size: 576)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1545, size: 576, elements: !93)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1541, line: 117, size: 192, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1545, file: !1541, line: 118, baseType: !56, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1545, file: !1541, line: 119, baseType: !1051, size: 128, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1540, file: !1541, line: 134, baseType: !7, size: 32, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1540, file: !1541, line: 135, baseType: !7, size: 32, offset: 608)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !827, file: !828, line: 1058, baseType: !1552, size: 448, offset: 14016)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1541, line: 144, size: 448, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1552, file: !1541, line: 145, baseType: !1488, size: 128, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1552, file: !1541, line: 146, baseType: !1312, size: 256, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1552, file: !1541, line: 147, baseType: !7, size: 32, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !827, file: !828, line: 1064, baseType: !1558, size: 64, offset: 14464)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !828, line: 1064, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !827, file: !828, line: 1067, baseType: !1558, size: 64, offset: 14528)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !827, file: !828, line: 1070, baseType: !1558, size: 64, offset: 14592)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !827, file: !828, line: 1074, baseType: !1564, size: 64, offset: 14656)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !828, line: 1074, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !827, file: !828, line: 1084, baseType: !1567, size: 128, offset: 14720)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !1568)
!1568 = !{!1569}
!1569 = !DISubrange(count: 16)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !827, file: !828, line: 1086, baseType: !1571, size: 64, offset: 14848)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !828, line: 55, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !827, file: !828, line: 1089, baseType: !1574, size: 64, offset: 14912)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1575, line: 12, size: 64, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1574, file: !1575, line: 13, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1575, line: 8, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !827, file: !828, line: 1090, baseType: !1581, size: 128, offset: 14976)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1582, line: 13, size: 128, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1581, file: !1582, line: 14, baseType: !900, size: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !827, file: !828, line: 1097, baseType: !1586, size: 64, offset: 15104)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !828, line: 50, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !827, file: !828, line: 1100, baseType: !1589, size: 64, offset: 15168)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !828, line: 1100, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !827, file: !828, line: 1103, baseType: !1592, size: 64, offset: 15232)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !828, line: 53, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !827, file: !828, line: 1107, baseType: !1595, size: 64, offset: 15296)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !828, line: 56, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !827, file: !828, line: 1110, baseType: !1598, size: 64, offset: 15360)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1541, line: 236, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !827, file: !828, line: 1111, baseType: !1601, size: 64, offset: 15424)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !828, line: 67, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !827, file: !828, line: 1112, baseType: !1604, size: 64, offset: 15488)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1605, line: 25, baseType: !1606)
!1605 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1605, line: 23, size: 64, elements: !1607)
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1606, file: !1605, line: 24, baseType: !1122, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !827, file: !828, line: 1113, baseType: !1604, size: 64, offset: 15552)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !827, file: !828, line: 1115, baseType: !1604, size: 64, offset: 15616)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !827, file: !828, line: 1116, baseType: !1612, size: 192, offset: 15680)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1613, line: 32, size: 192, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1612, file: !1613, line: 33, baseType: !900, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1612, file: !1613, line: 34, baseType: !1604, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !827, file: !828, line: 1117, baseType: !65, size: 64, offset: 15872)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !827, file: !828, line: 1118, baseType: !1619, size: 64, offset: 15936)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 61, baseType: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1038, line: 72, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1038, line: 16, baseType: !65)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !827, file: !828, line: 1119, baseType: !7, size: 32, offset: 16000)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !827, file: !828, line: 1121, baseType: !1491, size: 64, offset: 16064)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !827, file: !828, line: 1125, baseType: !1625, size: 64, offset: 16128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !828, line: 43, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !827, file: !828, line: 1127, baseType: !1628, size: 32, offset: 16192)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1338, line: 23, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1338, line: 21, size: 32, elements: !1630)
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1629, file: !1338, line: 22, baseType: !1632, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !64, line: 37, baseType: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !1038, line: 49, baseType: !7)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !827, file: !828, line: 1128, baseType: !7, size: 32, offset: 16224)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !827, file: !828, line: 1130, baseType: !1636, size: 128, offset: 16256)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1637, line: 37, size: 128, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1638 = !{!1639, !1640, !1641}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1636, file: !1637, line: 38, baseType: !850, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1636, file: !1637, line: 39, baseType: !846, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1636, file: !1637, line: 40, baseType: !1642, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1637, line: 24, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !827, file: !828, line: 1131, baseType: !1645, size: 256, offset: 16384)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1646, line: 12, size: 256, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1647 = !{!1648, !1649, !1650, !1651}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1645, file: !1646, line: 13, baseType: !105, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1645, file: !1646, line: 14, baseType: !65, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1645, file: !1646, line: 15, baseType: !65, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1645, file: !1646, line: 16, baseType: !1652, size: 8, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 35, baseType: !1653)
!1653 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !827, file: !828, line: 1134, baseType: !56, size: 64, offset: 16640)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !827, file: !828, line: 1135, baseType: !56, size: 64, offset: 16704)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !827, file: !828, line: 1138, baseType: !1190, size: 32, offset: 16768)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !827, file: !828, line: 1141, baseType: !993, size: 32, offset: 16800)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !827, file: !828, line: 1143, baseType: !1659, size: 64, offset: 16832)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !828, line: 735, size: 64, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1659, file: !828, line: 736, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !827, file: !828, line: 1147, baseType: !1054, size: 128, offset: 16896)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !827, file: !828, line: 1149, baseType: !826, size: 64, offset: 17024)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !827, file: !828, line: 1151, baseType: !1666, size: 64, offset: 17088)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !828, line: 1151, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !827, file: !828, line: 1188, baseType: !66, size: 64, offset: 17152)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !827, file: !828, line: 1191, baseType: !1670, size: 64, offset: 17216)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !828, line: 44, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !827, file: !828, line: 1194, baseType: !1673, size: 64, offset: 17280)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !828, line: 45, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !827, file: !828, line: 1197, baseType: !1676, size: 64, offset: 17344)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !828, line: 61, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !827, file: !828, line: 1199, baseType: !1679, size: 64, offset: 17408)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !828, line: 52, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !827, file: !828, line: 1202, baseType: !1682, size: 64, offset: 17472)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !828, line: 48, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !827, file: !828, line: 1205, baseType: !65, size: 64, offset: 17536)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !827, file: !828, line: 1206, baseType: !1686, size: 64, offset: 17600)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1613, line: 14, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1613, line: 12, size: 384, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !1613, line: 13, baseType: !1691, size: 384)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1688, file: !1613, line: 13, size: 384, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1691, file: !1613, line: 13, baseType: !850, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1691, file: !1613, line: 13, baseType: !850, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1691, file: !1613, line: 13, baseType: !850, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1691, file: !1613, line: 13, baseType: !1697, size: 256, offset: 128)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1698, line: 37, size: 256, elements: !1699)
!1698 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1699 = !{!1700, !1705, !1718, !1724, !1734, !1761, !1766}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1697, file: !1698, line: 42, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1698, line: 39, size: 64, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1701, file: !1698, line: 40, baseType: !1450, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1701, file: !1698, line: 41, baseType: !1633, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1697, file: !1698, line: 50, baseType: !1706, size: 192)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1698, line: 45, size: 192, elements: !1707)
!1707 = !{!1708, !1710, !1711, !1717}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1706, file: !1698, line: 46, baseType: !1709, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !1038, line: 95, baseType: !850)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1706, file: !1698, line: 47, baseType: !850, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1706, file: !1698, line: 48, baseType: !1712, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1698, line: 11, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1698, line: 8, size: 64, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1713, file: !1698, line: 9, baseType: !850, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1713, file: !1698, line: 10, baseType: !66, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1706, file: !1698, line: 49, baseType: !850, size: 32, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1697, file: !1698, line: 57, baseType: !1719, size: 128)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1698, line: 53, size: 128, elements: !1720)
!1720 = !{!1721, !1722, !1723}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1719, file: !1698, line: 54, baseType: !1450, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1719, file: !1698, line: 55, baseType: !1633, size: 32, offset: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1719, file: !1698, line: 56, baseType: !1712, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1697, file: !1698, line: 66, baseType: !1725, size: 256)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1698, line: 60, size: 256, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1725, file: !1698, line: 61, baseType: !1450, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1725, file: !1698, line: 62, baseType: !1633, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1725, file: !1698, line: 63, baseType: !850, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1725, file: !1698, line: 64, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !1038, line: 94, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !1038, line: 15, baseType: !1398)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1725, file: !1698, line: 65, baseType: !1731, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1697, file: !1698, line: 105, baseType: !1735, size: 256)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1698, line: 69, size: 256, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1735, file: !1698, line: 70, baseType: !66, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1698, line: 79, baseType: !1739, size: 192, offset: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1698, line: 79, size: 192, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1750, !1755}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1739, file: !1698, line: 81, baseType: !850, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1739, file: !1698, line: 86, baseType: !1329, size: 16)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1739, file: !1698, line: 92, baseType: !1744, size: 192)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1698, line: 88, size: 192, elements: !1745)
!1745 = !{!1746, !1748, !1749}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1744, file: !1698, line: 89, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !377)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1744, file: !1698, line: 90, baseType: !66, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1744, file: !1698, line: 91, baseType: !66, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1739, file: !1698, line: 97, baseType: !1751, size: 96)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1698, line: 94, size: 96, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1751, file: !1698, line: 95, baseType: !1747, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1751, file: !1698, line: 96, baseType: !54, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1739, file: !1698, line: 103, baseType: !1756, size: 128)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1698, line: 99, size: 128, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1756, file: !1698, line: 100, baseType: !65, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1756, file: !1698, line: 101, baseType: !54, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1756, file: !1698, line: 102, baseType: !54, size: 32, offset: 96)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1697, file: !1698, line: 111, baseType: !1762, size: 128)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1698, line: 108, size: 128, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1762, file: !1698, line: 109, baseType: !1398, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1762, file: !1698, line: 110, baseType: !850, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1697, file: !1698, line: 118, baseType: !1767, size: 128)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1698, line: 114, size: 128, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1767, file: !1698, line: 115, baseType: !66, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1767, file: !1698, line: 116, baseType: !850, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1767, file: !1698, line: 117, baseType: !7, size: 32, offset: 96)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !827, file: !828, line: 1208, baseType: !1773, size: 448, offset: 17664)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1774, line: 12, size: 448, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1773, file: !1774, line: 15, baseType: !56, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1773, file: !1774, line: 17, baseType: !56, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1773, file: !1774, line: 19, baseType: !56, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1773, file: !1774, line: 21, baseType: !56, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1773, file: !1774, line: 29, baseType: !56, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1773, file: !1774, line: 35, baseType: !56, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1773, file: !1774, line: 44, baseType: !56, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !827, file: !828, line: 1215, baseType: !56, size: 64, offset: 18112)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !827, file: !828, line: 1217, baseType: !56, size: 64, offset: 18176)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !827, file: !828, line: 1219, baseType: !56, size: 64, offset: 18240)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !827, file: !828, line: 1223, baseType: !1787, size: 64, offset: 18304)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1788, line: 99, baseType: !1789)
!1788 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1788, line: 99, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1789, file: !1788, line: 99, baseType: !1122, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !827, file: !828, line: 1225, baseType: !1793, size: 32, offset: 18368)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1041, line: 275, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1041, line: 275, size: 32, elements: !1795)
!1795 = !{!1796}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1794, file: !1041, line: 275, baseType: !1045, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !827, file: !828, line: 1226, baseType: !850, size: 32, offset: 18400)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !827, file: !828, line: 1227, baseType: !850, size: 32, offset: 18432)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !827, file: !828, line: 1231, baseType: !1800, size: 64, offset: 18496)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !828, line: 1231, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !827, file: !828, line: 1233, baseType: !900, size: 128, offset: 18560)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !827, file: !828, line: 1240, baseType: !1804, size: 64, offset: 18688)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !828, line: 62, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !827, file: !828, line: 1242, baseType: !1807, size: 64, offset: 18752)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !828, line: 1242, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !827, file: !828, line: 1244, baseType: !900, size: 128, offset: 18816)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !827, file: !828, line: 1245, baseType: !1811, size: 64, offset: 18944)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !828, line: 51, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !827, file: !828, line: 1246, baseType: !1312, size: 256, offset: 19008)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !827, file: !828, line: 1247, baseType: !7, size: 32, offset: 19264)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !827, file: !828, line: 1250, baseType: !1816, size: 64, offset: 19328)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !828, line: 57, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !827, file: !828, line: 1251, baseType: !1312, size: 256, offset: 19392)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !827, file: !828, line: 1252, baseType: !900, size: 128, offset: 19648)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !827, file: !828, line: 1259, baseType: !1821, size: 64, offset: 19776)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !828, line: 54, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !827, file: !828, line: 1260, baseType: !1329, size: 16, offset: 19840)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !827, file: !828, line: 1261, baseType: !1329, size: 16, offset: 19856)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !827, file: !828, line: 1314, baseType: !1826, size: 64, offset: 19904)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1828, line: 62, size: 256, align: 256, elements: !1829)
!1828 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1827, file: !1828, line: 75, baseType: !54, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1827, file: !1828, line: 90, baseType: !54, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1827, file: !1828, line: 112, baseType: !57, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1827, file: !1828, line: 132, baseType: !54, size: 32, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1827, file: !1828, line: 140, baseType: !54, size: 32, offset: 160)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1827, file: !1828, line: 149, baseType: !54, size: 32, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1827, file: !1828, line: 154, baseType: !1837, offset: 224)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, elements: !1366)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !827, file: !828, line: 1315, baseType: !53, size: 32, offset: 19968)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !827, file: !828, line: 1316, baseType: !53, size: 32, offset: 20000)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !827, file: !828, line: 1321, baseType: !65, size: 64, offset: 20032)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !827, file: !828, line: 1325, baseType: !850, size: 32, offset: 20096)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !827, file: !828, line: 1326, baseType: !850, size: 32, offset: 20128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !827, file: !828, line: 1327, baseType: !850, size: 32, offset: 20160)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !827, file: !828, line: 1328, baseType: !850, size: 32, offset: 20192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !827, file: !828, line: 1329, baseType: !1488, size: 128, align: 64, offset: 20224)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !827, file: !828, line: 1332, baseType: !1847, size: 128, offset: 20352)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1848, line: 51, size: 128, elements: !1849)
!1848 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1849 = !{!1850, !1855, !1856}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1847, file: !1848, line: 60, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1852, line: 7, size: 64, elements: !1853)
!1852 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1853 = !{!1854}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1851, file: !1852, line: 12, baseType: !1119, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1847, file: !1848, line: 63, baseType: !1652, size: 8, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1847, file: !1848, line: 70, baseType: !1652, size: 8, offset: 72)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !827, file: !828, line: 1335, baseType: !1858, size: 64, offset: 20480)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !828, line: 59, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !827, file: !828, line: 1337, baseType: !1861, size: 128, offset: 20544)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1848, line: 39, size: 128, elements: !1862)
!1862 = !{!1863, !1926, !1927}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1861, file: !1848, line: 40, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1173, line: 74, size: 512, align: 128, elements: !1866)
!1866 = !{!1867, !1868, !1920, !1925}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1865, file: !1173, line: 75, baseType: !65, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1173, line: 83, baseType: !1869, size: 320, offset: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !1173, line: 83, size: 320, elements: !1870)
!1870 = !{!1871, !1894, !1908, !1912, !1919}
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1173, line: 84, baseType: !1872, size: 320)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1173, line: 84, size: 320, elements: !1873)
!1873 = !{!1874, !1885, !1888, !1893}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1173, line: 90, baseType: !1875, size: 128)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1173, line: 90, size: 128, elements: !1876)
!1876 = !{!1877, !1878, !1883, !1884}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1875, file: !1173, line: 91, baseType: !900, size: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1173, line: 94, baseType: !1879, size: 128)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !1173, line: 94, size: 128, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1879, file: !1173, line: 96, baseType: !66, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1879, file: !1173, line: 98, baseType: !7, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1875, file: !1173, line: 102, baseType: !900, size: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1875, file: !1173, line: 103, baseType: !900, size: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1872, file: !1173, line: 106, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !1173, line: 32, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1173, line: 107, baseType: !1889, size: 64, offset: 192)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1173, line: 107, size: 64, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1889, file: !1173, line: 108, baseType: !65, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1889, file: !1173, line: 109, baseType: !65, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1872, file: !1173, line: 117, baseType: !65, size: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1173, line: 119, baseType: !1895, size: 320)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1173, line: 119, size: 320, elements: !1896)
!1896 = !{!1897, !1898, !1901, !1902, !1903}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1895, file: !1173, line: 124, baseType: !65, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1895, file: !1173, line: 125, baseType: !1899, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1173, line: 125, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1895, file: !1173, line: 126, baseType: !65, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1895, file: !1173, line: 127, baseType: !65, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1173, line: 128, baseType: !1904, size: 64, offset: 256)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1895, file: !1173, line: 128, size: 64, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1904, file: !1173, line: 133, baseType: !65, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1904, file: !1173, line: 138, baseType: !1234, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1173, line: 141, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1173, line: 141, size: 64, elements: !1910)
!1910 = !{!1911}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1909, file: !1173, line: 142, baseType: !65, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1173, line: 144, baseType: !1913, size: 128)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1173, line: 144, size: 128, elements: !1914)
!1914 = !{!1915, !1918}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1913, file: !1173, line: 146, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1173, line: 146, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1913, file: !1173, line: 147, baseType: !66, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1869, file: !1173, line: 161, baseType: !1488, size: 128, align: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1173, line: 164, baseType: !1921, size: 32, offset: 384)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !1173, line: 164, size: 32, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1921, file: !1173, line: 169, baseType: !846, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1921, file: !1173, line: 177, baseType: !7, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1865, file: !1173, line: 181, baseType: !846, size: 32, offset: 416)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1861, file: !1848, line: 42, baseType: !54, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1861, file: !1848, line: 43, baseType: !54, size: 32, offset: 96)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !827, file: !828, line: 1340, baseType: !1929, size: 64, offset: 20672)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !828, line: 69, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !827, file: !828, line: 1351, baseType: !850, size: 32, offset: 20736)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !827, file: !828, line: 1352, baseType: !850, size: 32, offset: 20768)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !827, file: !828, line: 1354, baseType: !65, size: 64, offset: 20800)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !827, file: !828, line: 1364, baseType: !56, size: 64, offset: 20864)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !827, file: !828, line: 1365, baseType: !56, size: 64, offset: 20928)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !827, file: !828, line: 1412, baseType: !65, size: 64, offset: 20992)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !827, file: !828, line: 1453, baseType: !1938, size: 64, offset: 21056)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !828, line: 1453, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !827, file: !828, line: 1457, baseType: !1941, size: 64, offset: 21120)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !24, line: 61, size: 576, elements: !1943)
!1943 = !{!1944, !1945, !1964, !1967, !1968, !2001, !2011}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1942, file: !24, line: 62, baseType: !23, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !24, line: 64, baseType: !1946, size: 192, offset: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !24, line: 64, size: 192, elements: !1947)
!1947 = !{!1948, !1959}
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !24, line: 65, baseType: !1949, size: 192)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !24, line: 65, size: 192, elements: !1950)
!1950 = !{!1951, !1958}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1949, file: !24, line: 66, baseType: !1952, size: 128)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1953, line: 50, size: 128, elements: !1954)
!1953 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1954 = !{!1955, !1956, !1957}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1952, file: !1953, line: 52, baseType: !65, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1952, file: !1953, line: 54, baseType: !7, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1952, file: !1953, line: 55, baseType: !7, size: 32, offset: 96)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1949, file: !24, line: 67, baseType: !65, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !24, line: 70, baseType: !1960, size: 192)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !24, line: 70, size: 192, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1960, file: !24, line: 71, baseType: !1488, size: 128, align: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1960, file: !24, line: 72, baseType: !65, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1942, file: !24, line: 76, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !24, line: 76, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1942, file: !24, line: 77, baseType: !65, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1942, file: !24, line: 79, baseType: !1969, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1953, line: 25, size: 256, elements: !1971)
!1971 = !{!1972, !1978, !1982}
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1953, line: 26, baseType: !1973, size: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1953, line: 26, size: 128, elements: !1974)
!1974 = !{!1975, !1977}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1973, file: !1953, line: 27, baseType: !1976, size: 128)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !1568)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1973, file: !1953, line: 28, baseType: !1976, size: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1970, file: !1953, line: 31, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1981)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1953, line: 23, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1953, line: 33, baseType: !1983, size: 64, offset: 192)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1953, line: 33, size: 64, elements: !1984)
!1984 = !{!1985, !1991, !1996}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1983, file: !1953, line: 38, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1953, line: 34, size: 64, elements: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1986, file: !1953, line: 35, baseType: !1293, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1986, file: !1953, line: 36, baseType: !60, size: 8, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1986, file: !1953, line: 37, baseType: !60, size: 8, offset: 40)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1983, file: !1953, line: 42, baseType: !1992, size: 16)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1953, line: 39, size: 16, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1992, file: !1953, line: 40, baseType: !60, size: 8)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1992, file: !1953, line: 41, baseType: !60, size: 8, offset: 8)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1983, file: !1953, line: 46, baseType: !1997, size: 16)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1953, line: 43, size: 16, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1997, file: !1953, line: 44, baseType: !60, size: 8)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1997, file: !1953, line: 45, baseType: !60, size: 8, offset: 8)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1942, file: !24, line: 81, baseType: !2002, size: 64, offset: 448)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !24, line: 85, size: 384, elements: !2004)
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2003, file: !24, line: 86, baseType: !1965, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2003, file: !24, line: 87, baseType: !65, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2003, file: !24, line: 88, baseType: !65, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2003, file: !24, line: 89, baseType: !65, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2003, file: !24, line: 90, baseType: !1652, size: 8, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2003, file: !24, line: 92, baseType: !2002, size: 64, offset: 320)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1942, file: !24, line: 82, baseType: !7, size: 32, offset: 512)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !827, file: !828, line: 1463, baseType: !2013, offset: 21184)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !828, line: 739, elements: !1201)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !827, file: !828, line: 1470, baseType: !1488, size: 128, align: 64, offset: 21184)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !827, file: !828, line: 1471, baseType: !841, size: 32, offset: 21312)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !827, file: !828, line: 1472, baseType: !850, size: 32, offset: 21344)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !827, file: !828, line: 1474, baseType: !826, size: 64, offset: 21376)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !827, file: !828, line: 1475, baseType: !2019, size: 320, offset: 21440)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2020, line: 11, size: 320, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2021 = !{!2022, !2023, !2024, !2029}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2019, file: !2020, line: 16, baseType: !1474, size: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2019, file: !2020, line: 17, baseType: !65, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2019, file: !2020, line: 18, baseType: !2025, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2019, file: !2020, line: 19, baseType: !53, size: 32, offset: 256)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !827, file: !828, line: 1478, baseType: !2031, size: 64, offset: 21760)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !828, line: 1478, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !827, file: !828, line: 1482, baseType: !841, size: 32, offset: 21824)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !827, file: !828, line: 1489, baseType: !66, size: 64, offset: 21888)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !827, file: !828, line: 1504, baseType: !66, size: 64, offset: 21952)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !827, file: !828, line: 1505, baseType: !57, size: 64, offset: 22016)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !827, file: !828, line: 1506, baseType: !56, size: 64, offset: 22080)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !827, file: !828, line: 1507, baseType: !57, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !827, file: !828, line: 1508, baseType: !57, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !827, file: !828, line: 1509, baseType: !57, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !827, file: !828, line: 1510, baseType: !1488, size: 128, align: 64, offset: 22208)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !827, file: !828, line: 1511, baseType: !850, size: 32, offset: 22336)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !827, file: !828, line: 1515, baseType: !2044, size: 64, offset: 22400)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !860, line: 56, size: 64, elements: !2045)
!2045 = !{!2046}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2044, file: !860, line: 57, baseType: !863, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !827, file: !828, line: 1518, baseType: !2044, size: 64, offset: 22464)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !827, file: !828, line: 1528, baseType: !1488, size: 128, align: 64, offset: 22528)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !827, file: !828, line: 1552, baseType: !2050, size: 35328, offset: 23040)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2051, line: 430, size: 35328, elements: !2052)
!2051 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2052 = !{!2053, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2082, !2083, !2084, !2085, !2086, !2087, !2090, !2091, !2092, !2093}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2050, file: !2051, line: 432, baseType: !2054, size: 192)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2055, size: 192, elements: !93)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2056, line: 16, size: 64, elements: !2057)
!2056 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2057 = !{!2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2055, file: !2056, line: 17, baseType: !46, size: 16)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2055, file: !2056, line: 18, baseType: !46, size: 16, offset: 16)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2055, file: !2056, line: 19, baseType: !46, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2055, file: !2056, line: 19, baseType: !46, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2055, file: !2056, line: 19, baseType: !46, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2055, file: !2056, line: 19, baseType: !46, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2055, file: !2056, line: 19, baseType: !46, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2055, file: !2056, line: 20, baseType: !46, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2055, file: !2056, line: 20, baseType: !46, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2055, file: !2056, line: 20, baseType: !46, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2055, file: !2056, line: 20, baseType: !46, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2055, file: !2056, line: 20, baseType: !46, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2055, file: !2056, line: 20, baseType: !46, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2050, file: !2051, line: 436, baseType: !65, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2050, file: !2051, line: 440, baseType: !50, size: 16, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2050, file: !2051, line: 441, baseType: !50, size: 16, offset: 272)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2050, file: !2051, line: 442, baseType: !50, size: 16, offset: 288)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2050, file: !2051, line: 443, baseType: !50, size: 16, offset: 304)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2050, file: !2051, line: 447, baseType: !65, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2050, file: !2051, line: 448, baseType: !65, size: 64, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2050, file: !2051, line: 459, baseType: !2079, size: 256, offset: 448)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2080, size: 256, elements: !261)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2051, line: 428, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2050, file: !2051, line: 461, baseType: !65, size: 64, offset: 704)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2050, file: !2051, line: 463, baseType: !65, size: 64, offset: 768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2050, file: !2051, line: 465, baseType: !65, size: 64, offset: 832)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2050, file: !2051, line: 466, baseType: !65, size: 64, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2050, file: !2051, line: 467, baseType: !65, size: 64, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2050, file: !2051, line: 473, baseType: !2088, size: 64, offset: 1024)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2051, line: 10, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2050, file: !2051, line: 480, baseType: !65, size: 64, offset: 1088)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2050, file: !2051, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2050, file: !2051, line: 491, baseType: !53, size: 32, offset: 1184)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2050, file: !2051, line: 501, baseType: !2094, size: 33792, offset: 1536)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2095, line: 448, size: 33792, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2096 = !{!2097, !2098, !2099, !2265, !2266, !2272, !2273}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2094, file: !2095, line: 461, baseType: !7, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2094, file: !2095, line: 468, baseType: !65, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2094, file: !2095, line: 476, baseType: !2100, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2095, line: 356, size: 33280, align: 512, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2101, file: !2095, line: 358, baseType: !7, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2101, file: !2095, line: 361, baseType: !7, size: 32, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2101, file: !2095, line: 364, baseType: !56, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2101, file: !2095, line: 367, baseType: !56, size: 64, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2101, file: !2095, line: 370, baseType: !56, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2101, file: !2095, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2101, file: !2095, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2101, file: !2095, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2101, file: !2095, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2101, file: !2095, line: 397, baseType: !2113, size: 32768, offset: 512)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2095, line: 348, size: 32768, elements: !2114)
!2114 = !{!2115, !2128, !2169, !2246, !2261}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2113, file: !2095, line: 349, baseType: !2116, size: 896)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2095, line: 12, size: 896, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2127}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2116, file: !2095, line: 13, baseType: !53, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2116, file: !2095, line: 14, baseType: !53, size: 32, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2116, file: !2095, line: 15, baseType: !53, size: 32, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2116, file: !2095, line: 16, baseType: !53, size: 32, offset: 96)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2116, file: !2095, line: 17, baseType: !53, size: 32, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2116, file: !2095, line: 18, baseType: !53, size: 32, offset: 160)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2116, file: !2095, line: 19, baseType: !53, size: 32, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2116, file: !2095, line: 22, baseType: !2126, size: 640, offset: 224)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 640, elements: !282)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2116, file: !2095, line: 25, baseType: !53, size: 32, offset: 864)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2113, file: !2095, line: 350, baseType: !2129, size: 4096, align: 128)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2095, line: 34, size: 4096, align: 128, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2150, !2151, !2152, !2156, !2160, !2164}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2129, file: !2095, line: 35, baseType: !46, size: 16)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2129, file: !2095, line: 36, baseType: !46, size: 16, offset: 16)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2129, file: !2095, line: 37, baseType: !46, size: 16, offset: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2129, file: !2095, line: 38, baseType: !46, size: 16, offset: 48)
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2129, file: !2095, line: 39, baseType: !2136, size: 128, offset: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2129, file: !2095, line: 39, size: 128, elements: !2137)
!2137 = !{!2138, !2143}
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2136, file: !2095, line: 40, baseType: !2139, size: 128)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2136, file: !2095, line: 40, size: 128, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2139, file: !2095, line: 41, baseType: !56, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2139, file: !2095, line: 42, baseType: !56, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2136, file: !2095, line: 44, baseType: !2144, size: 128)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2136, file: !2095, line: 44, size: 128, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2144, file: !2095, line: 45, baseType: !53, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2144, file: !2095, line: 46, baseType: !53, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2144, file: !2095, line: 47, baseType: !53, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2144, file: !2095, line: 48, baseType: !53, size: 32, offset: 96)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2129, file: !2095, line: 51, baseType: !53, size: 32, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2129, file: !2095, line: 52, baseType: !53, size: 32, offset: 224)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2129, file: !2095, line: 55, baseType: !2153, size: 1024, offset: 256)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1024, elements: !2154)
!2154 = !{!2155}
!2155 = !DISubrange(count: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2129, file: !2095, line: 58, baseType: !2157, size: 2048, offset: 1280)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2048, elements: !2158)
!2158 = !{!2159}
!2159 = !DISubrange(count: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2129, file: !2095, line: 60, baseType: !2161, size: 384, offset: 3328)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 384, elements: !2162)
!2162 = !{!2163}
!2163 = !DISubrange(count: 12)
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2129, file: !2095, line: 62, baseType: !2165, size: 384, offset: 3712)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2129, file: !2095, line: 62, size: 384, elements: !2166)
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2165, file: !2095, line: 63, baseType: !2161, size: 384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2165, file: !2095, line: 64, baseType: !2161, size: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2113, file: !2095, line: 351, baseType: !2170, size: 1088)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2095, line: 79, size: 1088, elements: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2245}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2170, file: !2095, line: 80, baseType: !53, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2170, file: !2095, line: 81, baseType: !53, size: 32, offset: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2170, file: !2095, line: 82, baseType: !53, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2170, file: !2095, line: 83, baseType: !53, size: 32, offset: 96)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2170, file: !2095, line: 84, baseType: !53, size: 32, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2170, file: !2095, line: 85, baseType: !53, size: 32, offset: 160)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2170, file: !2095, line: 86, baseType: !53, size: 32, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2170, file: !2095, line: 88, baseType: !2126, size: 640, offset: 224)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2170, file: !2095, line: 89, baseType: !60, size: 8, offset: 864)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2170, file: !2095, line: 90, baseType: !60, size: 8, offset: 872)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2170, file: !2095, line: 91, baseType: !60, size: 8, offset: 880)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2170, file: !2095, line: 92, baseType: !60, size: 8, offset: 888)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2170, file: !2095, line: 93, baseType: !60, size: 8, offset: 896)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2170, file: !2095, line: 94, baseType: !60, size: 8, offset: 904)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2170, file: !2095, line: 95, baseType: !2187, size: 64, offset: 960)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2189, line: 11, size: 128, elements: !2190)
!2189 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2188, file: !2189, line: 12, baseType: !1398, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2188, file: !2189, line: 13, baseType: !2193, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2195, line: 103, size: 1344, elements: !2196)
!2195 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2225, !2226, !2227}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2194, file: !2195, line: 109, baseType: !65, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2194, file: !2195, line: 110, baseType: !65, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2194, file: !2195, line: 111, baseType: !65, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2194, file: !2195, line: 112, baseType: !65, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2194, file: !2195, line: 113, baseType: !65, size: 64, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2194, file: !2195, line: 114, baseType: !65, size: 64, offset: 320)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2194, file: !2195, line: 117, baseType: !65, size: 64, offset: 384)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2194, file: !2195, line: 118, baseType: !65, size: 64, offset: 448)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2194, file: !2195, line: 119, baseType: !65, size: 64, offset: 512)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2194, file: !2195, line: 120, baseType: !65, size: 64, offset: 576)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2194, file: !2195, line: 121, baseType: !65, size: 64, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2194, file: !2195, line: 122, baseType: !65, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2194, file: !2195, line: 123, baseType: !65, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2194, file: !2195, line: 124, baseType: !65, size: 64, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2194, file: !2195, line: 125, baseType: !65, size: 64, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2194, file: !2195, line: 139, baseType: !65, size: 64, offset: 960)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2194, file: !2195, line: 142, baseType: !65, size: 64, offset: 1024)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2195, line: 144, baseType: !2215, size: 64, offset: 1088)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2195, line: 144, size: 64, elements: !2216)
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2215, file: !2195, line: 146, baseType: !46, size: 16)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2215, file: !2195, line: 148, baseType: !56, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2215, file: !2195, line: 150, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2195, line: 59, size: 64, elements: !2221)
!2221 = !{!2222, !2223, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2220, file: !2195, line: 61, baseType: !56, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2220, file: !2195, line: 63, baseType: !56, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2220, file: !2195, line: 65, baseType: !56, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2194, file: !2195, line: 153, baseType: !65, size: 64, offset: 1152)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2194, file: !2195, line: 154, baseType: !65, size: 64, offset: 1216)
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2195, line: 156, baseType: !2228, size: 64, offset: 1280)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2195, line: 156, size: 64, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2228, file: !2195, line: 158, baseType: !46, size: 16)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2228, file: !2195, line: 160, baseType: !56, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2228, file: !2195, line: 162, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2195, line: 69, size: 64, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2233, file: !2195, line: 71, baseType: !56, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2233, file: !2195, line: 73, baseType: !56, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2233, file: !2195, line: 75, baseType: !56, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2233, file: !2195, line: 77, baseType: !56, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2233, file: !2195, line: 80, baseType: !56, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2233, file: !2195, line: 83, baseType: !56, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2233, file: !2195, line: 86, baseType: !56, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2233, file: !2195, line: 88, baseType: !56, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2233, file: !2195, line: 93, baseType: !56, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2233, file: !2195, line: 100, baseType: !56, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2170, file: !2095, line: 96, baseType: !53, size: 32, offset: 1024)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2113, file: !2095, line: 352, baseType: !2247, size: 4608, align: 512)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2095, line: 333, size: 4608, align: 512, elements: !2248)
!2248 = !{!2249, !2250, !2259}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2247, file: !2095, line: 334, baseType: !2129, size: 4096, align: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2247, file: !2095, line: 335, baseType: !2251, size: 512, offset: 4096)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2095, line: 312, size: 512, elements: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2251, file: !2095, line: 313, baseType: !56, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2251, file: !2095, line: 314, baseType: !56, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2251, file: !2095, line: 315, baseType: !2256, size: 384, offset: 128)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 384, elements: !2257)
!2257 = !{!2258}
!2258 = !DISubrange(count: 6)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2247, file: !2095, line: 336, baseType: !2260, offset: 4608)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !1366)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2113, file: !2095, line: 353, baseType: !2262, size: 32768)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32768, elements: !2263)
!2263 = !{!2264}
!2264 = !DISubrange(count: 4096)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2094, file: !2095, line: 484, baseType: !2100, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2094, file: !2095, line: 491, baseType: !2267, size: 128, offset: 256)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2095, line: 404, size: 128, elements: !2268)
!2268 = !{!2269, !2270, !2271}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2267, file: !2095, line: 424, baseType: !56, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2267, file: !2095, line: 432, baseType: !7, size: 32, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2267, file: !2095, line: 440, baseType: !7, size: 32, offset: 96)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2094, file: !2095, line: 498, baseType: !2267, size: 128, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2094, file: !2095, line: 508, baseType: !2101, size: 33280, align: 512, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !64, line: 154, baseType: !7)
!2275 = !{!2276, !2281, !2286, !2291, !0, !2296}
!2276 = !DIGlobalVariableExpression(var: !2277, expr: !DIExpression())
!2277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 309, type: !2278, isLocal: true, isDefinition: true)
!2278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 368, elements: !2279)
!2279 = !{!2280}
!2280 = !DISubrange(count: 46)
!2281 = !DIGlobalVariableExpression(var: !2282, expr: !DIExpression())
!2282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !2283, isLocal: true, isDefinition: true)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 616, elements: !2284)
!2284 = !{!2285}
!2285 = !DISubrange(count: 77)
!2286 = !DIGlobalVariableExpression(var: !2287, expr: !DIExpression())
!2287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 780, type: !2288, isLocal: true, isDefinition: true)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 288, elements: !2289)
!2289 = !{!2290}
!2290 = !DISubrange(count: 36)
!2291 = !DIGlobalVariableExpression(var: !2292, expr: !DIExpression())
!2292 = distinct !DIGlobalVariable(scope: null, file: !3, line: 809, type: !2293, isLocal: true, isDefinition: true)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 560, elements: !2294)
!2294 = !{!2295}
!2295 = !DISubrange(count: 70)
!2296 = !DIGlobalVariableExpression(var: !2297, expr: !DIExpression())
!2297 = distinct !DIGlobalVariable(scope: null, file: !36, line: 480, type: !2298, isLocal: true, isDefinition: true)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 168, elements: !2299)
!2299 = !{!2300}
!2300 = !DISubrange(count: 21)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2302, size: 72, elements: !415)
!2302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2303 = !{i32 7, !"Dwarf Version", i32 5}
!2304 = !{i32 2, !"Debug Info Version", i32 3}
!2305 = !{i32 1, !"wchar_size", i32 2}
!2306 = !{i32 8, !"cf-protection-branch", i32 1}
!2307 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2308 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2309 = !{i32 1, !"Code Model", i32 2}
!2310 = !{i32 1, !"override-stack-alignment", i32 8}
!2311 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2312 = distinct !DISubprogram(name: "acpi_ds_auto_serialize_method", scope: !3, file: !3, line: 55, type: !2313, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!51, !67, !71}
!2315 = !{!2316, !2317, !2318, !2319, !2320}
!2316 = !DILocalVariable(name: "node", arg: 1, scope: !2312, file: !3, line: 55, type: !67)
!2317 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !2312, file: !3, line: 56, type: !71)
!2318 = !DILocalVariable(name: "status", scope: !2312, file: !3, line: 58, type: !51)
!2319 = !DILocalVariable(name: "op", scope: !2312, file: !3, line: 59, type: !201)
!2320 = !DILocalVariable(name: "walk_state", scope: !2312, file: !3, line: 60, type: !166)
!2321 = !DILocation(line: 55, column: 59, scope: !2312)
!2322 = !DILocation(line: 56, column: 37, scope: !2312)
!2323 = !DILocation(line: 58, column: 2, scope: !2312)
!2324 = !DILocation(line: 58, column: 14, scope: !2312)
!2325 = !DILocation(line: 59, column: 2, scope: !2312)
!2326 = !DILocation(line: 59, column: 27, scope: !2312)
!2327 = !DILocation(line: 60, column: 2, scope: !2312)
!2328 = !DILocation(line: 60, column: 26, scope: !2312)
!2329 = !DILocation(line: 70, column: 39, scope: !2312)
!2330 = !DILocation(line: 70, column: 56, scope: !2312)
!2331 = !DILocation(line: 70, column: 7, scope: !2312)
!2332 = !DILocation(line: 70, column: 5, scope: !2312)
!2333 = !DILocation(line: 71, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 71, column: 6)
!2335 = !DILocation(line: 71, column: 6, scope: !2312)
!2336 = !DILocation(line: 72, column: 3, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 71, column: 11)
!2338 = !DILocation(line: 75, column: 19, scope: !2312)
!2339 = !DILocation(line: 75, column: 23, scope: !2312)
!2340 = !DILocation(line: 75, column: 29, scope: !2312)
!2341 = !DILocation(line: 75, column: 34, scope: !2312)
!2342 = !DILocation(line: 75, column: 2, scope: !2312)
!2343 = !DILocation(line: 76, column: 20, scope: !2312)
!2344 = !DILocation(line: 76, column: 2, scope: !2312)
!2345 = !DILocation(line: 76, column: 13, scope: !2312)
!2346 = !DILocation(line: 76, column: 18, scope: !2312)
!2347 = !DILocation(line: 81, column: 32, scope: !2312)
!2348 = !DILocation(line: 81, column: 38, scope: !2312)
!2349 = !DILocation(line: 81, column: 6, scope: !2312)
!2350 = !DILocation(line: 80, column: 13, scope: !2312)
!2351 = !DILocation(line: 82, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 82, column: 6)
!2353 = !DILocation(line: 82, column: 6, scope: !2312)
!2354 = !DILocation(line: 83, column: 19, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 82, column: 19)
!2356 = !DILocation(line: 83, column: 3, scope: !2355)
!2357 = !DILocation(line: 84, column: 3, scope: !2355)
!2358 = !DILocation(line: 87, column: 33, scope: !2312)
!2359 = !DILocation(line: 87, column: 45, scope: !2312)
!2360 = !DILocation(line: 87, column: 49, scope: !2312)
!2361 = !DILocation(line: 88, column: 12, scope: !2312)
!2362 = !DILocation(line: 88, column: 29, scope: !2312)
!2363 = !DILocation(line: 89, column: 12, scope: !2312)
!2364 = !DILocation(line: 89, column: 29, scope: !2312)
!2365 = !DILocation(line: 87, column: 11, scope: !2312)
!2366 = !DILocation(line: 87, column: 9, scope: !2312)
!2367 = !DILocation(line: 90, column: 6, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 90, column: 6)
!2369 = !DILocation(line: 90, column: 6, scope: !2312)
!2370 = !DILocation(line: 91, column: 29, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 90, column: 28)
!2372 = !DILocation(line: 91, column: 3, scope: !2371)
!2373 = !DILocation(line: 92, column: 19, scope: !2371)
!2374 = !DILocation(line: 92, column: 3, scope: !2371)
!2375 = !DILocation(line: 93, column: 3, scope: !2371)
!2376 = !DILocation(line: 96, column: 2, scope: !2312)
!2377 = !DILocation(line: 96, column: 14, scope: !2312)
!2378 = !DILocation(line: 96, column: 34, scope: !2312)
!2379 = !DILocation(line: 100, column: 29, scope: !2312)
!2380 = !DILocation(line: 100, column: 11, scope: !2312)
!2381 = !DILocation(line: 100, column: 9, scope: !2312)
!2382 = !DILocation(line: 102, column: 28, scope: !2312)
!2383 = !DILocation(line: 102, column: 2, scope: !2312)
!2384 = !DILocation(line: 103, column: 2, scope: !2312)
!2385 = !DILocation(line: 104, column: 1, scope: !2312)
!2386 = !DISubprogram(name: "acpi_ps_alloc_op", scope: !2387, file: !2387, line: 204, type: !2388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2387 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!201, !46, !59}
!2390 = !DISubprogram(name: "acpi_ps_set_name", scope: !2387, file: !2387, line: 212, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !201, !53}
!2393 = !DISubprogram(name: "acpi_ds_create_walk_state", scope: !2394, file: !2394, line: 294, type: !2395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2394 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!166, !178, !201, !71, !448}
!2397 = !DISubprogram(name: "acpi_ps_free_op", scope: !2387, file: !2387, line: 206, type: !2398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !201}
!2400 = !DISubprogram(name: "acpi_ds_init_aml_walk", scope: !2394, file: !2394, line: 303, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!51, !166, !201, !67, !59, !53, !2403, !60}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !168, line: 152, size: 704, elements: !2405)
!2405 = !{!2406, !2407, !2409, !2410, !2411, !2412, !2413, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !2404, file: !168, line: 155, baseType: !67, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !2404, file: !168, line: 156, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !2404, file: !168, line: 157, baseType: !131, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2404, file: !168, line: 159, baseType: !67, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !2404, file: !168, line: 160, baseType: !71, size: 64, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !2404, file: !168, line: 161, baseType: !105, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !2404, file: !168, line: 163, baseType: !2414, size: 64, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2416)
!2416 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !6, line: 351, size: 56, elements: !2417)
!2417 = !{!2418, !2424, !2433, !2441, !2450}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2416, file: !6, line: 352, baseType: !2419, size: 56)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !6, line: 295, size: 56, elements: !2420)
!2420 = !{!2421, !2422, !2423}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2419, file: !6, line: 296, baseType: !260, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !2419, file: !6, line: 297, baseType: !46, size: 16, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !2419, file: !6, line: 298, baseType: !60, size: 8, offset: 48)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !2416, file: !6, line: 353, baseType: !2425, size: 56)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !6, line: 314, size: 56, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2425, file: !6, line: 315, baseType: !60, size: 8)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !2425, file: !6, line: 316, baseType: !60, size: 8, offset: 8)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !2425, file: !6, line: 317, baseType: !60, size: 8, offset: 16)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !2425, file: !6, line: 318, baseType: !60, size: 8, offset: 24)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !2425, file: !6, line: 319, baseType: !60, size: 8, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2425, file: !6, line: 320, baseType: !46, size: 16, offset: 40)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !2416, file: !6, line: 354, baseType: !2434, size: 56)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !6, line: 325, size: 56, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2440}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2434, file: !6, line: 326, baseType: !60, size: 8)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2434, file: !6, line: 327, baseType: !60, size: 8, offset: 8)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !2434, file: !6, line: 328, baseType: !2439, size: 32, offset: 16)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !261)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2434, file: !6, line: 329, baseType: !60, size: 8, offset: 48)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !2416, file: !6, line: 355, baseType: !2442, size: 56)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !6, line: 334, size: 56, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2448, !2449}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2442, file: !6, line: 335, baseType: !60, size: 8)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2442, file: !6, line: 336, baseType: !60, size: 8, offset: 8)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !2442, file: !6, line: 337, baseType: !2447, size: 16, offset: 16)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 16, elements: !504)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !2442, file: !6, line: 338, baseType: !60, size: 8, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2442, file: !6, line: 339, baseType: !46, size: 16, offset: 40)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !2416, file: !6, line: 356, baseType: !2451, size: 56)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !6, line: 342, size: 56, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2451, file: !6, line: 343, baseType: !60, size: 8)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !2451, file: !6, line: 344, baseType: !60, size: 8, offset: 8)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !2451, file: !6, line: 345, baseType: !60, size: 8, offset: 16)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !2451, file: !6, line: 346, baseType: !60, size: 8, offset: 24)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !2451, file: !6, line: 347, baseType: !60, size: 8, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2451, file: !6, line: 348, baseType: !46, size: 16, offset: 40)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !2404, file: !168, line: 164, baseType: !71, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !2404, file: !168, line: 165, baseType: !71, size: 64, offset: 512)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !2404, file: !168, line: 167, baseType: !53, size: 32, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !2404, file: !168, line: 168, baseType: !53, size: 32, offset: 608)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2404, file: !168, line: 169, baseType: !46, size: 16, offset: 640)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !2404, file: !168, line: 170, baseType: !46, size: 16, offset: 656)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !2404, file: !168, line: 171, baseType: !60, size: 8, offset: 672)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !2404, file: !168, line: 172, baseType: !60, size: 8, offset: 680)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2404, file: !168, line: 173, baseType: !60, size: 8, offset: 688)
!2468 = !DISubprogram(name: "acpi_ds_delete_walk_state", scope: !2394, file: !2394, line: 314, type: !2469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !166}
!2471 = distinct !DISubprogram(name: "acpi_ds_detect_named_opcodes", scope: !3, file: !3, line: 122, type: !452, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2472)
!2472 = !{!2473, !2474}
!2473 = !DILocalVariable(name: "walk_state", arg: 1, scope: !2471, file: !3, line: 122, type: !166)
!2474 = !DILocalVariable(name: "out_op", arg: 2, scope: !2471, file: !3, line: 123, type: !454)
!2475 = !DILocation(line: 122, column: 54, scope: !2471)
!2476 = !DILocation(line: 123, column: 35, scope: !2471)
!2477 = !DILocation(line: 131, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 130, column: 6)
!2479 = !DILocation(line: 131, column: 19, scope: !2478)
!2480 = !DILocation(line: 132, column: 7, scope: !2478)
!2481 = !DILocation(line: 132, column: 13, scope: !2478)
!2482 = !DILocation(line: 130, column: 6, scope: !2471)
!2483 = !DILocation(line: 133, column: 3, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 132, column: 54)
!2485 = !DILocation(line: 146, column: 2, scope: !2471)
!2486 = !DILocation(line: 146, column: 14, scope: !2471)
!2487 = !DILocation(line: 146, column: 34, scope: !2471)
!2488 = !DILocation(line: 146, column: 45, scope: !2471)
!2489 = !DILocation(line: 147, column: 2, scope: !2471)
!2490 = !DILocation(line: 147, column: 14, scope: !2471)
!2491 = !DILocation(line: 147, column: 34, scope: !2471)
!2492 = !DILocation(line: 147, column: 45, scope: !2471)
!2493 = !DILocation(line: 158, column: 2, scope: !2471)
!2494 = !DILocation(line: 159, column: 1, scope: !2471)
!2495 = !DISubprogram(name: "acpi_ps_parse_aml", scope: !2387, file: !2387, line: 117, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2496 = !DISubprogram(name: "acpi_ps_delete_parse_tree", scope: !2387, file: !2387, line: 195, type: !2398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2497 = distinct !DISubprogram(name: "acpi_ds_method_error", scope: !3, file: !3, line: 178, type: !2498, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!51, !51, !166}
!2500 = !{!2501, !2502, !2503, !2504}
!2501 = !DILocalVariable(name: "status", arg: 1, scope: !2497, file: !3, line: 178, type: !51)
!2502 = !DILocalVariable(name: "walk_state", arg: 2, scope: !2497, file: !3, line: 178, type: !166)
!2503 = !DILocalVariable(name: "aml_offset", scope: !2497, file: !3, line: 180, type: !53)
!2504 = !DILocalVariable(name: "name", scope: !2497, file: !3, line: 181, type: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_name", file: !52, line: 422, baseType: !53)
!2506 = !DILocation(line: 178, column: 34, scope: !2497)
!2507 = !DILocation(line: 178, column: 66, scope: !2497)
!2508 = !DILocation(line: 180, column: 2, scope: !2497)
!2509 = !DILocation(line: 180, column: 6, scope: !2497)
!2510 = !DILocation(line: 181, column: 2, scope: !2497)
!2511 = !DILocation(line: 181, column: 12, scope: !2497)
!2512 = !DILocation(line: 187, column: 6, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 187, column: 6)
!2514 = !DILocation(line: 187, column: 27, scope: !2513)
!2515 = !DILocation(line: 187, column: 31, scope: !2513)
!2516 = !DILocation(line: 187, column: 38, scope: !2513)
!2517 = !DILocation(line: 187, column: 6, scope: !2497)
!2518 = !DILocation(line: 188, column: 11, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 187, column: 58)
!2520 = !DILocation(line: 188, column: 3, scope: !2519)
!2521 = !DILocation(line: 193, column: 6, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 193, column: 6)
!2523 = !DILocation(line: 193, column: 6, scope: !2497)
!2524 = !DILocation(line: 197, column: 3, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 193, column: 34)
!2526 = !DILocation(line: 203, column: 21, scope: !2525)
!2527 = !DILocation(line: 203, column: 16, scope: !2525)
!2528 = !DILocation(line: 203, column: 14, scope: !2525)
!2529 = !DILocation(line: 207, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 207, column: 7)
!2531 = !DILocation(line: 207, column: 19, scope: !2530)
!2532 = !DILocation(line: 207, column: 7, scope: !2525)
!2533 = !DILocation(line: 208, column: 11, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 207, column: 32)
!2535 = !DILocation(line: 208, column: 23, scope: !2534)
!2536 = !DILocation(line: 208, column: 36, scope: !2534)
!2537 = !DILocation(line: 208, column: 41, scope: !2534)
!2538 = !DILocation(line: 208, column: 9, scope: !2534)
!2539 = !DILocation(line: 209, column: 3, scope: !2534)
!2540 = !DILocation(line: 209, column: 14, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 209, column: 14)
!2542 = !DILocation(line: 209, column: 26, scope: !2541)
!2543 = !DILocation(line: 209, column: 14, scope: !2530)
!2544 = !DILocation(line: 210, column: 11, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 209, column: 41)
!2546 = !DILocation(line: 210, column: 23, scope: !2545)
!2547 = !DILocation(line: 210, column: 38, scope: !2545)
!2548 = !DILocation(line: 210, column: 43, scope: !2545)
!2549 = !DILocation(line: 210, column: 9, scope: !2545)
!2550 = !DILocation(line: 211, column: 3, scope: !2545)
!2551 = !DILocation(line: 213, column: 12, scope: !2525)
!2552 = !DILocation(line: 213, column: 39, scope: !2525)
!2553 = !DILocation(line: 213, column: 47, scope: !2525)
!2554 = !DILocation(line: 214, column: 11, scope: !2525)
!2555 = !DILocation(line: 214, column: 23, scope: !2525)
!2556 = !DILocation(line: 215, column: 11, scope: !2525)
!2557 = !DILocation(line: 213, column: 10, scope: !2525)
!2558 = !DILocation(line: 216, column: 3, scope: !2525)
!2559 = !DILocation(line: 217, column: 2, scope: !2525)
!2560 = !DILocation(line: 219, column: 32, scope: !2497)
!2561 = !DILocation(line: 219, column: 2, scope: !2497)
!2562 = !DILocation(line: 221, column: 6, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 221, column: 6)
!2564 = !DILocation(line: 221, column: 6, scope: !2497)
!2565 = !DILocation(line: 222, column: 29, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 221, column: 28)
!2567 = !DILocation(line: 222, column: 37, scope: !2566)
!2568 = !DILocation(line: 222, column: 49, scope: !2566)
!2569 = !DILocation(line: 222, column: 61, scope: !2566)
!2570 = !DILocation(line: 222, column: 3, scope: !2566)
!2571 = !DILocation(line: 229, column: 2, scope: !2566)
!2572 = !DILocation(line: 231, column: 10, scope: !2497)
!2573 = !DILocation(line: 231, column: 2, scope: !2497)
!2574 = !DILocation(line: 232, column: 1, scope: !2497)
!2575 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !2576, file: !2576, line: 466, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2576 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null}
!2579 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !2576, file: !2576, line: 464, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2580 = !DISubprogram(name: "acpi_ds_clear_implicit_return", scope: !2394, file: !2394, line: 243, type: !2469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2581 = !DISubprogram(name: "acpi_ds_dump_method_stack", scope: !2394, file: !2394, line: 340, type: !2582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !51, !166, !201}
!2584 = distinct !DISubprogram(name: "acpi_ds_begin_method_execution", scope: !3, file: !3, line: 292, type: !2585, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!51, !67, !71, !166}
!2587 = !{!2588, !2589, !2590, !2591, !2592}
!2588 = !DILocalVariable(name: "method_node", arg: 1, scope: !2584, file: !3, line: 292, type: !67)
!2589 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !2584, file: !3, line: 293, type: !71)
!2590 = !DILocalVariable(name: "walk_state", arg: 3, scope: !2584, file: !3, line: 294, type: !166)
!2591 = !DILocalVariable(name: "status", scope: !2584, file: !3, line: 296, type: !51)
!2592 = !DILabel(scope: !2584, name: "cleanup", file: !3, line: 432)
!2593 = !DILocation(line: 292, column: 60, scope: !2584)
!2594 = !DILocation(line: 293, column: 38, scope: !2584)
!2595 = !DILocation(line: 294, column: 35, scope: !2584)
!2596 = !DILocation(line: 296, column: 2, scope: !2584)
!2597 = !DILocation(line: 296, column: 14, scope: !2584)
!2598 = !DILocation(line: 300, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 300, column: 6)
!2600 = !DILocation(line: 300, column: 6, scope: !2584)
!2601 = !DILocation(line: 301, column: 3, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 300, column: 20)
!2603 = !DILocation(line: 304, column: 29, scope: !2584)
!2604 = !DILocation(line: 304, column: 42, scope: !2584)
!2605 = !DILocation(line: 304, column: 52, scope: !2584)
!2606 = !DILocation(line: 304, column: 2, scope: !2584)
!2607 = !DILocation(line: 308, column: 6, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 308, column: 6)
!2609 = !DILocation(line: 308, column: 23, scope: !2608)
!2610 = !DILocation(line: 308, column: 36, scope: !2608)
!2611 = !DILocation(line: 308, column: 6, scope: !2584)
!2612 = !DILocation(line: 309, column: 3, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 308, column: 55)
!2614 = !DILocation(line: 311, column: 3, scope: !2613)
!2615 = !DILocation(line: 317, column: 6, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 317, column: 6)
!2617 = !DILocation(line: 317, column: 23, scope: !2616)
!2618 = !DILocation(line: 317, column: 34, scope: !2616)
!2619 = !DILocation(line: 317, column: 6, scope: !2584)
!2620 = !DILocation(line: 323, column: 8, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 323, column: 7)
!2622 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 317, column: 60)
!2623 = !DILocation(line: 323, column: 25, scope: !2621)
!2624 = !DILocation(line: 323, column: 7, scope: !2622)
!2625 = !DILocation(line: 324, column: 41, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 323, column: 32)
!2627 = !DILocation(line: 324, column: 13, scope: !2626)
!2628 = !DILocation(line: 324, column: 11, scope: !2626)
!2629 = !DILocation(line: 325, column: 8, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 325, column: 8)
!2631 = !DILocation(line: 325, column: 8, scope: !2626)
!2632 = !DILocation(line: 326, column: 5, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 325, column: 30)
!2634 = !DILocation(line: 328, column: 3, scope: !2626)
!2635 = !DILocation(line: 341, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 341, column: 7)
!2637 = !DILocation(line: 341, column: 18, scope: !2636)
!2638 = !DILocation(line: 342, column: 10, scope: !2636)
!2639 = !DILocation(line: 343, column: 10, scope: !2636)
!2640 = !DILocation(line: 343, column: 21, scope: !2636)
!2641 = !DILocation(line: 344, column: 7, scope: !2636)
!2642 = !DILocation(line: 344, column: 11, scope: !2636)
!2643 = !DILocation(line: 344, column: 23, scope: !2636)
!2644 = !DILocation(line: 344, column: 31, scope: !2636)
!2645 = !DILocation(line: 345, column: 4, scope: !2636)
!2646 = !DILocation(line: 345, column: 21, scope: !2636)
!2647 = !DILocation(line: 345, column: 34, scope: !2636)
!2648 = !DILocation(line: 344, column: 50, scope: !2636)
!2649 = !DILocation(line: 341, column: 7, scope: !2622)
!2650 = !DILocation(line: 346, column: 4, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 345, column: 47)
!2652 = !DILocation(line: 352, column: 4, scope: !2651)
!2653 = !DILocation(line: 359, column: 8, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 359, column: 7)
!2655 = !DILocation(line: 359, column: 19, scope: !2654)
!2656 = !DILocation(line: 360, column: 8, scope: !2654)
!2657 = !DILocation(line: 360, column: 25, scope: !2654)
!2658 = !DILocation(line: 360, column: 38, scope: !2654)
!2659 = !DILocation(line: 360, column: 48, scope: !2654)
!2660 = !DILocation(line: 361, column: 8, scope: !2654)
!2661 = !DILocation(line: 361, column: 20, scope: !2654)
!2662 = !DILocation(line: 361, column: 28, scope: !2654)
!2663 = !DILocation(line: 362, column: 8, scope: !2654)
!2664 = !DILocation(line: 362, column: 25, scope: !2654)
!2665 = !DILocation(line: 362, column: 38, scope: !2654)
!2666 = !DILocation(line: 361, column: 38, scope: !2654)
!2667 = !DILocation(line: 359, column: 7, scope: !2622)
!2668 = !DILocation(line: 368, column: 34, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 362, column: 50)
!2670 = !DILocation(line: 368, column: 51, scope: !2669)
!2671 = !DILocation(line: 369, column: 19, scope: !2669)
!2672 = !DILocation(line: 368, column: 8, scope: !2669)
!2673 = !DILocation(line: 367, column: 11, scope: !2669)
!2674 = !DILocation(line: 371, column: 8, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 371, column: 8)
!2676 = !DILocation(line: 371, column: 8, scope: !2669)
!2677 = !DILocation(line: 372, column: 5, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 371, column: 30)
!2679 = !DILocation(line: 377, column: 8, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 377, column: 8)
!2681 = !DILocation(line: 377, column: 8, scope: !2669)
!2682 = !DILocation(line: 380, column: 9, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 377, column: 20)
!2684 = !DILocation(line: 380, column: 21, scope: !2683)
!2685 = !DILocation(line: 380, column: 29, scope: !2683)
!2686 = !DILocation(line: 378, column: 5, scope: !2683)
!2687 = !DILocation(line: 378, column: 22, scope: !2683)
!2688 = !DILocation(line: 379, column: 9, scope: !2683)
!2689 = !DILocation(line: 379, column: 29, scope: !2683)
!2690 = !DILocation(line: 383, column: 9, scope: !2683)
!2691 = !DILocation(line: 383, column: 21, scope: !2683)
!2692 = !DILocation(line: 383, column: 29, scope: !2683)
!2693 = !DILocation(line: 382, column: 5, scope: !2683)
!2694 = !DILocation(line: 382, column: 22, scope: !2683)
!2695 = !DILocation(line: 382, column: 35, scope: !2683)
!2696 = !DILocation(line: 382, column: 45, scope: !2683)
!2697 = !DILocation(line: 392, column: 11, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 392, column: 9)
!2699 = !DILocation(line: 392, column: 28, scope: !2698)
!2700 = !DILocation(line: 392, column: 39, scope: !2698)
!2701 = !DILocation(line: 392, column: 9, scope: !2683)
!2702 = !DILocation(line: 395, column: 10, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 393, column: 43)
!2704 = !DILocation(line: 395, column: 27, scope: !2703)
!2705 = !DILocation(line: 394, column: 6, scope: !2703)
!2706 = !DILocation(line: 394, column: 18, scope: !2703)
!2707 = !DILocation(line: 394, column: 26, scope: !2703)
!2708 = !DILocation(line: 394, column: 45, scope: !2703)
!2709 = !DILocation(line: 396, column: 5, scope: !2703)
!2710 = !DILocation(line: 397, column: 4, scope: !2683)
!2711 = !DILocation(line: 400, column: 9, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 397, column: 11)
!2713 = !DILocation(line: 400, column: 26, scope: !2712)
!2714 = !DILocation(line: 400, column: 39, scope: !2712)
!2715 = !DILocation(line: 398, column: 5, scope: !2712)
!2716 = !DILocation(line: 398, column: 22, scope: !2712)
!2717 = !DILocation(line: 399, column: 9, scope: !2712)
!2718 = !DILocation(line: 399, column: 29, scope: !2712)
!2719 = !DILocation(line: 403, column: 9, scope: !2712)
!2720 = !DILocation(line: 402, column: 5, scope: !2712)
!2721 = !DILocation(line: 402, column: 22, scope: !2712)
!2722 = !DILocation(line: 402, column: 35, scope: !2712)
!2723 = !DILocation(line: 402, column: 45, scope: !2712)
!2724 = !DILocation(line: 405, column: 3, scope: !2669)
!2725 = !DILocation(line: 409, column: 3, scope: !2622)
!2726 = !DILocation(line: 409, column: 20, scope: !2622)
!2727 = !DILocation(line: 409, column: 33, scope: !2622)
!2728 = !DILocation(line: 409, column: 50, scope: !2622)
!2729 = !DILocation(line: 410, column: 2, scope: !2622)
!2730 = !DILocation(line: 417, column: 7, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 417, column: 6)
!2732 = !DILocation(line: 417, column: 24, scope: !2731)
!2733 = !DILocation(line: 417, column: 6, scope: !2584)
!2734 = !DILocation(line: 418, column: 39, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 417, column: 34)
!2736 = !DILocation(line: 418, column: 56, scope: !2735)
!2737 = !DILocation(line: 418, column: 12, scope: !2735)
!2738 = !DILocation(line: 418, column: 10, scope: !2735)
!2739 = !DILocation(line: 419, column: 7, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 419, column: 7)
!2741 = !DILocation(line: 419, column: 7, scope: !2735)
!2742 = !DILocation(line: 420, column: 4, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 419, column: 29)
!2744 = !DILocation(line: 422, column: 2, scope: !2735)
!2745 = !DILocation(line: 428, column: 2, scope: !2584)
!2746 = !DILocation(line: 428, column: 19, scope: !2584)
!2747 = !DILocation(line: 428, column: 31, scope: !2584)
!2748 = !DILocation(line: 429, column: 19, scope: !2584)
!2749 = !DILocation(line: 430, column: 2, scope: !2584)
!2750 = !DILocation(line: 432, column: 1, scope: !2584)
!2751 = !DILocation(line: 435, column: 6, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 435, column: 6)
!2753 = !DILocation(line: 435, column: 23, scope: !2752)
!2754 = !DILocation(line: 435, column: 6, scope: !2584)
!2755 = !DILocation(line: 436, column: 3, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 435, column: 30)
!2757 = !DILocation(line: 437, column: 2, scope: !2756)
!2758 = !DILocation(line: 438, column: 2, scope: !2584)
!2759 = !DILocation(line: 439, column: 1, scope: !2584)
!2760 = !DISubprogram(name: "acpi_ex_start_trace_method", scope: !2576, file: !2576, line: 102, type: !2761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null, !67, !71, !166}
!2763 = !DISubprogram(name: "acpi_error", scope: !2764, file: !2764, line: 901, type: !2765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2764 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !2408, !53, !2408, null}
!2767 = distinct !DISubprogram(name: "acpi_ds_create_method_mutex", scope: !3, file: !3, line: 247, type: !2768, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!51, !71}
!2770 = !{!2771, !2772, !2773}
!2771 = !DILocalVariable(name: "method_desc", arg: 1, scope: !2767, file: !3, line: 247, type: !71)
!2772 = !DILocalVariable(name: "mutex_desc", scope: !2767, file: !3, line: 249, type: !71)
!2773 = !DILocalVariable(name: "status", scope: !2767, file: !3, line: 250, type: !51)
!2774 = !DILocation(line: 247, column: 56, scope: !2767)
!2775 = !DILocation(line: 249, column: 2, scope: !2767)
!2776 = !DILocation(line: 249, column: 29, scope: !2767)
!2777 = !DILocation(line: 250, column: 2, scope: !2767)
!2778 = !DILocation(line: 250, column: 14, scope: !2767)
!2779 = !DILocation(line: 256, column: 15, scope: !2767)
!2780 = !DILocation(line: 256, column: 13, scope: !2767)
!2781 = !DILocation(line: 257, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 257, column: 6)
!2783 = !DILocation(line: 257, column: 6, scope: !2767)
!2784 = !DILocation(line: 258, column: 3, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 257, column: 19)
!2786 = !DILocation(line: 263, column: 11, scope: !2767)
!2787 = !DILocation(line: 263, column: 9, scope: !2767)
!2788 = !DILocation(line: 264, column: 6, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 264, column: 6)
!2790 = !DILocation(line: 264, column: 6, scope: !2767)
!2791 = !DILocation(line: 265, column: 30, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 264, column: 28)
!2793 = !DILocation(line: 265, column: 3, scope: !2792)
!2794 = !DILocation(line: 266, column: 3, scope: !2792)
!2795 = !DILocation(line: 269, column: 33, scope: !2767)
!2796 = !DILocation(line: 269, column: 53, scope: !2767)
!2797 = !DILocation(line: 269, column: 2, scope: !2767)
!2798 = !DILocation(line: 269, column: 20, scope: !2767)
!2799 = !DILocation(line: 269, column: 31, scope: !2767)
!2800 = !DILocation(line: 270, column: 30, scope: !2767)
!2801 = !DILocation(line: 270, column: 2, scope: !2767)
!2802 = !DILocation(line: 270, column: 22, scope: !2767)
!2803 = !DILocation(line: 270, column: 28, scope: !2767)
!2804 = !DILocation(line: 271, column: 2, scope: !2767)
!2805 = !DILocation(line: 272, column: 1, scope: !2767)
!2806 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !2807, file: !2807, line: 227, type: !2808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2807 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!2408, !66}
!2810 = !DISubprogram(name: "acpi_ex_system_wait_mutex", scope: !2576, file: !2576, line: 315, type: !2811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!51, !66, !46}
!2813 = distinct !DISubprogram(name: "acpi_os_get_thread_id", scope: !2814, file: !2814, line: 71, type: !2815, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2814 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!56}
!2817 = !DILocation(line: 73, column: 41, scope: !2813)
!2818 = !DILocation(line: 73, column: 26, scope: !2813)
!2819 = !DILocation(line: 73, column: 2, scope: !2813)
!2820 = !DISubprogram(name: "acpi_ut_allocate_owner_id", scope: !2807, file: !2807, line: 586, type: !2821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!51, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!2824 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !2825, file: !2825, line: 140, type: !2826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2825 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!51, !66, !53}
!2828 = distinct !DISubprogram(name: "acpi_ds_call_control_method", scope: !3, file: !3, line: 456, type: !2829, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!51, !448, !166, !201}
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842}
!2832 = !DILocalVariable(name: "thread", arg: 1, scope: !2828, file: !3, line: 456, type: !448)
!2833 = !DILocalVariable(name: "this_walk_state", arg: 2, scope: !2828, file: !3, line: 457, type: !166)
!2834 = !DILocalVariable(name: "op", arg: 3, scope: !2828, file: !3, line: 458, type: !201)
!2835 = !DILocalVariable(name: "status", scope: !2828, file: !3, line: 460, type: !51)
!2836 = !DILocalVariable(name: "method_node", scope: !2828, file: !3, line: 461, type: !67)
!2837 = !DILocalVariable(name: "next_walk_state", scope: !2828, file: !3, line: 462, type: !166)
!2838 = !DILocalVariable(name: "obj_desc", scope: !2828, file: !3, line: 463, type: !71)
!2839 = !DILocalVariable(name: "info", scope: !2828, file: !3, line: 464, type: !2403)
!2840 = !DILocalVariable(name: "i", scope: !2828, file: !3, line: 465, type: !53)
!2841 = !DILabel(scope: !2828, name: "pop_walk_state", file: !3, line: 578)
!2842 = !DILabel(scope: !2828, name: "cleanup", file: !3, line: 584)
!2843 = !DILocation(line: 456, column: 55, scope: !2828)
!2844 = !DILocation(line: 457, column: 32, scope: !2828)
!2845 = !DILocation(line: 458, column: 33, scope: !2828)
!2846 = !DILocation(line: 460, column: 2, scope: !2828)
!2847 = !DILocation(line: 460, column: 14, scope: !2828)
!2848 = !DILocation(line: 461, column: 2, scope: !2828)
!2849 = !DILocation(line: 461, column: 30, scope: !2828)
!2850 = !DILocation(line: 462, column: 2, scope: !2828)
!2851 = !DILocation(line: 462, column: 26, scope: !2828)
!2852 = !DILocation(line: 463, column: 2, scope: !2828)
!2853 = !DILocation(line: 463, column: 29, scope: !2828)
!2854 = !DILocation(line: 464, column: 2, scope: !2828)
!2855 = !DILocation(line: 464, column: 29, scope: !2828)
!2856 = !DILocation(line: 465, column: 2, scope: !2828)
!2857 = !DILocation(line: 465, column: 6, scope: !2828)
!2858 = !DILocation(line: 476, column: 16, scope: !2828)
!2859 = !DILocation(line: 476, column: 33, scope: !2828)
!2860 = !DILocation(line: 476, column: 14, scope: !2828)
!2861 = !DILocation(line: 477, column: 7, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 477, column: 6)
!2863 = !DILocation(line: 477, column: 6, scope: !2828)
!2864 = !DILocation(line: 478, column: 3, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 477, column: 20)
!2866 = !DILocation(line: 481, column: 41, scope: !2828)
!2867 = !DILocation(line: 481, column: 13, scope: !2828)
!2868 = !DILocation(line: 481, column: 11, scope: !2828)
!2869 = !DILocation(line: 482, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 482, column: 6)
!2871 = !DILocation(line: 482, column: 6, scope: !2828)
!2872 = !DILocation(line: 483, column: 3, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 482, column: 17)
!2874 = !DILocation(line: 489, column: 37, scope: !2828)
!2875 = !DILocation(line: 489, column: 50, scope: !2828)
!2876 = !DILocation(line: 490, column: 9, scope: !2828)
!2877 = !DILocation(line: 489, column: 6, scope: !2828)
!2878 = !DILocation(line: 488, column: 9, scope: !2828)
!2879 = !DILocation(line: 491, column: 6, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 491, column: 6)
!2881 = !DILocation(line: 491, column: 6, scope: !2828)
!2882 = !DILocation(line: 492, column: 3, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 491, column: 28)
!2884 = !DILocation(line: 498, column: 32, scope: !2828)
!2885 = !DILocation(line: 498, column: 49, scope: !2828)
!2886 = !DILocation(line: 498, column: 65, scope: !2828)
!2887 = !DILocation(line: 499, column: 11, scope: !2828)
!2888 = !DILocation(line: 498, column: 6, scope: !2828)
!2889 = !DILocation(line: 497, column: 18, scope: !2828)
!2890 = !DILocation(line: 500, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 500, column: 6)
!2892 = !DILocation(line: 500, column: 6, scope: !2828)
!2893 = !DILocation(line: 501, column: 10, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 500, column: 24)
!2895 = !DILocation(line: 502, column: 3, scope: !2894)
!2896 = !DILocation(line: 510, column: 2, scope: !2828)
!2897 = !DILocation(line: 510, column: 19, scope: !2828)
!2898 = !DILocation(line: 510, column: 28, scope: !2828)
!2899 = !DILocation(line: 510, column: 45, scope: !2828)
!2900 = !DILocation(line: 510, column: 59, scope: !2828)
!2901 = !DILocation(line: 517, column: 9, scope: !2828)
!2902 = !DILocation(line: 517, column: 7, scope: !2828)
!2903 = !DILocation(line: 518, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 518, column: 6)
!2905 = !DILocation(line: 518, column: 6, scope: !2828)
!2906 = !DILocation(line: 519, column: 10, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 518, column: 13)
!2908 = !DILocation(line: 520, column: 3, scope: !2907)
!2909 = !DILocation(line: 523, column: 22, scope: !2828)
!2910 = !DILocation(line: 523, column: 39, scope: !2828)
!2911 = !DILocation(line: 523, column: 2, scope: !2828)
!2912 = !DILocation(line: 523, column: 8, scope: !2828)
!2913 = !DILocation(line: 523, column: 19, scope: !2828)
!2914 = !DILocation(line: 525, column: 33, scope: !2828)
!2915 = !DILocation(line: 525, column: 56, scope: !2828)
!2916 = !DILocation(line: 526, column: 12, scope: !2828)
!2917 = !DILocation(line: 526, column: 29, scope: !2828)
!2918 = !DILocation(line: 527, column: 12, scope: !2828)
!2919 = !DILocation(line: 527, column: 29, scope: !2828)
!2920 = !DILocation(line: 527, column: 41, scope: !2828)
!2921 = !DILocation(line: 525, column: 11, scope: !2828)
!2922 = !DILocation(line: 525, column: 9, scope: !2828)
!2923 = !DILocation(line: 530, column: 2, scope: !2828)
!2924 = !DILocation(line: 531, column: 6, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 531, column: 6)
!2926 = !DILocation(line: 531, column: 6, scope: !2828)
!2927 = !DILocation(line: 532, column: 3, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 531, column: 28)
!2929 = !DILocation(line: 536, column: 6, scope: !2828)
!2930 = !DILocation(line: 536, column: 23, scope: !2828)
!2931 = !DILocation(line: 536, column: 44, scope: !2828)
!2932 = !DILocation(line: 535, column: 2, scope: !2828)
!2933 = !DILocation(line: 535, column: 19, scope: !2828)
!2934 = !DILocation(line: 535, column: 40, scope: !2828)
!2935 = !DILocation(line: 542, column: 9, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 542, column: 2)
!2937 = !DILocation(line: 542, column: 7, scope: !2936)
!2938 = !DILocation(line: 542, column: 14, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 542, column: 2)
!2940 = !DILocation(line: 542, column: 18, scope: !2939)
!2941 = !DILocation(line: 542, column: 35, scope: !2939)
!2942 = !DILocation(line: 542, column: 16, scope: !2939)
!2943 = !DILocation(line: 542, column: 2, scope: !2936)
!2944 = !DILocation(line: 543, column: 28, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 542, column: 53)
!2946 = !DILocation(line: 543, column: 45, scope: !2945)
!2947 = !DILocation(line: 543, column: 54, scope: !2945)
!2948 = !DILocation(line: 543, column: 3, scope: !2945)
!2949 = !DILocation(line: 544, column: 3, scope: !2945)
!2950 = !DILocation(line: 544, column: 20, scope: !2945)
!2951 = !DILocation(line: 544, column: 29, scope: !2945)
!2952 = !DILocation(line: 544, column: 32, scope: !2945)
!2953 = !DILocation(line: 545, column: 2, scope: !2945)
!2954 = !DILocation(line: 542, column: 49, scope: !2939)
!2955 = !DILocation(line: 542, column: 2, scope: !2939)
!2956 = distinct !{!2956, !2943, !2957, !2958, !2959}
!2957 = !DILocation(line: 545, column: 2, scope: !2936)
!2958 = !{!"llvm.loop.mustprogress"}
!2959 = !{!"llvm.loop.unroll.disable"}
!2960 = !DILocation(line: 549, column: 2, scope: !2828)
!2961 = !DILocation(line: 549, column: 19, scope: !2828)
!2962 = !DILocation(line: 549, column: 32, scope: !2828)
!2963 = !DILocation(line: 556, column: 38, scope: !2828)
!2964 = !DILocation(line: 556, column: 6, scope: !2828)
!2965 = !DILocation(line: 555, column: 2, scope: !2828)
!2966 = !DILocation(line: 555, column: 19, scope: !2828)
!2967 = !DILocation(line: 555, column: 35, scope: !2828)
!2968 = !DILocation(line: 557, column: 2, scope: !2828)
!2969 = !DILocation(line: 557, column: 19, scope: !2828)
!2970 = !DILocation(line: 557, column: 36, scope: !2828)
!2971 = !DILocation(line: 568, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 568, column: 6)
!2973 = !DILocation(line: 568, column: 23, scope: !2972)
!2974 = !DILocation(line: 568, column: 34, scope: !2972)
!2975 = !DILocation(line: 568, column: 6, scope: !2828)
!2976 = !DILocation(line: 570, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 568, column: 63)
!2978 = !DILocation(line: 570, column: 24, scope: !2977)
!2979 = !DILocation(line: 570, column: 33, scope: !2977)
!2980 = !DILocation(line: 570, column: 48, scope: !2977)
!2981 = !DILocation(line: 569, column: 10, scope: !2977)
!2982 = !DILocation(line: 571, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 571, column: 7)
!2984 = !DILocation(line: 571, column: 14, scope: !2983)
!2985 = !DILocation(line: 571, column: 7, scope: !2977)
!2986 = !DILocation(line: 572, column: 11, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 571, column: 24)
!2988 = !DILocation(line: 573, column: 3, scope: !2987)
!2989 = !DILocation(line: 574, column: 2, scope: !2977)
!2990 = !DILocation(line: 576, column: 2, scope: !2828)
!2991 = !DILocation(line: 578, column: 1, scope: !2828)
!2992 = !DILocation(line: 582, column: 25, scope: !2828)
!2993 = !DILocation(line: 582, column: 2, scope: !2828)
!2994 = !DILocation(line: 584, column: 1, scope: !2828)
!2995 = !DILocation(line: 588, column: 35, scope: !2828)
!2996 = !DILocation(line: 588, column: 45, scope: !2828)
!2997 = !DILocation(line: 588, column: 2, scope: !2828)
!2998 = !DILocation(line: 589, column: 28, scope: !2828)
!2999 = !DILocation(line: 589, column: 2, scope: !2828)
!3000 = !DILocation(line: 591, column: 2, scope: !2828)
!3001 = !DILocation(line: 592, column: 1, scope: !2828)
!3002 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !3003, file: !3003, line: 298, type: !3004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3003 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!71, !67}
!3006 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !2814, file: !2814, line: 55, type: !3007, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!66, !55}
!3009 = !{!3010, !3011, !3013, !3016, !3017, !3020}
!3010 = !DILocalVariable(name: "size", arg: 1, scope: !3006, file: !2814, line: 55, type: !55)
!3011 = !DILocalVariable(name: "_flags", scope: !3012, file: !2814, line: 57, type: !65)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !2814, line: 57, column: 23)
!3013 = !DILocalVariable(name: "__dummy", scope: !3014, file: !2814, line: 57, type: !65)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !2814, line: 57, column: 23)
!3015 = distinct !DILexicalBlock(scope: !3012, file: !2814, line: 57, column: 23)
!3016 = !DILocalVariable(name: "__dummy2", scope: !3014, file: !2814, line: 57, type: !65)
!3017 = !DILocalVariable(name: "__dummy", scope: !3018, file: !2814, line: 57, type: !65)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !2814, line: 57, column: 23)
!3019 = distinct !DILexicalBlock(scope: !3012, file: !2814, line: 57, column: 23)
!3020 = !DILocalVariable(name: "__dummy2", scope: !3018, file: !2814, line: 57, type: !65)
!3021 = !DILocation(line: 55, column: 55, scope: !3006)
!3022 = !DILocation(line: 57, column: 17, scope: !3006)
!3023 = !DILocation(line: 57, column: 23, scope: !3012)
!3024 = !DILocation(line: 57, column: 23, scope: !3014)
!3025 = !DILocation(line: 57, column: 23, scope: !3015)
!3026 = !DILocation(line: 57, column: 23, scope: !3018)
!3027 = !DILocation(line: 57, column: 23, scope: !3019)
!3028 = !DILocation(line: 57, column: 23, scope: !3006)
!3029 = !DILocation(line: 57, column: 9, scope: !3006)
!3030 = !DILocation(line: 57, column: 2, scope: !3006)
!3031 = distinct !DISubprogram(name: "acpi_os_free", scope: !2814, file: !2814, line: 60, type: !3032, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !66}
!3034 = !{!3035}
!3035 = !DILocalVariable(name: "memory", arg: 1, scope: !3031, file: !2814, line: 60, type: !66)
!3036 = !DILocation(line: 60, column: 39, scope: !3031)
!3037 = !DILocation(line: 62, column: 8, scope: !3031)
!3038 = !DILocation(line: 62, column: 2, scope: !3031)
!3039 = !DILocation(line: 63, column: 1, scope: !3031)
!3040 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !2807, file: !2807, line: 369, type: !3041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !71}
!3043 = !DISubprogram(name: "acpi_ns_get_normalized_pathname", scope: !3003, file: !3003, line: 261, type: !3044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!105, !67, !60}
!3046 = !DISubprogram(name: "acpi_ds_pop_walk_state", scope: !2394, file: !2394, line: 316, type: !3047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!166, !448}
!3049 = distinct !DISubprogram(name: "acpi_ds_terminate_control_method", scope: !3, file: !3, line: 699, type: !3050, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !71, !166}
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "method_desc", arg: 1, scope: !3049, file: !3, line: 699, type: !71)
!3054 = !DILocalVariable(name: "walk_state", arg: 2, scope: !3049, file: !3, line: 700, type: !166)
!3055 = !DILocation(line: 699, column: 61, scope: !3049)
!3056 = !DILocation(line: 700, column: 30, scope: !3049)
!3057 = !DILocation(line: 707, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 707, column: 6)
!3059 = !DILocation(line: 707, column: 6, scope: !3049)
!3060 = !DILocation(line: 708, column: 3, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 707, column: 20)
!3062 = !DILocation(line: 711, column: 6, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 711, column: 6)
!3064 = !DILocation(line: 711, column: 6, scope: !3049)
!3065 = !DILocation(line: 715, column: 34, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 711, column: 18)
!3067 = !DILocation(line: 715, column: 3, scope: !3066)
!3068 = !DILocation(line: 725, column: 9, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 725, column: 7)
!3070 = !DILocation(line: 725, column: 29, scope: !3069)
!3071 = !DILocation(line: 725, column: 40, scope: !3069)
!3072 = !DILocation(line: 726, column: 7, scope: !3069)
!3073 = !DILocation(line: 726, column: 11, scope: !3069)
!3074 = !DILocation(line: 726, column: 31, scope: !3069)
!3075 = !DILocation(line: 726, column: 44, scope: !3069)
!3076 = !DILocation(line: 725, column: 7, scope: !3066)
!3077 = !DILocation(line: 730, column: 10, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 726, column: 51)
!3079 = !DILocation(line: 731, column: 37, scope: !3078)
!3080 = !DILocation(line: 732, column: 9, scope: !3078)
!3081 = !DILocation(line: 731, column: 4, scope: !3078)
!3082 = !DILocation(line: 733, column: 10, scope: !3078)
!3083 = !DILocation(line: 742, column: 8, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 742, column: 8)
!3085 = !DILocation(line: 743, column: 8, scope: !3084)
!3086 = !DILocation(line: 743, column: 19, scope: !3084)
!3087 = !DILocation(line: 742, column: 8, scope: !3078)
!3088 = !DILocation(line: 744, column: 11, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 743, column: 53)
!3090 = !DILocation(line: 745, column: 39, scope: !3089)
!3091 = !DILocation(line: 747, column: 11, scope: !3089)
!3092 = !DILocation(line: 745, column: 5, scope: !3089)
!3093 = !DILocation(line: 748, column: 11, scope: !3089)
!3094 = !DILocation(line: 749, column: 5, scope: !3089)
!3095 = !DILocation(line: 749, column: 25, scope: !3089)
!3096 = !DILocation(line: 749, column: 36, scope: !3089)
!3097 = !DILocation(line: 751, column: 4, scope: !3089)
!3098 = !DILocation(line: 752, column: 3, scope: !3078)
!3099 = !DILocation(line: 758, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 758, column: 7)
!3101 = !DILocation(line: 758, column: 27, scope: !3100)
!3102 = !DILocation(line: 758, column: 7, scope: !3066)
!3103 = !DILocation(line: 762, column: 4, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 758, column: 34)
!3105 = !DILocation(line: 762, column: 24, scope: !3104)
!3106 = !DILocation(line: 762, column: 37, scope: !3104)
!3107 = !DILocation(line: 762, column: 54, scope: !3104)
!3108 = !DILocation(line: 763, column: 9, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 763, column: 8)
!3110 = !DILocation(line: 763, column: 29, scope: !3109)
!3111 = !DILocation(line: 763, column: 42, scope: !3109)
!3112 = !DILocation(line: 763, column: 8, scope: !3104)
!3113 = !DILocation(line: 765, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 763, column: 61)
!3115 = !DILocation(line: 765, column: 29, scope: !3114)
!3116 = !DILocation(line: 766, column: 9, scope: !3114)
!3117 = !DILocation(line: 764, column: 5, scope: !3114)
!3118 = !DILocation(line: 764, column: 17, scope: !3114)
!3119 = !DILocation(line: 764, column: 25, scope: !3114)
!3120 = !DILocation(line: 764, column: 44, scope: !3114)
!3121 = !DILocation(line: 768, column: 5, scope: !3114)
!3122 = !DILocation(line: 770, column: 5, scope: !3114)
!3123 = !DILocation(line: 770, column: 25, scope: !3114)
!3124 = !DILocation(line: 770, column: 38, scope: !3114)
!3125 = !DILocation(line: 770, column: 48, scope: !3114)
!3126 = !DILocation(line: 771, column: 4, scope: !3114)
!3127 = !DILocation(line: 772, column: 3, scope: !3104)
!3128 = !DILocation(line: 773, column: 2, scope: !3066)
!3129 = !DILocation(line: 777, column: 6, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 777, column: 6)
!3131 = !DILocation(line: 777, column: 26, scope: !3130)
!3132 = !DILocation(line: 777, column: 6, scope: !3049)
!3133 = !DILocation(line: 778, column: 3, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 777, column: 40)
!3135 = !DILocation(line: 778, column: 23, scope: !3134)
!3136 = !DILocation(line: 778, column: 35, scope: !3134)
!3137 = !DILocation(line: 779, column: 2, scope: !3134)
!3138 = !DILocation(line: 780, column: 3, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 779, column: 9)
!3140 = !DILocation(line: 785, column: 6, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 785, column: 6)
!3142 = !DILocation(line: 785, column: 26, scope: !3141)
!3143 = !DILocation(line: 785, column: 6, scope: !3049)
!3144 = !DILocation(line: 793, column: 2, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 785, column: 40)
!3146 = !DILocation(line: 806, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 806, column: 7)
!3148 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 793, column: 9)
!3149 = !DILocation(line: 807, column: 7, scope: !3147)
!3150 = !DILocation(line: 807, column: 18, scope: !3147)
!3151 = !DILocation(line: 806, column: 7, scope: !3148)
!3152 = !DILocation(line: 808, column: 8, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 808, column: 8)
!3154 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 807, column: 52)
!3155 = !DILocation(line: 808, column: 8, scope: !3154)
!3156 = !DILocation(line: 809, column: 5, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 808, column: 20)
!3158 = !DILocation(line: 813, column: 4, scope: !3157)
!3159 = !DILocation(line: 826, column: 4, scope: !3154)
!3160 = !DILocation(line: 826, column: 24, scope: !3154)
!3161 = !DILocation(line: 826, column: 35, scope: !3154)
!3162 = !DILocation(line: 829, column: 4, scope: !3154)
!3163 = !DILocation(line: 829, column: 24, scope: !3154)
!3164 = !DILocation(line: 829, column: 35, scope: !3154)
!3165 = !DILocation(line: 832, column: 4, scope: !3154)
!3166 = !DILocation(line: 832, column: 24, scope: !3154)
!3167 = !DILocation(line: 832, column: 35, scope: !3154)
!3168 = !DILocation(line: 833, column: 3, scope: !3154)
!3169 = !DILocation(line: 838, column: 8, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 837, column: 7)
!3171 = !DILocation(line: 839, column: 8, scope: !3170)
!3172 = !DILocation(line: 839, column: 19, scope: !3170)
!3173 = !DILocation(line: 837, column: 7, scope: !3148)
!3174 = !DILocation(line: 840, column: 30, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 839, column: 48)
!3176 = !DILocation(line: 840, column: 50, scope: !3175)
!3177 = !DILocation(line: 840, column: 4, scope: !3175)
!3178 = !DILocation(line: 841, column: 3, scope: !3175)
!3179 = !DILocation(line: 844, column: 58, scope: !3049)
!3180 = !DILocation(line: 845, column: 14, scope: !3049)
!3181 = !DILocation(line: 845, column: 20, scope: !3049)
!3182 = !DILocation(line: 845, column: 33, scope: !3049)
!3183 = !DILocation(line: 844, column: 2, scope: !3049)
!3184 = !DILocation(line: 847, column: 2, scope: !3049)
!3185 = !DILocation(line: 848, column: 1, scope: !3049)
!3186 = distinct !DISubprogram(name: "acpi_ds_restart_control_method", scope: !3, file: !3, line: 609, type: !3187, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!51, !166, !71}
!3189 = !{!3190, !3191, !3192, !3193}
!3190 = !DILocalVariable(name: "walk_state", arg: 1, scope: !3186, file: !3, line: 609, type: !166)
!3191 = !DILocalVariable(name: "return_desc", arg: 2, scope: !3186, file: !3, line: 610, type: !71)
!3192 = !DILocalVariable(name: "status", scope: !3186, file: !3, line: 612, type: !51)
!3193 = !DILocalVariable(name: "same_as_implicit_return", scope: !3186, file: !3, line: 613, type: !850)
!3194 = !DILocation(line: 609, column: 56, scope: !3186)
!3195 = !DILocation(line: 610, column: 38, scope: !3186)
!3196 = !DILocation(line: 612, column: 2, scope: !3186)
!3197 = !DILocation(line: 612, column: 14, scope: !3186)
!3198 = !DILocation(line: 613, column: 2, scope: !3186)
!3199 = !DILocation(line: 613, column: 6, scope: !3186)
!3200 = !DILocation(line: 629, column: 6, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 629, column: 6)
!3202 = !DILocation(line: 629, column: 6, scope: !3186)
!3203 = !DILocation(line: 634, column: 8, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 629, column: 19)
!3205 = !DILocation(line: 634, column: 20, scope: !3204)
!3206 = !DILocation(line: 634, column: 43, scope: !3204)
!3207 = !DILocation(line: 634, column: 40, scope: !3204)
!3208 = !DILocation(line: 633, column: 27, scope: !3204)
!3209 = !DILocation(line: 638, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 638, column: 7)
!3211 = !DILocation(line: 638, column: 19, scope: !3210)
!3212 = !DILocation(line: 638, column: 7, scope: !3204)
!3213 = !DILocation(line: 642, column: 33, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 638, column: 32)
!3215 = !DILocation(line: 642, column: 46, scope: !3214)
!3216 = !DILocation(line: 642, column: 13, scope: !3214)
!3217 = !DILocation(line: 642, column: 11, scope: !3214)
!3218 = !DILocation(line: 643, column: 8, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 643, column: 8)
!3220 = !DILocation(line: 643, column: 8, scope: !3214)
!3221 = !DILocation(line: 644, column: 30, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 643, column: 30)
!3223 = !DILocation(line: 644, column: 5, scope: !3222)
!3224 = !DILocation(line: 645, column: 5, scope: !3222)
!3225 = !DILocation(line: 652, column: 30, scope: !3214)
!3226 = !DILocation(line: 652, column: 4, scope: !3214)
!3227 = !DILocation(line: 652, column: 16, scope: !3214)
!3228 = !DILocation(line: 652, column: 28, scope: !3214)
!3229 = !DILocation(line: 653, column: 3, scope: !3214)
!3230 = !DILocation(line: 667, column: 6, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 666, column: 12)
!3232 = !DILocation(line: 667, column: 19, scope: !3231)
!3233 = !DILocation(line: 666, column: 13, scope: !3231)
!3234 = !DILocation(line: 668, column: 5, scope: !3231)
!3235 = !DILocation(line: 668, column: 8, scope: !3231)
!3236 = !DILocation(line: 666, column: 12, scope: !3210)
!3237 = !DILocation(line: 674, column: 29, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 668, column: 33)
!3239 = !DILocation(line: 674, column: 4, scope: !3238)
!3240 = !DILocation(line: 675, column: 3, scope: !3238)
!3241 = !DILocation(line: 676, column: 2, scope: !3204)
!3242 = !DILocation(line: 678, column: 2, scope: !3186)
!3243 = !DILocation(line: 679, column: 1, scope: !3186)
!3244 = !DISubprogram(name: "acpi_ds_result_push", scope: !2394, file: !2394, line: 333, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!51, !71, !166}
!3247 = !DISubprogram(name: "acpi_ds_do_implicit_return", scope: !2394, file: !2394, line: 246, type: !3248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!60, !71, !166, !60}
!3250 = !DISubprogram(name: "acpi_ds_method_data_delete_all", scope: !2394, file: !2394, line: 144, type: !2469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3251 = !DISubprogram(name: "acpi_ns_delete_namespace_subtree", scope: !3003, file: !3003, line: 136, type: !3252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{null, !67}
!3254 = !DISubprogram(name: "acpi_ns_delete_namespace_by_owner", scope: !3003, file: !3003, line: 138, type: !3255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{null, !178}
!3257 = !DISubprogram(name: "acpi_info", scope: !2764, file: !2764, line: 917, type: !3258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !2408, null}
!3260 = !DISubprogram(name: "acpi_ut_release_owner_id", scope: !2807, file: !2807, line: 588, type: !3261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !2823}
!3263 = !DISubprogram(name: "acpi_ex_stop_trace_method", scope: !2576, file: !2576, line: 107, type: !2761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3264 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !2807, file: !2807, line: 436, type: !3265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!71, !2408, !53, !53, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !52, line: 644, baseType: !53)
!3268 = !DISubprogram(name: "acpi_os_create_semaphore", scope: !2825, file: !2825, line: 126, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!51, !53, !53, !755}
!3271 = !DISubprogram(name: "acpi_ut_delete_object_desc", scope: !2807, file: !2807, line: 449, type: !3041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3272 = distinct !DISubprogram(name: "get_current", scope: !3273, file: !3273, line: 39, type: !3274, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3276)
!3273 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!826}
!3276 = !{!3277, !3279, !3283}
!3277 = !DILocalVariable(name: "pscr_ret__", scope: !3278, file: !3273, line: 41, type: !826)
!3278 = distinct !DILexicalBlock(scope: !3272, file: !3273, line: 41, column: 9)
!3279 = !DILocalVariable(name: "__vpp_verify", scope: !3280, file: !3273, line: 41, type: !3281)
!3280 = distinct !DILexicalBlock(scope: !3278, file: !3273, line: 41, column: 9)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3283 = !DILocalVariable(name: "pfo_val__", scope: !3284, file: !3273, line: 41, type: !56)
!3284 = distinct !DILexicalBlock(scope: !3278, file: !3273, line: 41, column: 9)
!3285 = !DILocation(line: 41, column: 9, scope: !3278)
!3286 = !DILocation(line: 41, column: 9, scope: !3280)
!3287 = !DILocation(line: 41, column: 9, scope: !3284)
!3288 = !{i64 2148301887}
!3289 = !DILocation(line: 41, column: 9, scope: !3272)
!3290 = !DILocation(line: 41, column: 2, scope: !3272)
!3291 = distinct !DISubprogram(name: "kzalloc", scope: !36, file: !36, line: 719, type: !3292, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!66, !1619, !2274}
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "size", arg: 1, scope: !3291, file: !36, line: 719, type: !1619)
!3296 = !DILocalVariable(name: "flags", arg: 2, scope: !3291, file: !36, line: 719, type: !2274)
!3297 = !DILocation(line: 719, column: 52, scope: !3291)
!3298 = !DILocation(line: 719, column: 64, scope: !3291)
!3299 = !DILocation(line: 721, column: 17, scope: !3291)
!3300 = !DILocation(line: 721, column: 23, scope: !3291)
!3301 = !DILocation(line: 721, column: 29, scope: !3291)
!3302 = !DILocation(line: 721, column: 9, scope: !3291)
!3303 = !DILocation(line: 721, column: 2, scope: !3291)
!3304 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3305, file: !3305, line: 65, type: !3306, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3305 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!65}
!3308 = !DILocation(line: 67, column: 9, scope: !3304)
!3309 = !DILocation(line: 67, column: 2, scope: !3304)
!3310 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !3305, file: !3305, line: 120, type: !3311, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!850, !65}
!3313 = !{!3314}
!3314 = !DILocalVariable(name: "flags", arg: 1, scope: !3310, file: !3305, line: 120, type: !65)
!3315 = !DILocation(line: 120, column: 67, scope: !3310)
!3316 = !DILocation(line: 122, column: 11, scope: !3310)
!3317 = !DILocation(line: 122, column: 17, scope: !3310)
!3318 = !DILocation(line: 122, column: 9, scope: !3310)
!3319 = !DILocation(line: 122, column: 2, scope: !3310)
!3320 = distinct !DISubprogram(name: "kmalloc", scope: !36, file: !36, line: 591, type: !3292, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3321)
!3321 = !{!3322, !3323, !3324}
!3322 = !DILocalVariable(name: "size", arg: 1, scope: !3320, file: !36, line: 591, type: !1619)
!3323 = !DILocalVariable(name: "flags", arg: 2, scope: !3320, file: !36, line: 591, type: !2274)
!3324 = !DILocalVariable(name: "index", scope: !3325, file: !36, line: 594, type: !7)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !36, line: 593, column: 42)
!3326 = distinct !DILexicalBlock(scope: !3320, file: !36, line: 593, column: 6)
!3327 = !DILocation(line: 591, column: 61, scope: !3320)
!3328 = !DILocation(line: 591, column: 73, scope: !3320)
!3329 = !DILocation(line: 593, column: 27, scope: !3326)
!3330 = !DILocation(line: 593, column: 6, scope: !3326)
!3331 = !DILocation(line: 593, column: 33, scope: !3326)
!3332 = !DILocation(line: 593, column: 36, scope: !3326)
!3333 = !DILocation(line: 593, column: 6, scope: !3320)
!3334 = !DILocation(line: 594, column: 3, scope: !3325)
!3335 = !DILocation(line: 594, column: 16, scope: !3325)
!3336 = !DILocation(line: 596, column: 7, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3325, file: !36, line: 596, column: 7)
!3338 = !DILocation(line: 596, column: 12, scope: !3337)
!3339 = !DILocation(line: 596, column: 7, scope: !3325)
!3340 = !DILocation(line: 597, column: 25, scope: !3337)
!3341 = !DILocation(line: 597, column: 31, scope: !3337)
!3342 = !DILocation(line: 597, column: 11, scope: !3337)
!3343 = !DILocation(line: 597, column: 4, scope: !3337)
!3344 = !DILocation(line: 599, column: 11, scope: !3325)
!3345 = !DILocation(line: 599, column: 9, scope: !3325)
!3346 = !DILocation(line: 601, column: 33, scope: !3325)
!3347 = !DILocation(line: 601, column: 40, scope: !3325)
!3348 = !DILocation(line: 601, column: 20, scope: !3325)
!3349 = !DILocation(line: 601, column: 5, scope: !3325)
!3350 = !DILocation(line: 601, column: 51, scope: !3325)
!3351 = !DILocation(line: 602, column: 5, scope: !3325)
!3352 = !DILocation(line: 602, column: 12, scope: !3325)
!3353 = !DILocation(line: 600, column: 10, scope: !3325)
!3354 = !DILocation(line: 600, column: 3, scope: !3325)
!3355 = !DILocation(line: 603, column: 2, scope: !3326)
!3356 = !DILocation(line: 604, column: 19, scope: !3320)
!3357 = !DILocation(line: 604, column: 25, scope: !3320)
!3358 = !DILocation(line: 604, column: 9, scope: !3320)
!3359 = !DILocation(line: 604, column: 2, scope: !3320)
!3360 = !DILocation(line: 605, column: 1, scope: !3320)
!3361 = !DISubprogram(name: "kmalloc_large", scope: !36, file: !36, line: 531, type: !3292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3362 = distinct !DISubprogram(name: "__kmalloc_index", scope: !36, file: !36, line: 444, type: !3363, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!7, !1619, !1652}
!3365 = !{!3366, !3367}
!3366 = !DILocalVariable(name: "size", arg: 1, scope: !3362, file: !36, line: 444, type: !1619)
!3367 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3362, file: !36, line: 445, type: !1652)
!3368 = !DILocation(line: 444, column: 60, scope: !3362)
!3369 = !DILocation(line: 445, column: 16, scope: !3362)
!3370 = !DILocation(line: 447, column: 7, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 447, column: 6)
!3372 = !DILocation(line: 447, column: 6, scope: !3362)
!3373 = !DILocation(line: 448, column: 3, scope: !3371)
!3374 = !DILocation(line: 450, column: 6, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 450, column: 6)
!3376 = !DILocation(line: 450, column: 11, scope: !3375)
!3377 = !DILocation(line: 450, column: 6, scope: !3362)
!3378 = !DILocation(line: 451, column: 3, scope: !3375)
!3379 = !DILocation(line: 453, column: 32, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 453, column: 6)
!3381 = !DILocation(line: 453, column: 37, scope: !3380)
!3382 = !DILocation(line: 453, column: 42, scope: !3380)
!3383 = !DILocation(line: 453, column: 45, scope: !3380)
!3384 = !DILocation(line: 453, column: 50, scope: !3380)
!3385 = !DILocation(line: 453, column: 6, scope: !3362)
!3386 = !DILocation(line: 454, column: 3, scope: !3380)
!3387 = !DILocation(line: 455, column: 32, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 455, column: 6)
!3389 = !DILocation(line: 455, column: 37, scope: !3388)
!3390 = !DILocation(line: 455, column: 43, scope: !3388)
!3391 = !DILocation(line: 455, column: 46, scope: !3388)
!3392 = !DILocation(line: 455, column: 51, scope: !3388)
!3393 = !DILocation(line: 455, column: 6, scope: !3362)
!3394 = !DILocation(line: 456, column: 3, scope: !3388)
!3395 = !DILocation(line: 457, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 457, column: 6)
!3397 = !DILocation(line: 457, column: 11, scope: !3396)
!3398 = !DILocation(line: 457, column: 6, scope: !3362)
!3399 = !DILocation(line: 457, column: 26, scope: !3396)
!3400 = !DILocation(line: 458, column: 6, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 458, column: 6)
!3402 = !DILocation(line: 458, column: 11, scope: !3401)
!3403 = !DILocation(line: 458, column: 6, scope: !3362)
!3404 = !DILocation(line: 458, column: 26, scope: !3401)
!3405 = !DILocation(line: 459, column: 6, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 459, column: 6)
!3407 = !DILocation(line: 459, column: 11, scope: !3406)
!3408 = !DILocation(line: 459, column: 6, scope: !3362)
!3409 = !DILocation(line: 459, column: 26, scope: !3406)
!3410 = !DILocation(line: 460, column: 6, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 460, column: 6)
!3412 = !DILocation(line: 460, column: 11, scope: !3411)
!3413 = !DILocation(line: 460, column: 6, scope: !3362)
!3414 = !DILocation(line: 460, column: 26, scope: !3411)
!3415 = !DILocation(line: 461, column: 6, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 461, column: 6)
!3417 = !DILocation(line: 461, column: 11, scope: !3416)
!3418 = !DILocation(line: 461, column: 6, scope: !3362)
!3419 = !DILocation(line: 461, column: 26, scope: !3416)
!3420 = !DILocation(line: 462, column: 6, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 462, column: 6)
!3422 = !DILocation(line: 462, column: 11, scope: !3421)
!3423 = !DILocation(line: 462, column: 6, scope: !3362)
!3424 = !DILocation(line: 462, column: 26, scope: !3421)
!3425 = !DILocation(line: 463, column: 6, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 463, column: 6)
!3427 = !DILocation(line: 463, column: 11, scope: !3426)
!3428 = !DILocation(line: 463, column: 6, scope: !3362)
!3429 = !DILocation(line: 463, column: 26, scope: !3426)
!3430 = !DILocation(line: 464, column: 6, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 464, column: 6)
!3432 = !DILocation(line: 464, column: 11, scope: !3431)
!3433 = !DILocation(line: 464, column: 6, scope: !3362)
!3434 = !DILocation(line: 464, column: 26, scope: !3431)
!3435 = !DILocation(line: 465, column: 6, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 465, column: 6)
!3437 = !DILocation(line: 465, column: 11, scope: !3436)
!3438 = !DILocation(line: 465, column: 6, scope: !3362)
!3439 = !DILocation(line: 465, column: 26, scope: !3436)
!3440 = !DILocation(line: 466, column: 6, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 466, column: 6)
!3442 = !DILocation(line: 466, column: 11, scope: !3441)
!3443 = !DILocation(line: 466, column: 6, scope: !3362)
!3444 = !DILocation(line: 466, column: 26, scope: !3441)
!3445 = !DILocation(line: 467, column: 6, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 467, column: 6)
!3447 = !DILocation(line: 467, column: 11, scope: !3446)
!3448 = !DILocation(line: 467, column: 6, scope: !3362)
!3449 = !DILocation(line: 467, column: 26, scope: !3446)
!3450 = !DILocation(line: 468, column: 6, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 468, column: 6)
!3452 = !DILocation(line: 468, column: 11, scope: !3451)
!3453 = !DILocation(line: 468, column: 6, scope: !3362)
!3454 = !DILocation(line: 468, column: 26, scope: !3451)
!3455 = !DILocation(line: 469, column: 6, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 469, column: 6)
!3457 = !DILocation(line: 469, column: 11, scope: !3456)
!3458 = !DILocation(line: 469, column: 6, scope: !3362)
!3459 = !DILocation(line: 469, column: 26, scope: !3456)
!3460 = !DILocation(line: 470, column: 6, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 470, column: 6)
!3462 = !DILocation(line: 470, column: 11, scope: !3461)
!3463 = !DILocation(line: 470, column: 6, scope: !3362)
!3464 = !DILocation(line: 470, column: 26, scope: !3461)
!3465 = !DILocation(line: 471, column: 6, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 471, column: 6)
!3467 = !DILocation(line: 471, column: 11, scope: !3466)
!3468 = !DILocation(line: 471, column: 6, scope: !3362)
!3469 = !DILocation(line: 471, column: 26, scope: !3466)
!3470 = !DILocation(line: 472, column: 6, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 472, column: 6)
!3472 = !DILocation(line: 472, column: 11, scope: !3471)
!3473 = !DILocation(line: 472, column: 6, scope: !3362)
!3474 = !DILocation(line: 472, column: 26, scope: !3471)
!3475 = !DILocation(line: 473, column: 6, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 473, column: 6)
!3477 = !DILocation(line: 473, column: 11, scope: !3476)
!3478 = !DILocation(line: 473, column: 6, scope: !3362)
!3479 = !DILocation(line: 473, column: 26, scope: !3476)
!3480 = !DILocation(line: 474, column: 6, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 474, column: 6)
!3482 = !DILocation(line: 474, column: 11, scope: !3481)
!3483 = !DILocation(line: 474, column: 6, scope: !3362)
!3484 = !DILocation(line: 474, column: 27, scope: !3481)
!3485 = !DILocation(line: 475, column: 6, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 475, column: 6)
!3487 = !DILocation(line: 475, column: 11, scope: !3486)
!3488 = !DILocation(line: 475, column: 6, scope: !3362)
!3489 = !DILocation(line: 475, column: 32, scope: !3486)
!3490 = !DILocation(line: 477, column: 50, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3362, file: !36, line: 477, column: 6)
!3492 = !{i8 0, i8 2}
!3493 = !DILocation(line: 477, column: 6, scope: !3362)
!3494 = !DILocation(line: 478, column: 3, scope: !3491)
!3495 = !DILocation(line: 478, column: 3, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !36, line: 478, column: 3)
!3497 = distinct !DILexicalBlock(scope: !3491, file: !36, line: 478, column: 3)
!3498 = !{i32 -2143023976}
!3499 = !DILocation(line: 478, column: 3, scope: !3497)
!3500 = !DILocation(line: 480, column: 3, scope: !3491)
!3501 = !DILocation(line: 480, column: 3, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3491, file: !36, line: 480, column: 3)
!3503 = !DILocation(line: 480, column: 3, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3502, file: !36, line: 480, column: 3)
!3505 = !DILocation(line: 480, column: 3, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3502, file: !36, line: 480, column: 3)
!3507 = !{i64 2151943523, i64 2151943552, i64 2151943598, i64 2151943656, i64 2151943710, i64 2151943764, i64 2151943819, i64 2151943850}
!3508 = !DILocation(line: 483, column: 2, scope: !3362)
!3509 = !DILocation(line: 484, column: 1, scope: !3362)
!3510 = !DISubprogram(name: "kmalloc_trace", scope: !36, file: !36, line: 525, type: !3511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!66, !3513, !2274, !1619}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3515, line: 11, flags: DIFlagFwdDecl)
!3515 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3516 = distinct !DISubprogram(name: "kmalloc_type", scope: !36, file: !36, line: 401, type: !3517, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3519)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!35, !2274, !65}
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "flags", arg: 1, scope: !3516, file: !36, line: 401, type: !2274)
!3521 = !DILocalVariable(name: "caller", arg: 2, scope: !3516, file: !36, line: 401, type: !65)
!3522 = !DILocation(line: 401, column: 67, scope: !3516)
!3523 = !DILocation(line: 401, column: 88, scope: !3516)
!3524 = !DILocation(line: 407, column: 6, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3516, file: !36, line: 407, column: 6)
!3526 = !DILocation(line: 407, column: 6, scope: !3516)
!3527 = !DILocation(line: 413, column: 3, scope: !3525)
!3528 = !DILocation(line: 423, column: 38, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3516, file: !36, line: 423, column: 6)
!3530 = !DILocation(line: 423, column: 44, scope: !3529)
!3531 = !DILocation(line: 423, column: 6, scope: !3516)
!3532 = !DILocation(line: 424, column: 3, scope: !3529)
!3533 = !DILocation(line: 426, column: 3, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3516, file: !36, line: 425, column: 6)
!3535 = !DILocation(line: 429, column: 1, scope: !3516)
!3536 = !DISubprogram(name: "__kmalloc", scope: !36, file: !36, line: 488, type: !3292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3537 = !DISubprogram(name: "__compiletime_assert_173", scope: !36, file: !36, line: 478, type: !2577, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3538 = distinct !DISubprogram(name: "native_save_fl", scope: !3305, file: !3305, line: 17, type: !3306, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3539)
!3539 = !{!3540}
!3540 = !DILocalVariable(name: "flags", scope: !3538, file: !3305, line: 19, type: !65)
!3541 = !DILocation(line: 19, column: 2, scope: !3538)
!3542 = !DILocation(line: 19, column: 16, scope: !3538)
!3543 = !DILocation(line: 26, column: 2, scope: !3538)
!3544 = !{i64 1533442, i64 1533463}
!3545 = !DILocation(line: 32, column: 9, scope: !3538)
!3546 = !DILocation(line: 33, column: 1, scope: !3538)
!3547 = !DILocation(line: 32, column: 2, scope: !3538)
!3548 = !DISubprogram(name: "kfree", scope: !36, file: !36, line: 227, type: !3549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{null, !3281}
