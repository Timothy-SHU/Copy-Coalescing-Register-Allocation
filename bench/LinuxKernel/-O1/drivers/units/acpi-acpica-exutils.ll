; ModuleID = 'drivers/acpi/acpica/exutils.c'
source_filename = "drivers/acpi/acpica/exutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }

@_acpi_module_name = internal constant [8 x i8] c"exutils\00", align 1, !dbg !0
@.str = private unnamed_addr constant [40 x i8] c"Could not acquire AML Interpreter mutex\00", align 1, !dbg !2265
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not acquire AML Namespace mutex\00", align 1, !dbg !2270
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not release AML Namespace mutex\00", align 1, !dbg !2275
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not release AML Interpreter mutex\00", align 1, !dbg !2277
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@acpi_gbl_global_lock_mutex = external dso_local global ptr, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not acquire Global Lock\00", align 1, !dbg !2279
@.str.5 = private unnamed_addr constant [30 x i8] c"Could not release Global Lock\00", align 1, !dbg !2284
@.str.6 = private unnamed_addr constant [65 x i8] c"Expected EISAID is larger than 32 bits: 0x%8.8X%8.8X, truncating\00", align 1, !dbg !2286
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_enter_interpreter() #0 align 16 !dbg !2302 {
entry:
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !2307
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2306, metadata !DIExpression()), !dbg !2308
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 0) #7, !dbg !2309
  store i32 %call, ptr %status, align 4, !dbg !2310
  %0 = load i32, ptr %status, align 4, !dbg !2311
  %tobool = icmp ne i32 %0, 0, !dbg !2311
  br i1 %tobool, label %if.then, label %if.end, !dbg !2313

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 59, ptr noundef @.str) #7, !dbg !2314
  br label %if.end, !dbg !2316

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #7, !dbg !2317
  store i32 %call1, ptr %status, align 4, !dbg !2318
  %1 = load i32, ptr %status, align 4, !dbg !2319
  %tobool2 = icmp ne i32 %1, 0, !dbg !2319
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2321

if.then3:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 64, ptr noundef @.str.1) #7, !dbg !2322
  br label %if.end4, !dbg !2324

if.end4:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !2325
  ret void, !dbg !2325
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2326 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2331 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_exit_interpreter() #0 align 16 !dbg !2336 {
entry:
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !2339
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2338, metadata !DIExpression()), !dbg !2340
  %call = call i32 @acpi_ut_release_mutex(i32 noundef 1) #7, !dbg !2341
  store i32 %call, ptr %status, align 4, !dbg !2342
  %0 = load i32, ptr %status, align 4, !dbg !2343
  %tobool = icmp ne i32 %0, 0, !dbg !2343
  br i1 %tobool, label %if.then, label %if.end, !dbg !2345

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 101, ptr noundef @.str.2) #7, !dbg !2346
  br label %if.end, !dbg !2348

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @acpi_ut_release_mutex(i32 noundef 0) #7, !dbg !2349
  store i32 %call1, ptr %status, align 4, !dbg !2350
  %1 = load i32, ptr %status, align 4, !dbg !2351
  %tobool2 = icmp ne i32 %1, 0, !dbg !2351
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2353

if.then3:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 105, ptr noundef @.str.3) #7, !dbg !2354
  br label %if.end4, !dbg !2356

if.end4:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !2357
  ret void, !dbg !2357
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2358 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef %obj_desc) #0 align 16 !dbg !2359 {
entry:
  %retval = alloca i8, align 1
  %obj_desc.addr = alloca ptr, align 8
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !2363, metadata !DIExpression()), !dbg !2364
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2365
  %tobool = icmp ne ptr %0, null, !dbg !2365
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2367

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2368
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %1, i32 0, i32 1, !dbg !2368
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !2368
  %conv = zext i8 %2 to i32, !dbg !2368
  %cmp = icmp ne i32 %conv, 14, !dbg !2369
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !2370

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2371
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !2372
  %4 = load i8, ptr %type, align 1, !dbg !2372
  %conv3 = zext i8 %4 to i32, !dbg !2371
  %cmp4 = icmp ne i32 %conv3, 1, !dbg !2373
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2374

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i8 0, ptr %retval, align 1, !dbg !2375
  br label %return, !dbg !2375

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !2377
  %conv6 = zext i8 %5 to i32, !dbg !2377
  %cmp7 = icmp eq i32 %conv6, 4, !dbg !2379
  br i1 %cmp7, label %land.lhs.true, label %if.end13, !dbg !2380

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2381
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %6, i32 0, i32 6, !dbg !2382
  %7 = load i64, ptr %value, align 8, !dbg !2382
  %cmp9 = icmp ugt i64 %7, 4294967295, !dbg !2383
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !2384

if.then11:                                        ; preds = %land.lhs.true
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !2385
  %value12 = getelementptr inbounds %struct.acpi_object_integer, ptr %8, i32 0, i32 6, !dbg !2387
  %9 = load i64, ptr %value12, align 8, !dbg !2388
  %and = and i64 %9, 4294967295, !dbg !2388
  store i64 %and, ptr %value12, align 8, !dbg !2388
  store i8 1, ptr %retval, align 1, !dbg !2389
  br label %return, !dbg !2389

if.end13:                                         ; preds = %land.lhs.true, %if.end
  store i8 0, ptr %retval, align 1, !dbg !2390
  br label %return, !dbg !2390

return:                                           ; preds = %if.end13, %if.then11, %if.then
  %10 = load i8, ptr %retval, align 1, !dbg !2391
  ret i8 %10, !dbg !2391
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_acquire_global_lock(i32 noundef %field_flags) #0 align 16 !dbg !2392 {
entry:
  %field_flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %field_flags, ptr %field_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %field_flags.addr, metadata !2396, metadata !DIExpression()), !dbg !2398
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !2399
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2397, metadata !DIExpression()), !dbg !2400
  %0 = load i32, ptr %field_flags.addr, align 4, !dbg !2401
  %and = and i32 %0, 16, !dbg !2403
  %tobool = icmp ne i32 %and, 0, !dbg !2403
  br i1 %tobool, label %if.end, label %if.then, !dbg !2404

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2405

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !2407
  %call = call i64 @acpi_os_get_thread_id() #7, !dbg !2408
  %call1 = call i32 @acpi_ex_acquire_mutex_object(i16 noundef zeroext -1, ptr noundef %1, i64 noundef %call) #7, !dbg !2409
  store i32 %call1, ptr %status, align 4, !dbg !2410
  %2 = load i32, ptr %status, align 4, !dbg !2411
  %tobool2 = icmp ne i32 %2, 0, !dbg !2411
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2413

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !2414
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 186, i32 noundef %3, ptr noundef @.str.4) #7, !dbg !2414
  br label %if.end4, !dbg !2416

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2417

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !2418
  ret void, !dbg !2418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2419 dso_local i32 @acpi_ex_acquire_mutex_object(i16 noundef zeroext, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_os_get_thread_id() #4 align 16 !dbg !2423 {
entry:
  %call = call ptr @get_current() #7, !dbg !2427
  %0 = ptrtoint ptr %call to i64, !dbg !2428
  ret i64 %0, !dbg !2429
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2430 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_release_global_lock(i32 noundef %field_flags) #0 align 16 !dbg !2433 {
entry:
  %field_flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %field_flags, ptr %field_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %field_flags.addr, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !2438
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2436, metadata !DIExpression()), !dbg !2439
  %0 = load i32, ptr %field_flags.addr, align 4, !dbg !2440
  %and = and i32 %0, 16, !dbg !2442
  %tobool = icmp ne i32 %and, 0, !dbg !2442
  br i1 %tobool, label %if.end, label %if.then, !dbg !2443

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2444

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !2446
  %call = call i32 @acpi_ex_release_mutex_object(ptr noundef %1) #7, !dbg !2447
  store i32 %call, ptr %status, align 4, !dbg !2448
  %2 = load i32, ptr %status, align 4, !dbg !2449
  %tobool1 = icmp ne i32 %2, 0, !dbg !2449
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2451

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !2452
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 225, i32 noundef %3, ptr noundef @.str.5) #7, !dbg !2452
  br label %if.end3, !dbg !2454

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2455

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !2456
  ret void, !dbg !2456
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2457 dso_local i32 @acpi_ex_release_mutex_object(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_eisa_id_to_string(ptr noundef %out_string, i64 noundef %compressed_id) #0 align 16 !dbg !2460 {
entry:
  %out_string.addr = alloca ptr, align 8
  %compressed_id.addr = alloca i64, align 8
  %swapped_id = alloca i32, align 4
  store ptr %out_string, ptr %out_string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_string.addr, metadata !2464, metadata !DIExpression()), !dbg !2467
  store i64 %compressed_id, ptr %compressed_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compressed_id.addr, metadata !2465, metadata !DIExpression()), !dbg !2468
  call void @llvm.lifetime.start.p0(i64 4, ptr %swapped_id) #6, !dbg !2469
  call void @llvm.dbg.declare(metadata ptr %swapped_id, metadata !2466, metadata !DIExpression()), !dbg !2470
  %0 = load i64, ptr %compressed_id.addr, align 8, !dbg !2471
  %cmp = icmp ugt i64 %0, 4294967295, !dbg !2473
  br i1 %cmp, label %if.then, label %if.end, !dbg !2474

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %compressed_id.addr, align 8, !dbg !2475
  %shr = lshr i64 %1, 32, !dbg !2475
  %conv = trunc i64 %shr to i32, !dbg !2475
  %2 = load i64, ptr %compressed_id.addr, align 8, !dbg !2475
  %conv1 = trunc i64 %2 to i32, !dbg !2475
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 298, ptr noundef @.str.6, i32 noundef %conv, i32 noundef %conv1) #7, !dbg !2475
  br label %if.end, !dbg !2477

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %compressed_id.addr, align 8, !dbg !2478
  %conv2 = trunc i64 %3 to i32, !dbg !2479
  %call = call i32 @acpi_ut_dword_byte_swap(i32 noundef %conv2) #7, !dbg !2480
  store i32 %call, ptr %swapped_id, align 4, !dbg !2481
  %4 = load i32, ptr %swapped_id, align 4, !dbg !2482
  %conv3 = zext i32 %4 to i64, !dbg !2483
  %shr4 = lshr i64 %conv3, 26, !dbg !2484
  %and = and i64 %shr4, 31, !dbg !2485
  %add = add i64 64, %and, !dbg !2486
  %conv5 = trunc i64 %add to i8, !dbg !2487
  %5 = load ptr, ptr %out_string.addr, align 8, !dbg !2488
  %arrayidx = getelementptr i8, ptr %5, i64 0, !dbg !2488
  store i8 %conv5, ptr %arrayidx, align 1, !dbg !2489
  %6 = load i32, ptr %swapped_id, align 4, !dbg !2490
  %shr6 = lshr i32 %6, 21, !dbg !2491
  %and7 = and i32 %shr6, 31, !dbg !2492
  %add8 = add i32 64, %and7, !dbg !2493
  %conv9 = trunc i32 %add8 to i8, !dbg !2494
  %7 = load ptr, ptr %out_string.addr, align 8, !dbg !2495
  %arrayidx10 = getelementptr i8, ptr %7, i64 1, !dbg !2495
  store i8 %conv9, ptr %arrayidx10, align 1, !dbg !2496
  %8 = load i32, ptr %swapped_id, align 4, !dbg !2497
  %shr11 = lshr i32 %8, 16, !dbg !2498
  %and12 = and i32 %shr11, 31, !dbg !2499
  %add13 = add i32 64, %and12, !dbg !2500
  %conv14 = trunc i32 %add13 to i8, !dbg !2501
  %9 = load ptr, ptr %out_string.addr, align 8, !dbg !2502
  %arrayidx15 = getelementptr i8, ptr %9, i64 2, !dbg !2502
  store i8 %conv14, ptr %arrayidx15, align 1, !dbg !2503
  %10 = load i32, ptr %swapped_id, align 4, !dbg !2504
  %conv16 = zext i32 %10 to i64, !dbg !2505
  %call17 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv16, i32 noundef 12) #7, !dbg !2506
  %11 = load ptr, ptr %out_string.addr, align 8, !dbg !2507
  %arrayidx18 = getelementptr i8, ptr %11, i64 3, !dbg !2507
  store i8 %call17, ptr %arrayidx18, align 1, !dbg !2508
  %12 = load i32, ptr %swapped_id, align 4, !dbg !2509
  %conv19 = zext i32 %12 to i64, !dbg !2510
  %call20 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv19, i32 noundef 8) #7, !dbg !2511
  %13 = load ptr, ptr %out_string.addr, align 8, !dbg !2512
  %arrayidx21 = getelementptr i8, ptr %13, i64 4, !dbg !2512
  store i8 %call20, ptr %arrayidx21, align 1, !dbg !2513
  %14 = load i32, ptr %swapped_id, align 4, !dbg !2514
  %conv22 = zext i32 %14 to i64, !dbg !2515
  %call23 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv22, i32 noundef 4) #7, !dbg !2516
  %15 = load ptr, ptr %out_string.addr, align 8, !dbg !2517
  %arrayidx24 = getelementptr i8, ptr %15, i64 5, !dbg !2517
  store i8 %call23, ptr %arrayidx24, align 1, !dbg !2518
  %16 = load i32, ptr %swapped_id, align 4, !dbg !2519
  %conv25 = zext i32 %16 to i64, !dbg !2520
  %call26 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv25, i32 noundef 0) #7, !dbg !2521
  %17 = load ptr, ptr %out_string.addr, align 8, !dbg !2522
  %arrayidx27 = getelementptr i8, ptr %17, i64 6, !dbg !2522
  store i8 %call26, ptr %arrayidx27, align 1, !dbg !2523
  %18 = load ptr, ptr %out_string.addr, align 8, !dbg !2524
  %arrayidx28 = getelementptr i8, ptr %18, i64 7, !dbg !2524
  store i8 0, ptr %arrayidx28, align 1, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 4, ptr %swapped_id) #6, !dbg !2526
  ret void, !dbg !2526
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2527 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2528 dso_local i32 @acpi_ut_dword_byte_swap(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2531 dso_local zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_integer_to_string(ptr noundef %out_string, i64 noundef %value) #0 align 16 !dbg !2534 {
entry:
  %out_string.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %count = alloca i32, align 4
  %digits_needed = alloca i32, align 4
  %remainder = alloca i32, align 4
  store ptr %out_string, ptr %out_string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_string.addr, metadata !2536, metadata !DIExpression()), !dbg !2541
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2537, metadata !DIExpression()), !dbg !2542
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6, !dbg !2543
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2538, metadata !DIExpression()), !dbg !2544
  call void @llvm.lifetime.start.p0(i64 4, ptr %digits_needed) #6, !dbg !2545
  call void @llvm.dbg.declare(metadata ptr %digits_needed, metadata !2539, metadata !DIExpression()), !dbg !2546
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #6, !dbg !2547
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !2540, metadata !DIExpression()), !dbg !2548
  %0 = load i64, ptr %value.addr, align 8, !dbg !2549
  %call = call i32 @acpi_ex_digits_needed(i64 noundef %0, i32 noundef 10) #7, !dbg !2550
  store i32 %call, ptr %digits_needed, align 4, !dbg !2551
  %1 = load ptr, ptr %out_string.addr, align 8, !dbg !2552
  %2 = load i32, ptr %digits_needed, align 4, !dbg !2553
  %idxprom = zext i32 %2 to i64, !dbg !2552
  %arrayidx = getelementptr i8, ptr %1, i64 %idxprom, !dbg !2552
  store i8 0, ptr %arrayidx, align 1, !dbg !2554
  %3 = load i32, ptr %digits_needed, align 4, !dbg !2555
  store i32 %3, ptr %count, align 4, !dbg !2557
  br label %for.cond, !dbg !2558

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %count, align 4, !dbg !2559
  %cmp = icmp ugt i32 %4, 0, !dbg !2561
  br i1 %cmp, label %for.body, label %for.end, !dbg !2562

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %value.addr, align 8, !dbg !2563
  %call1 = call i32 @acpi_ut_short_divide(i64 noundef %5, i32 noundef 10, ptr noundef %value.addr, ptr noundef %remainder) #7, !dbg !2565
  %6 = load i32, ptr %remainder, align 4, !dbg !2566
  %add = add i32 48, %6, !dbg !2567
  %conv = trunc i32 %add to i8, !dbg !2568
  %7 = load ptr, ptr %out_string.addr, align 8, !dbg !2569
  %8 = load i32, ptr %count, align 4, !dbg !2570
  %sub = sub i32 %8, 1, !dbg !2571
  %idxprom2 = zext i32 %sub to i64, !dbg !2569
  %arrayidx3 = getelementptr i8, ptr %7, i64 %idxprom2, !dbg !2569
  store i8 %conv, ptr %arrayidx3, align 1, !dbg !2572
  br label %for.inc, !dbg !2573

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %count, align 4, !dbg !2574
  %dec = add i32 %9, -1, !dbg !2574
  store i32 %dec, ptr %count, align 4, !dbg !2574
  br label %for.cond, !dbg !2575, !llvm.loop !2576

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #6, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 4, ptr %digits_needed) #6, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6, !dbg !2580
  ret void, !dbg !2580
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_digits_needed(i64 noundef %value, i32 noundef %base) #0 align 16 !dbg !2581 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %num_digits = alloca i32, align 4
  %current_value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2585, metadata !DIExpression()), !dbg !2589
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !2586, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_digits) #6, !dbg !2591
  call void @llvm.dbg.declare(metadata ptr %num_digits, metadata !2587, metadata !DIExpression()), !dbg !2592
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_value) #6, !dbg !2593
  call void @llvm.dbg.declare(metadata ptr %current_value, metadata !2588, metadata !DIExpression()), !dbg !2594
  %0 = load i64, ptr %value.addr, align 8, !dbg !2595
  %cmp = icmp eq i64 %0, 0, !dbg !2597
  br i1 %cmp, label %if.then, label %if.end, !dbg !2598

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2599

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %value.addr, align 8, !dbg !2601
  store i64 %1, ptr %current_value, align 8, !dbg !2602
  store i32 0, ptr %num_digits, align 4, !dbg !2603
  br label %while.cond, !dbg !2604

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i64, ptr %current_value, align 8, !dbg !2605
  %tobool = icmp ne i64 %2, 0, !dbg !2604
  br i1 %tobool, label %while.body, label %while.end, !dbg !2604

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %current_value, align 8, !dbg !2606
  %4 = load i32, ptr %base.addr, align 4, !dbg !2608
  %call = call i32 @acpi_ut_short_divide(i64 noundef %3, i32 noundef %4, ptr noundef %current_value, ptr noundef null) #7, !dbg !2609
  %5 = load i32, ptr %num_digits, align 4, !dbg !2610
  %inc = add i32 %5, 1, !dbg !2610
  store i32 %inc, ptr %num_digits, align 4, !dbg !2610
  br label %while.cond, !dbg !2604, !llvm.loop !2611

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %num_digits, align 4, !dbg !2613
  store i32 %6, ptr %retval, align 4, !dbg !2613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2613

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_value) #6, !dbg !2614
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_digits) #6, !dbg !2614
  %7 = load i32, ptr %retval, align 4, !dbg !2614
  ret i32 %7, !dbg !2614
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2615 dso_local i32 @acpi_ut_short_divide(i64 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_pci_cls_to_string(ptr noundef %out_string, ptr noundef %class_code) #0 align 16 !dbg !2618 {
entry:
  %out_string.addr = alloca ptr, align 8
  %class_code.addr = alloca ptr, align 8
  store ptr %out_string, ptr %out_string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_string.addr, metadata !2622, metadata !DIExpression()), !dbg !2624
  store ptr %class_code, ptr %class_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class_code.addr, metadata !2623, metadata !DIExpression()), !dbg !2625
  %0 = load ptr, ptr %class_code.addr, align 8, !dbg !2626
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !2626
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2626
  %conv = zext i8 %1 to i64, !dbg !2627
  %call = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv, i32 noundef 4) #7, !dbg !2628
  %2 = load ptr, ptr %out_string.addr, align 8, !dbg !2629
  %arrayidx1 = getelementptr i8, ptr %2, i64 0, !dbg !2629
  store i8 %call, ptr %arrayidx1, align 1, !dbg !2630
  %3 = load ptr, ptr %class_code.addr, align 8, !dbg !2631
  %arrayidx2 = getelementptr i8, ptr %3, i64 0, !dbg !2631
  %4 = load i8, ptr %arrayidx2, align 1, !dbg !2631
  %conv3 = zext i8 %4 to i64, !dbg !2632
  %call4 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv3, i32 noundef 0) #7, !dbg !2633
  %5 = load ptr, ptr %out_string.addr, align 8, !dbg !2634
  %arrayidx5 = getelementptr i8, ptr %5, i64 1, !dbg !2634
  store i8 %call4, ptr %arrayidx5, align 1, !dbg !2635
  %6 = load ptr, ptr %class_code.addr, align 8, !dbg !2636
  %arrayidx6 = getelementptr i8, ptr %6, i64 1, !dbg !2636
  %7 = load i8, ptr %arrayidx6, align 1, !dbg !2636
  %conv7 = zext i8 %7 to i64, !dbg !2637
  %call8 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv7, i32 noundef 4) #7, !dbg !2638
  %8 = load ptr, ptr %out_string.addr, align 8, !dbg !2639
  %arrayidx9 = getelementptr i8, ptr %8, i64 2, !dbg !2639
  store i8 %call8, ptr %arrayidx9, align 1, !dbg !2640
  %9 = load ptr, ptr %class_code.addr, align 8, !dbg !2641
  %arrayidx10 = getelementptr i8, ptr %9, i64 1, !dbg !2641
  %10 = load i8, ptr %arrayidx10, align 1, !dbg !2641
  %conv11 = zext i8 %10 to i64, !dbg !2642
  %call12 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv11, i32 noundef 0) #7, !dbg !2643
  %11 = load ptr, ptr %out_string.addr, align 8, !dbg !2644
  %arrayidx13 = getelementptr i8, ptr %11, i64 3, !dbg !2644
  store i8 %call12, ptr %arrayidx13, align 1, !dbg !2645
  %12 = load ptr, ptr %class_code.addr, align 8, !dbg !2646
  %arrayidx14 = getelementptr i8, ptr %12, i64 2, !dbg !2646
  %13 = load i8, ptr %arrayidx14, align 1, !dbg !2646
  %conv15 = zext i8 %13 to i64, !dbg !2647
  %call16 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv15, i32 noundef 4) #7, !dbg !2648
  %14 = load ptr, ptr %out_string.addr, align 8, !dbg !2649
  %arrayidx17 = getelementptr i8, ptr %14, i64 4, !dbg !2649
  store i8 %call16, ptr %arrayidx17, align 1, !dbg !2650
  %15 = load ptr, ptr %class_code.addr, align 8, !dbg !2651
  %arrayidx18 = getelementptr i8, ptr %15, i64 2, !dbg !2651
  %16 = load i8, ptr %arrayidx18, align 1, !dbg !2651
  %conv19 = zext i8 %16 to i64, !dbg !2652
  %call20 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %conv19, i32 noundef 0) #7, !dbg !2653
  %17 = load ptr, ptr %out_string.addr, align 8, !dbg !2654
  %arrayidx21 = getelementptr i8, ptr %17, i64 5, !dbg !2654
  store i8 %call20, ptr %arrayidx21, align 1, !dbg !2655
  %18 = load ptr, ptr %out_string.addr, align 8, !dbg !2656
  %arrayidx22 = getelementptr i8, ptr %18, i64 6, !dbg !2656
  store i8 0, ptr %arrayidx22, align 1, !dbg !2657
  ret void, !dbg !2658
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_is_valid_space_id(i8 noundef zeroext %space_id) #0 align 16 !dbg !2659 {
entry:
  %retval = alloca i8, align 1
  %space_id.addr = alloca i8, align 1
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !2663, metadata !DIExpression()), !dbg !2664
  %0 = load i8, ptr %space_id.addr, align 1, !dbg !2665
  %conv = zext i8 %0 to i32, !dbg !2665
  %cmp = icmp sge i32 %conv, 12, !dbg !2667
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2668

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !2669
  %conv2 = zext i8 %1 to i32, !dbg !2669
  %cmp3 = icmp slt i32 %conv2, 128, !dbg !2670
  br i1 %cmp3, label %land.lhs.true5, label %if.end, !dbg !2671

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = load i8, ptr %space_id.addr, align 1, !dbg !2672
  %conv6 = zext i8 %2 to i32, !dbg !2672
  %cmp7 = icmp ne i32 %conv6, 126, !dbg !2673
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !2674

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %3 = load i8, ptr %space_id.addr, align 1, !dbg !2675
  %conv10 = zext i8 %3 to i32, !dbg !2675
  %cmp11 = icmp ne i32 %conv10, 127, !dbg !2676
  br i1 %cmp11, label %if.then, label %if.end, !dbg !2677

if.then:                                          ; preds = %land.lhs.true9
  store i8 0, ptr %retval, align 1, !dbg !2678
  br label %return, !dbg !2678

if.end:                                           ; preds = %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  store i8 1, ptr %retval, align 1, !dbg !2680
  br label %return, !dbg !2680

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, ptr %retval, align 1, !dbg !2681
  ret i8 %4, !dbg !2681
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !2682 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #6, !dbg !2695
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2687, metadata !DIExpression()), !dbg !2695
  br label %do.body, !dbg !2695

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #6, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2689, metadata !DIExpression()), !dbg !2696
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2696
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #6, !dbg !2695
  br label %do.cond, !dbg !2696

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2696

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #6, !dbg !2697
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2693, metadata !DIExpression()), !dbg !2697
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #8, !dbg !2697, !srcloc !2698
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2697
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2697
  %3 = inttoptr i64 %2 to ptr, !dbg !2697
  store ptr %3, ptr %tmp, align 8, !dbg !2697
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #6, !dbg !2695
  %4 = load ptr, ptr %tmp, align 8, !dbg !2697
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2695
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2695
  store ptr %5, ptr %tmp1, align 8, !dbg !2695
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #6, !dbg !2699
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2695
  ret ptr %6, !dbg !2700
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300}
!llvm.ident = !{!2301}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 32, type: !2291, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exutils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exutils\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exutils.ll drivers/acpi/acpica/exutils.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !2264, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exutils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e41216ea6a24933caa629f8d38bbd2c8")
!4 = !{!5, !11, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !18, line: 51, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!21 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!22 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!23 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!24 = !{!25, !33, !68, !83, !81, !812, !813, !814, !815}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !27, line: 434, size: 1600, elements: !28)
!27 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!28 = !{!29, !40, !810, !811}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !26, file: !27, line: 435, baseType: !30, size: 128)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !27, line: 429, size: 128, elements: !31)
!31 = !{!32, !34}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !30, file: !27, line: 430, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !30, file: !27, line: 431, baseType: !35, size: 8, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !38, line: 21, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !26, file: !27, line: 436, baseType: !41, size: 576)
!41 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !27, line: 369, size: 576, elements: !42)
!42 = !{!43, !55, !71, !85, !122, !136, !145, !459, !476, !492, !505, !583, !595, !609, !619, !637, !659, !678, !697, !716, !729, !756, !773, !786, !800, !809}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !41, file: !27, line: 370, baseType: !44, size: 128)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !27, line: 73, size: 128, elements: !45)
!45 = !{!46, !48, !49, !50, !54}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !44, file: !27, line: 74, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !27, line: 74, baseType: !35, size: 8, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !27, line: 74, baseType: !35, size: 8, offset: 72)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !44, file: !27, line: 74, baseType: !51, size: 16, offset: 80)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !36, line: 19, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !38, line: 24, baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !27, line: 74, baseType: !35, size: 8, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !41, file: !27, line: 371, baseType: !56, size: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !27, line: 76, size: 192, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !67}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !56, file: !27, line: 77, baseType: !47, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !27, line: 77, baseType: !35, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !27, line: 77, baseType: !35, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !56, file: !27, line: 77, baseType: !51, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !27, line: 77, baseType: !35, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !56, file: !27, line: 77, baseType: !64, size: 24, offset: 104)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !27, line: 78, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !36, line: 23, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !38, line: 31, baseType: !70)
!70 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !41, file: !27, line: 372, baseType: !72, size: 256)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !27, line: 93, size: 256, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !82}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !72, file: !27, line: 94, baseType: !47, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !72, file: !27, line: 94, baseType: !35, size: 8, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !27, line: 94, baseType: !35, size: 8, offset: 72)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !72, file: !27, line: 94, baseType: !51, size: 16, offset: 80)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !27, line: 94, baseType: !35, size: 8, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !72, file: !27, line: 94, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !72, file: !27, line: 94, baseType: !83, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !7)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !41, file: !27, line: 373, baseType: !86, size: 384)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !27, line: 97, size: 384, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !95, !96, !97, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !86, file: !27, line: 98, baseType: !47, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !86, file: !27, line: 98, baseType: !35, size: 8, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !27, line: 98, baseType: !35, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !86, file: !27, line: 98, baseType: !51, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !27, line: 98, baseType: !35, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !86, file: !27, line: 98, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !86, file: !27, line: 98, baseType: !83, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !86, file: !27, line: 99, baseType: !83, size: 32, offset: 224)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !86, file: !27, line: 100, baseType: !94, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !86, file: !27, line: 101, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !101, line: 133, size: 384, elements: !102)
!101 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!102 = !{!103, !104, !105, !106, !107, !116, !117, !118, !119}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !100, file: !101, line: 134, baseType: !47, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !101, line: 135, baseType: !35, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !101, line: 136, baseType: !35, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !101, line: 137, baseType: !51, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !101, line: 138, baseType: !108, size: 32, offset: 96)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !109, line: 328, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !108, file: !109, line: 329, baseType: !83, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !108, file: !109, line: 330, baseType: !113, size: 32)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 4)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !101, line: 139, baseType: !99, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !100, file: !101, line: 140, baseType: !99, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !100, file: !101, line: 141, baseType: !99, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !100, file: !101, line: 142, baseType: !120, size: 16, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !121, line: 445, baseType: !51)
!121 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !41, file: !27, line: 374, baseType: !123, size: 384)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !27, line: 104, size: 384, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !133, !134, !135}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !27, line: 105, baseType: !47, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !27, line: 105, baseType: !35, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !27, line: 105, baseType: !35, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !27, line: 105, baseType: !51, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !27, line: 105, baseType: !35, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !27, line: 105, baseType: !99, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !123, file: !27, line: 106, baseType: !132, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !123, file: !27, line: 107, baseType: !94, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !123, file: !27, line: 108, baseType: !83, size: 32, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !123, file: !27, line: 109, baseType: !83, size: 32, offset: 352)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !41, file: !27, line: 375, baseType: !137, size: 192)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !27, line: 118, size: 192, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !137, file: !27, line: 119, baseType: !47, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !137, file: !27, line: 119, baseType: !35, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !27, line: 119, baseType: !35, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !137, file: !27, line: 119, baseType: !51, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !27, line: 119, baseType: !35, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !137, file: !27, line: 119, baseType: !33, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !41, file: !27, line: 376, baseType: !146, size: 448)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !27, line: 144, size: 448, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !456, !457, !458}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !27, line: 145, baseType: !47, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !27, line: 145, baseType: !35, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !27, line: 145, baseType: !35, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !27, line: 145, baseType: !51, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !27, line: 145, baseType: !35, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !146, file: !27, line: 145, baseType: !35, size: 8, offset: 104)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !146, file: !27, line: 146, baseType: !35, size: 8, offset: 112)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !146, file: !27, line: 147, baseType: !35, size: 8, offset: 120)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !146, file: !27, line: 148, baseType: !47, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !27, line: 149, baseType: !47, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !146, file: !27, line: 150, baseType: !94, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !146, file: !27, line: 154, baseType: !160, size: 64, offset: 320)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !27, line: 151, size: 64, elements: !161)
!161 = !{!162, !455}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !160, file: !27, line: 152, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !101, line: 248, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !121, line: 421, baseType: !83)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !170, line: 37, size: 9024, elements: !171)
!170 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !401, !402, !403, !404, !405, !409, !411, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !438, !439, !440, !441, !442, !443, !444, !445, !447, !453}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 38, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !170, line: 39, baseType: !35, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !169, file: !170, line: 40, baseType: !35, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !169, file: !170, line: 41, baseType: !51, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !169, file: !170, line: 42, baseType: !35, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !169, file: !170, line: 43, baseType: !35, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !169, file: !170, line: 44, baseType: !35, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !170, line: 45, baseType: !120, size: 16, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !169, file: !170, line: 46, baseType: !35, size: 8, offset: 144)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !169, file: !170, line: 47, baseType: !35, size: 8, offset: 152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !169, file: !170, line: 48, baseType: !35, size: 8, offset: 160)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !169, file: !170, line: 49, baseType: !35, size: 8, offset: 168)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !169, file: !170, line: 50, baseType: !35, size: 8, offset: 176)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !169, file: !170, line: 51, baseType: !35, size: 8, offset: 184)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !169, file: !170, line: 52, baseType: !35, size: 8, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !169, file: !170, line: 53, baseType: !35, size: 8, offset: 200)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !170, line: 54, baseType: !94, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !169, file: !170, line: 55, baseType: !83, size: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !169, file: !170, line: 56, baseType: !83, size: 32, offset: 352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !169, file: !170, line: 57, baseType: !83, size: 32, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !169, file: !170, line: 58, baseType: !83, size: 32, offset: 416)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !169, file: !170, line: 60, baseType: !194, size: 640, offset: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !101, line: 909, size: 640, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !282, !283, !399, !400}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !194, file: !101, line: 910, baseType: !94, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !101, line: 911, baseType: !94, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !194, file: !101, line: 912, baseType: !94, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !194, file: !101, line: 913, baseType: !94, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !194, file: !101, line: 914, baseType: !94, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !194, file: !101, line: 915, baseType: !202, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !101, line: 891, size: 1600, elements: !204)
!204 = !{!205, !225, !241}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !203, file: !101, line: 892, baseType: !206, size: 448)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !101, line: 844, size: 448, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !224}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !101, line: 845, baseType: !202, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !101, line: 845, baseType: !35, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !101, line: 845, baseType: !35, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !206, file: !101, line: 845, baseType: !51, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !206, file: !101, line: 845, baseType: !94, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !101, line: 845, baseType: !202, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !101, line: 845, baseType: !99, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !101, line: 845, baseType: !216, size: 64, offset: 320)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !101, line: 732, size: 64, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !216, file: !101, line: 733, baseType: !68, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !216, file: !101, line: 734, baseType: !83, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !216, file: !101, line: 735, baseType: !80, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !216, file: !101, line: 736, baseType: !94, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !101, line: 737, baseType: !80, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !216, file: !101, line: 738, baseType: !202, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !206, file: !101, line: 845, baseType: !35, size: 8, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !203, file: !101, line: 893, baseType: !226, size: 640)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !101, line: 851, size: 640, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !101, line: 852, baseType: !202, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !101, line: 852, baseType: !35, size: 8, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !101, line: 852, baseType: !35, size: 8, offset: 72)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !226, file: !101, line: 852, baseType: !51, size: 16, offset: 80)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !226, file: !101, line: 852, baseType: !94, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !101, line: 852, baseType: !202, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !101, line: 852, baseType: !99, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !226, file: !101, line: 852, baseType: !216, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !226, file: !101, line: 852, baseType: !35, size: 8, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !226, file: !101, line: 852, baseType: !80, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !226, file: !101, line: 853, baseType: !94, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !226, file: !101, line: 854, baseType: !83, size: 32, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !101, line: 855, baseType: !83, size: 32, offset: 608)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !203, file: !101, line: 894, baseType: !242, size: 1600)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !101, line: 862, size: 1600, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !101, line: 863, baseType: !202, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !242, file: !101, line: 863, baseType: !35, size: 8, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !101, line: 863, baseType: !35, size: 8, offset: 72)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !242, file: !101, line: 863, baseType: !51, size: 16, offset: 80)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !242, file: !101, line: 863, baseType: !94, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !101, line: 863, baseType: !202, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !242, file: !101, line: 863, baseType: !99, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !242, file: !101, line: 863, baseType: !216, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !242, file: !101, line: 863, baseType: !35, size: 8, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !242, file: !101, line: 863, baseType: !202, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !242, file: !101, line: 864, baseType: !202, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !242, file: !101, line: 865, baseType: !80, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !242, file: !101, line: 866, baseType: !35, size: 8, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !242, file: !101, line: 867, baseType: !80, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !242, file: !101, line: 868, baseType: !80, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !242, file: !101, line: 869, baseType: !80, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !242, file: !101, line: 870, baseType: !113, size: 32, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !242, file: !101, line: 871, baseType: !83, size: 32, offset: 928)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !242, file: !101, line: 872, baseType: !83, size: 32, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !242, file: !101, line: 873, baseType: !83, size: 32, offset: 992)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !242, file: !101, line: 874, baseType: !83, size: 32, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !242, file: !101, line: 875, baseType: !83, size: 32, offset: 1056)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !242, file: !101, line: 876, baseType: !83, size: 32, offset: 1088)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !242, file: !101, line: 877, baseType: !83, size: 32, offset: 1120)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !242, file: !101, line: 878, baseType: !83, size: 32, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !242, file: !101, line: 879, baseType: !83, size: 32, offset: 1184)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !242, file: !101, line: 880, baseType: !83, size: 32, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !242, file: !101, line: 881, baseType: !83, size: 32, offset: 1248)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !242, file: !101, line: 882, baseType: !83, size: 32, offset: 1280)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !242, file: !101, line: 883, baseType: !83, size: 32, offset: 1312)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !242, file: !101, line: 884, baseType: !51, size: 16, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !242, file: !101, line: 885, baseType: !35, size: 8, offset: 1360)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !242, file: !101, line: 886, baseType: !35, size: 8, offset: 1368)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !242, file: !101, line: 887, baseType: !35, size: 8, offset: 1376)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !242, file: !101, line: 888, baseType: !279, size: 160, offset: 1384)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 20)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !194, file: !101, line: 916, baseType: !99, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !194, file: !101, line: 917, baseType: !284, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !101, line: 679, size: 640, elements: !286)
!286 = !{!287, !295, !308, !317, !326, !339, !353, !365, !377}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !285, file: !101, line: 680, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !101, line: 575, size: 128, elements: !289)
!289 = !{!290, !291, !292, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !101, line: 576, baseType: !33, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !101, line: 576, baseType: !35, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !101, line: 576, baseType: !35, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !101, line: 576, baseType: !51, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !101, line: 576, baseType: !51, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !285, file: !101, line: 681, baseType: !296, size: 384)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !101, line: 604, size: 384, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !101, line: 605, baseType: !33, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !101, line: 605, baseType: !35, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !101, line: 605, baseType: !35, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !101, line: 605, baseType: !51, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !101, line: 605, baseType: !51, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !296, file: !101, line: 606, baseType: !51, size: 16, offset: 112)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !296, file: !101, line: 607, baseType: !202, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !296, file: !101, line: 608, baseType: !94, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !296, file: !101, line: 609, baseType: !94, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !296, file: !101, line: 610, baseType: !68, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !285, file: !101, line: 682, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !101, line: 582, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !101, line: 583, baseType: !33, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !101, line: 583, baseType: !35, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !101, line: 583, baseType: !35, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !101, line: 583, baseType: !51, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !101, line: 583, baseType: !51, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !309, file: !101, line: 584, baseType: !47, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !285, file: !101, line: 683, baseType: !318, size: 192)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !101, line: 616, size: 192, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !101, line: 617, baseType: !33, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !101, line: 617, baseType: !35, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !101, line: 617, baseType: !35, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !101, line: 617, baseType: !51, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !101, line: 617, baseType: !51, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !318, file: !101, line: 618, baseType: !99, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !285, file: !101, line: 684, baseType: !327, size: 448)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !101, line: 621, size: 448, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !101, line: 622, baseType: !33, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !101, line: 622, baseType: !35, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !101, line: 622, baseType: !35, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !101, line: 622, baseType: !51, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !101, line: 622, baseType: !51, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !327, file: !101, line: 623, baseType: !83, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !327, file: !101, line: 624, baseType: !202, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !327, file: !101, line: 625, baseType: !94, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !327, file: !101, line: 626, baseType: !94, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !327, file: !101, line: 627, baseType: !83, size: 32, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !285, file: !101, line: 685, baseType: !340, size: 512)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !101, line: 590, size: 512, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !101, line: 591, baseType: !33, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !101, line: 591, baseType: !35, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !101, line: 591, baseType: !35, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !101, line: 591, baseType: !51, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !101, line: 591, baseType: !51, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !340, file: !101, line: 592, baseType: !83, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !340, file: !101, line: 593, baseType: !47, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !340, file: !101, line: 594, baseType: !47, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !340, file: !101, line: 595, baseType: !168, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !340, file: !101, line: 596, baseType: !33, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !340, file: !101, line: 597, baseType: !83, size: 32, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !285, file: !101, line: 686, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !101, line: 634, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !101, line: 635, baseType: !33, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !101, line: 635, baseType: !35, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !101, line: 635, baseType: !35, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !101, line: 635, baseType: !51, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !101, line: 635, baseType: !51, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !354, file: !101, line: 636, baseType: !35, size: 8, offset: 112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !354, file: !101, line: 637, baseType: !168, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !354, file: !101, line: 638, baseType: !47, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !354, file: !101, line: 639, baseType: !68, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !285, file: !101, line: 687, baseType: !366, size: 640)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !101, line: 646, size: 640, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !101, line: 647, baseType: !33, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !101, line: 647, baseType: !35, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !101, line: 647, baseType: !35, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !101, line: 647, baseType: !51, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !101, line: 647, baseType: !51, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !366, file: !101, line: 648, baseType: !374, size: 512, offset: 128)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !285, file: !101, line: 688, baseType: !378, size: 320)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !101, line: 669, size: 320, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !101, line: 670, baseType: !33, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !101, line: 670, baseType: !35, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !101, line: 670, baseType: !35, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !378, file: !101, line: 670, baseType: !51, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !101, line: 670, baseType: !51, size: 16, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !378, file: !101, line: 671, baseType: !35, size: 8, offset: 112)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !378, file: !101, line: 672, baseType: !99, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !378, file: !101, line: 673, baseType: !47, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !378, file: !101, line: 674, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !101, line: 660, size: 128, elements: !391)
!391 = !{!392, !398}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !390, file: !101, line: 661, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !121, line: 1061, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !83, !33}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !121, line: 424, baseType: !33)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !390, file: !101, line: 662, baseType: !33, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !194, file: !101, line: 918, baseType: !202, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !194, file: !101, line: 919, baseType: !83, size: 32, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !169, file: !170, line: 61, baseType: !83, size: 32, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !169, file: !170, line: 62, baseType: !83, size: 32, offset: 1120)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !169, file: !170, line: 63, baseType: !51, size: 16, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !169, file: !170, line: 64, baseType: !35, size: 8, offset: 1168)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !169, file: !170, line: 66, baseType: !406, size: 2688, offset: 1216)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 2688, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !169, file: !170, line: 67, baseType: !410, size: 3072, offset: 3904)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 3072, elements: !375)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !169, file: !170, line: 68, baseType: !412, size: 576, offset: 6976)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 576, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 9)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !169, file: !170, line: 69, baseType: !132, size: 64, offset: 7552)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !169, file: !170, line: 71, baseType: !94, size: 64, offset: 7616)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !169, file: !170, line: 72, baseType: !132, size: 64, offset: 7680)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !169, file: !170, line: 73, baseType: !284, size: 64, offset: 7744)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !169, file: !170, line: 74, baseType: !99, size: 64, offset: 7808)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !169, file: !170, line: 75, baseType: !47, size: 64, offset: 7872)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !169, file: !170, line: 76, baseType: !99, size: 64, offset: 7936)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !169, file: !170, line: 77, baseType: !202, size: 64, offset: 8000)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !169, file: !170, line: 78, baseType: !47, size: 64, offset: 8064)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !169, file: !170, line: 79, baseType: !99, size: 64, offset: 8128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !169, file: !170, line: 80, baseType: !80, size: 64, offset: 8192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !169, file: !170, line: 81, baseType: !202, size: 64, offset: 8256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !169, file: !170, line: 82, baseType: !428, size: 64, offset: 8320)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !101, line: 718, size: 128, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !430, file: !101, line: 722, baseType: !83, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !430, file: !101, line: 723, baseType: !83, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !101, line: 724, baseType: !51, size: 16, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !430, file: !101, line: 725, baseType: !35, size: 8, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !430, file: !101, line: 726, baseType: !35, size: 8, offset: 88)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !101, line: 727, baseType: !35, size: 8, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !169, file: !170, line: 83, baseType: !202, size: 64, offset: 8384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !169, file: !170, line: 84, baseType: !47, size: 64, offset: 8448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !169, file: !170, line: 85, baseType: !284, size: 64, offset: 8512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !169, file: !170, line: 86, baseType: !47, size: 64, offset: 8576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !169, file: !170, line: 87, baseType: !284, size: 64, offset: 8640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !169, file: !170, line: 88, baseType: !202, size: 64, offset: 8704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !169, file: !170, line: 89, baseType: !202, size: 64, offset: 8768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !169, file: !170, line: 90, baseType: !446, size: 64, offset: 8832)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !169, file: !170, line: 91, baseType: !448, size: 64, offset: 8896)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !101, line: 652, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!167, !168, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !169, file: !170, line: 92, baseType: !454, size: 64, offset: 8960)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !101, line: 656, baseType: !164)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !160, file: !27, line: 153, baseType: !47, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !146, file: !27, line: 156, baseType: !83, size: 32, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !146, file: !27, line: 157, baseType: !120, size: 16, offset: 416)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !146, file: !27, line: 158, baseType: !35, size: 8, offset: 432)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !41, file: !27, line: 377, baseType: !460, size: 576)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !27, line: 122, size: 576, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !27, line: 123, baseType: !47, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !27, line: 123, baseType: !35, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !27, line: 123, baseType: !35, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !27, line: 123, baseType: !51, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !27, line: 123, baseType: !35, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !460, file: !27, line: 123, baseType: !35, size: 8, offset: 104)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !460, file: !27, line: 124, baseType: !51, size: 16, offset: 112)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !460, file: !27, line: 125, baseType: !33, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !460, file: !27, line: 126, baseType: !68, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !460, file: !27, line: 127, baseType: !446, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !460, file: !27, line: 128, baseType: !47, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !27, line: 129, baseType: !47, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !27, line: 130, baseType: !99, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !460, file: !27, line: 131, baseType: !35, size: 8, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !41, file: !27, line: 378, baseType: !477, size: 512)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !27, line: 134, size: 512, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !490, !491}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !477, file: !27, line: 135, baseType: !47, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !27, line: 135, baseType: !35, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !477, file: !27, line: 135, baseType: !35, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !477, file: !27, line: 135, baseType: !51, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !27, line: 135, baseType: !35, size: 8, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !477, file: !27, line: 135, baseType: !35, size: 8, offset: 104)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !27, line: 136, baseType: !99, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !477, file: !27, line: 137, baseType: !47, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !27, line: 138, baseType: !47, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !477, file: !27, line: 139, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !121, line: 129, baseType: !68)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !477, file: !27, line: 140, baseType: !83, size: 32, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !477, file: !27, line: 141, baseType: !33, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !41, file: !27, line: 379, baseType: !493, size: 320)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !27, line: 185, size: 320, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !504}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !27, line: 186, baseType: !47, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !27, line: 186, baseType: !35, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !27, line: 186, baseType: !35, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !27, line: 186, baseType: !51, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !27, line: 186, baseType: !35, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !493, file: !27, line: 186, baseType: !501, size: 128, offset: 128)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 2)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !27, line: 186, baseType: !47, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !41, file: !27, line: 380, baseType: !506, size: 384)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !27, line: 188, size: 384, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !506, file: !27, line: 189, baseType: !47, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !506, file: !27, line: 189, baseType: !35, size: 8, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !27, line: 189, baseType: !35, size: 8, offset: 72)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !506, file: !27, line: 189, baseType: !51, size: 16, offset: 80)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !27, line: 189, baseType: !35, size: 8, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !506, file: !27, line: 190, baseType: !501, size: 128, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !506, file: !27, line: 190, baseType: !47, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !506, file: !27, line: 190, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !101, line: 480, size: 576, elements: !518)
!518 = !{!519, !520, !521, !522, !530, !545, !577, !578, !579, !580, !581, !582}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !101, line: 481, baseType: !99, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !517, file: !101, line: 482, baseType: !516, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !101, line: 483, baseType: !516, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !517, file: !101, line: 484, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !101, line: 497, size: 256, elements: !525)
!525 = !{!526, !527, !528, !529}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !524, file: !101, line: 498, baseType: !523, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !101, line: 499, baseType: !523, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !524, file: !101, line: 500, baseType: !516, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !524, file: !101, line: 501, baseType: !83, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !517, file: !101, line: 485, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !101, line: 466, size: 320, elements: !533)
!533 = !{!534, !539, !540, !541, !542, !543, !544}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !532, file: !101, line: 467, baseType: !535, size: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !101, line: 459, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !535, file: !101, line: 460, baseType: !35, size: 8)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !535, file: !101, line: 461, baseType: !68, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !532, file: !101, line: 468, baseType: !535, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !532, file: !101, line: 469, baseType: !51, size: 16, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !532, file: !101, line: 470, baseType: !35, size: 8, offset: 272)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !532, file: !101, line: 471, baseType: !35, size: 8, offset: 280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !532, file: !101, line: 472, baseType: !35, size: 8, offset: 288)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !532, file: !101, line: 473, baseType: !35, size: 8, offset: 296)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !517, file: !101, line: 486, baseType: !546, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !101, line: 448, size: 192, elements: !548)
!548 = !{!549, !572, !573, !574, !575, !576}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !547, file: !101, line: 449, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !101, line: 438, size: 64, elements: !551)
!551 = !{!552, !553, !566}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !550, file: !101, line: 439, baseType: !99, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !550, file: !101, line: 440, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !101, line: 419, size: 256, elements: !556)
!556 = !{!557, !562, !563, !564, !565}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !101, line: 420, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !121, line: 1058, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!83, !397, !83, !33}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !555, file: !101, line: 421, baseType: !33, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !555, file: !101, line: 422, baseType: !99, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !555, file: !101, line: 423, baseType: !35, size: 8, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !555, file: !101, line: 424, baseType: !35, size: 8, offset: 200)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !550, file: !101, line: 441, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !101, line: 429, size: 128, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !568, file: !101, line: 430, baseType: !99, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !568, file: !101, line: 431, baseType: !567, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !547, file: !101, line: 450, baseType: !531, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !101, line: 451, baseType: !35, size: 8, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !547, file: !101, line: 452, baseType: !35, size: 8, offset: 136)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !547, file: !101, line: 453, baseType: !35, size: 8, offset: 144)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !547, file: !101, line: 454, baseType: !35, size: 8, offset: 152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !517, file: !101, line: 487, baseType: !68, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !517, file: !101, line: 488, baseType: !83, size: 32, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !517, file: !101, line: 489, baseType: !51, size: 16, offset: 480)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !517, file: !101, line: 490, baseType: !51, size: 16, offset: 496)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !517, file: !101, line: 491, baseType: !35, size: 8, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !517, file: !101, line: 492, baseType: !35, size: 8, offset: 520)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !41, file: !27, line: 381, baseType: !584, size: 384)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !27, line: 193, size: 384, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !27, line: 194, baseType: !47, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !27, line: 194, baseType: !35, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !27, line: 194, baseType: !35, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !27, line: 194, baseType: !51, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !27, line: 194, baseType: !35, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !27, line: 194, baseType: !501, size: 128, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !27, line: 194, baseType: !47, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !584, file: !27, line: 194, baseType: !83, size: 32, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !584, file: !27, line: 195, baseType: !83, size: 32, offset: 352)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !41, file: !27, line: 382, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !27, line: 198, size: 384, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !27, line: 199, baseType: !47, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !27, line: 199, baseType: !35, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !27, line: 199, baseType: !35, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !27, line: 199, baseType: !51, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !27, line: 199, baseType: !35, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !596, file: !27, line: 201, baseType: !35, size: 8, offset: 104)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !596, file: !27, line: 202, baseType: !35, size: 8, offset: 112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !596, file: !27, line: 203, baseType: !501, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !596, file: !27, line: 203, baseType: !47, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !596, file: !27, line: 203, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !121, line: 128, baseType: !68)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !41, file: !27, line: 383, baseType: !610, size: 320)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !27, line: 206, size: 320, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !27, line: 207, baseType: !47, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !27, line: 207, baseType: !35, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !27, line: 207, baseType: !35, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !27, line: 207, baseType: !51, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !27, line: 207, baseType: !35, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !610, file: !27, line: 207, baseType: !501, size: 128, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !610, file: !27, line: 207, baseType: !47, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !41, file: !27, line: 384, baseType: !620, size: 384)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !27, line: 234, size: 384, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !27, line: 235, baseType: !47, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !27, line: 235, baseType: !35, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !27, line: 235, baseType: !35, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !27, line: 235, baseType: !51, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !27, line: 235, baseType: !35, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !27, line: 235, baseType: !35, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !27, line: 235, baseType: !35, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !27, line: 235, baseType: !35, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !27, line: 235, baseType: !99, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !27, line: 235, baseType: !83, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !27, line: 235, baseType: !83, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !27, line: 235, baseType: !83, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !27, line: 235, baseType: !35, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !27, line: 235, baseType: !35, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !620, file: !27, line: 235, baseType: !47, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !41, file: !27, line: 385, baseType: !638, size: 576)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !27, line: 238, size: 576, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !27, line: 239, baseType: !47, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !27, line: 239, baseType: !35, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !27, line: 239, baseType: !35, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !27, line: 239, baseType: !51, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !27, line: 239, baseType: !35, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !27, line: 239, baseType: !35, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !27, line: 239, baseType: !35, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !27, line: 239, baseType: !35, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !27, line: 239, baseType: !99, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !27, line: 239, baseType: !83, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !27, line: 239, baseType: !83, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !27, line: 239, baseType: !83, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !27, line: 239, baseType: !35, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !27, line: 239, baseType: !35, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !638, file: !27, line: 239, baseType: !51, size: 16, offset: 304)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !27, line: 240, baseType: !47, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !638, file: !27, line: 241, baseType: !94, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !638, file: !27, line: 242, baseType: !51, size: 16, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !638, file: !27, line: 243, baseType: !94, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !41, file: !27, line: 386, baseType: !660, size: 384)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !27, line: 263, size: 384, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !27, line: 264, baseType: !47, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !27, line: 264, baseType: !51, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !27, line: 264, baseType: !99, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !27, line: 264, baseType: !83, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !27, line: 264, baseType: !83, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !27, line: 264, baseType: !83, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !660, file: !27, line: 264, baseType: !35, size: 8, offset: 304)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !660, file: !27, line: 265, baseType: !47, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !41, file: !27, line: 387, baseType: !679, size: 448)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !27, line: 246, size: 448, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !27, line: 247, baseType: !47, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !27, line: 247, baseType: !35, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !27, line: 247, baseType: !35, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !27, line: 247, baseType: !51, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !27, line: 247, baseType: !35, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !679, file: !27, line: 247, baseType: !35, size: 8, offset: 104)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !679, file: !27, line: 247, baseType: !35, size: 8, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !679, file: !27, line: 247, baseType: !35, size: 8, offset: 120)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !27, line: 247, baseType: !99, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !679, file: !27, line: 247, baseType: !83, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !679, file: !27, line: 247, baseType: !83, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !27, line: 247, baseType: !83, size: 32, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !679, file: !27, line: 247, baseType: !35, size: 8, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !679, file: !27, line: 247, baseType: !35, size: 8, offset: 296)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !679, file: !27, line: 247, baseType: !47, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !679, file: !27, line: 248, baseType: !47, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !41, file: !27, line: 388, baseType: !698, size: 448)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !27, line: 251, size: 448, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !27, line: 252, baseType: !47, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !27, line: 252, baseType: !35, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !27, line: 252, baseType: !35, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !27, line: 252, baseType: !51, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !27, line: 252, baseType: !35, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !698, file: !27, line: 252, baseType: !35, size: 8, offset: 104)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !698, file: !27, line: 252, baseType: !35, size: 8, offset: 112)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !698, file: !27, line: 252, baseType: !35, size: 8, offset: 120)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !27, line: 252, baseType: !99, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !698, file: !27, line: 252, baseType: !83, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !698, file: !27, line: 252, baseType: !83, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !698, file: !27, line: 252, baseType: !83, size: 32, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !698, file: !27, line: 252, baseType: !35, size: 8, offset: 288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !698, file: !27, line: 252, baseType: !35, size: 8, offset: 296)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !698, file: !27, line: 257, baseType: !47, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !698, file: !27, line: 258, baseType: !47, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !41, file: !27, line: 389, baseType: !717, size: 512)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !27, line: 274, size: 512, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !27, line: 275, baseType: !47, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !27, line: 275, baseType: !35, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !27, line: 275, baseType: !35, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !27, line: 275, baseType: !51, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !27, line: 275, baseType: !35, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !717, file: !27, line: 275, baseType: !99, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !717, file: !27, line: 276, baseType: !83, size: 32, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !717, file: !27, line: 277, baseType: !393, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !717, file: !27, line: 278, baseType: !33, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !27, line: 279, baseType: !501, size: 128, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !41, file: !27, line: 390, baseType: !730, size: 576)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !27, line: 282, size: 576, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !745, !746, !747, !748, !754, !755}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !27, line: 283, baseType: !47, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !27, line: 283, baseType: !35, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !27, line: 283, baseType: !35, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !27, line: 283, baseType: !51, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !27, line: 283, baseType: !35, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !730, file: !27, line: 283, baseType: !35, size: 8, offset: 104)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !730, file: !27, line: 284, baseType: !35, size: 8, offset: 112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !730, file: !27, line: 285, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !121, line: 1093, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!167, !83, !489, !83, !744, !33, !33}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !27, line: 286, baseType: !99, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !730, file: !27, line: 287, baseType: !33, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !730, file: !27, line: 288, baseType: !33, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !730, file: !27, line: 289, baseType: !749, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !121, line: 1126, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!167, !397, !83, !33, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !730, file: !27, line: 290, baseType: !47, size: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !27, line: 291, baseType: !47, size: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !41, file: !27, line: 391, baseType: !757, size: 512)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !27, line: 309, size: 512, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !27, line: 310, baseType: !47, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !27, line: 310, baseType: !35, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !27, line: 310, baseType: !35, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !27, line: 310, baseType: !51, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !27, line: 310, baseType: !35, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !757, file: !27, line: 310, baseType: !35, size: 8, offset: 104)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !757, file: !27, line: 311, baseType: !35, size: 8, offset: 112)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !757, file: !27, line: 312, baseType: !35, size: 8, offset: 120)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !757, file: !27, line: 313, baseType: !33, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !757, file: !27, line: 314, baseType: !99, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !757, file: !27, line: 315, baseType: !132, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !757, file: !27, line: 316, baseType: !94, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !757, file: !27, line: 317, baseType: !94, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !757, file: !27, line: 318, baseType: !83, size: 32, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !41, file: !27, line: 392, baseType: !774, size: 448)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !27, line: 342, size: 448, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !27, line: 343, baseType: !47, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !27, line: 343, baseType: !35, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !27, line: 343, baseType: !35, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !27, line: 343, baseType: !51, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !27, line: 343, baseType: !35, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !774, file: !27, line: 343, baseType: !99, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !774, file: !27, line: 344, baseType: !99, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !774, file: !27, line: 345, baseType: !33, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !774, file: !27, line: 346, baseType: !94, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !774, file: !27, line: 347, baseType: !83, size: 32, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !27, line: 393, baseType: !787, size: 256)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !27, line: 352, size: 256, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !799}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !787, file: !27, line: 353, baseType: !47, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !787, file: !27, line: 353, baseType: !35, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !27, line: 353, baseType: !35, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !787, file: !27, line: 353, baseType: !51, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !27, line: 353, baseType: !35, size: 8, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !787, file: !27, line: 353, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !121, line: 1064, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !397, !33}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !787, file: !27, line: 354, baseType: !33, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !41, file: !27, line: 394, baseType: !801, size: 192)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !27, line: 359, size: 192, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !801, file: !27, line: 360, baseType: !47, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !801, file: !27, line: 360, baseType: !35, size: 8, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !801, file: !27, line: 360, baseType: !35, size: 8, offset: 72)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !801, file: !27, line: 360, baseType: !51, size: 16, offset: 80)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !27, line: 360, baseType: !35, size: 8, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !27, line: 360, baseType: !47, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !41, file: !27, line: 401, baseType: !100, size: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !26, file: !27, line: 437, baseType: !100, size: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !26, file: !27, line: 438, baseType: !203, size: 1600)
!812 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !121, line: 814, baseType: !35)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !817, line: 746, size: 58368, elements: !818)
!817 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!818 = !{!819, !827, !828, !829, !841, !842, !843, !844, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !930, !941, !1063, !1067, !1070, !1101, !1102, !1103, !1104, !1115, !1117, !1118, !1119, !1120, !1121, !1122, !1133, !1134, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1151, !1152, !1159, !1160, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1438, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1494, !1496, !1497, !1498, !1510, !1512, !1513, !1514, !1515, !1516, !1517, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1541, !1547, !1551, !1552, !1553, !1556, !1560, !1563, !1570, !1575, !1578, !1581, !1584, !1587, !1590, !1593, !1599, !1600, !1601, !1607, !1608, !1612, !1613, !1614, !1617, !1624, !1625, !1634, !1644, !1645, !1646, !1647, !1648, !1653, !1654, !1655, !1658, !1659, !1662, !1665, !1668, !1671, !1674, !1675, !1762, !1773, !1774, !1775, !1776, !1782, !1787, !1788, !1789, !1792, !1793, !1796, !1799, !1800, !1803, !1804, !1805, !1808, !1809, !1810, !1813, !1814, !1815, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1847, !1850, !1918, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1930, !2002, !2004, !2005, !2006, !2007, !2008, !2020, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2037, !2038, !2039}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !816, file: !817, line: 752, baseType: !820, size: 192)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !821, line: 56, size: 192, elements: !822)
!821 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!822 = !{!823, !824, !825, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !821, line: 57, baseType: !812, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !820, file: !821, line: 58, baseType: !812, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !820, file: !821, line: 59, baseType: !83, size: 32, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !820, file: !821, line: 61, baseType: !83, size: 32, offset: 160)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !816, file: !817, line: 754, baseType: !7, size: 32, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !816, file: !817, line: 767, baseType: !33, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !816, file: !817, line: 768, baseType: !830, size: 32, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !831, line: 113, baseType: !832)
!831 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !831, line: 111, size: 32, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !832, file: !831, line: 112, baseType: !835, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !836, line: 174, baseType: !837)
!836 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !836, line: 172, size: 32, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !837, file: !836, line: 173, baseType: !840, size: 32)
!840 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !817, line: 770, baseType: !7, size: 32, offset: 352)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !816, file: !817, line: 771, baseType: !7, size: 32, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !816, file: !817, line: 774, baseType: !840, size: 32, offset: 416)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !816, file: !817, line: 775, baseType: !845, size: 128, offset: 448)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !846, line: 58, size: 128, elements: !847)
!846 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!847 = !{!848, !854, !859, !860}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !845, file: !846, line: 59, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !850, line: 60, size: 64, elements: !851)
!850 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !850, line: 61, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !846, line: 60, baseType: !855, size: 32, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 60, size: 32, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !855, file: !846, line: 61, baseType: !7, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !855, file: !846, line: 62, baseType: !835, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !845, file: !846, line: 65, baseType: !51, size: 16, offset: 96)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !845, file: !846, line: 65, baseType: !51, size: 16, offset: 112)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !816, file: !817, line: 776, baseType: !7, size: 32, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !816, file: !817, line: 777, baseType: !812, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !816, file: !817, line: 778, baseType: !815, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !816, file: !817, line: 787, baseType: !840, size: 32, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !816, file: !817, line: 788, baseType: !840, size: 32, offset: 800)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !816, file: !817, line: 790, baseType: !840, size: 32, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !816, file: !817, line: 792, baseType: !840, size: 32, offset: 864)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !816, file: !817, line: 793, baseType: !840, size: 32, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !816, file: !817, line: 794, baseType: !840, size: 32, offset: 928)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !816, file: !817, line: 795, baseType: !7, size: 32, offset: 960)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !816, file: !817, line: 797, baseType: !872, size: 2048, offset: 1024)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !817, line: 551, size: 2048, elements: !873)
!873 = !{!874, !879, !887, !888, !889, !895, !896, !897, !898, !899, !900, !904, !905, !906, !907, !909, !912, !913, !914}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !872, file: !817, line: 553, baseType: !875, size: 128)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !817, line: 411, size: 128, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !875, file: !817, line: 412, baseType: !812, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !875, file: !817, line: 413, baseType: !83, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !872, file: !817, line: 554, baseType: !880, size: 192, align: 64, offset: 128)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !881, line: 5, size: 192, align: 64, elements: !882)
!881 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!882 = !{!883, !884, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !880, file: !881, line: 6, baseType: !812, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !880, file: !881, line: 7, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !880, file: !881, line: 8, baseType: !885, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !872, file: !817, line: 555, baseType: !68, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !872, file: !817, line: 556, baseType: !68, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !872, file: !817, line: 558, baseType: !890, size: 128, offset: 448)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !836, line: 190, size: 128, elements: !891)
!891 = !{!892, !894}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !890, file: !836, line: 191, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !890, file: !836, line: 191, baseType: !893, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !872, file: !817, line: 559, baseType: !7, size: 32, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !872, file: !817, line: 561, baseType: !68, size: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !872, file: !817, line: 562, baseType: !68, size: 64, offset: 704)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !872, file: !817, line: 563, baseType: !68, size: 64, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !872, file: !817, line: 564, baseType: !68, size: 64, offset: 832)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !872, file: !817, line: 565, baseType: !901, size: 64, offset: 896)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !36, line: 22, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !38, line: 30, baseType: !903)
!903 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !872, file: !817, line: 566, baseType: !68, size: 64, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !872, file: !817, line: 568, baseType: !68, size: 64, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !872, file: !817, line: 571, baseType: !840, size: 32, offset: 1088)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !872, file: !817, line: 572, baseType: !908, size: 64, offset: 1152)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !872, file: !817, line: 574, baseType: !910, size: 64, offset: 1216)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !817, line: 49, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !872, file: !817, line: 576, baseType: !910, size: 64, offset: 1280)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !872, file: !817, line: 578, baseType: !812, size: 64, offset: 1344)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !872, file: !817, line: 588, baseType: !915, size: 512, align: 512, offset: 1536)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !817, line: 497, size: 512, align: 512, elements: !916)
!916 = !{!917, !918, !919, !920, !921, !922, !923, !924, !925}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !915, file: !817, line: 498, baseType: !68, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !915, file: !817, line: 499, baseType: !68, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !915, file: !817, line: 500, baseType: !68, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !915, file: !817, line: 501, baseType: !83, size: 32, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !915, file: !817, line: 502, baseType: !83, size: 32, offset: 224)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !915, file: !817, line: 503, baseType: !812, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !915, file: !817, line: 504, baseType: !812, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !915, file: !817, line: 505, baseType: !812, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !915, file: !817, line: 506, baseType: !926, size: 64, align: 64, offset: 448)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !817, line: 445, size: 64, align: 64, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !926, file: !817, line: 446, baseType: !7, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !926, file: !817, line: 447, baseType: !7, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !816, file: !817, line: 798, baseType: !931, size: 384, offset: 3072)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !817, line: 592, size: 384, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !931, file: !817, line: 593, baseType: !890, size: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !931, file: !817, line: 594, baseType: !812, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !931, file: !817, line: 595, baseType: !812, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !931, file: !817, line: 596, baseType: !7, size: 32, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !931, file: !817, line: 597, baseType: !53, size: 16, offset: 288)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !931, file: !817, line: 598, baseType: !53, size: 16, offset: 304)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !931, file: !817, line: 600, baseType: !940, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !816, file: !817, line: 799, baseType: !942, size: 1792, offset: 3456)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !817, line: 610, size: 1792, elements: !943)
!943 = !{!944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !1060, !1061}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !942, file: !817, line: 611, baseType: !880, size: 192, align: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !942, file: !817, line: 618, baseType: !68, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !942, file: !817, line: 619, baseType: !68, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !942, file: !817, line: 620, baseType: !68, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !942, file: !817, line: 621, baseType: !68, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !942, file: !817, line: 622, baseType: !68, size: 64, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !942, file: !817, line: 629, baseType: !901, size: 64, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !942, file: !817, line: 630, baseType: !68, size: 64, offset: 576)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !817, line: 631, baseType: !7, size: 32, offset: 640)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !942, file: !817, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !942, file: !817, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !942, file: !817, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !942, file: !817, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !942, file: !817, line: 662, baseType: !958, size: 512, offset: 704)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !959)
!959 = !{!960, !968, !969, !974, !1056, !1057, !1058, !1059}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !958, file: !6, line: 119, baseType: !961, size: 256)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !962, line: 9, size: 256, elements: !963)
!962 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !961, file: !962, line: 10, baseType: !880, size: 192, align: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !961, file: !962, line: 11, baseType: !966, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !967, line: 29, baseType: !901)
!967 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !958, file: !6, line: 120, baseType: !966, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !958, file: !6, line: 121, baseType: !970, size: 64, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!5, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !958, file: !6, line: 122, baseType: !975, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !977)
!977 = !{!978, !1024, !1025, !1029, !1039, !1040, !1051, !1055}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !976, file: !6, line: 160, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !981)
!981 = !{!982, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !980, file: !6, line: 216, baseType: !983, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !984, line: 23, baseType: !985)
!984 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !984, line: 14, size: 32, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !985, file: !984, line: 15, baseType: !988, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !989, line: 44, baseType: !990)
!989 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !989, line: 14, size: 32, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !989, line: 15, baseType: !993, size: 32)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !989, line: 15, size: 32, elements: !994)
!994 = !{!995, !996, !1001}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !993, file: !989, line: 16, baseType: !835, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !989, line: 24, baseType: !997, size: 16)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !989, line: 24, size: 16, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !997, file: !989, line: 25, baseType: !35, size: 8)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !997, file: !989, line: 26, baseType: !35, size: 8, offset: 8)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !989, line: 28, baseType: !1002, size: 32)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !989, line: 28, size: 32, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1002, file: !989, line: 29, baseType: !51, size: 16)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1002, file: !989, line: 30, baseType: !51, size: 16, offset: 16)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !980, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !980, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !980, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !980, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !980, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !980, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !980, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !980, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !980, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !980, file: !6, line: 227, baseType: !53, size: 16, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !980, file: !6, line: 228, baseType: !53, size: 16, offset: 208)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !980, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !980, file: !6, line: 235, baseType: !966, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !980, file: !6, line: 236, baseType: !973, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !980, file: !6, line: 237, baseType: !966, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !980, file: !6, line: 238, baseType: !973, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !980, file: !6, line: 239, baseType: !1023, size: 4096, align: 512, offset: 512)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 4096, align: 512, elements: !375)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !976, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !976, file: !6, line: 162, baseType: !1026, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !836, line: 32, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !1028, line: 96, baseType: !840)
!1028 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !976, file: !6, line: 163, baseType: !1030, size: 32, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1031, line: 274, baseType: !1032)
!1031 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1031, line: 274, size: 32, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1032, file: !1031, line: 274, baseType: !1035, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1031, line: 69, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1031, line: 64, size: 32, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1036, file: !1031, line: 65, baseType: !7, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !976, file: !6, line: 164, baseType: !973, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !976, file: !6, line: 165, baseType: !1041, size: 128, offset: 256)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !962, line: 14, size: 128, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1041, file: !962, line: 15, baseType: !1044, size: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !881, line: 26, size: 128, elements: !1045)
!1045 = !{!1046, !1050}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1044, file: !881, line: 27, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !881, line: 12, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1047, file: !881, line: 13, baseType: !885, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1044, file: !881, line: 28, baseType: !885, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !976, file: !6, line: 166, baseType: !1052, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!966}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !976, file: !6, line: 167, baseType: !966, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !958, file: !6, line: 123, baseType: !35, size: 8, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !958, file: !6, line: 124, baseType: !35, size: 8, offset: 456)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !958, file: !6, line: 125, baseType: !35, size: 8, offset: 464)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !958, file: !6, line: 126, baseType: !35, size: 8, offset: 472)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !942, file: !817, line: 671, baseType: !958, size: 512, offset: 1216)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !942, file: !817, line: 679, baseType: !1062, size: 64, offset: 1728)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !816, file: !817, line: 800, baseType: !1064, size: 64, offset: 5248)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !817, line: 800, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !816, file: !817, line: 809, baseType: !1068, size: 64, offset: 5312)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !817, line: 70, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !816, file: !817, line: 825, baseType: !1071, size: 2048, align: 512, offset: 5632)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !817, line: 509, size: 2048, align: 512, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1071, file: !817, line: 511, baseType: !68, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1071, file: !817, line: 512, baseType: !68, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1071, file: !817, line: 513, baseType: !68, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1071, file: !817, line: 514, baseType: !68, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1071, file: !817, line: 515, baseType: !68, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1071, file: !817, line: 516, baseType: !68, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1071, file: !817, line: 518, baseType: !68, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1071, file: !817, line: 519, baseType: !68, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1071, file: !817, line: 520, baseType: !901, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1071, file: !817, line: 522, baseType: !68, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1071, file: !817, line: 523, baseType: !68, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1071, file: !817, line: 524, baseType: !901, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1071, file: !817, line: 526, baseType: !901, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1071, file: !817, line: 527, baseType: !68, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1071, file: !817, line: 529, baseType: !68, size: 64, offset: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1071, file: !817, line: 530, baseType: !68, size: 64, offset: 960)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1071, file: !817, line: 531, baseType: !68, size: 64, offset: 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1071, file: !817, line: 532, baseType: !68, size: 64, offset: 1088)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1071, file: !817, line: 533, baseType: !68, size: 64, offset: 1152)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1071, file: !817, line: 535, baseType: !68, size: 64, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1071, file: !817, line: 536, baseType: !68, size: 64, offset: 1280)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1071, file: !817, line: 537, baseType: !68, size: 64, offset: 1344)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1071, file: !817, line: 538, baseType: !68, size: 64, offset: 1408)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1071, file: !817, line: 539, baseType: !68, size: 64, offset: 1472)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1071, file: !817, line: 540, baseType: !68, size: 64, offset: 1536)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1071, file: !817, line: 541, baseType: !68, size: 64, offset: 1600)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1071, file: !817, line: 542, baseType: !68, size: 64, offset: 1664)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1071, file: !817, line: 543, baseType: !68, size: 64, offset: 1728)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !816, file: !817, line: 833, baseType: !7, size: 32, offset: 7680)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !816, file: !817, line: 836, baseType: !7, size: 32, offset: 7712)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !816, file: !817, line: 837, baseType: !840, size: 32, offset: 7744)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !816, file: !817, line: 838, baseType: !1105, size: 64, offset: 7808)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1108, line: 19, baseType: !1109)
!1108 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1108, line: 19, size: 64, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1109, file: !1108, line: 19, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 1)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !816, file: !817, line: 839, baseType: !1116, size: 64, offset: 7872)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !816, file: !817, line: 840, baseType: !1107, size: 64, offset: 7936)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !816, file: !817, line: 841, baseType: !33, size: 64, offset: 8000)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !816, file: !817, line: 843, baseType: !53, size: 16, offset: 8064)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !816, file: !817, line: 845, baseType: !53, size: 16, offset: 8080)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !816, file: !817, line: 848, baseType: !840, size: 32, offset: 8096)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !816, file: !817, line: 849, baseType: !1123, size: 32, offset: 8128)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !817, line: 718, size: 32, elements: !1124)
!1124 = !{!1125, !1132}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1123, file: !817, line: 724, baseType: !1126, size: 32)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !817, line: 719, size: 32, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1126, file: !817, line: 720, baseType: !35, size: 8)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1126, file: !817, line: 721, baseType: !35, size: 8, offset: 8)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1126, file: !817, line: 722, baseType: !35, size: 8, offset: 16)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1126, file: !817, line: 723, baseType: !35, size: 8, offset: 24)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1123, file: !817, line: 725, baseType: !83, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !816, file: !817, line: 850, baseType: !890, size: 128, offset: 8192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !816, file: !817, line: 851, baseType: !1135, size: 64, offset: 8320)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !817, line: 60, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !816, file: !817, line: 855, baseType: !812, size: 64, offset: 8384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !816, file: !817, line: 856, baseType: !35, size: 8, offset: 8448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !816, file: !817, line: 857, baseType: !35, size: 8, offset: 8456)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !816, file: !817, line: 858, baseType: !840, size: 32, offset: 8480)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !816, file: !817, line: 859, baseType: !890, size: 128, offset: 8512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !816, file: !817, line: 860, baseType: !840, size: 32, offset: 8640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !816, file: !817, line: 861, baseType: !890, size: 128, offset: 8704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !816, file: !817, line: 873, baseType: !1145, size: 256, offset: 8832)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !817, line: 376, size: 256, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1145, file: !817, line: 381, baseType: !812, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1145, file: !817, line: 384, baseType: !70, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1145, file: !817, line: 389, baseType: !70, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1145, file: !817, line: 392, baseType: !70, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !816, file: !817, line: 875, baseType: !890, size: 128, offset: 9088)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !816, file: !817, line: 877, baseType: !1153, size: 320, offset: 9216)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1154, line: 86, size: 320, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1153, file: !1154, line: 87, baseType: !840, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1153, file: !1154, line: 88, baseType: !890, size: 128, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1153, file: !1154, line: 89, baseType: !890, size: 128, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !816, file: !817, line: 878, baseType: !880, size: 192, align: 64, offset: 9536)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !816, file: !817, line: 881, baseType: !1161, size: 64, offset: 9728)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1163, line: 733, size: 10240, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1164 = !{!1165, !1354}
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !1163, line: 734, baseType: !1166, size: 10240)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !1163, line: 734, size: 10240, elements: !1167)
!1167 = !{!1168, !1172, !1194, !1201, !1202, !1203, !1204, !1205, !1206, !1214, !1215, !1216, !1222, !1223, !1230, !1231, !1232, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1273, !1285, !1288, !1320, !1321, !1322, !1325, !1329, !1330, !1333, !1334, !1335, !1341, !1342}
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1163, line: 739, baseType: !1169, size: 512, align: 512)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1163, line: 739, size: 512, align: 512, elements: !1170)
!1170 = !{!1171}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1169, file: !1163, line: 747, baseType: !835, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1166, file: !1163, line: 750, baseType: !1173, size: 128, offset: 512)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1174, line: 218, size: 128, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1175 = !{!1176, !1192, !1193}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1174, line: 219, baseType: !1177, size: 32)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1174, line: 219, size: 32, elements: !1178)
!1178 = !{!1179, !1188}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1177, file: !1174, line: 220, baseType: !1180, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1181, line: 29, baseType: !1182)
!1181 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1181, line: 17, size: 32, elements: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1181, line: 18, baseType: !1185, size: 32)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !1181, line: 18, size: 32, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1185, file: !1181, line: 19, baseType: !985, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1177, file: !1174, line: 221, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1174, line: 197, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1174, line: 197, elements: !1191)
!1191 = !{}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1173, file: !1174, line: 223, baseType: !7, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1173, file: !1174, line: 224, baseType: !33, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1166, file: !1163, line: 752, baseType: !1195, size: 64, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!812, !1198, !812, !812, !812, !812}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1200, line: 537, flags: DIFlagFwdDecl)
!1200 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1166, file: !1163, line: 756, baseType: !812, size: 64, offset: 704)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1166, file: !1163, line: 757, baseType: !812, size: 64, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1166, file: !1163, line: 760, baseType: !812, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1166, file: !1163, line: 761, baseType: !812, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1166, file: !1163, line: 763, baseType: !812, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1166, file: !1163, line: 764, baseType: !1207, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1200, line: 299, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 299, size: 64, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1209, file: !1200, line: 299, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1213, line: 18, baseType: !812)
!1213 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1166, file: !1163, line: 773, baseType: !835, size: 32, offset: 1088)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1166, file: !1163, line: 785, baseType: !835, size: 32, offset: 1120)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1166, file: !1163, line: 795, baseType: !1217, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1163, line: 726, size: 128, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1218, file: !1163, line: 727, baseType: !68, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1218, file: !1163, line: 728, baseType: !840, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1166, file: !1163, line: 801, baseType: !812, size: 64, offset: 1216)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1166, file: !1163, line: 804, baseType: !1224, size: 64, offset: 1280)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1225, line: 13, baseType: !1226)
!1225 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !836, line: 181, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !836, line: 179, size: 64, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1227, file: !836, line: 180, baseType: !901, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1166, file: !1163, line: 806, baseType: !840, size: 32, offset: 1344)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1166, file: !1163, line: 808, baseType: !1180, size: 32, offset: 1376)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1166, file: !1163, line: 823, baseType: !1233, size: 320, offset: 1408)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1234, line: 48, size: 320, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1235 = !{!1236, !1237, !1238, !1243, !1244}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1233, file: !1234, line: 49, baseType: !1224, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1233, file: !1234, line: 55, baseType: !1224, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1233, file: !1234, line: 57, baseType: !1239, size: 32, offset: 128)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1240, line: 15, size: 32, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1239, file: !1240, line: 20, baseType: !835, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1233, file: !1234, line: 59, baseType: !983, size: 32, offset: 160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1233, file: !1234, line: 60, baseType: !890, size: 128, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1166, file: !1163, line: 825, baseType: !890, size: 128, offset: 1728)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1166, file: !1163, line: 845, baseType: !840, size: 32, offset: 1856)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1166, file: !1163, line: 849, baseType: !812, size: 64, offset: 1920)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1166, file: !1163, line: 850, baseType: !812, size: 64, offset: 1984)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1166, file: !1163, line: 852, baseType: !812, size: 64, offset: 2048)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1166, file: !1163, line: 853, baseType: !812, size: 64, offset: 2112)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1166, file: !1163, line: 854, baseType: !1226, size: 64, offset: 2176)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1166, file: !1163, line: 855, baseType: !812, size: 64, offset: 2240)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1166, file: !1163, line: 856, baseType: !812, size: 64, offset: 2304)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1166, file: !1163, line: 857, baseType: !812, size: 64, offset: 2368)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1166, file: !1163, line: 858, baseType: !812, size: 64, offset: 2432)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1166, file: !1163, line: 865, baseType: !1035, size: 32, offset: 2496)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1166, file: !1163, line: 867, baseType: !1180, size: 32, offset: 2528)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1166, file: !1163, line: 869, baseType: !812, size: 64, offset: 2560)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1166, file: !1163, line: 869, baseType: !812, size: 64, offset: 2624)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1166, file: !1163, line: 869, baseType: !812, size: 64, offset: 2688)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1166, file: !1163, line: 869, baseType: !812, size: 64, offset: 2752)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1166, file: !1163, line: 870, baseType: !812, size: 64, offset: 2816)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1166, file: !1163, line: 870, baseType: !812, size: 64, offset: 2880)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1166, file: !1163, line: 870, baseType: !812, size: 64, offset: 2944)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1166, file: !1163, line: 871, baseType: !812, size: 64, offset: 3008)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1166, file: !1163, line: 871, baseType: !812, size: 64, offset: 3072)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1166, file: !1163, line: 871, baseType: !812, size: 64, offset: 3136)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1166, file: !1163, line: 871, baseType: !812, size: 64, offset: 3200)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1166, file: !1163, line: 873, baseType: !1270, size: 3328, offset: 3264)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 3328, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 52)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1166, file: !1163, line: 875, baseType: !1274, size: 1280, offset: 6592)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1275, size: 1280, elements: !114)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1276, line: 22, size: 320, elements: !1277)
!1276 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1277 = !{!1278, !1279, !1280, !1281}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1275, file: !1276, line: 23, baseType: !983, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1275, file: !1276, line: 24, baseType: !901, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1275, file: !1276, line: 26, baseType: !890, size: 128, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1275, file: !1276, line: 28, baseType: !1282, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !36, line: 20, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !38, line: 26, baseType: !840)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1166, file: !1163, line: 877, baseType: !1286, size: 64, offset: 7872)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1163, line: 877, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1166, file: !1163, line: 880, baseType: !1289, size: 1088, offset: 7936)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1290, line: 72, baseType: !1291)
!1290 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1290, line: 23, size: 1088, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1300, !1301, !1309, !1310, !1314, !1315, !1316}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1291, file: !1290, line: 28, baseType: !68, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1291, file: !1290, line: 38, baseType: !1226, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1291, file: !1290, line: 40, baseType: !812, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1291, file: !1290, line: 43, baseType: !1233, size: 320, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1291, file: !1290, line: 44, baseType: !1298, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1290, line: 44, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1291, file: !1290, line: 48, baseType: !812, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1291, file: !1290, line: 59, baseType: !1302, size: 256, offset: 640)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1303, line: 66, size: 256, elements: !1304)
!1303 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1302, file: !1303, line: 67, baseType: !1224, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1302, file: !1303, line: 68, baseType: !983, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1302, file: !1303, line: 70, baseType: !1239, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1302, file: !1303, line: 72, baseType: !890, size: 128, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1291, file: !1290, line: 60, baseType: !33, size: 64, offset: 896)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1291, file: !1290, line: 61, baseType: !1311, size: 64, offset: 960)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1290, line: 61, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1291, file: !1290, line: 63, baseType: !835, size: 32, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1291, file: !1290, line: 69, baseType: !51, size: 16, offset: 1056)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1291, file: !1290, line: 70, baseType: !1317, size: 16, offset: 1072)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !36, line: 18, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !38, line: 23, baseType: !1319)
!1319 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !1163, line: 882, baseType: !812, size: 64, offset: 9024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1166, file: !1163, line: 885, baseType: !1180, size: 32, offset: 9088)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1166, file: !1163, line: 886, baseType: !1323, size: 64, offset: 9152)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1163, line: 732, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1166, file: !1163, line: 901, baseType: !1326, size: 64, offset: 9216)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1328, line: 18, flags: DIFlagFwdDecl)
!1328 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1166, file: !1163, line: 904, baseType: !1198, size: 64, offset: 9280)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1166, file: !1163, line: 906, baseType: !1331, size: 64, offset: 9344)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1163, line: 906, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1166, file: !1163, line: 930, baseType: !835, size: 32, offset: 9408)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1166, file: !1163, line: 933, baseType: !835, size: 32, offset: 9440)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1166, file: !1163, line: 935, baseType: !1336, size: 64, offset: 9472)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1336, file: !18, line: 104, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1166, file: !1163, line: 940, baseType: !1224, size: 64, offset: 9536)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1166, file: !1163, line: 942, baseType: !1343, size: 256, offset: 9600)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1344, line: 98, size: 256, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1345 = !{!1346, !1347, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1343, file: !1344, line: 99, baseType: !1224, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1343, file: !1344, line: 100, baseType: !890, size: 128, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1343, file: !1344, line: 101, baseType: !1349, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1344, line: 21, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1162, file: !1163, line: 986, baseType: !1355, offset: 10240)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: -1)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !816, file: !817, line: 882, baseType: !1161, size: 64, offset: 9792)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !816, file: !817, line: 884, baseType: !840, size: 32, offset: 9856)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !816, file: !817, line: 885, baseType: !840, size: 32, offset: 9888)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !816, file: !817, line: 886, baseType: !840, size: 32, offset: 9920)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !816, file: !817, line: 888, baseType: !840, size: 32, offset: 9952)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !816, file: !817, line: 890, baseType: !812, size: 64, offset: 9984)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !816, file: !817, line: 893, baseType: !7, size: 32, offset: 10048)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !816, file: !817, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !816, file: !817, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !816, file: !817, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !816, file: !817, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !816, file: !817, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !816, file: !817, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !816, file: !817, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !816, file: !817, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !816, file: !817, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !816, file: !817, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !816, file: !817, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !816, file: !817, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !816, file: !817, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !816, file: !817, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !816, file: !817, line: 969, baseType: !812, size: 64, offset: 10176)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !816, file: !817, line: 971, baseType: !1381, size: 448, offset: 10240)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !1382)
!1382 = !{!1383, !1384, !1390}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1381, file: !12, line: 26, baseType: !812, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1381, file: !12, line: 27, baseType: !1385, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !12, line: 28, baseType: !1391, size: 320, offset: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !12, line: 28, size: 320, elements: !1392)
!1392 = !{!1393, !1403, !1428}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1391, file: !12, line: 37, baseType: !1394, size: 320)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1391, file: !12, line: 30, size: 320, elements: !1395)
!1395 = !{!1396, !1398, !1399, !1400, !1401, !1402}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1394, file: !12, line: 31, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1394, file: !12, line: 32, baseType: !83, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !12, line: 33, baseType: !83, size: 32, offset: 96)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1394, file: !12, line: 34, baseType: !83, size: 32, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1394, file: !12, line: 35, baseType: !68, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1394, file: !12, line: 36, baseType: !1397, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1391, file: !12, line: 47, baseType: !1404, size: 192)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1391, file: !12, line: 39, size: 192, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1427}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1404, file: !12, line: 40, baseType: !1026, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1404, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !12, line: 42, baseType: !1409, size: 64, offset: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !12, line: 42, size: 64, elements: !1410)
!1410 = !{!1411, !1419}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1409, file: !12, line: 43, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1414, line: 7, size: 128, elements: !1415)
!1414 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1415 = !{!1416, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1413, file: !1414, line: 8, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !1028, line: 93, baseType: !903)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1413, file: !1414, line: 9, baseType: !903, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1409, file: !12, line: 44, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1422, line: 7, size: 64, elements: !1423)
!1422 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1423 = !{!1424, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1421, file: !1422, line: 8, baseType: !1425, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1422, line: 5, baseType: !1283)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1421, file: !1422, line: 9, baseType: !1283, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1404, file: !12, line: 46, baseType: !68, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1391, file: !12, line: 55, baseType: !1429, size: 256)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1391, file: !12, line: 49, size: 256, elements: !1430)
!1430 = !{!1431, !1434, !1435, !1436, !1437}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1429, file: !12, line: 50, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1429, file: !12, line: 51, baseType: !840, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1429, file: !12, line: 52, baseType: !840, size: 32, offset: 96)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1429, file: !12, line: 53, baseType: !812, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1429, file: !12, line: 54, baseType: !812, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !816, file: !817, line: 973, baseType: !1439, size: 32, offset: 10688)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !836, line: 27, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !1028, line: 28, baseType: !840)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !816, file: !817, line: 974, baseType: !1439, size: 32, offset: 10720)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !816, file: !817, line: 978, baseType: !812, size: 64, offset: 10752)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !816, file: !817, line: 987, baseType: !815, size: 64, offset: 10816)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !816, file: !817, line: 990, baseType: !815, size: 64, offset: 10880)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !816, file: !817, line: 995, baseType: !890, size: 128, offset: 10944)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !816, file: !817, line: 996, baseType: !890, size: 128, offset: 11072)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !816, file: !817, line: 997, baseType: !815, size: 64, offset: 11200)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !816, file: !817, line: 1005, baseType: !890, size: 128, offset: 11264)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !816, file: !817, line: 1006, baseType: !890, size: 128, offset: 11392)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !816, file: !817, line: 1009, baseType: !1451, size: 64, offset: 11520)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1453, line: 59, size: 768, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1454 = !{!1455, !1456, !1457, !1458, !1469, !1470, !1477, !1486}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1452, file: !1453, line: 61, baseType: !830, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1452, file: !1453, line: 62, baseType: !7, size: 32, offset: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !1453, line: 63, baseType: !1180, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1452, file: !1453, line: 65, baseType: !1459, size: 256, offset: 128)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1460, size: 256, elements: !114)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !836, line: 194, size: 64, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1460, file: !836, line: 195, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !836, line: 198, size: 128, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1464, file: !836, line: 199, baseType: !1463, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1464, file: !836, line: 199, baseType: !1468, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1452, file: !1453, line: 66, baseType: !1460, size: 64, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1452, file: !1453, line: 68, baseType: !1471, size: 192, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1472, line: 41, baseType: !1473)
!1472 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1472, line: 37, size: 192, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1473, file: !1472, line: 38, baseType: !1180, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1473, file: !1472, line: 39, baseType: !890, size: 128, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1452, file: !1453, line: 69, baseType: !1478, size: 128, align: 64, offset: 640)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !836, line: 232, size: 128, align: 64, elements: !1479)
!1479 = !{!1480, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1478, file: !836, line: 233, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1478, file: !836, line: 234, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !1481}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1452, file: !1453, line: 70, baseType: !1487, offset: 768)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1488, elements: !1356)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1453, line: 54, size: 128, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1488, file: !1453, line: 55, baseType: !840, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1488, file: !1453, line: 56, baseType: !1492, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1453, line: 56, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !816, file: !817, line: 1010, baseType: !1495, size: 512, offset: 11584)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 512, elements: !114)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !816, file: !817, line: 1011, baseType: !890, size: 128, offset: 12096)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !816, file: !817, line: 1012, baseType: !890, size: 128, offset: 12224)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !816, file: !817, line: 1014, baseType: !1499, size: 64, offset: 12352)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1501, line: 26, size: 256, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1500, file: !1501, line: 27, baseType: !7, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1500, file: !1501, line: 28, baseType: !1505, size: 192, offset: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1506, line: 43, size: 192, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !1506, line: 44, baseType: !983, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1505, file: !1506, line: 45, baseType: !890, size: 128, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !816, file: !817, line: 1017, baseType: !1511, size: 64, offset: 12416)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !816, file: !817, line: 1020, baseType: !1511, size: 64, offset: 12480)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !816, file: !817, line: 1023, baseType: !33, size: 64, offset: 12544)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !816, file: !817, line: 1025, baseType: !68, size: 64, offset: 12608)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !816, file: !817, line: 1026, baseType: !68, size: 64, offset: 12672)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !816, file: !817, line: 1031, baseType: !68, size: 64, offset: 12736)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !816, file: !817, line: 1032, baseType: !1518, size: 192, offset: 12800)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !817, line: 324, size: 192, elements: !1519)
!1519 = !{!1520, !1521, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1518, file: !817, line: 326, baseType: !68, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1518, file: !817, line: 327, baseType: !68, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !817, line: 328, baseType: !983, size: 32, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !816, file: !817, line: 1041, baseType: !812, size: 64, offset: 12992)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !816, file: !817, line: 1042, baseType: !812, size: 64, offset: 13056)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !816, file: !817, line: 1045, baseType: !68, size: 64, offset: 13120)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !816, file: !817, line: 1048, baseType: !68, size: 64, offset: 13184)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !816, file: !817, line: 1051, baseType: !812, size: 64, offset: 13248)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !816, file: !817, line: 1052, baseType: !812, size: 64, offset: 13312)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !816, file: !817, line: 1055, baseType: !1530, size: 640, offset: 13376)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1531, line: 132, size: 640, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1532 = !{!1533, !1539, !1540}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1530, file: !1531, line: 133, baseType: !1534, size: 576)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1535, size: 576, elements: !65)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1531, line: 117, size: 192, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1535, file: !1531, line: 118, baseType: !68, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1535, file: !1531, line: 119, baseType: !1041, size: 128, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1530, file: !1531, line: 134, baseType: !7, size: 32, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1530, file: !1531, line: 135, baseType: !7, size: 32, offset: 608)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !816, file: !817, line: 1058, baseType: !1542, size: 448, offset: 14016)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1531, line: 144, size: 448, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1542, file: !1531, line: 145, baseType: !1478, size: 128, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1542, file: !1531, line: 146, baseType: !1302, size: 256, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1542, file: !1531, line: 147, baseType: !7, size: 32, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !816, file: !817, line: 1064, baseType: !1548, size: 64, offset: 14464)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1550)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !817, line: 1064, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !816, file: !817, line: 1067, baseType: !1548, size: 64, offset: 14528)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !816, file: !817, line: 1070, baseType: !1548, size: 64, offset: 14592)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !816, file: !817, line: 1074, baseType: !1554, size: 64, offset: 14656)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !817, line: 1074, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !816, file: !817, line: 1084, baseType: !1557, size: 128, offset: 14720)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !1558)
!1558 = !{!1559}
!1559 = !DISubrange(count: 16)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !816, file: !817, line: 1086, baseType: !1561, size: 64, offset: 14848)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !817, line: 55, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !816, file: !817, line: 1089, baseType: !1564, size: 64, offset: 14912)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1565, line: 12, size: 64, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1564, file: !1565, line: 13, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1565, line: 8, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !816, file: !817, line: 1090, baseType: !1571, size: 128, offset: 14976)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1572, line: 13, size: 128, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1571, file: !1572, line: 14, baseType: !890, size: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !816, file: !817, line: 1097, baseType: !1576, size: 64, offset: 15104)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !817, line: 50, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !816, file: !817, line: 1100, baseType: !1579, size: 64, offset: 15168)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !817, line: 1100, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !816, file: !817, line: 1103, baseType: !1582, size: 64, offset: 15232)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !817, line: 53, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !816, file: !817, line: 1107, baseType: !1585, size: 64, offset: 15296)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !817, line: 56, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !816, file: !817, line: 1110, baseType: !1588, size: 64, offset: 15360)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1531, line: 236, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !816, file: !817, line: 1111, baseType: !1591, size: 64, offset: 15424)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !817, line: 67, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !816, file: !817, line: 1112, baseType: !1594, size: 64, offset: 15488)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1595, line: 25, baseType: !1596)
!1595 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1595, line: 23, size: 64, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1596, file: !1595, line: 24, baseType: !1112, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !816, file: !817, line: 1113, baseType: !1594, size: 64, offset: 15552)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !816, file: !817, line: 1115, baseType: !1594, size: 64, offset: 15616)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !816, file: !817, line: 1116, baseType: !1602, size: 192, offset: 15680)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1603, line: 32, size: 192, elements: !1604)
!1603 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1602, file: !1603, line: 33, baseType: !890, size: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1602, file: !1603, line: 34, baseType: !1594, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !816, file: !817, line: 1117, baseType: !812, size: 64, offset: 15872)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !816, file: !817, line: 1118, baseType: !1609, size: 64, offset: 15936)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !836, line: 61, baseType: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1028, line: 72, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1028, line: 16, baseType: !812)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !816, file: !817, line: 1119, baseType: !7, size: 32, offset: 16000)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !816, file: !817, line: 1121, baseType: !1481, size: 64, offset: 16064)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !816, file: !817, line: 1125, baseType: !1615, size: 64, offset: 16128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !817, line: 43, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !816, file: !817, line: 1127, baseType: !1618, size: 32, offset: 16192)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1328, line: 23, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 21, size: 32, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1619, file: !1328, line: 22, baseType: !1622, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !836, line: 37, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !1028, line: 49, baseType: !7)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !816, file: !817, line: 1128, baseType: !7, size: 32, offset: 16224)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !816, file: !817, line: 1130, baseType: !1626, size: 128, offset: 16256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1627, line: 37, size: 128, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1626, file: !1627, line: 38, baseType: !840, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1626, file: !1627, line: 39, baseType: !835, size: 32, offset: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1626, file: !1627, line: 40, baseType: !1632, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1627, line: 24, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !816, file: !817, line: 1131, baseType: !1635, size: 256, offset: 16384)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1636, line: 12, size: 256, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1637 = !{!1638, !1639, !1640, !1641}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1635, file: !1636, line: 13, baseType: !80, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1635, file: !1636, line: 14, baseType: !812, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1635, file: !1636, line: 15, baseType: !812, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1635, file: !1636, line: 16, baseType: !1642, size: 8, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !836, line: 35, baseType: !1643)
!1643 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !816, file: !817, line: 1134, baseType: !68, size: 64, offset: 16640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !816, file: !817, line: 1135, baseType: !68, size: 64, offset: 16704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !816, file: !817, line: 1138, baseType: !1180, size: 32, offset: 16768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !816, file: !817, line: 1141, baseType: !983, size: 32, offset: 16800)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !816, file: !817, line: 1143, baseType: !1649, size: 64, offset: 16832)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !817, line: 735, size: 64, elements: !1650)
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1649, file: !817, line: 736, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !816, file: !817, line: 1147, baseType: !1044, size: 128, offset: 16896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !816, file: !817, line: 1149, baseType: !815, size: 64, offset: 17024)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !816, file: !817, line: 1151, baseType: !1656, size: 64, offset: 17088)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !817, line: 1151, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !816, file: !817, line: 1188, baseType: !33, size: 64, offset: 17152)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !816, file: !817, line: 1191, baseType: !1660, size: 64, offset: 17216)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !817, line: 44, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !816, file: !817, line: 1194, baseType: !1663, size: 64, offset: 17280)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !817, line: 45, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !816, file: !817, line: 1197, baseType: !1666, size: 64, offset: 17344)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !817, line: 61, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !816, file: !817, line: 1199, baseType: !1669, size: 64, offset: 17408)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !817, line: 52, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !816, file: !817, line: 1202, baseType: !1672, size: 64, offset: 17472)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !817, line: 48, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !816, file: !817, line: 1205, baseType: !812, size: 64, offset: 17536)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !816, file: !817, line: 1206, baseType: !1676, size: 64, offset: 17600)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1603, line: 14, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1603, line: 12, size: 384, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !1603, line: 13, baseType: !1681, size: 384)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1678, file: !1603, line: 13, size: 384, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1681, file: !1603, line: 13, baseType: !840, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1681, file: !1603, line: 13, baseType: !840, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1681, file: !1603, line: 13, baseType: !840, size: 32, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1681, file: !1603, line: 13, baseType: !1687, size: 256, offset: 128)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1688, line: 37, size: 256, elements: !1689)
!1688 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1689 = !{!1690, !1695, !1708, !1714, !1724, !1751, !1756}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1687, file: !1688, line: 42, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1688, line: 39, size: 64, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1691, file: !1688, line: 40, baseType: !1440, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1691, file: !1688, line: 41, baseType: !1623, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1687, file: !1688, line: 50, baseType: !1696, size: 192)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1688, line: 45, size: 192, elements: !1697)
!1697 = !{!1698, !1700, !1701, !1707}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1696, file: !1688, line: 46, baseType: !1699, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !1028, line: 95, baseType: !840)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1696, file: !1688, line: 47, baseType: !840, size: 32, offset: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1696, file: !1688, line: 48, baseType: !1702, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1688, line: 11, baseType: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1688, line: 8, size: 64, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1703, file: !1688, line: 9, baseType: !840, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1703, file: !1688, line: 10, baseType: !33, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1696, file: !1688, line: 49, baseType: !840, size: 32, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1687, file: !1688, line: 57, baseType: !1709, size: 128)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1688, line: 53, size: 128, elements: !1710)
!1710 = !{!1711, !1712, !1713}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1709, file: !1688, line: 54, baseType: !1440, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1709, file: !1688, line: 55, baseType: !1623, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1709, file: !1688, line: 56, baseType: !1702, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1687, file: !1688, line: 66, baseType: !1715, size: 256)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1688, line: 60, size: 256, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720, !1723}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1715, file: !1688, line: 61, baseType: !1440, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1715, file: !1688, line: 62, baseType: !1623, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1715, file: !1688, line: 63, baseType: !840, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1715, file: !1688, line: 64, baseType: !1721, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !1028, line: 94, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !1028, line: 15, baseType: !1388)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1715, file: !1688, line: 65, baseType: !1721, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1687, file: !1688, line: 105, baseType: !1725, size: 256)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1688, line: 69, size: 256, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1725, file: !1688, line: 70, baseType: !33, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !1688, line: 79, baseType: !1729, size: 192, offset: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !1688, line: 79, size: 192, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1740, !1745}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1729, file: !1688, line: 81, baseType: !840, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1729, file: !1688, line: 86, baseType: !1319, size: 16)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1729, file: !1688, line: 92, baseType: !1734, size: 192)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !1688, line: 88, size: 192, elements: !1735)
!1735 = !{!1736, !1738, !1739}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1734, file: !1688, line: 89, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !375)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1734, file: !1688, line: 90, baseType: !33, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1734, file: !1688, line: 91, baseType: !33, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1729, file: !1688, line: 97, baseType: !1741, size: 96)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !1688, line: 94, size: 96, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1741, file: !1688, line: 95, baseType: !1737, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1741, file: !1688, line: 96, baseType: !84, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1729, file: !1688, line: 103, baseType: !1746, size: 128)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !1688, line: 99, size: 128, elements: !1747)
!1747 = !{!1748, !1749, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1746, file: !1688, line: 100, baseType: !812, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1746, file: !1688, line: 101, baseType: !84, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1746, file: !1688, line: 102, baseType: !84, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1687, file: !1688, line: 111, baseType: !1752, size: 128)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1688, line: 108, size: 128, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1752, file: !1688, line: 109, baseType: !1388, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1752, file: !1688, line: 110, baseType: !840, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1687, file: !1688, line: 118, baseType: !1757, size: 128)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1688, line: 114, size: 128, elements: !1758)
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1757, file: !1688, line: 115, baseType: !33, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1757, file: !1688, line: 116, baseType: !840, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1757, file: !1688, line: 117, baseType: !7, size: 32, offset: 96)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !816, file: !817, line: 1208, baseType: !1763, size: 448, offset: 17664)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1764, line: 12, size: 448, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1763, file: !1764, line: 15, baseType: !68, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1763, file: !1764, line: 17, baseType: !68, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1763, file: !1764, line: 19, baseType: !68, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1763, file: !1764, line: 21, baseType: !68, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1763, file: !1764, line: 29, baseType: !68, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1763, file: !1764, line: 35, baseType: !68, size: 64, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1763, file: !1764, line: 44, baseType: !68, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !816, file: !817, line: 1215, baseType: !68, size: 64, offset: 18112)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !816, file: !817, line: 1217, baseType: !68, size: 64, offset: 18176)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !816, file: !817, line: 1219, baseType: !68, size: 64, offset: 18240)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !816, file: !817, line: 1223, baseType: !1777, size: 64, offset: 18304)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1778, line: 99, baseType: !1779)
!1778 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1778, line: 99, size: 64, elements: !1780)
!1780 = !{!1781}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1779, file: !1778, line: 99, baseType: !1112, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !816, file: !817, line: 1225, baseType: !1783, size: 32, offset: 18368)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1031, line: 275, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1031, line: 275, size: 32, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1784, file: !1031, line: 275, baseType: !1035, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !816, file: !817, line: 1226, baseType: !840, size: 32, offset: 18400)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !816, file: !817, line: 1227, baseType: !840, size: 32, offset: 18432)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !816, file: !817, line: 1231, baseType: !1790, size: 64, offset: 18496)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !817, line: 1231, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !816, file: !817, line: 1233, baseType: !890, size: 128, offset: 18560)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !816, file: !817, line: 1240, baseType: !1794, size: 64, offset: 18688)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !817, line: 62, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !816, file: !817, line: 1242, baseType: !1797, size: 64, offset: 18752)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !817, line: 1242, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !816, file: !817, line: 1244, baseType: !890, size: 128, offset: 18816)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !816, file: !817, line: 1245, baseType: !1801, size: 64, offset: 18944)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !817, line: 51, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !816, file: !817, line: 1246, baseType: !1302, size: 256, offset: 19008)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !816, file: !817, line: 1247, baseType: !7, size: 32, offset: 19264)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !816, file: !817, line: 1250, baseType: !1806, size: 64, offset: 19328)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !817, line: 57, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !816, file: !817, line: 1251, baseType: !1302, size: 256, offset: 19392)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !816, file: !817, line: 1252, baseType: !890, size: 128, offset: 19648)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !816, file: !817, line: 1259, baseType: !1811, size: 64, offset: 19776)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !817, line: 54, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !816, file: !817, line: 1260, baseType: !1319, size: 16, offset: 19840)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !816, file: !817, line: 1261, baseType: !1319, size: 16, offset: 19856)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !816, file: !817, line: 1314, baseType: !1816, size: 64, offset: 19904)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1818, line: 62, size: 256, align: 256, elements: !1819)
!1818 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1819 = !{!1820, !1821, !1822, !1823, !1824, !1825, !1826}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1817, file: !1818, line: 75, baseType: !84, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1817, file: !1818, line: 90, baseType: !84, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1817, file: !1818, line: 112, baseType: !69, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1817, file: !1818, line: 132, baseType: !84, size: 32, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1817, file: !1818, line: 140, baseType: !84, size: 32, offset: 160)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1817, file: !1818, line: 149, baseType: !84, size: 32, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1817, file: !1818, line: 154, baseType: !1827, offset: 224)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !1356)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !816, file: !817, line: 1315, baseType: !83, size: 32, offset: 19968)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !816, file: !817, line: 1316, baseType: !83, size: 32, offset: 20000)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !816, file: !817, line: 1321, baseType: !812, size: 64, offset: 20032)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !816, file: !817, line: 1325, baseType: !840, size: 32, offset: 20096)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !816, file: !817, line: 1326, baseType: !840, size: 32, offset: 20128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !816, file: !817, line: 1327, baseType: !840, size: 32, offset: 20160)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !816, file: !817, line: 1328, baseType: !840, size: 32, offset: 20192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !816, file: !817, line: 1329, baseType: !1478, size: 128, align: 64, offset: 20224)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !816, file: !817, line: 1332, baseType: !1837, size: 128, offset: 20352)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1838, line: 51, size: 128, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1839 = !{!1840, !1845, !1846}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1837, file: !1838, line: 60, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1842, line: 7, size: 64, elements: !1843)
!1842 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1841, file: !1842, line: 12, baseType: !1109, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1837, file: !1838, line: 63, baseType: !1642, size: 8, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1837, file: !1838, line: 70, baseType: !1642, size: 8, offset: 72)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !816, file: !817, line: 1335, baseType: !1848, size: 64, offset: 20480)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !817, line: 59, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !816, file: !817, line: 1337, baseType: !1851, size: 128, offset: 20544)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1838, line: 39, size: 128, elements: !1852)
!1852 = !{!1853, !1916, !1917}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1851, file: !1838, line: 40, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1163, line: 74, size: 512, align: 128, elements: !1856)
!1856 = !{!1857, !1858, !1910, !1915}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !1163, line: 75, baseType: !812, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1163, line: 83, baseType: !1859, size: 320, offset: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1163, line: 83, size: 320, elements: !1860)
!1860 = !{!1861, !1884, !1898, !1902, !1909}
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1163, line: 84, baseType: !1862, size: 320)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1163, line: 84, size: 320, elements: !1863)
!1863 = !{!1864, !1875, !1878, !1883}
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !1163, line: 90, baseType: !1865, size: 128)
!1865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !1163, line: 90, size: 128, elements: !1866)
!1866 = !{!1867, !1868, !1873, !1874}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1865, file: !1163, line: 91, baseType: !890, size: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1163, line: 94, baseType: !1869, size: 128)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !1163, line: 94, size: 128, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1869, file: !1163, line: 96, baseType: !33, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1869, file: !1163, line: 98, baseType: !7, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1865, file: !1163, line: 102, baseType: !890, size: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1865, file: !1163, line: 103, baseType: !890, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1862, file: !1163, line: 106, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !1163, line: 32, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !1163, line: 107, baseType: !1879, size: 64, offset: 192)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !1163, line: 107, size: 64, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1879, file: !1163, line: 108, baseType: !812, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1879, file: !1163, line: 109, baseType: !812, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1862, file: !1163, line: 117, baseType: !812, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1163, line: 119, baseType: !1885, size: 320)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1163, line: 119, size: 320, elements: !1886)
!1886 = !{!1887, !1888, !1891, !1892, !1893}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1885, file: !1163, line: 124, baseType: !812, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1885, file: !1163, line: 125, baseType: !1889, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1163, line: 125, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1885, file: !1163, line: 126, baseType: !812, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1885, file: !1163, line: 127, baseType: !812, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !1163, line: 128, baseType: !1894, size: 64, offset: 256)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !1163, line: 128, size: 64, elements: !1895)
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1894, file: !1163, line: 133, baseType: !812, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1894, file: !1163, line: 138, baseType: !1224, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1163, line: 141, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1163, line: 141, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1899, file: !1163, line: 142, baseType: !812, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1163, line: 144, baseType: !1903, size: 128)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1163, line: 144, size: 128, elements: !1904)
!1904 = !{!1905, !1908}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1903, file: !1163, line: 146, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1163, line: 146, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1903, file: !1163, line: 147, baseType: !33, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1859, file: !1163, line: 161, baseType: !1478, size: 128, align: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1163, line: 164, baseType: !1911, size: 32, offset: 384)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1163, line: 164, size: 32, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1911, file: !1163, line: 169, baseType: !835, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1911, file: !1163, line: 177, baseType: !7, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1855, file: !1163, line: 181, baseType: !835, size: 32, offset: 416)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1851, file: !1838, line: 42, baseType: !84, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1851, file: !1838, line: 43, baseType: !84, size: 32, offset: 96)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !816, file: !817, line: 1340, baseType: !1919, size: 64, offset: 20672)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !817, line: 69, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !816, file: !817, line: 1351, baseType: !840, size: 32, offset: 20736)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !816, file: !817, line: 1352, baseType: !840, size: 32, offset: 20768)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !816, file: !817, line: 1354, baseType: !812, size: 64, offset: 20800)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !816, file: !817, line: 1364, baseType: !68, size: 64, offset: 20864)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !816, file: !817, line: 1365, baseType: !68, size: 64, offset: 20928)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !816, file: !817, line: 1412, baseType: !812, size: 64, offset: 20992)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !816, file: !817, line: 1453, baseType: !1928, size: 64, offset: 21056)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !817, line: 1453, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !816, file: !817, line: 1457, baseType: !1931, size: 64, offset: 21120)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1933)
!1933 = !{!1934, !1935, !1954, !1957, !1958, !1991, !2001}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1932, file: !18, line: 62, baseType: !17, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !18, line: 64, baseType: !1936, size: 192, offset: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !18, line: 64, size: 192, elements: !1937)
!1937 = !{!1938, !1949}
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !18, line: 65, baseType: !1939, size: 192)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !18, line: 65, size: 192, elements: !1940)
!1940 = !{!1941, !1948}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1939, file: !18, line: 66, baseType: !1942, size: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1943, line: 50, size: 128, elements: !1944)
!1943 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1942, file: !1943, line: 52, baseType: !812, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1942, file: !1943, line: 54, baseType: !7, size: 32, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1942, file: !1943, line: 55, baseType: !7, size: 32, offset: 96)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1939, file: !18, line: 67, baseType: !812, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !18, line: 70, baseType: !1950, size: 192)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !18, line: 70, size: 192, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1950, file: !18, line: 71, baseType: !1478, size: 128, align: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1950, file: !18, line: 72, baseType: !812, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1932, file: !18, line: 76, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1932, file: !18, line: 77, baseType: !812, size: 64, offset: 320)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1932, file: !18, line: 79, baseType: !1959, size: 64, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1943, line: 25, size: 256, elements: !1961)
!1961 = !{!1962, !1968, !1972}
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1943, line: 26, baseType: !1963, size: 128)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1960, file: !1943, line: 26, size: 128, elements: !1964)
!1964 = !{!1965, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1963, file: !1943, line: 27, baseType: !1966, size: 128)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !1558)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1963, file: !1943, line: 28, baseType: !1966, size: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1960, file: !1943, line: 31, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1971)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1943, line: 23, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1943, line: 33, baseType: !1973, size: 64, offset: 192)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1960, file: !1943, line: 33, size: 64, elements: !1974)
!1974 = !{!1975, !1981, !1986}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1973, file: !1943, line: 38, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1943, line: 34, size: 64, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1976, file: !1943, line: 35, baseType: !1283, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1976, file: !1943, line: 36, baseType: !35, size: 8, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1976, file: !1943, line: 37, baseType: !35, size: 8, offset: 40)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1973, file: !1943, line: 42, baseType: !1982, size: 16)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1943, line: 39, size: 16, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1982, file: !1943, line: 40, baseType: !35, size: 8)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1982, file: !1943, line: 41, baseType: !35, size: 8, offset: 8)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1973, file: !1943, line: 46, baseType: !1987, size: 16)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1943, line: 43, size: 16, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1987, file: !1943, line: 44, baseType: !35, size: 8)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1987, file: !1943, line: 45, baseType: !35, size: 8, offset: 8)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1932, file: !18, line: 81, baseType: !1992, size: 64, offset: 448)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1994)
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1993, file: !18, line: 86, baseType: !1955, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1993, file: !18, line: 87, baseType: !812, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1993, file: !18, line: 88, baseType: !812, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1993, file: !18, line: 89, baseType: !812, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1993, file: !18, line: 90, baseType: !1642, size: 8, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1993, file: !18, line: 92, baseType: !1992, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1932, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !816, file: !817, line: 1463, baseType: !2003, offset: 21184)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !817, line: 739, elements: !1191)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !816, file: !817, line: 1470, baseType: !1478, size: 128, align: 64, offset: 21184)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !816, file: !817, line: 1471, baseType: !830, size: 32, offset: 21312)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !816, file: !817, line: 1472, baseType: !840, size: 32, offset: 21344)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !816, file: !817, line: 1474, baseType: !815, size: 64, offset: 21376)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !816, file: !817, line: 1475, baseType: !2009, size: 320, offset: 21440)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2010, line: 11, size: 320, elements: !2011)
!2010 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2011 = !{!2012, !2013, !2014, !2019}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2009, file: !2010, line: 16, baseType: !1464, size: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2009, file: !2010, line: 17, baseType: !812, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2009, file: !2010, line: 18, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2009, file: !2010, line: 19, baseType: !83, size: 32, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !816, file: !817, line: 1478, baseType: !2021, size: 64, offset: 21760)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !817, line: 1478, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !816, file: !817, line: 1482, baseType: !830, size: 32, offset: 21824)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !816, file: !817, line: 1489, baseType: !33, size: 64, offset: 21888)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !816, file: !817, line: 1504, baseType: !33, size: 64, offset: 21952)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !816, file: !817, line: 1505, baseType: !69, size: 64, offset: 22016)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !816, file: !817, line: 1506, baseType: !68, size: 64, offset: 22080)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !816, file: !817, line: 1507, baseType: !69, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !816, file: !817, line: 1508, baseType: !69, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !816, file: !817, line: 1509, baseType: !69, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !816, file: !817, line: 1510, baseType: !1478, size: 128, align: 64, offset: 22208)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !816, file: !817, line: 1511, baseType: !840, size: 32, offset: 22336)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !816, file: !817, line: 1515, baseType: !2034, size: 64, offset: 22400)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !850, line: 56, size: 64, elements: !2035)
!2035 = !{!2036}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2034, file: !850, line: 57, baseType: !853, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !816, file: !817, line: 1518, baseType: !2034, size: 64, offset: 22464)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !816, file: !817, line: 1528, baseType: !1478, size: 128, align: 64, offset: 22528)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !816, file: !817, line: 1552, baseType: !2040, size: 35328, offset: 23040)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2041, line: 430, size: 35328, elements: !2042)
!2041 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2042 = !{!2043, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2072, !2073, !2074, !2075, !2076, !2077, !2080, !2081, !2082, !2083}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2040, file: !2041, line: 432, baseType: !2044, size: 192)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2045, size: 192, elements: !65)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2046, line: 16, size: 64, elements: !2047)
!2046 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2045, file: !2046, line: 17, baseType: !51, size: 16)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2045, file: !2046, line: 18, baseType: !51, size: 16, offset: 16)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2045, file: !2046, line: 19, baseType: !51, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2045, file: !2046, line: 19, baseType: !51, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2045, file: !2046, line: 19, baseType: !51, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2045, file: !2046, line: 19, baseType: !51, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2045, file: !2046, line: 19, baseType: !51, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2045, file: !2046, line: 20, baseType: !51, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2045, file: !2046, line: 20, baseType: !51, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2045, file: !2046, line: 20, baseType: !51, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2045, file: !2046, line: 20, baseType: !51, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2045, file: !2046, line: 20, baseType: !51, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2045, file: !2046, line: 20, baseType: !51, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2040, file: !2041, line: 436, baseType: !812, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2040, file: !2041, line: 440, baseType: !53, size: 16, offset: 256)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2040, file: !2041, line: 441, baseType: !53, size: 16, offset: 272)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2040, file: !2041, line: 442, baseType: !53, size: 16, offset: 288)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2040, file: !2041, line: 443, baseType: !53, size: 16, offset: 304)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2040, file: !2041, line: 447, baseType: !812, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2040, file: !2041, line: 448, baseType: !812, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2040, file: !2041, line: 459, baseType: !2069, size: 256, offset: 448)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2070, size: 256, elements: !114)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2041, line: 428, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2040, file: !2041, line: 461, baseType: !812, size: 64, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2040, file: !2041, line: 463, baseType: !812, size: 64, offset: 768)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2040, file: !2041, line: 465, baseType: !812, size: 64, offset: 832)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2040, file: !2041, line: 466, baseType: !812, size: 64, offset: 896)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2040, file: !2041, line: 467, baseType: !812, size: 64, offset: 960)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2040, file: !2041, line: 473, baseType: !2078, size: 64, offset: 1024)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2041, line: 10, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2040, file: !2041, line: 480, baseType: !812, size: 64, offset: 1088)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2040, file: !2041, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2040, file: !2041, line: 491, baseType: !83, size: 32, offset: 1184)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2040, file: !2041, line: 501, baseType: !2084, size: 33792, offset: 1536)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2085, line: 448, size: 33792, elements: !2086)
!2085 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2086 = !{!2087, !2088, !2089, !2255, !2256, !2262, !2263}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2084, file: !2085, line: 461, baseType: !7, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2084, file: !2085, line: 468, baseType: !812, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2084, file: !2085, line: 476, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2085, line: 356, size: 33280, align: 512, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2091, file: !2085, line: 358, baseType: !7, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2091, file: !2085, line: 361, baseType: !7, size: 32, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2091, file: !2085, line: 364, baseType: !68, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2091, file: !2085, line: 367, baseType: !68, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2091, file: !2085, line: 370, baseType: !68, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2091, file: !2085, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2091, file: !2085, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2091, file: !2085, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2091, file: !2085, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2091, file: !2085, line: 397, baseType: !2103, size: 32768, offset: 512)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2085, line: 348, size: 32768, elements: !2104)
!2104 = !{!2105, !2118, !2159, !2236, !2251}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2103, file: !2085, line: 349, baseType: !2106, size: 896)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2085, line: 12, size: 896, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2117}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2106, file: !2085, line: 13, baseType: !83, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2106, file: !2085, line: 14, baseType: !83, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2106, file: !2085, line: 15, baseType: !83, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2106, file: !2085, line: 16, baseType: !83, size: 32, offset: 96)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2106, file: !2085, line: 17, baseType: !83, size: 32, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2106, file: !2085, line: 18, baseType: !83, size: 32, offset: 160)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2106, file: !2085, line: 19, baseType: !83, size: 32, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2106, file: !2085, line: 22, baseType: !2116, size: 640, offset: 224)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 640, elements: !280)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2106, file: !2085, line: 25, baseType: !83, size: 32, offset: 864)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2103, file: !2085, line: 350, baseType: !2119, size: 4096, align: 128)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2085, line: 34, size: 4096, align: 128, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2140, !2141, !2142, !2146, !2150, !2154}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2119, file: !2085, line: 35, baseType: !51, size: 16)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2119, file: !2085, line: 36, baseType: !51, size: 16, offset: 16)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2119, file: !2085, line: 37, baseType: !51, size: 16, offset: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2119, file: !2085, line: 38, baseType: !51, size: 16, offset: 48)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !2085, line: 39, baseType: !2126, size: 128, offset: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !2085, line: 39, size: 128, elements: !2127)
!2127 = !{!2128, !2133}
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !2085, line: 40, baseType: !2129, size: 128)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2126, file: !2085, line: 40, size: 128, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2129, file: !2085, line: 41, baseType: !68, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2129, file: !2085, line: 42, baseType: !68, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !2085, line: 44, baseType: !2134, size: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2126, file: !2085, line: 44, size: 128, elements: !2135)
!2135 = !{!2136, !2137, !2138, !2139}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2134, file: !2085, line: 45, baseType: !83, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2134, file: !2085, line: 46, baseType: !83, size: 32, offset: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2134, file: !2085, line: 47, baseType: !83, size: 32, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2134, file: !2085, line: 48, baseType: !83, size: 32, offset: 96)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2119, file: !2085, line: 51, baseType: !83, size: 32, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2119, file: !2085, line: 52, baseType: !83, size: 32, offset: 224)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2119, file: !2085, line: 55, baseType: !2143, size: 1024, offset: 256)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 1024, elements: !2144)
!2144 = !{!2145}
!2145 = !DISubrange(count: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2119, file: !2085, line: 58, baseType: !2147, size: 2048, offset: 1280)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2048, elements: !2148)
!2148 = !{!2149}
!2149 = !DISubrange(count: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2119, file: !2085, line: 60, baseType: !2151, size: 384, offset: 3328)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 384, elements: !2152)
!2152 = !{!2153}
!2153 = !DISubrange(count: 12)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !2085, line: 62, baseType: !2155, size: 384, offset: 3712)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !2085, line: 62, size: 384, elements: !2156)
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2155, file: !2085, line: 63, baseType: !2151, size: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2155, file: !2085, line: 64, baseType: !2151, size: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2103, file: !2085, line: 351, baseType: !2160, size: 1088)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2085, line: 79, size: 1088, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2235}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2160, file: !2085, line: 80, baseType: !83, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2160, file: !2085, line: 81, baseType: !83, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2160, file: !2085, line: 82, baseType: !83, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2160, file: !2085, line: 83, baseType: !83, size: 32, offset: 96)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2160, file: !2085, line: 84, baseType: !83, size: 32, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2160, file: !2085, line: 85, baseType: !83, size: 32, offset: 160)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2160, file: !2085, line: 86, baseType: !83, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2160, file: !2085, line: 88, baseType: !2116, size: 640, offset: 224)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2160, file: !2085, line: 89, baseType: !35, size: 8, offset: 864)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2160, file: !2085, line: 90, baseType: !35, size: 8, offset: 872)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2160, file: !2085, line: 91, baseType: !35, size: 8, offset: 880)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2160, file: !2085, line: 92, baseType: !35, size: 8, offset: 888)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2160, file: !2085, line: 93, baseType: !35, size: 8, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2160, file: !2085, line: 94, baseType: !35, size: 8, offset: 904)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2160, file: !2085, line: 95, baseType: !2177, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2179, line: 11, size: 128, elements: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2178, file: !2179, line: 12, baseType: !1388, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2178, file: !2179, line: 13, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2185, line: 103, size: 1344, elements: !2186)
!2185 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2215, !2216, !2217}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2184, file: !2185, line: 109, baseType: !812, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2184, file: !2185, line: 110, baseType: !812, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2184, file: !2185, line: 111, baseType: !812, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2184, file: !2185, line: 112, baseType: !812, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2184, file: !2185, line: 113, baseType: !812, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2184, file: !2185, line: 114, baseType: !812, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2184, file: !2185, line: 117, baseType: !812, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2184, file: !2185, line: 118, baseType: !812, size: 64, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2184, file: !2185, line: 119, baseType: !812, size: 64, offset: 512)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2184, file: !2185, line: 120, baseType: !812, size: 64, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2184, file: !2185, line: 121, baseType: !812, size: 64, offset: 640)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2184, file: !2185, line: 122, baseType: !812, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2184, file: !2185, line: 123, baseType: !812, size: 64, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2184, file: !2185, line: 124, baseType: !812, size: 64, offset: 832)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2184, file: !2185, line: 125, baseType: !812, size: 64, offset: 896)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2184, file: !2185, line: 139, baseType: !812, size: 64, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2184, file: !2185, line: 142, baseType: !812, size: 64, offset: 1024)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2185, line: 144, baseType: !2205, size: 64, offset: 1088)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !2185, line: 144, size: 64, elements: !2206)
!2206 = !{!2207, !2208, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2205, file: !2185, line: 146, baseType: !51, size: 16)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2205, file: !2185, line: 148, baseType: !68, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2205, file: !2185, line: 150, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2185, line: 59, size: 64, elements: !2211)
!2211 = !{!2212, !2213, !2214}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2210, file: !2185, line: 61, baseType: !68, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2210, file: !2185, line: 63, baseType: !68, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2210, file: !2185, line: 65, baseType: !68, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2184, file: !2185, line: 153, baseType: !812, size: 64, offset: 1152)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2184, file: !2185, line: 154, baseType: !812, size: 64, offset: 1216)
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2185, line: 156, baseType: !2218, size: 64, offset: 1280)
!2218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !2185, line: 156, size: 64, elements: !2219)
!2219 = !{!2220, !2221, !2222}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2218, file: !2185, line: 158, baseType: !51, size: 16)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2218, file: !2185, line: 160, baseType: !68, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2218, file: !2185, line: 162, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2185, line: 69, size: 64, elements: !2224)
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2223, file: !2185, line: 71, baseType: !68, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2223, file: !2185, line: 73, baseType: !68, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2223, file: !2185, line: 75, baseType: !68, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2223, file: !2185, line: 77, baseType: !68, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2223, file: !2185, line: 80, baseType: !68, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2223, file: !2185, line: 83, baseType: !68, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2223, file: !2185, line: 86, baseType: !68, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2223, file: !2185, line: 88, baseType: !68, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2223, file: !2185, line: 93, baseType: !68, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2223, file: !2185, line: 100, baseType: !68, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2160, file: !2085, line: 96, baseType: !83, size: 32, offset: 1024)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2103, file: !2085, line: 352, baseType: !2237, size: 4608, align: 512)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2085, line: 333, size: 4608, align: 512, elements: !2238)
!2238 = !{!2239, !2240, !2249}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2237, file: !2085, line: 334, baseType: !2119, size: 4096, align: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2237, file: !2085, line: 335, baseType: !2241, size: 512, offset: 4096)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2085, line: 312, size: 512, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2241, file: !2085, line: 313, baseType: !68, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2241, file: !2085, line: 314, baseType: !68, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2241, file: !2085, line: 315, baseType: !2246, size: 384, offset: 128)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 384, elements: !2247)
!2247 = !{!2248}
!2248 = !DISubrange(count: 6)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2237, file: !2085, line: 336, baseType: !2250, offset: 4608)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, elements: !1356)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2103, file: !2085, line: 353, baseType: !2252, size: 32768)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32768, elements: !2253)
!2253 = !{!2254}
!2254 = !DISubrange(count: 4096)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2084, file: !2085, line: 484, baseType: !2090, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2084, file: !2085, line: 491, baseType: !2257, size: 128, offset: 256)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2085, line: 404, size: 128, elements: !2258)
!2258 = !{!2259, !2260, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2257, file: !2085, line: 424, baseType: !68, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2257, file: !2085, line: 432, baseType: !7, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2257, file: !2085, line: 440, baseType: !7, size: 32, offset: 96)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2084, file: !2085, line: 498, baseType: !2257, size: 128, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2084, file: !2085, line: 508, baseType: !2091, size: 33280, align: 512, offset: 512)
!2264 = !{!2265, !2270, !2275, !2277, !2279, !2284, !2286, !0}
!2265 = !DIGlobalVariableExpression(var: !2266, expr: !DIExpression())
!2266 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !2267, isLocal: true, isDefinition: true)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 320, elements: !2268)
!2268 = !{!2269}
!2269 = !DISubrange(count: 40)
!2270 = !DIGlobalVariableExpression(var: !2271, expr: !DIExpression())
!2271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !2272, isLocal: true, isDefinition: true)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 304, elements: !2273)
!2273 = !{!2274}
!2274 = !DISubrange(count: 38)
!2275 = !DIGlobalVariableExpression(var: !2276, expr: !DIExpression())
!2276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !2272, isLocal: true, isDefinition: true)
!2277 = !DIGlobalVariableExpression(var: !2278, expr: !DIExpression())
!2278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !2267, isLocal: true, isDefinition: true)
!2279 = !DIGlobalVariableExpression(var: !2280, expr: !DIExpression())
!2280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !2281, isLocal: true, isDefinition: true)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 240, elements: !2282)
!2282 = !{!2283}
!2283 = !DISubrange(count: 30)
!2284 = !DIGlobalVariableExpression(var: !2285, expr: !DIExpression())
!2285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 225, type: !2281, isLocal: true, isDefinition: true)
!2286 = !DIGlobalVariableExpression(var: !2287, expr: !DIExpression())
!2287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !2288, isLocal: true, isDefinition: true)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 520, elements: !2289)
!2289 = !{!2290}
!2290 = !DISubrange(count: 65)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2292, size: 64, elements: !375)
!2292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!2293 = !{i32 7, !"Dwarf Version", i32 5}
!2294 = !{i32 2, !"Debug Info Version", i32 3}
!2295 = !{i32 1, !"wchar_size", i32 2}
!2296 = !{i32 8, !"cf-protection-branch", i32 1}
!2297 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2298 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2299 = !{i32 1, !"Code Model", i32 2}
!2300 = !{i32 1, !"override-stack-alignment", i32 8}
!2301 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2302 = distinct !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !3, file: !3, line: 51, type: !2303, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null}
!2305 = !{!2306}
!2306 = !DILocalVariable(name: "status", scope: !2302, file: !3, line: 53, type: !167)
!2307 = !DILocation(line: 53, column: 2, scope: !2302)
!2308 = !DILocation(line: 53, column: 14, scope: !2302)
!2309 = !DILocation(line: 57, column: 11, scope: !2302)
!2310 = !DILocation(line: 57, column: 9, scope: !2302)
!2311 = !DILocation(line: 58, column: 6, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 58, column: 6)
!2313 = !DILocation(line: 58, column: 6, scope: !2302)
!2314 = !DILocation(line: 59, column: 3, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 58, column: 28)
!2316 = !DILocation(line: 61, column: 2, scope: !2315)
!2317 = !DILocation(line: 62, column: 11, scope: !2302)
!2318 = !DILocation(line: 62, column: 9, scope: !2302)
!2319 = !DILocation(line: 63, column: 6, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 63, column: 6)
!2321 = !DILocation(line: 63, column: 6, scope: !2302)
!2322 = !DILocation(line: 64, column: 3, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 63, column: 28)
!2324 = !DILocation(line: 65, column: 2, scope: !2323)
!2325 = !DILocation(line: 68, column: 1, scope: !2302)
!2326 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !2327, file: !2327, line: 646, type: !2328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2327 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!167, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !101, line: 17, baseType: !83)
!2331 = !DISubprogram(name: "acpi_error", scope: !2332, file: !2332, line: 901, type: !2333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2332 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !2335, !83, !2335, null}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2336 = distinct !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !3, file: !3, line: 93, type: !2303, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2337 = !{!2338}
!2338 = !DILocalVariable(name: "status", scope: !2336, file: !3, line: 95, type: !167)
!2339 = !DILocation(line: 95, column: 2, scope: !2336)
!2340 = !DILocation(line: 95, column: 14, scope: !2336)
!2341 = !DILocation(line: 99, column: 11, scope: !2336)
!2342 = !DILocation(line: 99, column: 9, scope: !2336)
!2343 = !DILocation(line: 100, column: 6, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 100, column: 6)
!2345 = !DILocation(line: 100, column: 6, scope: !2336)
!2346 = !DILocation(line: 101, column: 3, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 100, column: 28)
!2348 = !DILocation(line: 102, column: 2, scope: !2347)
!2349 = !DILocation(line: 103, column: 11, scope: !2336)
!2350 = !DILocation(line: 103, column: 9, scope: !2336)
!2351 = !DILocation(line: 104, column: 6, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 104, column: 6)
!2353 = !DILocation(line: 104, column: 6, scope: !2336)
!2354 = !DILocation(line: 105, column: 3, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 104, column: 28)
!2356 = !DILocation(line: 107, column: 2, scope: !2355)
!2357 = !DILocation(line: 110, column: 1, scope: !2336)
!2358 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !2327, file: !2327, line: 648, type: !2328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2359 = distinct !DISubprogram(name: "acpi_ex_truncate_for32bit_table", scope: !3, file: !3, line: 125, type: !2360, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!35, !47}
!2362 = !{!2363}
!2363 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !2359, file: !3, line: 125, type: !47)
!2364 = !DILocation(line: 125, column: 63, scope: !2359)
!2365 = !DILocation(line: 134, column: 8, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 134, column: 6)
!2367 = !DILocation(line: 134, column: 18, scope: !2366)
!2368 = !DILocation(line: 135, column: 7, scope: !2366)
!2369 = !DILocation(line: 135, column: 42, scope: !2366)
!2370 = !DILocation(line: 135, column: 69, scope: !2366)
!2371 = !DILocation(line: 136, column: 7, scope: !2366)
!2372 = !DILocation(line: 136, column: 24, scope: !2366)
!2373 = !DILocation(line: 136, column: 29, scope: !2366)
!2374 = !DILocation(line: 134, column: 6, scope: !2359)
!2375 = !DILocation(line: 137, column: 3, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 136, column: 52)
!2377 = !DILocation(line: 140, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 140, column: 6)
!2379 = !DILocation(line: 140, column: 35, scope: !2378)
!2380 = !DILocation(line: 140, column: 41, scope: !2378)
!2381 = !DILocation(line: 141, column: 7, scope: !2378)
!2382 = !DILocation(line: 141, column: 25, scope: !2378)
!2383 = !DILocation(line: 141, column: 31, scope: !2378)
!2384 = !DILocation(line: 140, column: 6, scope: !2359)
!2385 = !DILocation(line: 146, column: 3, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 141, column: 56)
!2387 = !DILocation(line: 146, column: 21, scope: !2386)
!2388 = !DILocation(line: 146, column: 27, scope: !2386)
!2389 = !DILocation(line: 147, column: 3, scope: !2386)
!2390 = !DILocation(line: 150, column: 2, scope: !2359)
!2391 = !DILocation(line: 151, column: 1, scope: !2359)
!2392 = distinct !DISubprogram(name: "acpi_ex_acquire_global_lock", scope: !3, file: !3, line: 167, type: !2393, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !83}
!2395 = !{!2396, !2397}
!2396 = !DILocalVariable(name: "field_flags", arg: 1, scope: !2392, file: !3, line: 167, type: !83)
!2397 = !DILocalVariable(name: "status", scope: !2392, file: !3, line: 169, type: !167)
!2398 = !DILocation(line: 167, column: 38, scope: !2392)
!2399 = !DILocation(line: 169, column: 2, scope: !2392)
!2400 = !DILocation(line: 169, column: 14, scope: !2392)
!2401 = !DILocation(line: 175, column: 8, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 175, column: 6)
!2403 = !DILocation(line: 175, column: 20, scope: !2402)
!2404 = !DILocation(line: 175, column: 6, scope: !2392)
!2405 = !DILocation(line: 176, column: 3, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 175, column: 49)
!2407 = !DILocation(line: 182, column: 12, scope: !2392)
!2408 = !DILocation(line: 183, column: 12, scope: !2392)
!2409 = !DILocation(line: 181, column: 11, scope: !2392)
!2410 = !DILocation(line: 181, column: 9, scope: !2392)
!2411 = !DILocation(line: 185, column: 6, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 185, column: 6)
!2413 = !DILocation(line: 185, column: 6, scope: !2392)
!2414 = !DILocation(line: 186, column: 3, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 185, column: 28)
!2416 = !DILocation(line: 188, column: 2, scope: !2415)
!2417 = !DILocation(line: 190, column: 2, scope: !2392)
!2418 = !DILocation(line: 191, column: 1, scope: !2392)
!2419 = !DISubprogram(name: "acpi_ex_acquire_mutex_object", scope: !2420, file: !2420, line: 248, type: !2421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2420 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!167, !51, !47, !68}
!2423 = distinct !DISubprogram(name: "acpi_os_get_thread_id", scope: !2424, file: !2424, line: 71, type: !2425, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2424 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!68}
!2427 = !DILocation(line: 73, column: 41, scope: !2423)
!2428 = !DILocation(line: 73, column: 26, scope: !2423)
!2429 = !DILocation(line: 73, column: 2, scope: !2423)
!2430 = !DISubprogram(name: "acpi_exception", scope: !2332, file: !2332, line: 906, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !2335, !83, !167, !2335, null}
!2433 = distinct !DISubprogram(name: "acpi_ex_release_global_lock", scope: !3, file: !3, line: 206, type: !2393, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2434)
!2434 = !{!2435, !2436}
!2435 = !DILocalVariable(name: "field_flags", arg: 1, scope: !2433, file: !3, line: 206, type: !83)
!2436 = !DILocalVariable(name: "status", scope: !2433, file: !3, line: 208, type: !167)
!2437 = !DILocation(line: 206, column: 38, scope: !2433)
!2438 = !DILocation(line: 208, column: 2, scope: !2433)
!2439 = !DILocation(line: 208, column: 14, scope: !2433)
!2440 = !DILocation(line: 214, column: 8, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 214, column: 6)
!2442 = !DILocation(line: 214, column: 20, scope: !2441)
!2443 = !DILocation(line: 214, column: 6, scope: !2433)
!2444 = !DILocation(line: 215, column: 3, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 214, column: 49)
!2446 = !DILocation(line: 220, column: 40, scope: !2433)
!2447 = !DILocation(line: 220, column: 11, scope: !2433)
!2448 = !DILocation(line: 220, column: 9, scope: !2433)
!2449 = !DILocation(line: 221, column: 6, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 221, column: 6)
!2451 = !DILocation(line: 221, column: 6, scope: !2433)
!2452 = !DILocation(line: 225, column: 3, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 221, column: 28)
!2454 = !DILocation(line: 227, column: 2, scope: !2453)
!2455 = !DILocation(line: 229, column: 2, scope: !2433)
!2456 = !DILocation(line: 230, column: 1, scope: !2433)
!2457 = !DISubprogram(name: "acpi_ex_release_mutex_object", scope: !2420, file: !2420, line: 256, type: !2458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!167, !47}
!2460 = distinct !DISubprogram(name: "acpi_ex_eisa_id_to_string", scope: !3, file: !3, line: 289, type: !2461, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !80, !68}
!2463 = !{!2464, !2465, !2466}
!2464 = !DILocalVariable(name: "out_string", arg: 1, scope: !2460, file: !3, line: 289, type: !80)
!2465 = !DILocalVariable(name: "compressed_id", arg: 2, scope: !2460, file: !3, line: 289, type: !68)
!2466 = !DILocalVariable(name: "swapped_id", scope: !2460, file: !3, line: 291, type: !83)
!2467 = !DILocation(line: 289, column: 38, scope: !2460)
!2468 = !DILocation(line: 289, column: 54, scope: !2460)
!2469 = !DILocation(line: 291, column: 2, scope: !2460)
!2470 = !DILocation(line: 291, column: 6, scope: !2460)
!2471 = !DILocation(line: 297, column: 6, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 297, column: 6)
!2473 = !DILocation(line: 297, column: 20, scope: !2472)
!2474 = !DILocation(line: 297, column: 6, scope: !2460)
!2475 = !DILocation(line: 298, column: 3, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 297, column: 39)
!2477 = !DILocation(line: 302, column: 2, scope: !2476)
!2478 = !DILocation(line: 306, column: 44, scope: !2460)
!2479 = !DILocation(line: 306, column: 39, scope: !2460)
!2480 = !DILocation(line: 306, column: 15, scope: !2460)
!2481 = !DILocation(line: 306, column: 13, scope: !2460)
!2482 = !DILocation(line: 311, column: 37, scope: !2460)
!2483 = !DILocation(line: 311, column: 22, scope: !2460)
!2484 = !DILocation(line: 311, column: 48, scope: !2460)
!2485 = !DILocation(line: 311, column: 55, scope: !2460)
!2486 = !DILocation(line: 311, column: 18, scope: !2460)
!2487 = !DILocation(line: 311, column: 6, scope: !2460)
!2488 = !DILocation(line: 310, column: 2, scope: !2460)
!2489 = !DILocation(line: 310, column: 16, scope: !2460)
!2490 = !DILocation(line: 312, column: 34, scope: !2460)
!2491 = !DILocation(line: 312, column: 45, scope: !2460)
!2492 = !DILocation(line: 312, column: 52, scope: !2460)
!2493 = !DILocation(line: 312, column: 30, scope: !2460)
!2494 = !DILocation(line: 312, column: 18, scope: !2460)
!2495 = !DILocation(line: 312, column: 2, scope: !2460)
!2496 = !DILocation(line: 312, column: 16, scope: !2460)
!2497 = !DILocation(line: 313, column: 34, scope: !2460)
!2498 = !DILocation(line: 313, column: 45, scope: !2460)
!2499 = !DILocation(line: 313, column: 52, scope: !2460)
!2500 = !DILocation(line: 313, column: 30, scope: !2460)
!2501 = !DILocation(line: 313, column: 18, scope: !2460)
!2502 = !DILocation(line: 313, column: 2, scope: !2460)
!2503 = !DILocation(line: 313, column: 16, scope: !2460)
!2504 = !DILocation(line: 314, column: 50, scope: !2460)
!2505 = !DILocation(line: 314, column: 44, scope: !2460)
!2506 = !DILocation(line: 314, column: 18, scope: !2460)
!2507 = !DILocation(line: 314, column: 2, scope: !2460)
!2508 = !DILocation(line: 314, column: 16, scope: !2460)
!2509 = !DILocation(line: 315, column: 50, scope: !2460)
!2510 = !DILocation(line: 315, column: 44, scope: !2460)
!2511 = !DILocation(line: 315, column: 18, scope: !2460)
!2512 = !DILocation(line: 315, column: 2, scope: !2460)
!2513 = !DILocation(line: 315, column: 16, scope: !2460)
!2514 = !DILocation(line: 316, column: 50, scope: !2460)
!2515 = !DILocation(line: 316, column: 44, scope: !2460)
!2516 = !DILocation(line: 316, column: 18, scope: !2460)
!2517 = !DILocation(line: 316, column: 2, scope: !2460)
!2518 = !DILocation(line: 316, column: 16, scope: !2460)
!2519 = !DILocation(line: 317, column: 50, scope: !2460)
!2520 = !DILocation(line: 317, column: 44, scope: !2460)
!2521 = !DILocation(line: 317, column: 18, scope: !2460)
!2522 = !DILocation(line: 317, column: 2, scope: !2460)
!2523 = !DILocation(line: 317, column: 16, scope: !2460)
!2524 = !DILocation(line: 318, column: 2, scope: !2460)
!2525 = !DILocation(line: 318, column: 16, scope: !2460)
!2526 = !DILocation(line: 319, column: 1, scope: !2460)
!2527 = !DISubprogram(name: "acpi_warning", scope: !2332, file: !2332, line: 912, type: !2333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2528 = !DISubprogram(name: "acpi_ut_dword_byte_swap", scope: !2327, file: !2327, line: 572, type: !2529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!83, !83}
!2531 = !DISubprogram(name: "acpi_ut_hex_to_ascii_char", scope: !2327, file: !2327, line: 241, type: !2532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!81, !68, !83}
!2534 = distinct !DISubprogram(name: "acpi_ex_integer_to_string", scope: !3, file: !3, line: 338, type: !2461, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540}
!2536 = !DILocalVariable(name: "out_string", arg: 1, scope: !2534, file: !3, line: 338, type: !80)
!2537 = !DILocalVariable(name: "value", arg: 2, scope: !2534, file: !3, line: 338, type: !68)
!2538 = !DILocalVariable(name: "count", scope: !2534, file: !3, line: 340, type: !83)
!2539 = !DILocalVariable(name: "digits_needed", scope: !2534, file: !3, line: 341, type: !83)
!2540 = !DILocalVariable(name: "remainder", scope: !2534, file: !3, line: 342, type: !83)
!2541 = !DILocation(line: 338, column: 38, scope: !2534)
!2542 = !DILocation(line: 338, column: 54, scope: !2534)
!2543 = !DILocation(line: 340, column: 2, scope: !2534)
!2544 = !DILocation(line: 340, column: 6, scope: !2534)
!2545 = !DILocation(line: 341, column: 2, scope: !2534)
!2546 = !DILocation(line: 341, column: 6, scope: !2534)
!2547 = !DILocation(line: 342, column: 2, scope: !2534)
!2548 = !DILocation(line: 342, column: 6, scope: !2534)
!2549 = !DILocation(line: 346, column: 40, scope: !2534)
!2550 = !DILocation(line: 346, column: 18, scope: !2534)
!2551 = !DILocation(line: 346, column: 16, scope: !2534)
!2552 = !DILocation(line: 347, column: 2, scope: !2534)
!2553 = !DILocation(line: 347, column: 13, scope: !2534)
!2554 = !DILocation(line: 347, column: 28, scope: !2534)
!2555 = !DILocation(line: 349, column: 15, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 349, column: 2)
!2557 = !DILocation(line: 349, column: 13, scope: !2556)
!2558 = !DILocation(line: 349, column: 7, scope: !2556)
!2559 = !DILocation(line: 349, column: 30, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 349, column: 2)
!2561 = !DILocation(line: 349, column: 36, scope: !2560)
!2562 = !DILocation(line: 349, column: 2, scope: !2556)
!2563 = !DILocation(line: 350, column: 30, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 349, column: 50)
!2565 = !DILocation(line: 350, column: 9, scope: !2564)
!2566 = !DILocation(line: 351, column: 40, scope: !2564)
!2567 = !DILocation(line: 351, column: 38, scope: !2564)
!2568 = !DILocation(line: 351, column: 27, scope: !2564)
!2569 = !DILocation(line: 351, column: 3, scope: !2564)
!2570 = !DILocation(line: 351, column: 14, scope: !2564)
!2571 = !DILocation(line: 351, column: 20, scope: !2564)
!2572 = !DILocation(line: 351, column: 25, scope: !2564)
!2573 = !DILocation(line: 352, column: 2, scope: !2564)
!2574 = !DILocation(line: 349, column: 46, scope: !2560)
!2575 = !DILocation(line: 349, column: 2, scope: !2560)
!2576 = distinct !{!2576, !2562, !2577, !2578, !2579}
!2577 = !DILocation(line: 352, column: 2, scope: !2556)
!2578 = !{!"llvm.loop.mustprogress"}
!2579 = !{!"llvm.loop.unroll.disable"}
!2580 = !DILocation(line: 353, column: 1, scope: !2534)
!2581 = distinct !DISubprogram(name: "acpi_ex_digits_needed", scope: !3, file: !3, line: 246, type: !2582, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!83, !68, !83}
!2584 = !{!2585, !2586, !2587, !2588}
!2585 = !DILocalVariable(name: "value", arg: 1, scope: !2581, file: !3, line: 246, type: !68)
!2586 = !DILocalVariable(name: "base", arg: 2, scope: !2581, file: !3, line: 246, type: !83)
!2587 = !DILocalVariable(name: "num_digits", scope: !2581, file: !3, line: 248, type: !83)
!2588 = !DILocalVariable(name: "current_value", scope: !2581, file: !3, line: 249, type: !68)
!2589 = !DILocation(line: 246, column: 38, scope: !2581)
!2590 = !DILocation(line: 246, column: 49, scope: !2581)
!2591 = !DILocation(line: 248, column: 2, scope: !2581)
!2592 = !DILocation(line: 248, column: 6, scope: !2581)
!2593 = !DILocation(line: 249, column: 2, scope: !2581)
!2594 = !DILocation(line: 249, column: 6, scope: !2581)
!2595 = !DILocation(line: 255, column: 6, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 255, column: 6)
!2597 = !DILocation(line: 255, column: 12, scope: !2596)
!2598 = !DILocation(line: 255, column: 6, scope: !2581)
!2599 = !DILocation(line: 256, column: 3, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 255, column: 18)
!2601 = !DILocation(line: 259, column: 18, scope: !2581)
!2602 = !DILocation(line: 259, column: 16, scope: !2581)
!2603 = !DILocation(line: 260, column: 13, scope: !2581)
!2604 = !DILocation(line: 264, column: 2, scope: !2581)
!2605 = !DILocation(line: 264, column: 9, scope: !2581)
!2606 = !DILocation(line: 265, column: 30, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 264, column: 24)
!2608 = !DILocation(line: 265, column: 45, scope: !2607)
!2609 = !DILocation(line: 265, column: 9, scope: !2607)
!2610 = !DILocation(line: 267, column: 13, scope: !2607)
!2611 = distinct !{!2611, !2604, !2612, !2578, !2579}
!2612 = !DILocation(line: 268, column: 2, scope: !2581)
!2613 = !DILocation(line: 270, column: 2, scope: !2581)
!2614 = !DILocation(line: 271, column: 1, scope: !2581)
!2615 = !DISubprogram(name: "acpi_ut_short_divide", scope: !2327, file: !2327, line: 541, type: !2616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!167, !68, !83, !744, !1397}
!2618 = distinct !DISubprogram(name: "acpi_ex_pci_cls_to_string", scope: !3, file: !3, line: 371, type: !2619, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !80, !94}
!2621 = !{!2622, !2623}
!2622 = !DILocalVariable(name: "out_string", arg: 1, scope: !2618, file: !3, line: 371, type: !80)
!2623 = !DILocalVariable(name: "class_code", arg: 2, scope: !2618, file: !3, line: 371, type: !94)
!2624 = !DILocation(line: 371, column: 38, scope: !2618)
!2625 = !DILocation(line: 371, column: 53, scope: !2618)
!2626 = !DILocation(line: 378, column: 49, scope: !2618)
!2627 = !DILocation(line: 378, column: 44, scope: !2618)
!2628 = !DILocation(line: 378, column: 18, scope: !2618)
!2629 = !DILocation(line: 378, column: 2, scope: !2618)
!2630 = !DILocation(line: 378, column: 16, scope: !2618)
!2631 = !DILocation(line: 379, column: 49, scope: !2618)
!2632 = !DILocation(line: 379, column: 44, scope: !2618)
!2633 = !DILocation(line: 379, column: 18, scope: !2618)
!2634 = !DILocation(line: 379, column: 2, scope: !2618)
!2635 = !DILocation(line: 379, column: 16, scope: !2618)
!2636 = !DILocation(line: 380, column: 49, scope: !2618)
!2637 = !DILocation(line: 380, column: 44, scope: !2618)
!2638 = !DILocation(line: 380, column: 18, scope: !2618)
!2639 = !DILocation(line: 380, column: 2, scope: !2618)
!2640 = !DILocation(line: 380, column: 16, scope: !2618)
!2641 = !DILocation(line: 381, column: 49, scope: !2618)
!2642 = !DILocation(line: 381, column: 44, scope: !2618)
!2643 = !DILocation(line: 381, column: 18, scope: !2618)
!2644 = !DILocation(line: 381, column: 2, scope: !2618)
!2645 = !DILocation(line: 381, column: 16, scope: !2618)
!2646 = !DILocation(line: 382, column: 49, scope: !2618)
!2647 = !DILocation(line: 382, column: 44, scope: !2618)
!2648 = !DILocation(line: 382, column: 18, scope: !2618)
!2649 = !DILocation(line: 382, column: 2, scope: !2618)
!2650 = !DILocation(line: 382, column: 16, scope: !2618)
!2651 = !DILocation(line: 383, column: 49, scope: !2618)
!2652 = !DILocation(line: 383, column: 44, scope: !2618)
!2653 = !DILocation(line: 383, column: 18, scope: !2618)
!2654 = !DILocation(line: 383, column: 2, scope: !2618)
!2655 = !DILocation(line: 383, column: 16, scope: !2618)
!2656 = !DILocation(line: 384, column: 2, scope: !2618)
!2657 = !DILocation(line: 384, column: 16, scope: !2618)
!2658 = !DILocation(line: 385, column: 1, scope: !2618)
!2659 = distinct !DISubprogram(name: "acpi_is_valid_space_id", scope: !3, file: !3, line: 399, type: !2660, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!35, !35}
!2662 = !{!2663}
!2663 = !DILocalVariable(name: "space_id", arg: 1, scope: !2659, file: !3, line: 399, type: !35)
!2664 = !DILocation(line: 399, column: 30, scope: !2659)
!2665 = !DILocation(line: 402, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 402, column: 6)
!2667 = !DILocation(line: 402, column: 16, scope: !2666)
!2668 = !DILocation(line: 402, column: 48, scope: !2666)
!2669 = !DILocation(line: 403, column: 7, scope: !2666)
!2670 = !DILocation(line: 403, column: 16, scope: !2666)
!2671 = !DILocation(line: 403, column: 42, scope: !2666)
!2672 = !DILocation(line: 404, column: 7, scope: !2666)
!2673 = !DILocation(line: 404, column: 16, scope: !2666)
!2674 = !DILocation(line: 404, column: 46, scope: !2666)
!2675 = !DILocation(line: 405, column: 7, scope: !2666)
!2676 = !DILocation(line: 405, column: 16, scope: !2666)
!2677 = !DILocation(line: 402, column: 6, scope: !2659)
!2678 = !DILocation(line: 406, column: 3, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 405, column: 51)
!2680 = !DILocation(line: 409, column: 2, scope: !2659)
!2681 = !DILocation(line: 410, column: 1, scope: !2659)
!2682 = distinct !DISubprogram(name: "get_current", scope: !2683, file: !2683, line: 39, type: !2684, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2686)
!2683 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!815}
!2686 = !{!2687, !2689, !2693}
!2687 = !DILocalVariable(name: "pscr_ret__", scope: !2688, file: !2683, line: 41, type: !815)
!2688 = distinct !DILexicalBlock(scope: !2682, file: !2683, line: 41, column: 9)
!2689 = !DILocalVariable(name: "__vpp_verify", scope: !2690, file: !2683, line: 41, type: !2691)
!2690 = distinct !DILexicalBlock(scope: !2688, file: !2683, line: 41, column: 9)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2693 = !DILocalVariable(name: "pfo_val__", scope: !2694, file: !2683, line: 41, type: !68)
!2694 = distinct !DILexicalBlock(scope: !2688, file: !2683, line: 41, column: 9)
!2695 = !DILocation(line: 41, column: 9, scope: !2688)
!2696 = !DILocation(line: 41, column: 9, scope: !2690)
!2697 = !DILocation(line: 41, column: 9, scope: !2694)
!2698 = !{i64 2148288635}
!2699 = !DILocation(line: 41, column: 9, scope: !2682)
!2700 = !DILocation(line: 41, column: 2, scope: !2682)
